VERSION=$(git describe --tags)
PACKAGE=github.com/darxkies/k8s-tew

mkdir -p embedded
packr

CGO_ENABLED=0 go install -i -ldflags "-X ${PACKAGE}/version.Version=${VERSION} -s -w" ${PACKAGE}/cmd/k8s-tew