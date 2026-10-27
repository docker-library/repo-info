## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:78021695eb190df3ff881d68d2bd07b847efcd685e3051f81085363afbbac9da
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
$ docker pull golang@sha256:68ef81c7fbcc8ed3dacd0c008c382ea234e89f7175ae05d67d984e706f580e94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109275322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79eacdd7c70b740a88934489541be14f37b5d59899565cbbdb723a822fd63bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:40 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 27 Oct 2026 16:30:07 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:30:07 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:30:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:30:07 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:30:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:30:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c52f28268194e0fa5d70030ee649bc3120c9be6c8c1df47436c327c6cecb77`  
		Last Modified: Tue, 27 Oct 2026 16:30:26 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82722e2c046f52bc924fd3eab9f7d4fbf5bbac9fb0ce67fcca5e63377a411258`  
		Last Modified: Tue, 27 Oct 2026 16:28:35 GMT  
		Size: 105.2 MB (105178487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d57f95ef3b368335e35dfc81c9c34cc177abb8d6d8faed4b2cb2023d7b69560`  
		Last Modified: Tue, 27 Oct 2026 16:30:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:864d8f29778a39dfc56d18836b73eaefc5592374f96a4d936ef743233da0dba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c033cc52076258a586222b458a841f87e0881ed359709e41a932235578c87c8`

```dockerfile
```

-	Layers:
	-	`sha256:730a1aa47cbd1fa682ef3e52b78a360ab094561a0acf2401ecf775b60efd4aa0`  
		Last Modified: Tue, 27 Oct 2026 16:30:26 GMT  
		Size: 177.0 KB (176963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb14b119d47f1bb6d74b26090c529b246db9cc98d533a96cd1c3944bfb5cbf1f`  
		Last Modified: Tue, 27 Oct 2026 16:30:26 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:4a1df7278f6503d4ea8de2f81bbe7a39b382ff4dfb9f9bfb5375d9dd43f23a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105188353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5488654f55a3ad7ccdbcdd815535ba55b0fa250a29a284c2ebb7f467e31e3e40`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:08 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 27 Oct 2026 16:29:45 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:29:45 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:29:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:29:45 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:29:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:29:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85dd18e01707bea77958c93bb1c7f4ae922e7323a3d0b33f819aa1ddf9d2d627`  
		Last Modified: Tue, 27 Oct 2026 16:30:00 GMT  
		Size: 245.6 KB (245582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a80a1332a2cbc406d3bfcfb19aa53679ebedc76f57a3a2cbe45843c243b0fe3`  
		Last Modified: Tue, 27 Oct 2026 16:29:51 GMT  
		Size: 101.4 MB (101384426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0985f9f1ee25a4a2f27f67cc87aabc53b0585607a6082ddc776095075d6e94d6`  
		Last Modified: Tue, 27 Oct 2026 16:29:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:d1103c3f1e8acecb8048b4e0dd15bd9e9f69a08594d4841ede30a3e49613b198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545e7413803ccadbbf0ab16cd06ea394e1d8016d8454db0ab50a1ea9dd219429`

```dockerfile
```

-	Layers:
	-	`sha256:409ef19ddf1a1535c88e14dab4ca30e89c5cd55305b6814cc6ef63929ebb7b6d`  
		Last Modified: Tue, 27 Oct 2026 16:30:00 GMT  
		Size: 24.4 KB (24366 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:bd771cb99f6dd6ce58c28ff3652f337a8a61581004a68990404518464271ee6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104570887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae9efb97009b2da58547db31eb164b8428a40c9d472f5f209deae05e8a4a9c7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:17 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 27 Oct 2026 16:28:55 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:28:55 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:28:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:28:55 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:28:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:28:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a94c5bd29712c1425bd4e3fdcd9f23bbb26ec044359ecdf76cc2ef86b55327`  
		Last Modified: Tue, 27 Oct 2026 16:29:13 GMT  
		Size: 244.5 KB (244520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585ed0706d066a1f8a8160080fb6eb18909eb49a3d840816f9c4cd9c4cf85b15`  
		Last Modified: Tue, 27 Oct 2026 16:28:56 GMT  
		Size: 101.1 MB (101059169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddc3aa1429cf70611cd792895fd926a7b71e797ef4dd3b70e01b91fd8737258`  
		Last Modified: Tue, 27 Oct 2026 16:29:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:aa3ce695e1f88d95be13bfef44f5bb014ac7c219fc5805df4ffe05700f748baa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b0888a9481576cd450c1deb4b5ca536fb1f7b7aac537038a91599767918791`

```dockerfile
```

-	Layers:
	-	`sha256:c0def62bc0334ef6159b16616417cfb2f1a68537bbd8fad5c386f3f117685a5a`  
		Last Modified: Tue, 27 Oct 2026 16:29:13 GMT  
		Size: 176.3 KB (176315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f2ff32de4cff2443a502ba2546e2a8993d03e313c47b49d25c9cc41af30e9ca`  
		Last Modified: Tue, 27 Oct 2026 16:29:13 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:b23ab6989681a20050deb03546a883862fcc233d9c071a7d70ca4a9c3ca1f547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104000728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2661bcac643b415908bcbb107a1aafb8009152055b25d316a2105c4ea9db4cb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:29:08 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 27 Oct 2026 16:28:29 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:28:29 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:28:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:28:29 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:30:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:30:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec91dd3b9298e4d2d5332fe0b6335576e7a56bde11b599b755b2f44ef4d7995`  
		Last Modified: Tue, 27 Oct 2026 16:30:26 GMT  
		Size: 247.0 KB (246960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e63cc2709b769d01b299b6ecc290dd6fd049fba9121425facd2f9f9d685556d`  
		Last Modified: Tue, 27 Oct 2026 16:28:28 GMT  
		Size: 99.6 MB (99564116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b9fde3cfe6178c0dc40e95dca222ba4d9c8bac3e7884c44f6803f214177ad`  
		Last Modified: Tue, 27 Oct 2026 16:30:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b1fca8a1feb93e402b8a32f7738703a12d99e8f8762691bc2ae60bed31fe62eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5bf5946d15d13cca1d98523d438dfc04f254ffd1b462f3f3fe041b2a9915e6`

```dockerfile
```

-	Layers:
	-	`sha256:75ffaa6c4af27166d5683d8d92e3eb6ddbf82d8e4aa0d468160273eeaedbdb7c`  
		Last Modified: Tue, 27 Oct 2026 16:30:26 GMT  
		Size: 176.3 KB (176345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d748740c3a240c95b6fb59a5bedbcc87b0c6fe5faad06255cf9fea9ea1347d6`  
		Last Modified: Tue, 27 Oct 2026 16:30:26 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:e3a6efbf281a82686a0d84040af9501e4b30693b5a07e6095e22b99b8f978168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.9 MB (106883762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd39b6b521080f2d0795a82f1d0aeedeaaf3467285b986c379d9719174758b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:54 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 27 Oct 2026 16:28:26 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:28:26 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:28:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:28:26 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:30:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:30:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53debf3349faaa3f54cf04b59d156728cdedf446acb8c15d577291d92331787`  
		Last Modified: Tue, 27 Oct 2026 16:30:40 GMT  
		Size: 245.0 KB (245005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472f9a541f4058200fdb5c688e93c6b823dc26a63f30bfce9ee0889838aec45e`  
		Last Modified: Tue, 27 Oct 2026 16:28:47 GMT  
		Size: 103.0 MB (102961292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcfb35278f8c62a58d4344957387379265bbee6951a86f6ff9c6c957dc1329a7`  
		Last Modified: Tue, 27 Oct 2026 16:30:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:50a2e859938a0891713179bbfe257a61bb32d192741277f6a63b56ce6055a1db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d71ac1866fb7be839fa00d2198a01cc4119258fbe804a4cda9e388a0eff744d9`

```dockerfile
```

-	Layers:
	-	`sha256:ff29b8db64f565ff8c248e7a22eabebe55919d3d71a572e0aeead3439bdcb825`  
		Last Modified: Tue, 27 Oct 2026 16:30:40 GMT  
		Size: 176.9 KB (176930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:900641a4397d7eae208af641863aa01b7b7b5e273d7f11d722ea22782a962c50`  
		Last Modified: Tue, 27 Oct 2026 16:30:40 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:26d46971b596df2ae16c53b7bcdea39cd8a83475827d08e80151320662151a2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105879314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44783cecc6731df3c37b04e64e6a7a1599245c4ca71a8a42935a3aeeca9820e4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 20:29:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 27 Oct 2026 20:27:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 20:27:25 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 20:27:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 20:27:25 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 20:32:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 20:32:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1db678acb14fc75a5f5597dcad730175cf61d9da5cf8acbc5b0af8e390a2c68`  
		Last Modified: Tue, 27 Oct 2026 20:33:08 GMT  
		Size: 247.4 KB (247372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8ca9ca011184d58c037e97d28044484ea497a6cca757182d4969f97cb5945d`  
		Last Modified: Tue, 27 Oct 2026 20:29:29 GMT  
		Size: 101.8 MB (101813407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0ee4a4eb8e05d66a593fe0f1be3f1f9e9ce4d5e8abdad26683edc10b2dee9f`  
		Last Modified: Tue, 27 Oct 2026 20:33:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:58490d1a15c0e5539e765b2b0d2f552ba3d3bf151c74d6f594e6d226f9860fd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc453ffc2e2b92d3834d99a762e681c5d1a9e4e5b0dd1292ad04fb46064aea4`

```dockerfile
```

-	Layers:
	-	`sha256:58e999f4b0b479ad4b0794b79b2d692ddc4ff2256a5b32aa5ba5dd97e392bc62`  
		Last Modified: Tue, 27 Oct 2026 20:33:08 GMT  
		Size: 176.4 KB (176352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c22107f1623400408b994509aa8e2171ef666db04f67ce407b5e4976dbb28f3`  
		Last Modified: Tue, 27 Oct 2026 20:33:08 GMT  
		Size: 24.3 KB (24340 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:595eebce43d6286f4a1aa295e93f0a3ab4ada6102195ef67bba62799975d0d02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (105962668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a28e5ad99cd904d5b8f1f5af09e9d5ca7adafe83d2dbf8f8752e7ad02c3812`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:33:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:33:03 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 19:51:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 19:51:19 GMT
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
	-	`sha256:2e8abfccbebb6990984afc48a50bcd0c4168b9e37a31b0d6473e7418e677a2de`  
		Last Modified: Mon, 19 Oct 2026 18:40:49 GMT  
		Size: 102.1 MB (102138235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90efefd5c089f45b41d2ea7b9fb5dd326b355e575d8912cd81f344dba2ef638`  
		Last Modified: Mon, 19 Oct 2026 19:52:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:a3e3ea077fee451a536a1c54b7587748ecdde9dacd5dabf02f3765e7160b6ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ecf96b4ff8580b332cf7571a460bf7edde8bea6f7f8510fa41c52e3829bf510`

```dockerfile
```

-	Layers:
	-	`sha256:0a9f97526da5fd2fa60c4e7252c3ef3369cb42f327a554c008eeda802708329c`  
		Last Modified: Tue, 20 Oct 2026 05:08:02 GMT  
		Size: 178.3 KB (178285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d085b48dfff437ecb706f8a9f104d1e4857e32c018a3a56cd73b78f606d1984d`  
		Last Modified: Tue, 20 Oct 2026 05:08:01 GMT  
		Size: 24.5 KB (24513 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:388e11be540a43f58cccd2ef7f5dd90fc588da655efd4c0f761af917a4026696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107781331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba71afc2352815665c7af1a9c5b6fcb6cbbe81da423f40bf4d735d4f8745cb2c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:31:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 27 Oct 2026 16:30:56 GMT
ENV GOTOOLCHAIN=local
# Tue, 27 Oct 2026 16:30:56 GMT
ENV GOPATH=/go
# Tue, 27 Oct 2026 16:30:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 16:30:56 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 16:31:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 16:31:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f29a84d60f4f338e1d58bc747c35680d90d0da46ff95067b313d6625fea5c8`  
		Last Modified: Wed, 21 Oct 2026 21:31:48 GMT  
		Size: 245.6 KB (245578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5d7035eb958b24f1737d1e86275272f4744df284b425d94bcac03d56709fdd`  
		Last Modified: Tue, 27 Oct 2026 16:30:59 GMT  
		Size: 103.8 MB (103818476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dee74873ed1780b14d7045011983964d101f176f9ab151a29044a5bc2b605d8`  
		Last Modified: Tue, 27 Oct 2026 16:31:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:8832525a68cc8363cf7467a35534b3f55dd6408d6daeb85c5b62452216948bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 KB (201528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c680232c78f090a372e8d27924d3606763e67e14ede5aa82d373d931573d246c`

```dockerfile
```

-	Layers:
	-	`sha256:d255abb9128c776b2d5ae99fe79575d79ae3ecb72ac897372e34f783bf676fec`  
		Last Modified: Tue, 27 Oct 2026 16:31:53 GMT  
		Size: 177.1 KB (177060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3b09015ab35b89ea02ee7f08b6971c0fa4de0b00d51936643d1d6ea2c961d29`  
		Last Modified: Tue, 27 Oct 2026 16:31:53 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json
