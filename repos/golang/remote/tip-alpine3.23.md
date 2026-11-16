## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:dd75a5c6c114010264e040cebfc038a8e5b9d61171ff367a135c711d357ba74f
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
$ docker pull golang@sha256:42079a934b74b3e9fdc85fa073065a6644ad0ca054362b44a1ba794fd6f7d523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109398183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5605de39c6b527fa1cc5fc028e79c086909fb039f3e8e2ab622998c668937b3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 20:04:13 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 20:03:45 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 20:03:45 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 20:03:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:03:45 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 20:05:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 20:05:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd209d103557b9813f077d6fc5ed3133ede687d3f383bc1023dfd12eb2e919c`  
		Last Modified: Mon, 16 Nov 2026 20:05:45 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad85a89f87fc149936abff9320ce12e5276df7e3e0b9baf1d1634a8964fe99fa`  
		Last Modified: Mon, 16 Nov 2026 20:04:06 GMT  
		Size: 105.3 MB (105300982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3add02aebf0499d73635ddc7d5a10694223bf60ef141f55cf81e4fb10d96be98`  
		Last Modified: Mon, 16 Nov 2026 20:05:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:536042b30b41a13b2155df6d9b7a10b9e415775fef3c84c21add730c9f5b790c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69653809230920ec439c612ace2be523a0e30b57d8b3809343904a0a9e985594`

```dockerfile
```

-	Layers:
	-	`sha256:e7ecd7737663cc8077efee196f19415878a93815a565e785ed5787487cc3c3e2`  
		Last Modified: Mon, 16 Nov 2026 20:05:45 GMT  
		Size: 177.0 KB (176963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d972a8dd456109d28f11e8d9ef4a3800875d04bfbe096b13e74e005915635b9`  
		Last Modified: Mon, 16 Nov 2026 20:05:45 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:154e6c7c60d8a2e9625ab5940f9a80de8349541ccff20244b76643ed8dba8d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105542445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551971a349494c9958d62e1363560dfe6cb2b5ac16be4351bae26cf842a421de`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:46:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 19:48:15 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:15 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:15 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd1b6ba4aa0f82bf8624e4fb038ce343658b5b42a33afef910e0a0cb622ae28`  
		Last Modified: Mon, 16 Nov 2026 19:48:32 GMT  
		Size: 245.6 KB (245577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31f01730a5f5ae01386aff62065489cde540d31e48d01ae7b7f018bcf826309`  
		Last Modified: Mon, 16 Nov 2026 19:48:30 GMT  
		Size: 101.7 MB (101738459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f6770c7ea74ce7d3fdfc070e55a1bf7659d78641e426089f2b38fcb0a68eee`  
		Last Modified: Mon, 16 Nov 2026 19:48:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:82d72d1df6ae83185de7cb42e5778ec704b3b0c851199ba5422503045a78dc69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b323977b8894cb6b759e2c31ff0c7f625f7ab35568dd5bf2b13cf342e574c25`

```dockerfile
```

-	Layers:
	-	`sha256:9d0333085e11a474b8e97d6dc6e227c62cc3bdf352377e40ed1a90f1e269adb1`  
		Last Modified: Mon, 16 Nov 2026 19:48:32 GMT  
		Size: 24.4 KB (24366 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:2d6ef39eaefb460b689bdb2787f1c11262c2dc00845de603647dd7f301f6314e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104920377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ac8c3e173fd0457138e97d2ee8f29181e42a9fae779f9965552b2a36f16c1e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:46:53 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 19:48:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:36 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:36 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1d08516c1a3b5b3a620a1a0ef4a7dd41ad10a1202ce0788800ad7c91786ab7`  
		Last Modified: Mon, 16 Nov 2026 19:48:55 GMT  
		Size: 244.5 KB (244522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0682325f35574741c2b46338269a06687f5ff9e31a5f02cab62501cd269ece`  
		Last Modified: Mon, 16 Nov 2026 19:48:51 GMT  
		Size: 101.4 MB (101408869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a323f0b395d7f834b8449be7e0f3948d6fb905c972fbb88f046749fb652f10`  
		Last Modified: Mon, 16 Nov 2026 19:48:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:fb2e964e37a88b9cbec7614eb74c67935f421de42666818d66a6bd718b23d838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b227617bf11c6f38ed2644e11e306063c49b8aff7656e69b69d6f4e7a71f576`

```dockerfile
```

-	Layers:
	-	`sha256:779e4276cd193207ac6f948f96f0a0d47a26c9fe0b2c4491960231f92e554ded`  
		Last Modified: Mon, 16 Nov 2026 19:48:55 GMT  
		Size: 176.3 KB (176315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a89a7ab9b2bb89fa9b619d14e2ae9f61c0562b6e3726440dd471b00707f204fa`  
		Last Modified: Mon, 16 Nov 2026 19:48:55 GMT  
		Size: 24.6 KB (24580 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f9260af5d7543a198d8f25bee7cd5d47e370783931b331a40557221f318ca618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104138257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d7f3e689fbe4364649fbcf1c7f6f1985b0eac33769ed036e79aaf53c3907b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:47:00 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 19:48:07 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:07 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:07 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8f97f05a8c6c466980fc2b480b159d0d1a728564e586a909593da280ac82cc`  
		Last Modified: Mon, 16 Nov 2026 19:48:25 GMT  
		Size: 247.0 KB (246957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2987a923307e8bb085d010c49e21c6802ab42ee36a1373237f3317b5e0604ed0`  
		Last Modified: Mon, 16 Nov 2026 19:48:27 GMT  
		Size: 99.7 MB (99700922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01f91ca84525bfb3ed11321da7ebf3fac6165f252a716d380bf488d240d9390`  
		Last Modified: Mon, 16 Nov 2026 19:48:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:97320eb92a8e0cf01656bb6261dba1a100a29e7751a50780715d086f5496cbe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cea0de184ae7d660eb3f565ca44a8496dbee5bb2c8b95375eb3709ffa749acc`

```dockerfile
```

-	Layers:
	-	`sha256:c3a8aa3d9300ca39cfeba31a8cb70a64d9f23deaf72b474dda444b20db204f2e`  
		Last Modified: Mon, 16 Nov 2026 19:48:25 GMT  
		Size: 176.3 KB (176345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:050767e27f8f3a7a78ae9eb653515291b214370667df4f1555d1dc0bfc08b53c`  
		Last Modified: Mon, 16 Nov 2026 19:48:25 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:1f3497bd51a27ea498895f4a80dac4f80678d64e95fd93e1cc2bbd5e7a595260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107166459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2deb665c3b7b0e0c284afe523e95df94ae653d893c00f3a5f91c4e590fa97815`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:48:20 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 19:49:51 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:49:51 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:49:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:49:51 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:49:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:49:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb3b06c441a088a65d2ef48a81a54847052241948e94bf96f7fb999e9e0c042`  
		Last Modified: Mon, 16 Nov 2026 19:50:09 GMT  
		Size: 245.0 KB (245005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68753a5ee6310f665de8b43bde628a2a60c5be6510cc4d63d8f7a5872ff51b5b`  
		Last Modified: Mon, 16 Nov 2026 19:49:15 GMT  
		Size: 103.2 MB (103242718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b893d73688fff1b940b48e68f2b7a88053e0f1af8c0745cc7d1187fd7b3542`  
		Last Modified: Mon, 16 Nov 2026 19:50:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9487b06cdac675b5dbf4086b801faba21a9309aa0949661e3bb3e0ffeed791b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e4429305fadf3ce6aba8a05180e50896be234716ad882cbc969bc46ef9a9df`

```dockerfile
```

-	Layers:
	-	`sha256:ac8fb13c352bdd474e2d96cafcc3c7ece7620c2e666e114d7e59c9931199eab2`  
		Last Modified: Mon, 16 Nov 2026 19:50:09 GMT  
		Size: 176.9 KB (176930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eecc6ea8723b6e6809c2cfd5026f1522fa8503f456c8a9379e07e2b8a60d6be0`  
		Last Modified: Mon, 16 Nov 2026 19:50:09 GMT  
		Size: 24.4 KB (24435 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:e2d52793dce4790cfb39e3043ea62672692c8674e473ebf32eace9df4314330f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106073974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dec64fcd10041b85129bed1bef066810c6b73af20d4656d87b25a238f422f2c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 00:20:11 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 20:18:47 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 20:18:47 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 20:18:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:18:47 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 20:23:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 20:23:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f60c7ed18fc6569f0d2a8a73cebacb0270831f67455599a17ab919d20b4b9e0`  
		Last Modified: Fri, 06 Nov 2026 00:20:43 GMT  
		Size: 247.4 KB (247369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f5395f83e6cd48331cd9ec5843ef191fbe2946bb645580c1e8235aa95b7bb1`  
		Last Modified: Mon, 16 Nov 2026 20:20:10 GMT  
		Size: 102.0 MB (102007441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920f821dcadbb66f66268228f71cd4ad857f7b7d4f3c866c7ad84a272ea3d58c`  
		Last Modified: Mon, 16 Nov 2026 20:23:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b4beb8de72cc63290b036b15263dfeb765eb89c492deca8e600ab68eb066b56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ef43c9257c92f19eabac946f356134aa239a5c81b34ef31ce6cde568be72c4`

```dockerfile
```

-	Layers:
	-	`sha256:0ced621d707d9d59edd6a22a1c9d7c25fdeb08f223a716a5510ce21ecfb81179`  
		Last Modified: Mon, 16 Nov 2026 20:23:38 GMT  
		Size: 176.4 KB (176352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c5733e5e8f933d95b31f8c362fda98c1384ede2c4f9f7eab87b685c013b8df9`  
		Last Modified: Mon, 16 Nov 2026 20:23:38 GMT  
		Size: 24.3 KB (24341 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:bfd5432fd21b4dd3e49bc97de5c227bedb451c78fadaca27d5f9e81f30a790d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105182851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bf7efac511d5c8806e1d801292ad02c71c628a904462ae7806c5422c441fe69`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 00:25:52 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 09:59:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 09:59:47 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 10:38:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 10:38:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795c8f7e3d4f2122322653c2c4514dfb6e8a66496401ea98e9976e6985e4acf0`  
		Last Modified: Tue, 27 Oct 2026 00:28:30 GMT  
		Size: 244.8 KB (244847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f407f2d466bfcd495056aca7e9a0c35ac87e4089ae72db918b17348bab9a459`  
		Last Modified: Tue, 03 Nov 2026 10:03:39 GMT  
		Size: 101.4 MB (101358233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff8bf060a1e16eb68607ebef21432997a02c3250262863d40d6eb206d08bbf2`  
		Last Modified: Tue, 03 Nov 2026 10:39:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:d1b1dcf1406dab2e7a8c99fadee93551f8e4e29d08450cadbed666630204f03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35bd3ea3caa4e0396819cf19c247f92af68d2f115cff983c8d1c217301a7b828`

```dockerfile
```

-	Layers:
	-	`sha256:ca2bcd921f881d1a88d06d735bfbc34d770428b2d37912968f3e2d22729f962c`  
		Last Modified: Tue, 03 Nov 2026 10:39:23 GMT  
		Size: 176.3 KB (176348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89815b81803b230630143d91486d074d285c05c54f948b9afffb62af00d663df`  
		Last Modified: Tue, 03 Nov 2026 10:39:23 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:29e382510148b14f1f9073e98f8da89f38935c1dd03fe0f5e84d43a70f742462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (108017817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:426e45c3ecc0f5b8fe40fd41c249724da444bfa81b19cd0e5d1e872be7d92c14`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:43:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 16 Nov 2026 19:56:55 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:56:55 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:56:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:56:55 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:56:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:56:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6b857bd28097622cdce751af92ba4dcf859e0bc062849c96f6d4b8465d78fe`  
		Last Modified: Thu, 05 Nov 2026 21:47:27 GMT  
		Size: 245.6 KB (245573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c977d3bf21c83de39aa3b449c5e12fc1ab0455e0298cf241d6d6cdbaf369627a`  
		Last Modified: Mon, 16 Nov 2026 19:57:25 GMT  
		Size: 104.1 MB (104053739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd04f734002aad6b7fc1c932a8e008c7cf8f69b34241f866f4989617622224e`  
		Last Modified: Mon, 16 Nov 2026 19:57:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:06b5dd012f5446271db0fb3cb90b68ae9604bbe603d89cb45cb8020e0ad25d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 KB (200781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1bb72b8b190ae4f616d584550da444c25ebbd0750d3cf072a40e1d2b9e8229`

```dockerfile
```

-	Layers:
	-	`sha256:f0ac803d410c71ee48a03a5c48dea8933541c5e26910952a8d8b9191ddbf6083`  
		Last Modified: Mon, 16 Nov 2026 19:57:23 GMT  
		Size: 176.3 KB (176312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:333b0631a9a0c25bd7af005bf71e4c873a799dc0d7ee187899f8643caeccea4f`  
		Last Modified: Mon, 16 Nov 2026 19:57:23 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
