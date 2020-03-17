# for demo purposes we're deploying a simple pod to our cluster
k8s_yaml('pod.yaml')


# Build: we use the Wordpress image in the pod - this is the Dockerfile to build it
docker_build("jdarmstro/snyk-goof:app", ".", dockerfile="./app.Dockerfile")

# connect localhost:9000 to container port 8000
k8s_resource('kube-goof-app', port_forwards='9000')
