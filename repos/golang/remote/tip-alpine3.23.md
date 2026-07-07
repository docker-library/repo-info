## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:7441d4604d4b225810274838603adb241ba76f7ab6749da67d10910d33d39ab3
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
$ docker pull golang@sha256:ce89e8120de673b42e2a4a1484a47b1216c052165d83d266fe9a440bdb392059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106698219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbede3f09cd22b4f308c64182ca75c6974d4e1becad8e789f4b092ec4563d8d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:07:40 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 06 Jul 2026 20:09:45 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:09:45 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:09:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:09:45 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:09:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:09:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61824d375512f74d497fe05d52f019de2f8328faa2b79dfed989fe29877bf3f5`  
		Last Modified: Mon, 06 Jul 2026 20:10:03 GMT  
		Size: 245.1 KB (245068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd1c92ad6988f1e4a91a34b372fd19ca387750289ceb135fe024003cff8c1d9`  
		Last Modified: Thu, 02 Jul 2026 20:04:48 GMT  
		Size: 102.6 MB (102608572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099b701fea193c91eff39a76d581ebde36931349d3671c935f194c62141e6492`  
		Last Modified: Mon, 06 Jul 2026 20:10:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:ebd555a9aa206058657f9d89a76644025fa80cf8cb3580d2bc373fc752035b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5b5e5cb737a3cb61bcda73ff1e5ebb15f44d4aa24040c41c1f1569729ae537`

```dockerfile
```

-	Layers:
	-	`sha256:932cfef28658dcb863aa1cc00d955796b6ffd146076bb84dc1b51fa422ee5a7f`  
		Last Modified: Mon, 06 Jul 2026 20:10:03 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99aec7a605faea812c495751c8b4beb35d3b6db94c89d0a07a741cade034203a`  
		Last Modified: Mon, 06 Jul 2026 20:10:03 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:22c8caf2492fcf328c7eb174e67ed9b86a866928667068d553f19d06e35d7585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102430226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eefb76faf5505285afcf1a35b7452ab4f6d35726694db530789ceb047b0e581e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:10:24 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 06 Jul 2026 20:13:35 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:13:35 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:13:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:13:35 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:13:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:13:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da720662827a0ea7cb8b09fcdb7e8db04e9ae70830273880e94f8e64c378624`  
		Last Modified: Mon, 06 Jul 2026 20:13:50 GMT  
		Size: 246.1 KB (246147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edf6c56bfd921a8bf617ec862bcae402a6b840a52e4afd418894ff6e6f13f75`  
		Last Modified: Mon, 06 Jul 2026 20:13:43 GMT  
		Size: 98.6 MB (98631326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305f6418505e6270ab5d0c5ad8712083ac55cec6401a4876e479727c36f6eb61`  
		Last Modified: Mon, 06 Jul 2026 20:13:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:21ff656cd9a411bba757156fa6ec64da1c6a9559c12c1c2897823f4cc88672c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb0fbe1917b1c51817936f8f7cf95492df4dca4212fcb493d5f26f9af52ccb2`

```dockerfile
```

-	Layers:
	-	`sha256:fa59f57f3b054a32ed764e62eda884202676771bd9f1e511571759f9cf4e39f7`  
		Last Modified: Mon, 06 Jul 2026 20:13:50 GMT  
		Size: 24.4 KB (24362 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:08d47d91c87aad8f7254cf200852977577f35173a23c94f8e1a357691c8fd413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101815992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b73fc45392b4f0805c5fa0b37d30ec50f5ba61349bb3cea4ad7977754be633`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:11:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 06 Jul 2026 20:14:57 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:14:57 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:14:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:14:57 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:15:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:15:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd111ea5438869342de4a45f8f3e924ffb50369affb0d42255f714f0051c17b`  
		Last Modified: Mon, 06 Jul 2026 20:15:15 GMT  
		Size: 245.1 KB (245137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2521b5e84f3eb625b30d0a87085905f7848aba41e58efeac6475d5cc2efa328`  
		Last Modified: Thu, 02 Jul 2026 20:04:46 GMT  
		Size: 98.3 MB (98308843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b1b422c6b8183eb4d57d336e9d59c9f6d3e530f7202594c9ea510aa063460f`  
		Last Modified: Mon, 06 Jul 2026 20:15:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:1726dbd59f8d5e01b01742e3285cdc830403e7be9e75e9bcd82f5ef7716c9250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c49050397be08200cb650e8d3e0ed4637f92aeff8a396ab01231cafb46eb0fa`

```dockerfile
```

-	Layers:
	-	`sha256:0f11ba8b74cb3a0e4f2b7bbe0a124bdd035bfe9a1eadfffaf0e12d32a87bf054`  
		Last Modified: Mon, 06 Jul 2026 20:15:15 GMT  
		Size: 175.5 KB (175480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79d8bf2d1b643c8e5eca1f5b4ca02e8c00c1387944476ad20e17aff02996e1b`  
		Last Modified: Mon, 06 Jul 2026 20:15:15 GMT  
		Size: 24.6 KB (24577 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:fe844ca2a009129a939ce2f30598019bd3cf21fcee66f06c9c41cdd95ddc2459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101421146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6729ec3236cd60d7c09dd228f9624ac8147c1e88d349d837672c8bc1c5b79fc9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:08:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 06 Jul 2026 20:08:16 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:08:16 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:08:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:08:16 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:10:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:10:57 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c4a56aaef4f49cea644bde1c1fa454d48b9e02a7e6d1a070c1132438a97f78`  
		Last Modified: Mon, 06 Jul 2026 20:11:04 GMT  
		Size: 247.5 KB (247501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799855040db20c258a4625b397d8157c0e8c8f6fb4330c6dd9bf7584e6997533`  
		Last Modified: Thu, 02 Jul 2026 20:04:53 GMT  
		Size: 97.0 MB (96991627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a771aca5516f923516cc6a5728ec76ec307689d89032b7ac4785cb1f05bf1513`  
		Last Modified: Mon, 06 Jul 2026 20:11:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:769cb8ab676312c8bb89d737282ee6cf3ad5a94aa3bf952d589bec278b061d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6a80b9a7c97641a6691b04587c9b9c21b9753cb90e5b57a9f84b3315ed77ad`

```dockerfile
```

-	Layers:
	-	`sha256:96d41047f1d6e2e97fd648aa29763de6db473fbb766d203bc41ccf6f17e75854`  
		Last Modified: Mon, 06 Jul 2026 20:11:04 GMT  
		Size: 175.5 KB (175508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6846c05d906b10bfa344154b26d114e74a38d54585a0db03a9d306f8cdf41e1`  
		Last Modified: Mon, 06 Jul 2026 20:11:04 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:5a5ecdf143c49ea3fe53d490c469888419bb8bffca347113e1fcff97583e7e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104292912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a163b05820a2e6f08e2e5ac1fcf3e84e57eb73e11c126ac6b4a595989688f4a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:09:53 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 06 Jul 2026 20:09:05 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:09:05 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:09:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:09:05 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:12:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:12:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b532b2ff25eda1ea9c9c67afbe3058619e9ef5c8d10e17ebfbedb320d170ce3`  
		Last Modified: Mon, 06 Jul 2026 20:12:31 GMT  
		Size: 245.6 KB (245583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cbde1b461f8bce7bfc1cd1f21a1d7e86c0287b6db3fca745c83eb61347a6e8`  
		Last Modified: Thu, 02 Jul 2026 20:04:45 GMT  
		Size: 100.4 MB (100379181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec51d7239858feb73bd3c6eda07fb693e5a49f6d0c28dd5c7035a74f962265a`  
		Last Modified: Mon, 06 Jul 2026 20:12:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:6c9dcc23e4e039cdc67c315ff95247dc9648a1ced79a5cca5774bfc9bf878685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 KB (200531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38a2663269be82cc3fd6873e5c3a26f77db2d72d9aa0e8ef33874d6421eae80b`

```dockerfile
```

-	Layers:
	-	`sha256:409bcdc6373571be9ffc36f22645810ec4830e7be0d1395d0e6340ff6493c1d7`  
		Last Modified: Mon, 06 Jul 2026 20:12:30 GMT  
		Size: 176.1 KB (176095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c3a92f7bc7ea0d5d2c24afa143e16be457a73e799ebabb94da9e54b11da5ff6`  
		Last Modified: Mon, 06 Jul 2026 20:12:30 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:226b3159c2518331af2828df71681e84f9fd6ae11a098be3239e95a7f03030e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103040320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f72ef010c5db781ca17e91935a9e10dc985e80e641f75ef8356cc095d6b54d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 06 Jul 2026 20:31:43 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:31:43 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:31:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:31:43 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:37:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:37:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2afe4ddf70535a87895dd2928115f13eed6bd80bb630863f6b224ede37a652`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 247.9 KB (247906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4ec4c4387f8f7f83dc176a500406f82c3fd2e6dd09f7893384d4f62afdf0cc`  
		Last Modified: Thu, 02 Jul 2026 20:04:51 GMT  
		Size: 99.0 MB (98979957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d8e125fb1fb35c78afb08042db6beb3b6cb291ebd36685b0e5383277ff1b9ad`  
		Last Modified: Mon, 06 Jul 2026 20:37:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:363042aeadc32e954f1245aec5567715919f81a173ecd35e5189324672edb973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a14d971bf5c4ce38c9c16cb471cedb58fac284d13743a2ad996916cf5b72eb`

```dockerfile
```

-	Layers:
	-	`sha256:9d82e14ecd37f74f15351d5e54ae855a7be42d68b23216aaa543f7b8f8b145c2`  
		Last Modified: Mon, 06 Jul 2026 20:37:35 GMT  
		Size: 175.5 KB (175513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11290a0fb272a884f77b95862b5777797ae7d4749158e0a8a189d81ec28c498a`  
		Last Modified: Mon, 06 Jul 2026 20:37:35 GMT  
		Size: 24.5 KB (24510 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:349e124b10215a09b4aef94f3142f8ae7450a2b315904309cef29c934b3d7045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103741760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3562b1ddcd9ca9c2b29e1f3de1558beca59a6079895a976c88f5e8c8b84fe4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 02:28:48 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 02:28:48 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 02:28:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 02:28:48 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 04:03:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 04:03:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d1b6a4c21a78dbb25159d2e273a4550eac3caff5f0f9a74168efac89740c36`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 245.5 KB (245467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2c9ddd75bba6ad0fd1ac9d562f5a8aecbe1d7fa189e7c35d6e13745b2b8e7d`  
		Last Modified: Thu, 02 Jul 2026 20:04:55 GMT  
		Size: 99.9 MB (99922895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bd6c422fb296d192ee62a42969c2b1cf6f0c0fc9903f753e7d5f266dab3af8`  
		Last Modified: Tue, 07 Jul 2026 04:04:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:55cd8df4e8fec62ae67fe353934ef8dc4f2d152d531c4394afb831b5bd8f5d1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6faa2b733c61dfb7cd5a6ee2d3eef6d0ed5148da3a8cc27104bcb7fa83dedfb`

```dockerfile
```

-	Layers:
	-	`sha256:f5acf1a8f69f8092fce4fdb09bce858782b22f4181760760c9148c1c7032c16a`  
		Last Modified: Tue, 07 Jul 2026 04:04:53 GMT  
		Size: 175.5 KB (175509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45f07f89c5872be34f66bf0e5fb6eb3e9ca7ff84e8cf0df1c10570291934ebd8`  
		Last Modified: Tue, 07 Jul 2026 04:04:53 GMT  
		Size: 24.5 KB (24511 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:c9d15fb5f783df3d00c983a59a1e77d19cd84662fa045e5309877fb2aa0c10fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105001020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f453a0c2e7a31d69842cfbf6b54c81d48f11005c4b514bb9a1c8186a114d053`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:41:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 06 Jul 2026 20:38:38 GMT
ENV GOTOOLCHAIN=local
# Mon, 06 Jul 2026 20:38:38 GMT
ENV GOPATH=/go
# Mon, 06 Jul 2026 20:38:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 20:38:38 GMT
COPY /target/ / # buildkit
# Mon, 06 Jul 2026 20:41:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 06 Jul 2026 20:41:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1718196a71a3addbf43c83e0e65418bdf203de52f5b7783093a5f70b48bfa636`  
		Last Modified: Mon, 06 Jul 2026 20:42:07 GMT  
		Size: 246.2 KB (246160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30338cafbec1cacd6cfc0e40572821cab5c72836742d527d6275b5cd089d0b66`  
		Last Modified: Thu, 02 Jul 2026 20:04:49 GMT  
		Size: 101.0 MB (101047453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45835f8e88b5c255fd6b6acdca8baad051cc35a3dafce3d08f694d03f1084a87`  
		Last Modified: Mon, 06 Jul 2026 20:42:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:92dee819a7a0e690feeaafa5ce921f3cc397654a2d76bbd90d5c52bc3ec9278d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 KB (200518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b5f1b2bcae929e5c916947e3f1f2301dc0a74b3ee663c83128677fbcc96e32`

```dockerfile
```

-	Layers:
	-	`sha256:afc57841b57ddaf7c0058896a587fe11431177534ca889d769d7ca033b0a88e8`  
		Last Modified: Mon, 06 Jul 2026 20:42:07 GMT  
		Size: 176.2 KB (176223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48ea42c231dba16938c586ce4129cbb958342071d40e36604193c369a29e5e07`  
		Last Modified: Mon, 06 Jul 2026 20:42:07 GMT  
		Size: 24.3 KB (24295 bytes)  
		MIME: application/vnd.in-toto+json
