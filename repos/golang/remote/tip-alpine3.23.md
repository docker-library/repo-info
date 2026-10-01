## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:04cb7768be8f8a067c7ba95e9298cf09edd602f5c0354bcbd200ed08b0852a6b
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
$ docker pull golang@sha256:529f234c67262953446fbca4acd6930cb24109dee22a6aadfe5f41d87feef111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109298021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b904a5b121d881e2acfe2b47683418b43398ae541bf2e84fe5c9460a9817890a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 17:54:03 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:55:24 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:55:24 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:55:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:55:24 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:55:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:55:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca3ab7fdc58f4b6721ea366611ba30fd6362fc6102bd728926dfd83ec7a4a58`  
		Last Modified: Tue, 29 Sep 2026 17:55:42 GMT  
		Size: 247.5 KB (247515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0999eb6622672afabcfc473ab64fbbae45e06ec398e000d9469d723fe2f8fc34`  
		Last Modified: Tue, 29 Sep 2026 17:55:32 GMT  
		Size: 105.2 MB (105201841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bce5fa8334303cf6d98479bcf9fe560d9647036e56ff3672f30d60693885cd6`  
		Last Modified: Tue, 29 Sep 2026 17:55:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:05b1f9a1f13d934a7ee69b713764d34ce616969910409ce9d0492d81ecbf2cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d894f339666e5b46cf6175ccc3646e1a2944e1c9d765250580ddc46d48b9c509`

```dockerfile
```

-	Layers:
	-	`sha256:aedea7e07ea1a5b717653625598822926c70a15d07b674168c232c19409c1a71`  
		Last Modified: Tue, 29 Sep 2026 17:55:42 GMT  
		Size: 178.9 KB (178900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b66ef25bf6581399e0b5fc0cb1d0dd18b05cf289f412b59baf6f204119c57f8`  
		Last Modified: Tue, 29 Sep 2026 17:55:42 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:4576016669c2ceec00f17306bbdb039ab017b704403f6463561cf6030a3fc44c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105128525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367e6e60b47cb9e2d53a99e3f412b2310ce1da971bfea1167d4bb1a58ece158a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 17:51:26 GMT
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
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edf7a12fe843f83d42989c058e046657411f6bd6a845334f3cd421c7ff605b5`  
		Last Modified: Tue, 29 Sep 2026 17:53:23 GMT  
		Size: 248.5 KB (248462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10128d350e50f4e6f31d8ee36d17c2f9f5887b5001d347d2bc22d8e165d48d90`  
		Last Modified: Tue, 29 Sep 2026 17:53:26 GMT  
		Size: 101.3 MB (101324979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2240c5d75ae81a353933e98ca787391a4a16eb4fc79cedb788c2e586bc9e33a`  
		Last Modified: Tue, 29 Sep 2026 17:53:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:18afd72d8c6c34611782117590b35e5cd12a8211e87609f06b34f5ce5d833a76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c180d7542b8576bc48bb16c9fda6c2e09645f1bc6fc54315c7b13f8578b5db4c`

```dockerfile
```

-	Layers:
	-	`sha256:3048d0b5d093c873e306d76f5a88b340e9cf33aa215f08e37ec36c8edc144faa`  
		Last Modified: Tue, 29 Sep 2026 17:53:23 GMT  
		Size: 24.4 KB (24365 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:f71c12ffa152235433aea423315d5da28e8e3edd0913eea3a244e10793c05e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104534353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c4536d6bcedc5a9f329e9c82e799ab8d34a28d830ef3606375fb0f5b2ad993`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 17:53:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:55:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:55:06 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:55:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:55:06 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:55:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:55:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39c93b4e134204b5f25bf92e15b16dc43c600aa042b7478c904d2d2b7b0dbbf`  
		Last Modified: Tue, 29 Sep 2026 17:55:25 GMT  
		Size: 247.6 KB (247558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5834c2eea1c38cb14eb938262093caf670b377df50d3011c148b6338e7be6374`  
		Last Modified: Tue, 29 Sep 2026 17:54:51 GMT  
		Size: 101.0 MB (101023725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dace18188f4a344174b709122a81f7e29f648de2cbde998d5c56630db0ed2da`  
		Last Modified: Tue, 29 Sep 2026 17:55:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:fa71216b6c2cb68eebd73c85c9f97e05903052367c92771ec0e8fa9b7e0da79f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c44b74ac7ef94dda18a7ac5584aeed8be748d4de48484d40b071b98a904f893`

```dockerfile
```

-	Layers:
	-	`sha256:63c92e38b3bbe8c3a15220ea1e2468e13d3d38d95e8cd0e3942c4558b021c510`  
		Last Modified: Tue, 29 Sep 2026 17:55:25 GMT  
		Size: 178.3 KB (178252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a68079b813aa75f49bacef510a845ee6ef9db27209097f68b74b8fec77967f44`  
		Last Modified: Tue, 29 Sep 2026 17:55:25 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:18a6c75d2b391156473278691b94eaa9fad145c1fd8c4822a45c401840469f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103963458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cedeec31a03a253d5028c1824d3fa25c460e6f6d364aebfb3d7bb75fec0560b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 17:53:24 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:54:37 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:54:37 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:54:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:54:37 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:54:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:54:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad714c501db674d79646e0b624eb95ad125bec79fc25b42cf354b057a9cdf57b`  
		Last Modified: Tue, 29 Sep 2026 17:54:55 GMT  
		Size: 249.8 KB (249835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407976649a33cee308503d4aa90a9d7d2d8c1f82dfaafc0b1053bffbd192236d`  
		Last Modified: Tue, 29 Sep 2026 17:54:56 GMT  
		Size: 99.5 MB (99527409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d837fa9b7d28cf7dcd0a79bb3d9e2fee2bee96afa12f5ffbfb47fdd8835b9649`  
		Last Modified: Tue, 29 Sep 2026 17:54:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:2e2b9ac9f76488ddb5acfbcee665e40261574913b63ae0c2e97d85a67b554d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:084e47210a88d393dbfe7565e001cbcd819cb11a34186c75aa740bfb8c37a96c`

```dockerfile
```

-	Layers:
	-	`sha256:1950e54014ffbaf986398912e94fad6fa0ba025e1c41779058133c562ebdaa45`  
		Last Modified: Tue, 29 Sep 2026 17:54:55 GMT  
		Size: 178.3 KB (178282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b265e5cc2828716727d50517c365450676f56e29ac6839ddd042c747373b6f8`  
		Last Modified: Tue, 29 Sep 2026 17:54:55 GMT  
		Size: 24.6 KB (24599 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:b684c3e205fd2804cf1bc013583ca03a3d5f86e42d1f9ba32fc1f26e8726e74e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.9 MB (106928913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2444ba864aaa5c3575373ce608a1605a19d1a279583ce5928da771767d7d9a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 17:54:05 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:53:21 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:53:21 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:53:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:53:21 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:55:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:55:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc8e1c9cf756180db510db12eb22829f06b9efb04c8623c9804fef8dff727ef`  
		Last Modified: Tue, 29 Sep 2026 17:55:46 GMT  
		Size: 248.1 KB (248060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d967aeb0675415130bbadac4f1c1ac365c9f4ede4e374f1f087f7b4cecd6f6cc`  
		Last Modified: Tue, 29 Sep 2026 17:53:53 GMT  
		Size: 103.0 MB (103005584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046bee3d45fbf34d88005e63fd12e5d98c1bf765a6e659d1a72a1ba286bbd655`  
		Last Modified: Tue, 29 Sep 2026 17:55:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b3eb1cb1400ada5c086efe8b7faec177f6c332a5d68d5ccd9624d74de302db56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd927775a2ac77134a5d9b0221c6419c3a700de9647c2a4a974d1b503815164`

```dockerfile
```

-	Layers:
	-	`sha256:385d7c6897a56439079ef2fb635f863228dda97d68164c1aa5526bfc955d9c52`  
		Last Modified: Tue, 29 Sep 2026 17:55:46 GMT  
		Size: 178.9 KB (178867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6879e668d18da139abc25fdc7624c38d69a4e1404456a8f42381efc5e206ca9a`  
		Last Modified: Tue, 29 Sep 2026 17:55:46 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:f6ca8cdb57149a7379c551031bb07054e2f090f98c6080570ed7f0843c94bddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105777612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec17086a35021b9d1f4c2df413ebea3f9efb0fd196ffb17be500804260c9d2c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 18:15:54 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 18:10:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 18:10:06 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 18:10:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 18:10:06 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 18:16:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 18:16:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0318952b0f6a3c4ea01d092638de09fd007228a140ac47a7b7d4c7c7818f0854`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 250.2 KB (250250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9dfcea9dbd54abdf4735c588b655a34ab5b353623c6254a20d02eaf7a19455`  
		Last Modified: Tue, 29 Sep 2026 18:12:17 GMT  
		Size: 101.7 MB (101712437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bde68cb0005bcb83d68c7d2b6422433f7adb2c740b878cf635316b13b6fb52`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:71ce1fd6524d5e020d0ef3968047d9cd89257e5a6b6fdba0f04104802e71d50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c3289cdaaa95f0314ce78951dcaff1ef3a75498242f25458a943d6582f7619`

```dockerfile
```

-	Layers:
	-	`sha256:ef08f2303990887e5cd3285fd5b3f30e91725ab11a7f399d9e1d81928e868a68`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 178.3 KB (178289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce6933e83839c1537b0c62afd135f8e3a3ad466ac02387cd4b67e9816907c153`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:d09a1ffd7238916d8ad628c8144e26ce01b0bd02d353c5f58755aaa2186f7323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106036092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9d267e94e1689a6db6cd09792c5f150407725a4c7718f46bca41e9914dc41ac`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 01 Oct 2026 19:33:40 GMT
ENV GOTOOLCHAIN=local
# Thu, 01 Oct 2026 19:33:40 GMT
ENV GOPATH=/go
# Thu, 01 Oct 2026 19:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 19:33:40 GMT
COPY /target/ / # buildkit
# Thu, 01 Oct 2026 20:52:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 01 Oct 2026 20:52:02 GMT
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
	-	`sha256:3f952667ce7d4fa0b42af84acc0ebd694f60fabe2a8c17c0b63b181ed368fef8`  
		Last Modified: Thu, 01 Oct 2026 19:41:07 GMT  
		Size: 102.2 MB (102211657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f8dbb7467b3147e1bd905cf4614acc463414f4d9c1f9ef06da0892517d8ece`  
		Last Modified: Thu, 01 Oct 2026 20:53:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:daabc5ed40a11c95bb7078e4c94023be8c9401b81b8d1d11255e323c799f7964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6f1c3e44e727638f3bed5193f910a76cfc9e42564bc6abbeda19746ba1a5ef`

```dockerfile
```

-	Layers:
	-	`sha256:17e348a7f63b7b016d1d591fa71d4410212c702fc0cfd21856b629064cbef8fd`  
		Last Modified: Thu, 01 Oct 2026 20:53:35 GMT  
		Size: 178.3 KB (178285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0060c2aa1a297ce3a123f5fd77686c81999904c085d549a3fff3180d31ec3a4`  
		Last Modified: Thu, 01 Oct 2026 20:53:34 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:03e3717886d012d496d9d3643d7823835e2166d4cdbfa473bcde23ab84664418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107717517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd8590227f02b2164bbbd5fe0e78bcb3fd66297e10ccc0a7a6d38abf855abf26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 17:56:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:56:25 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:56:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:56:25 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:56:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:56:29 GMT
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
	-	`sha256:72239ae676da5bc196c54f187b5dd0a2e3bff0d5dd9ae170b48504f6369b5c2f`  
		Last Modified: Tue, 29 Sep 2026 17:56:01 GMT  
		Size: 103.8 MB (103755533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb02c11fcb570066ff07ee84f8c00f7b0af922bb4e9694e54b37768eada6ee7e`  
		Last Modified: Tue, 29 Sep 2026 17:56:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:2c9eae7b7cd152454ebc2dafc1af45bb53aba71c50cda2c6f2c39196b59f5ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3deb632755547e7ef82fc0e566c61318b4beac4cc410745cd709843d8352c1d4`

```dockerfile
```

-	Layers:
	-	`sha256:aa4371ec48fadf2d2159e477186cfb7c9d52cc29c7c4db1de7e533f16d14258c`  
		Last Modified: Tue, 29 Sep 2026 17:56:56 GMT  
		Size: 179.0 KB (178997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfcf1dae9f7bc95e57b3e42ec3c4f528164a735c62c0b2a78a7199a53b8ae7c2`  
		Last Modified: Tue, 29 Sep 2026 17:56:56 GMT  
		Size: 24.3 KB (24294 bytes)  
		MIME: application/vnd.in-toto+json
