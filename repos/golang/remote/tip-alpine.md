## `golang:tip-alpine`

```console
$ docker pull golang@sha256:837720925ddc8e78a91f253993bd4180141c2872c2c7338b0d8028753f0a2d53
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

### `golang:tip-alpine` - linux; amd64

```console
$ docker pull golang@sha256:d9131de4a9c7b0aae3cb613258b4f520916ed3255e1cd6fc0b90a1dba7c3a3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109251281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c53ec24cf4b9d1b810c1a0c83eb706e662d2311320e440d754cf8cf10e5252f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 03:10:56 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 03:12:15 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:12:15 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:12:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:12:15 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:12:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:12:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3121ce76b697884c5ae3baea09dab40f4ee8f12b6cf212a1db000fe6e3c377d6`  
		Last Modified: Tue, 20 Oct 2026 03:12:33 GMT  
		Size: 247.5 KB (247534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d07970771627d0fc44985d114123f5fd927a97b65faecc0513972b352bc31ef`  
		Last Modified: Mon, 19 Oct 2026 18:01:33 GMT  
		Size: 105.2 MB (105153851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f38ed9b5ab11a45c9071085fe347addf525aae210eefd6f23a0f7e525ceb506`  
		Last Modified: Tue, 20 Oct 2026 03:12:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:ee6d078304355c9b8213ecbc86283108235dcd87d4805656b14202cbb261be56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 KB (204623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5449ec7c2663582391cb773d4ff10f18163004ac47baef538cb95734127b2cad`

```dockerfile
```

-	Layers:
	-	`sha256:b34bd6ea07716b257447a8a0e8ecba26a6d32eae7d8b4e3c3c22b7908654c0c3`  
		Last Modified: Tue, 20 Oct 2026 03:12:33 GMT  
		Size: 179.5 KB (179526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f9e2eef359f108dca844bd1925ebfde906108d7d3487e8370f2d9843c45214e`  
		Last Modified: Tue, 20 Oct 2026 03:12:33 GMT  
		Size: 25.1 KB (25097 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:d4c3641cba842ab3fb266829f58094107a99823f053f8b1911bc59f4d4fada4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105178232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54abbfe2f9ddcaaeaf499f1f330077a0cb576ae4e916bbe066d5f0ca1b44e41`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 03:08:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 03:10:22 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:10:22 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:10:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:10:22 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:10:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:10:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ffe814497e43e137ccd3487b13639d2baa0709dd60e00d74205411dcd4e5b7`  
		Last Modified: Tue, 20 Oct 2026 03:10:39 GMT  
		Size: 248.5 KB (248494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efef78d19f54812d5d037ba04fe740ef126ef50b1dfb5b609ec9061ac0659dec`  
		Last Modified: Mon, 19 Oct 2026 18:01:15 GMT  
		Size: 101.4 MB (101374467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9336b2b2b95f7b28a0c4804b2761dadf04a8d75e466c5e4796c5db7275e876`  
		Last Modified: Tue, 20 Oct 2026 03:10:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:e0b8966003ef6c7ce7414b293c50f0851c671fe05bdca4924da35932e668ccc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67f63200083a94dd0961ac79e73cfefc3de05e7671b863a2913bbeb3b1c9ca4`

```dockerfile
```

-	Layers:
	-	`sha256:ffafdae99b83ff891a85799f7a83662c4b62496cc2bfeaff3e060e3ae5fbbe48`  
		Last Modified: Tue, 20 Oct 2026 03:10:39 GMT  
		Size: 25.0 KB (25011 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:bd15987c649099576cb3984b8c6952bd46676be80d73c4293b1bc5399acc28c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104566061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da797ee71b31e14e003e32f84158058b8add2721d9e2f65939699a845eb66c9b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 03:13:15 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 03:14:58 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:14:58 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:14:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:14:58 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:15:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:15:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46b8e4138a1dcbd260c86f21e10c0212476b43d98443205617980768f7b7551`  
		Last Modified: Tue, 20 Oct 2026 03:15:17 GMT  
		Size: 247.5 KB (247543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc91ee2721cd9a109da67ffc60c54000b7efede3b8d6128a3f9c3f61597e002c`  
		Last Modified: Mon, 19 Oct 2026 18:01:38 GMT  
		Size: 101.1 MB (101053157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903daf5461f2852bc0d1af89b74a3d9173b18d3a59977fac8f24b970c7a992bd`  
		Last Modified: Tue, 20 Oct 2026 03:15:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:1e59251a16caf7e60becf5235621951a84dc29c017e4766505af7f6c2c43eed9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe38ccb0e93b916674a23f5f57ff6dd84a2369ef9bac4c74768e8787e85441cf`

```dockerfile
```

-	Layers:
	-	`sha256:762ea4701c6adf4c973b8ae8e651a4fc215e00ef8742d1c92dccf2db9381d827`  
		Last Modified: Tue, 20 Oct 2026 03:15:17 GMT  
		Size: 178.9 KB (178894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3817f634439f217e2b254747e57b720546219e0dc78a870ca909087bb99ea34a`  
		Last Modified: Tue, 20 Oct 2026 03:15:17 GMT  
		Size: 25.2 KB (25226 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0f39c94c723aaae757b1a24f6f92c21a1a8d7c115fb987cd05be97e649215f05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103992481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373507af44efee4c88d18cb838abf3647fda992c3607c31883fc45c9492b80a0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 03:10:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 03:11:49 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:11:49 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:11:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:11:49 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:11:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:11:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02c509054c9b883478891fbe4c66386fa9e4fbcda642fbf71b3b889637b3d3a`  
		Last Modified: Tue, 20 Oct 2026 03:12:08 GMT  
		Size: 249.8 KB (249825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9417cdc878b050430cd75ecb0e089d66a342451bcf0ecc4ee4953b6cb8a5882`  
		Last Modified: Mon, 19 Oct 2026 18:02:17 GMT  
		Size: 99.6 MB (99554841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8e112db060f375d311e386157dab70d8644326ea8d23bafe35f9590b5f2508`  
		Last Modified: Tue, 20 Oct 2026 03:12:08 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:8718ad9adf225d28161c840f594896500a1ddf97ac837e1154a560a63eeb87c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6784a98f7fbb05f94658f80dad7438035ba908fff7367a5e87935d95ed6d34c7`

```dockerfile
```

-	Layers:
	-	`sha256:eeb53faee9c20502c798e2583b1ccc81ab876413f8c9c1e884cdeadfcaf79f61`  
		Last Modified: Tue, 20 Oct 2026 03:12:08 GMT  
		Size: 178.9 KB (178932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5623e30e2a2d69f641425d5f226b5b99aca8e68e14772754108e92a5e22c8f6`  
		Last Modified: Tue, 20 Oct 2026 03:12:08 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; 386

```console
$ docker pull golang@sha256:429c8dca39dc2abb47f8f46294d385b8ec5c4dffb522936692eabef95f90ced4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.9 MB (106866723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910fd8523f7ca0f44e1be252c9ffa1e9701ebb3ee69736e577586a3eca4fdb76`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 03:10:41 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 03:12:04 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 03:12:04 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 03:12:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 03:12:04 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 03:12:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 03:12:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53260ca1ddd4d3d694f305026298615309fa1a1647e245a2e1f090f8d4be7d4f`  
		Last Modified: Tue, 20 Oct 2026 03:12:21 GMT  
		Size: 248.0 KB (248032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f34ae54752f89828f255f547252f84b9b2f661f73e2c00f48ff397c18791686`  
		Last Modified: Mon, 19 Oct 2026 18:02:53 GMT  
		Size: 102.9 MB (102941753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22816e13fa30d1285306375e3c0803b050bfaec5d5a8e4c7054e12f8c778de7`  
		Last Modified: Tue, 20 Oct 2026 03:12:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:366acee63786a8b5b62fb02827a8c72af5265692273cb80806948e8fe957ce21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 KB (204539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94157889e3565d1111e9737b8fcca79d48cfefe56880d3f794fbac117e740eb3`

```dockerfile
```

-	Layers:
	-	`sha256:8aea36d659ff1f29c5bbb55f8d700aa925763ab0b6d9f0349128bcb890405474`  
		Last Modified: Tue, 20 Oct 2026 03:12:21 GMT  
		Size: 179.5 KB (179483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12ded1e4448d819a9b1c37944da88550f9dc3a093ec1883d50c233843ddf0cd5`  
		Last Modified: Tue, 20 Oct 2026 03:12:21 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:8f2cc4ca69c912172d4fe6300abb6bb9507ade13085a97914e635c4187f68b5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105831580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d84a2b3dd72eaea3f30429b61c22d66cc1d119be7b19dacfff1a2c22e12d40`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:53 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:07:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ead3e5d134162dee7a14bb813a5ed676c80b3a1dd5e7adcd490a8d837da3cc`  
		Last Modified: Thu, 08 Oct 2026 17:13:49 GMT  
		Size: 250.3 KB (250278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3969c5ba5e57deec40f3cea5a93cb146887629c240af3dd3c420cc91bb72540`  
		Last Modified: Mon, 19 Oct 2026 18:04:11 GMT  
		Size: 101.8 MB (101763666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f776d8a12126a0ecb1d8078d497056165983407a8296d0d1beaae7aaaa2a2c`  
		Last Modified: Mon, 19 Oct 2026 18:07:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:4b4657f5f3bdfc87fdb5836316ebbcfeaa129f8431930e97ba75c3960f5ca7f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c8d12874d86ebe4e442f72dd2cfa76b196d7f9c45704f76182865dd9af6460`

```dockerfile
```

-	Layers:
	-	`sha256:aaa5e4cc5e063071fbd517e04be3abe9cb8ab82c1cc29b70173acb79cccba8e0`  
		Last Modified: Tue, 20 Oct 2026 03:16:15 GMT  
		Size: 178.9 KB (178927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:903952b6fad3add4697cef52b190bfdad59561943955dae65c219822fa2987d7`  
		Last Modified: Tue, 20 Oct 2026 03:16:15 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:a73558fcd98179d8d246f8468751699bbf2fdc357791981e5d05c2b880fa2aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (105961716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3a3cc3509ba5b7c05126023d423fc0d41384c3f9377c02c723f573a616e4407`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:33:03 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:33:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:33:03 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 19:14:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 19:14:48 GMT
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
	-	`sha256:2e8abfccbebb6990984afc48a50bcd0c4168b9e37a31b0d6473e7418e677a2de`  
		Last Modified: Mon, 19 Oct 2026 18:40:49 GMT  
		Size: 102.1 MB (102138235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f603bf4f74b8aa4e4e5c8cb8be9e4f46a3ae9aeff5e4d1de1748f1d9be1a6fe`  
		Last Modified: Mon, 19 Oct 2026 19:16:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:3de018d8d5a57784f88e0bb71bfb6512f99e102a84ce77efa3f7575b2875e21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec7a46c3a75b8c3cda730ffa1c2be3c05a534592f481c1ebb4581c2c76be9b6`

```dockerfile
```

-	Layers:
	-	`sha256:c8023eb208f1e9efc85af9d163d920d9f2964cce6863d92670cbfe84683b92d0`  
		Last Modified: Tue, 20 Oct 2026 04:32:20 GMT  
		Size: 178.9 KB (178923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97941b362d0a1270ffa99930ee491116b5e264e8222d3569b1b01a220e77eb23`  
		Last Modified: Tue, 20 Oct 2026 04:32:20 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; s390x

```console
$ docker pull golang@sha256:e18245ee10fbbbb2abc332ff31c165b175829a11627856a99a6cb8e5200b8227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107750978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe81098b212105f999bfb191fd7127f6800f6e14b3539d53278350aa632b3e14`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:02:58 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:58 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:58 GMT
COPY /target/ / # buildkit
# Mon, 19 Oct 2026 18:03:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 19 Oct 2026 18:03:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29d3dd38ba53030beb03fdefbdab2103c1e496f7fee3765c41e59ac3f61bad2`  
		Last Modified: Thu, 08 Oct 2026 17:13:11 GMT  
		Size: 248.6 KB (248567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6fb31eef0025b29c46700c5b5c80f355cb9e06a94e748ae3ea31b41560eb52`  
		Last Modified: Mon, 19 Oct 2026 18:02:56 GMT  
		Size: 103.8 MB (103786913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500278ef51120ba912a524f5ca610361be7df64d0293de1797560f356cca9cef`  
		Last Modified: Mon, 19 Oct 2026 18:03:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:7047a55aaa35a1a68423a90a0d04b327886581079fd4627a3433f09ac7c1ebd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 KB (204722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18854a599c137a43b666124a7fa1d3ee3ab86d8563abc7917cb02ad9f5d2c06`

```dockerfile
```

-	Layers:
	-	`sha256:651e8d720eecd1a106305762ecc3546d2becadab1e6f7bcef5ff0e37a0239d0c`  
		Last Modified: Tue, 20 Oct 2026 03:11:01 GMT  
		Size: 179.6 KB (179623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b68084fa1bfea0b2a0511539dd1975e346160ae277cf12b5714541772bd56aa5`  
		Last Modified: Tue, 20 Oct 2026 03:11:01 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
