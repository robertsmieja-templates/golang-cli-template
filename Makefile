PKGS := $(shell go list ./... | grep -v /vendor)

.PHONY: test
test: lint
	go test $(PKGS)

BIN_DIR := $(GOPATH)/bin
GO_LINTER := $(BIN_DIR)/golangci-lint

$(GO_LINTER):
	go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.23.1

.PHONY: lint
lint: $(GO_LINTER)
	golangci-lint run

BINARY := mytool
VERSION ?= vlatest
PLATFORMS := windows linux darwin
os = $(word 1, $@)

.PHONY: $(PLATFORMS)
$(PLATFORMS):
	mkdir -p release
	GOOS=$(os) GOARCH=amd64 go build -o release/$(BINARY)-$(VERSION)-$(os)-amd64

.PHONY: release
release: windows linux darwin
