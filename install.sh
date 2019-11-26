VERSION=$(git describe --tags)
PACKAGE=github.com/darxkies/k8s-tew

sudo mkdir -p /usr/local/bin
mkdir -p embedded
packr

CGO_ENABLED=0 go build -ldflags "-X ${PACKAGE}/version.Version=${VERSION} -s -w" -o k8s-tew ${PACKAGE}/cmd/k8s-tew
sudo mv k8s-tew /usr/local/bin