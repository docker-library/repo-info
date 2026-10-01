## `golang:tip-alpine3.24`

```console
$ docker pull golang@sha256:44391f36c74531fec7cce36984c878b0e35206796269d6c5cd2f2c8338669fc0
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

### `golang:tip-alpine3.24` - linux; amd64

```console
$ docker pull golang@sha256:97821fa383ac3606b98141de779b89cf326892805c6f982034a73a04b0ea1cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109299272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ac9fdb779f60ed04367059ea7e952e540d3670539201760b8cdf6160bb529c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 17:53:56 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:55:12 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:55:12 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:55:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:55:12 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:55:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:55:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305dd137c278f9787b7ce7f853e970ef1950c3244075288dab8d384717fa3713`  
		Last Modified: Tue, 29 Sep 2026 17:55:29 GMT  
		Size: 247.5 KB (247534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0999eb6622672afabcfc473ab64fbbae45e06ec398e000d9469d723fe2f8fc34`  
		Last Modified: Tue, 29 Sep 2026 17:55:32 GMT  
		Size: 105.2 MB (105201841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ff8472627b38dd70ac082b42d87df6018d204a9eb3e31dd5cd6e0f1196a061`  
		Last Modified: Tue, 29 Sep 2026 17:55:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:1b1fe44d3a9ea6cf6d739c2524b8616ecdf459cd280c1d5259b04c45d108ef4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 KB (204625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dde899b158d7e0d0c5307defceae0646f252186e5ba5ffe0fe488d175dcfd83`

```dockerfile
```

-	Layers:
	-	`sha256:c7f662595a282946dd71cd6fd335938f08d725a3aec4fd8f15a310401a11d15d`  
		Last Modified: Tue, 29 Sep 2026 17:55:29 GMT  
		Size: 179.5 KB (179526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc7b13dcb69f32fa2229684206abd07bb7f1b22d8b35152ff323357745b631e4`  
		Last Modified: Tue, 29 Sep 2026 17:55:29 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:c637fe5bcb4f7f52fe983b8c931ae1a720e58459cc1f1d0e35a661f5e1e5b805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105128738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22123983968fdbca9425fe34b8dc436bbbddcdb21a5e45425d4d96dcd91ef6a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 17:51:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:53:08 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:53:08 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:53:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:53:08 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:53:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:53:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffb51085e760e18946f9862c4c2d8d23084e6eac1e1fe0998cfdad7e41e0ea4`  
		Last Modified: Tue, 29 Sep 2026 17:53:24 GMT  
		Size: 248.5 KB (248488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10128d350e50f4e6f31d8ee36d17c2f9f5887b5001d347d2bc22d8e165d48d90`  
		Last Modified: Tue, 29 Sep 2026 17:53:26 GMT  
		Size: 101.3 MB (101324979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620d21d0923b82dc4e47fcd9bbe0aa7c7263743835b0c556c06ee72294e9381d`  
		Last Modified: Tue, 29 Sep 2026 17:53:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:ff6a3f54cefe1dd828c050368e70cbf8253b6e24f61e28181f3741850f48e09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c41b85ac128fe429f8ca2dc698cb255bf00cac72f0882931775b6262d3e3f1`

```dockerfile
```

-	Layers:
	-	`sha256:ff901fddd76d27ca5cbebb6802a0c2b1c0fa4ef016ab51c5bb15e58fb8010aa6`  
		Last Modified: Tue, 29 Sep 2026 17:53:24 GMT  
		Size: 25.0 KB (25012 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:15084394bd740911403f4f98028d60fab0069f40db0705c9b9d457727d2d3b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104536624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae7b8972ebb5ce393ddeadb3002153062012a362b342db3dd8f2c824d2a3616`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 17:53:18 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:54:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:54:59 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:54:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:54:59 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:55:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:55:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d5da8e309731e3e57697b9418e9b3574d2355a5dab02e680e08031173677e2`  
		Last Modified: Tue, 29 Sep 2026 17:55:18 GMT  
		Size: 247.5 KB (247541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5834c2eea1c38cb14eb938262093caf670b377df50d3011c148b6338e7be6374`  
		Last Modified: Tue, 29 Sep 2026 17:54:51 GMT  
		Size: 101.0 MB (101023725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd265b068ae4daa3c5a515714fb652edd0b10a79ca83b42af0c339c4561d8ecf`  
		Last Modified: Tue, 29 Sep 2026 17:55:18 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:6d472ddf01f2dbed6120f4e2e69a77bb63fa494d61ab879c5a1c59ced2e28e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4d1204b11c23e7cac26fdc193f01db1725d58fd0404f96ac90af0f661d02d4`

```dockerfile
```

-	Layers:
	-	`sha256:e6a000825882dab81eab39b940dde9c5dba628fae1143876812adf09f460673c`  
		Last Modified: Tue, 29 Sep 2026 17:55:18 GMT  
		Size: 178.9 KB (178894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd9fce88d63d6e1418a8766d2cc9b7f886d1d8181a263e37068b856a6478b632`  
		Last Modified: Tue, 29 Sep 2026 17:55:18 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:37d42b881f53bfa92545d3dc5fa43083b29a4e76b0d1f41ccd67819d7cdb7bc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103965040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699af9a686cc0b4c5ac59fb450317ea8721106fff23ddde7677cc4524d52e065`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 17:53:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:54:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:54:35 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:54:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:54:35 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:54:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:54:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba909b61414a56270f1eab99f009df04fbe35a18d52991f61b38e8dbf9eef7b5`  
		Last Modified: Tue, 29 Sep 2026 17:54:53 GMT  
		Size: 249.8 KB (249814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407976649a33cee308503d4aa90a9d7d2d8c1f82dfaafc0b1053bffbd192236d`  
		Last Modified: Tue, 29 Sep 2026 17:54:56 GMT  
		Size: 99.5 MB (99527409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec3148dfd09f671e52ca18ef8df97ebeaf80bff2edeb8aa1acd4fe3a4d0c007`  
		Last Modified: Tue, 29 Sep 2026 17:54:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:1857ec7b26e6d714bb52414f177a304849349e0582c91cc2c5641671965d79a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97a3f3b2bf8016abddf710f36e8c9ee2f2ee70c414e4286ca97fde1d97fbde1`

```dockerfile
```

-	Layers:
	-	`sha256:8521b3e499873c55831151fbc4a1334cdc8d224f304f1559bf7ef47622661965`  
		Last Modified: Tue, 29 Sep 2026 17:54:53 GMT  
		Size: 178.9 KB (178932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b7d0c3df483e339bf9fa40dc715e8a11f8d1063f7b565f330aa19cb00c0d1a1`  
		Last Modified: Tue, 29 Sep 2026 17:54:53 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:8cfa13160d01e81edc0ccb747025aee07e40e26b966d0064c749f5fa83753d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.9 MB (106930548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c2c22d2fdbbfd7d1c16dc243a2c9452376b3350bde4ef7aaf03803a26ccdaa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 17:52:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:54:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:54:06 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:54:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:54:06 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:54:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:54:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557c58048499d193a26cd05ecbdf075ce31f301fd7c4f2d2ddc4008337811d9b`  
		Last Modified: Tue, 29 Sep 2026 17:54:22 GMT  
		Size: 248.0 KB (248027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d967aeb0675415130bbadac4f1c1ac365c9f4ede4e374f1f087f7b4cecd6f6cc`  
		Last Modified: Tue, 29 Sep 2026 17:53:53 GMT  
		Size: 103.0 MB (103005584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b690279eb6fa6dfe96cabbae17b387db80ad58ef8f42ccdafa6217de53dcf67d`  
		Last Modified: Tue, 29 Sep 2026 17:54:22 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:8cac7c3a21a3b3d657c9f591bafcaac88deb46c6359dbff8ffd551c38f0d4fa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 KB (204538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb267f9b8c6432eccbfa1bb22be24ceabd44ac6d2a74e84e4f760b1c2293b22`

```dockerfile
```

-	Layers:
	-	`sha256:c8129c2aa1e7028e2453b6ab5c58b11643afad1ce20e16257f68c8f86a4c15dc`  
		Last Modified: Tue, 29 Sep 2026 17:54:22 GMT  
		Size: 179.5 KB (179483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a4b3b3d202a833d95377e914e474be4debb8f0d0671bebae7e45b31c4c10e21`  
		Last Modified: Tue, 29 Sep 2026 17:54:22 GMT  
		Size: 25.1 KB (25055 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:f7e0a05d26386192e3f37ed2a8c479fa3aab53be0550e1fae606d6d66dc8e8ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105780347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2d224e00d31110bb9b2cc86a4038ba17d15013173b77acef895964392d39c2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:30:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 18:10:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 18:10:06 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 18:10:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 18:10:06 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 18:15:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 18:15:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6683705af79fcafde185094ffca66bfb1eb10f1e8cf19eab7a6716e494969e`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 250.3 KB (250275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9dfcea9dbd54abdf4735c588b655a34ab5b353623c6254a20d02eaf7a19455`  
		Last Modified: Tue, 29 Sep 2026 18:12:17 GMT  
		Size: 101.7 MB (101712437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ad86799c684a3a24ea763f71096d4ca3523c1ae6b225b46d50a9dd01f2043e`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:0942964649443c649f4d3aea800520732e553b7f7cb8e4984cf167e1aa3aa6a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.9 KB (203910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f74da9b1f883cb9d67945a98f5d60b3f74b3e633200186e9d635ba226a601b`

```dockerfile
```

-	Layers:
	-	`sha256:bc5e8f4994d39ca2451210c831a43e912b499c48613eb659cfe6d654358aef70`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 178.9 KB (178927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:239b9afa474ee8d7f3cbe59bedb30654b937b9b8641a38680fa6444e31666f52`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 25.0 KB (24983 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:baee347d36adeab1c4418c7cbd17a3d8906b2a1b29e2cd36a3d61cc220625f5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106035139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62dcad24aa3f3e9c1a38a429dbdd7a55edcc1be973e66bb079050ab0d8e49d8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 01 Oct 2026 19:33:40 GMT
ENV GOTOOLCHAIN=local
# Thu, 01 Oct 2026 19:33:40 GMT
ENV GOPATH=/go
# Thu, 01 Oct 2026 19:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 19:33:40 GMT
COPY /target/ / # buildkit
# Thu, 01 Oct 2026 20:16:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 01 Oct 2026 20:16:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a135b7b43241d26c11095e22f4cc1d03310757eeb6427701f0919cbc20898f4`  
		Last Modified: Mon, 21 Sep 2026 10:10:21 GMT  
		Size: 248.0 KB (247952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f952667ce7d4fa0b42af84acc0ebd694f60fabe2a8c17c0b63b181ed368fef8`  
		Last Modified: Thu, 01 Oct 2026 19:41:07 GMT  
		Size: 102.2 MB (102211657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4bf04fc44787e59c394bfa77dbc793c2afc13b454febdba950dc2a14fe4dc12`  
		Last Modified: Thu, 01 Oct 2026 20:17:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:86e8bd95bc17b86b178ed6cd096fa7119e7d8a48cd255edb8ae5b3e8da877806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b170637b6686d07248faeb7979bdd4187e277d1178a32697defac62e6998c2a`

```dockerfile
```

-	Layers:
	-	`sha256:d9a9a30bccf13fffa6fa41765393d425b8e0be8dad757ea650f36a9f6223f91e`  
		Last Modified: Thu, 01 Oct 2026 20:17:53 GMT  
		Size: 178.9 KB (178923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94353593b5eb3a69a32586eac8eccc89329eba079eb4b540a755735749eb8ab6`  
		Last Modified: Thu, 01 Oct 2026 20:17:53 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:b1f373521631885e5e045737fa264ffacd83fe9eaa22ed9bb77cc2adae5252f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107719598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018609687411f9599b9f0a76c63e611f89db89424a91e993502e88c49f2e6742`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:39:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:55:33 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:55:33 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:55:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:55:33 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:55:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:55:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36aeb084a89d36054756f2ecffa521adb23085a615dcfce9150711f711b136ad`  
		Last Modified: Thu, 17 Sep 2026 23:40:18 GMT  
		Size: 248.6 KB (248568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72239ae676da5bc196c54f187b5dd0a2e3bff0d5dd9ae170b48504f6369b5c2f`  
		Last Modified: Tue, 29 Sep 2026 17:56:01 GMT  
		Size: 103.8 MB (103755533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b1dd8f03c6546157e5e262e2874016011aff536f8f83ce44401f7d36e197b1`  
		Last Modified: Tue, 29 Sep 2026 17:55:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:da71a100bd2a99aa25f3a640bc2266305d747f6e2759cf142c9fb5d1d264ef6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 KB (204721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc1ac445a7e11842359a3ec3c10b1136fccca41a2e2600a035e6402dd475c88`

```dockerfile
```

-	Layers:
	-	`sha256:c73711e36e5c3cf148dc871a846c17043e0f5fb2b870e2dd2bdfbacc59ce5bfb`  
		Last Modified: Tue, 29 Sep 2026 17:55:59 GMT  
		Size: 179.6 KB (179623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80bb6ef1a7fd73622ca041c529faee878353fa9640fc1142208ac2144588aae8`  
		Last Modified: Tue, 29 Sep 2026 17:55:59 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json
