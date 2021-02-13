const colors = require('tailwindcss/colors')

module.exports = {
  purge: false,
  theme: {
    extend: {
      colors: {
        rose: colors.rose,
      }
    }
  },
  variants: {},
  plugins: [
    require('@tailwindcss/forms'),
  ],
};