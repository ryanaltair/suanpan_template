IMAGE=registry.cn-shanghai.aliyuncs.com/shuzhi/$(cat docker/imagename)
VERSION=$(cat docker/version)
docker run -it --rm --privileged ${IMAGE}:${VERSION} node index.js