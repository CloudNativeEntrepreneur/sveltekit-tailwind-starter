rebase-examples:
	# make sure we're on latest master
	git checkout master
	git fetch --all --tags -p
	git rebase origin/master
	# example/k8s-deployment
	git checkout example/k8s-deployment
	git rebase origin/master
	git push origin example/k8s-deployment --force
	# example/k8s-deployment-ingress
	git checkout example/k8s-deployment-ingress
	git rebase origin/example/k8s-deployment
	git push origin example/k8s-deployment-ingress --force
	# example/helm
	git checkout example/helm
	git rebase origin/example/k8s-deployment-ingress
	git push origin example/helm --force