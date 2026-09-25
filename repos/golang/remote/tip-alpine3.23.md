## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:66f2f246733e675eb6a6870f5906f3f460d17502e139009aa01f9b07012c5230
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

### `golang:tip-alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:e76467b5abcb65169d16bc3b79af4616f801a2c29eb85dac7d3306311c3e8a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109459000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4559af1b8abcea73532305ae375df0abdffcb0cc7c869b275a0670a481aa7c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:27:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:27:16 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:27:16 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:27:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:27:16 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:29:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:29:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14525af953f600bf09a599a299ec4abba6529606db098b673142f0ec3431ed22`  
		Last Modified: Tue, 22 Sep 2026 18:29:22 GMT  
		Size: 247.5 KB (247510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2a3c1e67403e8ea59ff8dfb66f8fefe8f254e9f8881c0f25465bc655250617`  
		Last Modified: Tue, 22 Sep 2026 18:27:48 GMT  
		Size: 105.4 MB (105362824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935b8e9ca9481955c87485f8f10932fbcd27cd91932c4d0bcd9a624b132ee98`  
		Last Modified: Tue, 22 Sep 2026 18:29:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:94b194ed52d87261ba0c54eab0c019b486dc9d13b66717653cc3025ac8752ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e847dbe2c09c0e2f931f6bb79a69afd59536fb09d5326627e3b35d14f611bd`

```dockerfile
```

-	Layers:
	-	`sha256:5a1b2fa7c92aebb87c71f6ed8a5c66e8d9b836b16d941913280376c9ce876332`  
		Last Modified: Tue, 22 Sep 2026 18:29:22 GMT  
		Size: 178.9 KB (178900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5dbb62e6c5f9075116a016d3bb46dae4842a5d1a3357638a24ccf783997b673`  
		Last Modified: Tue, 22 Sep 2026 18:29:22 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:57163da9273774509bce1ce2b045c356d8c1057423b29cfc080ecf5e38bffa4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105370376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936441ddafc5265c08d3bc589ac5275e5e017d2c4b6dc7646df8ab6a488b87d6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:25:50 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:27:32 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:27:32 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:27:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:27:32 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:27:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:27:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb4c98f1766f5e96c5da3734c062a98c61669972ac1c0479d2851fc0229200b`  
		Last Modified: Tue, 22 Sep 2026 18:27:48 GMT  
		Size: 248.5 KB (248459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68842e2e406c391a6f70cc120efb661116ff4f95979902d4467e41e42433bf6`  
		Last Modified: Tue, 22 Sep 2026 18:27:19 GMT  
		Size: 101.6 MB (101566832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1983a7d4c80e7346f04cce54b035395f8a6761c95843059a6294d80bc6b6eaea`  
		Last Modified: Tue, 22 Sep 2026 18:27:47 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e1d85537e233bebfedd8eb58e611080b135fd689f5d0133ee488a08052ee1cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b137d667e555939052e0f65bd1eca0d0851eca0071e823295849759bcddd92f3`

```dockerfile
```

-	Layers:
	-	`sha256:19d6ee8093eadbc07c7d1a5fe5491f78fbd134f0df87fae2af96a06c9764df93`  
		Last Modified: Tue, 22 Sep 2026 18:27:48 GMT  
		Size: 24.4 KB (24366 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:2d6c5a356a086658d9201b3df01b4444289b71cc357061d40e004ba6900762a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104750019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d197b9a0626cb0ef4571313c52fbd72f25e2b67b51460697ff8a2d9680f2a88`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:27:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:29:18 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:29:18 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:29:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:29:18 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:29:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:29:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c7af1114114cf163b90df0e4aae8925cf9c39ace2897b806297800b5bb237a`  
		Last Modified: Tue, 22 Sep 2026 18:29:38 GMT  
		Size: 247.6 KB (247556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2594fec72c274abdbe5fd8210c1dcaa3280face8fddb9c0eb3ed407fe446637a`  
		Last Modified: Tue, 22 Sep 2026 18:29:03 GMT  
		Size: 101.2 MB (101239393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd5ff2b8c3b7bfca3394a9c9b1b40aca484e4d9bf82071a83981a37ea9451ae`  
		Last Modified: Tue, 22 Sep 2026 18:29:38 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:da9efae068716e7accafad25107e558a4e65a41650a28aeb595dd642e11361a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:449efd7aec6b07ca8687f87da12f6ec51d9290c886e36a21e8d59593745bed79`

```dockerfile
```

-	Layers:
	-	`sha256:8abd7cb6e31c9fa6c99127a9f88770dcb5cca18b9776411fc2f1703b67bdcb7f`  
		Last Modified: Tue, 22 Sep 2026 18:29:38 GMT  
		Size: 178.3 KB (178252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14418b48187185913f91295c20abd04dd0d0f3ea08eb46e85d9d61c70349f956`  
		Last Modified: Tue, 22 Sep 2026 18:29:38 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:304cb26b9aa3f47b9059823bc70ea306322ed6268ada689ba8ae9e7d1b33d980
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104106461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc052bc9f28840d54ee2c4ae8b600279ce5ae68982a69723fb3814de61b8a25`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:27:24 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:26:42 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:26:42 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:26:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:26:42 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:28:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:28:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a801eb4bb9bf5555475f91dad6388449afdc82cd0802041222d7d874ed80f6`  
		Last Modified: Tue, 22 Sep 2026 18:28:40 GMT  
		Size: 249.8 KB (249842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c144e38cf7ccfd8bb72ace03340f27e2482b99ba6853dbdd5d404ea1f43670fe`  
		Last Modified: Tue, 22 Sep 2026 18:27:14 GMT  
		Size: 99.7 MB (99670404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ed5880264214e92d047876d84b77e519814bcf8a259cdad9e981a958d6277a`  
		Last Modified: Tue, 22 Sep 2026 18:28:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e730972b0ae500dc2be36d7340c98c42c1d53445a104ad16971a6cad1e2db689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:981b423ab25a0e0f21b6e81753415ffd2d993c4cc61b3e2c1b1b807c47f5c692`

```dockerfile
```

-	Layers:
	-	`sha256:c6dc90e2903a64ac166e904a905ae6122a890584819cc972a8887a3adc6c0b35`  
		Last Modified: Tue, 22 Sep 2026 18:28:40 GMT  
		Size: 178.3 KB (178282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f992c1b1f7ec9f6c379b4f5e0532b7c7251ea888d746355099ce1785d137252`  
		Last Modified: Tue, 22 Sep 2026 18:28:40 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:5c3dba688b734bb762ef3d6b1d4ce0ef5d01517679726d2f2bb4643c647e91ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107234501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1476050bac1260e9434890b71495bd56700ee158bfa5928c5a0ac635d8393d88`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:28:08 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:27:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:27:28 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:27:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:27:28 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:29:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:29:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332e7fe3c08375f5ccd2b756a39bb36bd11ceb5f3e85c5571e43a7495bdd8ab0`  
		Last Modified: Tue, 22 Sep 2026 18:29:47 GMT  
		Size: 248.1 KB (248053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a59a96cb04c952ad5d49882f36043709a09e4eb2b1b32a1358cc20c369b7122`  
		Last Modified: Tue, 22 Sep 2026 18:27:58 GMT  
		Size: 103.3 MB (103311180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de927b6b4f4b04b44dbec85afdf5e93a32bbd901639553fa3109f9c7800ed47`  
		Last Modified: Tue, 22 Sep 2026 18:29:47 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:7e45ac96cc704ba81c39319fad9786d66fd36653ef21fe88e9603cb7eef2dcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53815c856c0ea5d37b8afde30e52ce6d04ee750a7838bd55873f9b4c66601289`

```dockerfile
```

-	Layers:
	-	`sha256:4f6c436f1ff8b192ff5ef160ea81c8e42fcac34a8b7d640f0264f3cad5fce6c8`  
		Last Modified: Tue, 22 Sep 2026 18:29:47 GMT  
		Size: 178.9 KB (178867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c0758365c5bdc177297b5cbea366ddd24549fec98686292257d4cdc7e27ffe1`  
		Last Modified: Tue, 22 Sep 2026 18:29:47 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:5aadcb0dec235908612a43ec8ea281f4990eaf77e64f296f41f19348278fbf63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (105952392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8ef57bdf1697290b6a3cc57a6996c48c647b2bf85d36a7acb2d92522964682b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:46:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:26:51 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:26:51 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:26:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:26:51 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:30:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:30:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e7d755fbc89975a56671fb9c66c0475cd0c3d985931f98beed5cc993d42210`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 250.2 KB (250238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf5065b0a443b25220e866e886b20470bf7bbbb219c2fec2f97a7f7a28c0691`  
		Last Modified: Tue, 22 Sep 2026 18:28:01 GMT  
		Size: 101.9 MB (101887227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66389e49d38debcc2304c47ee8c0749a1ad052de92b31abd39eee49efbb01589`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:8735cced392033fe2d7cf9b456dbd0f69e31d97bd26050b85d46aee1f80cd68c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 KB (202630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a02f64d1a3dee0582fc8317a32ac1e1644f9a00f1abe756fd6644c3ee4eb4f`

```dockerfile
```

-	Layers:
	-	`sha256:a269513722a2b071c51fc73903b1dbb2ae7e4e7a561f030dbb567d7b68d4b595`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 178.3 KB (178289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cd52cf8689074de94d8f1f96fd05f69c88fab2fc417dcf5584bafffe99cbe26`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 24.3 KB (24341 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:0ccbdf3de6fba7e2447511c50d0c602fecc367133180fa51ec5da53d109ab7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106069677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee244d66a79291e105d4fb66f09859b9de43920cfc1b3f41dffbb92e497e427e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Fri, 25 Sep 2026 00:49:34 GMT
ENV GOTOOLCHAIN=local
# Fri, 25 Sep 2026 00:49:34 GMT
ENV GOPATH=/go
# Fri, 25 Sep 2026 00:49:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 00:49:34 GMT
COPY /target/ / # buildkit
# Fri, 25 Sep 2026 01:26:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Fri, 25 Sep 2026 01:26:30 GMT
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
	-	`sha256:a6989a86c1cdbcabbd7c013bccde5d60b9cec5e774f767c9d5295b308d467fdb`  
		Last Modified: Fri, 25 Sep 2026 00:53:18 GMT  
		Size: 102.2 MB (102245243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829eb389a0d86f45a929c2bd5fafbd3be26dabfc803c28180e7560661d1e6361`  
		Last Modified: Fri, 25 Sep 2026 01:27:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:a1ad85c671b023af921da52bac51c61c93ed2719421fb35457de79585e04eb8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35e46bb8a06dee37b58df9d79889a506159f41c90e372fda7698e59248eaddd`

```dockerfile
```

-	Layers:
	-	`sha256:3e99ce2f935bfc2b52cac4865940cf8c4dcd588a02de530a51408bfda7b66ac8`  
		Last Modified: Fri, 25 Sep 2026 01:27:50 GMT  
		Size: 178.3 KB (178285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40196f8564d5a2b695cd50dee44c33fd3bd4c9f6f5d833ec6e2963be0bc07586`  
		Last Modified: Fri, 25 Sep 2026 01:27:50 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:7d6149fc6c4def03002db9a0c502f090d6ff8662cc49aa747659b765d1cc63f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107912465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e10f8f161f591b3b8c446497fbbb0c72369896a2b9febf54899c86d99a5ebcd0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:43:24 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:43:24 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:43:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:43:24 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:43:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:43:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ddfaec3be95f27dd8946c7aeea6d7456f6d56bd3d2fabdbe4078df7699d3eb`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 248.6 KB (248571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e9792bae27e8a4f51cdf2dd333fb7ed79a26fc5949f65e44a75f6a4ce898ab`  
		Last Modified: Tue, 22 Sep 2026 18:28:42 GMT  
		Size: 104.0 MB (103950480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5ea6b89a92b37a2c2dcb777205a719dc228520de60ba163cfcd6dfa129c862`  
		Last Modified: Tue, 22 Sep 2026 18:44:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:d9ec63fc05789f86474fd159f9b938c79bbba7c4f7fc6bc110f855a2f63d85a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.5 KB (203466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5977278fc4185de6d5113e948a3220118ad8496d4b389ddc76530ff8732b697e`

```dockerfile
```

-	Layers:
	-	`sha256:d376e2ee1f9b22d5bd697f15a8306c9de5d44606b92eb1d4a6c8269864c0d1ec`  
		Last Modified: Tue, 22 Sep 2026 18:44:24 GMT  
		Size: 179.0 KB (178997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32e337069668eca89b281e3e4aeca5914a089c0101d26a338477e99a021307bd`  
		Last Modified: Tue, 22 Sep 2026 18:44:24 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
