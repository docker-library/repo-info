## `golang:1-alpine3.23`

```console
$ docker pull golang@sha256:895e5feab11a4b3774d24ee3c9579028456b82ad37f42a9eb6f82adaf776a201
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:1-alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:0208a74017e3ce41f779876f3c6e9ad5d4030904e8ac6e91b9c5d7711c48362a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75246585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97aa14d0371890205fa5bd872a54e6d0082ee7fe5379c7695a2788b3efc676e3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 02:42:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:06 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:06 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:06 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:43:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf235870820d2e6cd5098e41b5cf7f5d04eff0db1ecf2a4b49fff8082085714`  
		Last Modified: Tue, 20 Oct 2026 02:43:23 GMT  
		Size: 247.5 KB (247524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1e6ef01269cf774045fcc8d2aeda055dff243424131fa18107ad744f70cbc2`  
		Last Modified: Tue, 20 Oct 2026 02:43:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b2a60f5b522f37cab4f671aa5b5783f2bf950bbe6bc8cf713cdf411765505c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.1 KB (203056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb72d8e37f02415ae818596760506abb64e4f67e2e11afef60871dc260e4950e`

```dockerfile
```

-	Layers:
	-	`sha256:8f50e31d8288f467feb01385dd7c1a42a2e8e4b52c0793afa6a0d540e63b83aa`  
		Last Modified: Tue, 20 Oct 2026 02:43:23 GMT  
		Size: 178.2 KB (178249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d500ca98b9796dd88ff6faa7777eb30d509884f9a261d6bb650a2ba85c91603`  
		Last Modified: Tue, 20 Oct 2026 02:43:23 GMT  
		Size: 24.8 KB (24807 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:0e749b6f0779e8108488c0e5c0bd27ba15ab253c87cc5ebc8d916e07eab93f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1715db043bcc431098b9739bace87c0c3a02d4e32c5b9ab78637e8292e8972`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 02:41:53 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:42:02 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:02 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:02 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:02 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182a7da30449b4a18c639b74bf868084346ed7e10ee64761f448d7095176271a`  
		Last Modified: Tue, 20 Oct 2026 02:42:17 GMT  
		Size: 248.5 KB (248462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca3510c99fc0cdf23d157639b34061f84a452492a040478d3a66ba6ddfc7c57`  
		Last Modified: Tue, 20 Oct 2026 02:42:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:ab27da77f0f2c317b6d1d9101af5d83b6fe8a0700075409670d5013c122cf2fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 KB (24698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fba3fbe92d5fbdc8f1a205385eca06500e850240fa784bc66fb8d56785d462b`

```dockerfile
```

-	Layers:
	-	`sha256:e9a991c8a800f8b3b764d16d465a1f00919c2c4f152a42fd37e21ed147511156`  
		Last Modified: Tue, 20 Oct 2026 02:42:17 GMT  
		Size: 24.7 KB (24698 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:7622a2258ba8b9a770fab66c473d12029b1aabc09356c02a81a5e7a142b23feb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73166432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d9124273dacf6eb801caac12faab267aeb2fab423bd4b3343017e18e8302153`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 02:42:41 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:42:50 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:42:50 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:42:50 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:42:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:42:50 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:42:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:42:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf5876a1a2d05d740567db6f0ea640a68063566a336b809858d66a3206bd3bd`  
		Last Modified: Tue, 20 Oct 2026 02:43:08 GMT  
		Size: 247.6 KB (247555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de88e3ce7a4dfd0018044ec020cfea41cf7f77d7ebc62bb0c173812ab351d8bf`  
		Last Modified: Tue, 20 Oct 2026 02:43:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:adaca5ec06cb6efa3414ea18990a6ee3f13082f6d6f5901091ebfd5ee1fa3b10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.5 KB (202532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3e6a0d041c899a336a95862b8a968410acf75e8345ef73c21d79b8cc63da6a`

```dockerfile
```

-	Layers:
	-	`sha256:ace73bc6a80044f9f09bbf809463c5d3cfb5bb8a415e0acb8c8d6e81ad5d6327`  
		Last Modified: Tue, 20 Oct 2026 02:43:08 GMT  
		Size: 177.6 KB (177619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48659f973130bfdd668944f73ce5f5f01333183e217abef15ba0656ee73fa05d`  
		Last Modified: Tue, 20 Oct 2026 02:43:08 GMT  
		Size: 24.9 KB (24913 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c5d59864b5141cbfbaa404f1f0c63e9693d7bc2a4df395cc05a679f8b19dbffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72155791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4eb366da4d50ce1b921ba3b1bc3ce306ad8cac1591a7dfc4354450c338fab43`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 02:42:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:06 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:06 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:06 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:43:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d8100f807cd0c752adf9f9ac961790963bb5ba2a1a338d8e0f4a1a63494ebe`  
		Last Modified: Tue, 20 Oct 2026 02:43:23 GMT  
		Size: 249.8 KB (249844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1e6ef01269cf774045fcc8d2aeda055dff243424131fa18107ad744f70cbc2`  
		Last Modified: Tue, 20 Oct 2026 02:43:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:d3113174b231f113850710b657519b0c78938642755fbb7b2da6dc2edcc4fa83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 KB (202596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90415aa973d584618289656cbe94ef02fde509ebb972718d9fa71dcaff70f761`

```dockerfile
```

-	Layers:
	-	`sha256:9660176333ba3e487806bf76e88697b95c2218bb856d05c85eaf7ddc72106f03`  
		Last Modified: Tue, 20 Oct 2026 02:43:23 GMT  
		Size: 177.7 KB (177655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b88c0cb0b01c63552f50344830e4d348687633ffcefbfedcbeec0dd77fab59e`  
		Last Modified: Tue, 20 Oct 2026 02:43:23 GMT  
		Size: 24.9 KB (24941 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:5d7b995a82c2d2d0193a8988b104961aeb374ffeb3df22c4dd572934f3ff1c92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73264190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e235c92fa84c2354cae0dcec041369164a1133673caacabe84d24ed79a9cdd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 02:42:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:05 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:43:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0469906ca2661d63c760ea0320729830f697dcbdfb7a28fb93b8a9065a0f692`  
		Last Modified: Tue, 20 Oct 2026 02:43:20 GMT  
		Size: 248.1 KB (248052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ceead4e5e99c109d9a50239d7fdcd8575f6d62e0036142c62bc81584c8449`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 69.3 MB (69340868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a550a3c387af96f66e178f72551c10c69e6bcd0052c684ff1532f082cc3b9865`  
		Last Modified: Tue, 20 Oct 2026 02:43:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:57e1e87ab7d54b88ac2909a59f7989e995116c4df48858e698606fd3c9a07b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 KB (202979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c1aa27f4d44fbada2a75a851ae91ef464aa5646ffe29d005101a644ef4dc42`

```dockerfile
```

-	Layers:
	-	`sha256:2b683a9304d8e62339aa12b961da1d62c3b768e733ff9e86abb7ce5a8b18a530`  
		Last Modified: Tue, 20 Oct 2026 02:43:20 GMT  
		Size: 178.2 KB (178208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c5bbb9363ada08e60901848615fd2649cbc1d3fc74e1e60a241ae30c8d53958`  
		Last Modified: Tue, 20 Oct 2026 02:43:20 GMT  
		Size: 24.8 KB (24771 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:a5e5a48d3af8951774d7f81ef6f878075c2c9eb7882bb8cbbaa463f56e1a0393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72557356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846c3231d0ccbda375c7a3a21300af435689a7140725f0503a370513cd0bf72b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:15 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:43:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301ada7d2b2eb8bf6af773232f9ea181bb90403b0af4f6b307b49191890df265`  
		Last Modified: Thu, 08 Oct 2026 17:13:51 GMT  
		Size: 250.3 KB (250258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60feea7b5512b1c4fb840d96a9e358a719c00660498384d91dc7559178deb83b`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:a7c478b04577b5c0913f2ffbee6a74b8bdf11542e1a1705fb9a7510b2119b7c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 KB (202330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ca2221d564ff479ab6a2c2665b78512a1690ad605ae6b430d45e14fa9b71cb`

```dockerfile
```

-	Layers:
	-	`sha256:0e4e7ae53514725549b832f28a4869049b6348741ce0c8d4a752842c88f79b80`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 177.6 KB (177648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb4df79d03f40c8ccb79036b7984b72290c16bd4142108331d6f0d57781c07e4`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 24.7 KB (24682 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:4e71247d56eea11944f34ec1e8569300a3dd723aaa86617b8813673747942b5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72995420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba94f9f4ead60d5834b9e2071fd2007fa52350051b100e7b333719cc8321917`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:57:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:57:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a26110e639e5c2f5ae2a279e28220c86acc4835d7de4818e4ea9064ba9bcf1f`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 248.0 KB (247955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437059a016369af060310e25ad312efbf8a736b2bd0bb2179c11e419453bc9a0`  
		Last Modified: Tue, 20 Oct 2026 02:59:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:6eb9955fbe7da5518c45220af1205ad48c71d452a579201ebfcc8105e4eb6ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.5 KB (202498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fe4723cb715ccffca562a01a6bb2161b78a74540527a4d3876524a555fdd42`

```dockerfile
```

-	Layers:
	-	`sha256:f0d3342869bec96a42b4ca0dc50490a14d78f376569413ef83878b5605d779af`  
		Last Modified: Tue, 20 Oct 2026 02:59:09 GMT  
		Size: 177.6 KB (177644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb2f63cdd10168813c3968cafebfc5a3fbea0ce4a29151f3c51dbf1b67b05338`  
		Last Modified: Tue, 20 Oct 2026 02:59:09 GMT  
		Size: 24.9 KB (24854 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:bf6b1accd3a35ce1cee5953c46d172b6675d49fdb98488b51f79729c33bb55db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74243632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0618505e6477f8dbd936601179030d2de01013c9cc3cd15c6fa8eace010b64b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:05 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:41:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:41:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43634c453f74eed3f83d5578f4fd982aa592ea1a55a006a5df0f43d5775a88de`  
		Last Modified: Thu, 08 Oct 2026 17:13:13 GMT  
		Size: 248.6 KB (248578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b24716e76c0673e5dcc8bd1d8d66aa71c33d88dc860bd827caf54e4005d1b07`  
		Last Modified: Tue, 20 Oct 2026 02:41:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:5cf4aaff03448555eca84853c7378d9a7eafefca3fe753b46440ef3fb4418c0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 KB (202728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3361034e12d0c2d572dc3b039738b46150a8a104aaca32f856b091db4d3c0f0`

```dockerfile
```

-	Layers:
	-	`sha256:c30ef9e260d7a460a5e4e7955a1abdf0793da8c68995bd8cb8550cdc7f3a8d62`  
		Last Modified: Tue, 20 Oct 2026 02:41:28 GMT  
		Size: 178.1 KB (178094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c19ba81ee83f68d18f26002b69ca52a24afaf26cbd330dcce0f8bd197482a70`  
		Last Modified: Tue, 20 Oct 2026 02:41:28 GMT  
		Size: 24.6 KB (24634 bytes)  
		MIME: application/vnd.in-toto+json
