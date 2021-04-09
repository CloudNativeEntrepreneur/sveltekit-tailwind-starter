FROM node:15-alpine AS build

RUN apk add --update --no-cache \
        python \
        make \
        g++

WORKDIR /build

COPY package* ./
RUN npm ci

COPY *.cjs .*ignore .*rc ./
COPY static/ static/
COPY src/ src/

RUN npm run lint
RUN npm run build
RUN npm prune --production

FROM node:15-alpine

WORKDIR /usr/src/app

COPY --from=build /build/node_modules/ node_modules/
COPY --from=build /build/.svelte/ .svelte/
COPY --from=build /build/build/ build/
COPY --from=build /build/static/ static/
COPY --from=build /build/package* ./
COPY --from=build /build/*.cjs ./

EXPOSE 3000

CMD ["npm", "run", "start"]