## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:b4eccb9e40dc63ff49d402dd915337b20df0342ab1a199463b361a38e50cc8ca
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
$ docker pull golang@sha256:1261211be9840bf05863e3766a5d1f410f1c8997787c91c6eff67479bf2312ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109250677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba280b63fec513d28b4a3786fed630d38f2f287a99f9f4b8bae386b93d930c7f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:41:04 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 21:42:29 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 21:42:29 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 21:42:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:42:29 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 21:42:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 21:42:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea5c48e18210d4b21a5029527c6bdd680d6ba1a0c91e99c2fa2e5f5aa28f164`  
		Last Modified: Wed, 21 Oct 2026 21:42:48 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d07970771627d0fc44985d114123f5fd927a97b65faecc0513972b352bc31ef`  
		Last Modified: Mon, 19 Oct 2026 18:01:33 GMT  
		Size: 105.2 MB (105153851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d920698f6451e22baf8ad1653f26c1c706b55acf7c8198832424c58cbe2c45c`  
		Last Modified: Wed, 21 Oct 2026 21:42:47 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e9b91e18f9dc7cf76dba551c83eb911239aa25e4af2c7aae6487db2ca8374aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8dc13b7bf032238724123f2c684e965d74266e507968c12a22bb15a9db27ef`

```dockerfile
```

-	Layers:
	-	`sha256:6af29ef0451345b13e2bb5e3ba3250406faa6f02678e692d6433d90dfdda0fda`  
		Last Modified: Wed, 21 Oct 2026 21:42:48 GMT  
		Size: 177.0 KB (176963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d94fd373dabe9debf59e4c4e3a65f40bb651f0d982bc6ca4ef0aafa67737a745`  
		Last Modified: Wed, 21 Oct 2026 21:42:48 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:21a1ec1e2f214ac785b9bbd91b9cc9352132020c55b9340018d627df61c776de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105178381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fff70d16825b0b081303d190fee2b65322c4184897395fdc415582e0e4c5d5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:12:45 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:14:28 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:14:28 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:14:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:14:28 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:14:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:14:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d81cdf19d21ea5f63f3e5be8b1407aefa9b8952ca19cf89c30de774ab19c5102`  
		Last Modified: Wed, 21 Oct 2026 22:14:45 GMT  
		Size: 245.6 KB (245568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efef78d19f54812d5d037ba04fe740ef126ef50b1dfb5b609ec9061ac0659dec`  
		Last Modified: Mon, 19 Oct 2026 18:01:15 GMT  
		Size: 101.4 MB (101374467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888213b2258fe09041ad7bc90282bbc066c2d582d498857adf35a8313516b756`  
		Last Modified: Wed, 21 Oct 2026 22:14:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:64112adacc8fd4dbf2b45425dd9e8854d33f20b3ab98b91028308339bd713b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbdf7ba55d2aad202ea3c8edd0d5f14ddcbd913e0001239645e22d7e6acf786`

```dockerfile
```

-	Layers:
	-	`sha256:d9554cba77dbe4b4695c558e9f056d2ba252f9fa83da92678803e54a7ece51e2`  
		Last Modified: Wed, 21 Oct 2026 22:14:45 GMT  
		Size: 24.4 KB (24365 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:12f12c89acbadac0c4f241e0b505954909201dd5fbcf0116f547427324419058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104564864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb5687bd4c10a6f97a0fd7007ca91353d237b24e39585c36ed6fe824219bffd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:06:53 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:08:35 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:08:35 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:08:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:08:35 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:08:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:08:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5299991cc3c8e2fd051f4af2678a549c87a748364087aed1ec09f4e0e2398f23`  
		Last Modified: Wed, 21 Oct 2026 22:08:54 GMT  
		Size: 244.5 KB (244509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc91ee2721cd9a109da67ffc60c54000b7efede3b8d6128a3f9c3f61597e002c`  
		Last Modified: Mon, 19 Oct 2026 18:01:38 GMT  
		Size: 101.1 MB (101053157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323631e87dd68ed3b9fc333014f1c0e56d8f0c7f1f169baa615928a7e79822d2`  
		Last Modified: Wed, 21 Oct 2026 22:08:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b258e5da5df04fa4d1c33a405d03295f4481d04498873f4fe07ba36e00f4b225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d07ecccdad77bdafbb7d1d98a2e1fba19afbd58f2c19709835127db210307a8`

```dockerfile
```

-	Layers:
	-	`sha256:92cb8ab7b41c7e3f9b897e521dcd680cfa2eabc8f515ca63d451174d297080bd`  
		Last Modified: Wed, 21 Oct 2026 22:08:54 GMT  
		Size: 176.3 KB (176315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2851aa64e3bd10756f3017e4ab1847662908bc8738e5c64e289f4c7e70ee9814`  
		Last Modified: Wed, 21 Oct 2026 22:08:54 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:8d2adcd00d0bb7231f927c7ac8dd8d660bf93c265c3ef78ec8897b884f3ed6b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103991449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9a872598480f5ec0aa8cc9fa440971171425eab240937fb3e1bf8c6f28d985`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:24:24 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:25:35 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:25:35 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:25:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:25:35 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:25:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:25:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:089261372384cc5b0486026cdf0bed774c1f965ad09ff64c6774c74630ce7160`  
		Last Modified: Wed, 21 Oct 2026 22:25:53 GMT  
		Size: 247.0 KB (246956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9417cdc878b050430cd75ecb0e089d66a342451bcf0ecc4ee4953b6cb8a5882`  
		Last Modified: Mon, 19 Oct 2026 18:02:17 GMT  
		Size: 99.6 MB (99554841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed1b8c3f776b3b402ac67df975b01772034021d6c18d1309e72b0d29e1446b9`  
		Last Modified: Wed, 21 Oct 2026 22:25:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:0a9b4e69cd03469064d1ac425053661904339ca23e11016dc374d8a75563f752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439e003996cb8ac712bf119ccb181820165d06a6f746cb89b0e505040511f5bc`

```dockerfile
```

-	Layers:
	-	`sha256:80eb1bb47f905f87782533a178104c7b104183077268b15db68bd0c1f54582e7`  
		Last Modified: Wed, 21 Oct 2026 22:25:53 GMT  
		Size: 176.3 KB (176345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2236f3fbbf0531da51054f3a9846ca806618db5b1f6bed8e552a2d5d71b2032f`  
		Last Modified: Wed, 21 Oct 2026 22:25:53 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:4a92f217fe8fc39a0908abf5986ba842038bf2a86e70a455c1eea0301abff39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.9 MB (106864218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce4fd32089ca3cb30c66f803944b3b70eec5a3248f858aca1614912b8e58049`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:39:18 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 21:40:58 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 21:40:58 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 21:40:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:40:58 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 21:41:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 21:41:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed04db07d0b1c04c37a6eea4ec300c0acb88538b9a455c1317ac2e6e40ed7bad`  
		Last Modified: Wed, 21 Oct 2026 21:41:16 GMT  
		Size: 245.0 KB (244999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f34ae54752f89828f255f547252f84b9b2f661f73e2c00f48ff397c18791686`  
		Last Modified: Mon, 19 Oct 2026 18:02:53 GMT  
		Size: 102.9 MB (102941753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d21faeb7dfbb5dafa9f01a331105e1e204e17ffe1b64de3a40314570511379`  
		Last Modified: Wed, 21 Oct 2026 21:41:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b0f669fb43f9fcdd7ab588b5d927e5f51d3c14fe5373b9a7ce55bb3b7698d7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680c9e57988baeb44bfc5b635dd9fd476b5ae4387cd38499cf6bd97989473771`

```dockerfile
```

-	Layers:
	-	`sha256:962aa123b7b07047914f3b64ea0e51e2f41087a37b3e60f8227a5caaac425e1a`  
		Last Modified: Wed, 21 Oct 2026 21:41:16 GMT  
		Size: 176.9 KB (176930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7092147befb6bd845a5c5d90e15409b17083803b266e20b9a6f0fd7912cd66aa`  
		Last Modified: Wed, 21 Oct 2026 21:41:16 GMT  
		Size: 24.4 KB (24434 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:83c87ea8ab3a330d763850536f1302b4dd5e80542cdbf28688f3f31e07084bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105829566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a20565da163eea1ccc5c8dd3f6b11678d7c5fb6e7bc4ec2fedeb4ae5661da0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:43:19 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:02:53 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:02:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:02:53 GMT
COPY /target/ / # buildkit
# Thu, 22 Oct 2026 16:19:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 22 Oct 2026 16:19:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532b15a0dabc471164e28414794d844eea3397b8c74dd419b66bbcf34f8fb267`  
		Last Modified: Thu, 22 Oct 2026 13:43:49 GMT  
		Size: 247.4 KB (247366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3969c5ba5e57deec40f3cea5a93cb146887629c240af3dd3c420cc91bb72540`  
		Last Modified: Mon, 19 Oct 2026 18:04:11 GMT  
		Size: 101.8 MB (101763666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557c313e325f059bd2576150c7ac1e1a1b553b71666ed31d89b792080a3eb94f`  
		Last Modified: Thu, 22 Oct 2026 16:20:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:abd547dab90dd2cf5e68006afe4ca69d67d0a18bf3209a17ea1f63ae53050919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fce4294d45bacc9473c6984cb47a27d4d2cc5a975fa656ae08ccb8821976b11`

```dockerfile
```

-	Layers:
	-	`sha256:30b2270de8330e1effd696dd5029d636111cd6ff8b7d8205029f70deebd0c80c`  
		Last Modified: Thu, 22 Oct 2026 16:20:03 GMT  
		Size: 176.4 KB (176352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a427a8f8e39c5db31b3bc0d6877d2fa098a26bd4146957d0c9a3210c8c55e10`  
		Last Modified: Thu, 22 Oct 2026 16:20:03 GMT  
		Size: 24.5 KB (24515 bytes)  
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
$ docker pull golang@sha256:f6c0c6daceba0f5b07387f9bc5ff3406703024fbf84237a151b711279b7aa0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107749768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294e170aed64479f55e137398da3707e3bd27c34883322388678e590101f0c46`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:31:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 19 Oct 2026 18:01:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 19 Oct 2026 18:01:36 GMT
ENV GOPATH=/go
# Mon, 19 Oct 2026 18:01:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Oct 2026 18:01:36 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:47:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:47:31 GMT
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
	-	`sha256:0d6fb31eef0025b29c46700c5b5c80f355cb9e06a94e748ae3ea31b41560eb52`  
		Last Modified: Mon, 19 Oct 2026 18:02:56 GMT  
		Size: 103.8 MB (103786913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57af790e443abd655a72e272528d66d6a2631bb52d37d51d98625935b3508623`  
		Last Modified: Wed, 21 Oct 2026 22:47:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:a7945ba3dfd8d3c6beaceb4416687ff00e7ba786c33bfc2d91dfdabd207caa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 KB (201529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ac5e88368671f8eca103fdf98f9b72b009524d61b7be8c41d15e153a913b4b`

```dockerfile
```

-	Layers:
	-	`sha256:c59ffec34d49e4873bc3ed75eecfce4a8762fef1dc1bbf5b0418f50a7350d235`  
		Last Modified: Wed, 21 Oct 2026 22:47:45 GMT  
		Size: 177.1 KB (177060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b3e7ca0786b70aca599045a416386e60b49e51b1aed1fb5264f8c136c5d0d4f`  
		Last Modified: Wed, 21 Oct 2026 22:47:45 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
