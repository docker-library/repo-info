## `golang:alpine3.24`

```console
$ docker pull golang@sha256:3889b425f035be855a72fb4755265311293b6d414521f0a519d819df32222d83
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

### `golang:alpine3.24` - linux; amd64

```console
$ docker pull golang@sha256:1a9c10cf505a9e6b1e96ea77ebdbfe79a0f10380181faf88bc3b51d7e4315fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71400075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe40429551153949b64503e465791d4a079141c41b04e6ceed6d7cdcb2512ad`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:33:59 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:34:06 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:34:06 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:34:06 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:34:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:06 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:34:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:34:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff8b9beb3e2749a901d892e973118f8cac17632473449c446aeecf7f8b367f8`  
		Last Modified: Thu, 13 Aug 2026 19:34:22 GMT  
		Size: 245.1 KB (245056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa55d8c7975bdc26e118c1a6e8ee122aea1e654a365c1d6f7b48658c58be2e18`  
		Last Modified: Thu, 13 Aug 2026 19:34:24 GMT  
		Size: 67.3 MB (67308470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb43fedab420e8564c73199ebb173d2fc8541f4bec5d4c7733583117128d033`  
		Last Modified: Thu, 13 Aug 2026 19:34:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:b1596be70fa65aab2e824d75a47bf8f871f9fd1de3dbc36bfcb515697b615901
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42dee544599e44a643acbe344daebeda236704d61649c026b96386a4c8264668`

```dockerfile
```

-	Layers:
	-	`sha256:d659a5a445246d9ca2dfdd0f45bbd8ec64bd6da8f464f6204b17e24b8725b6aa`  
		Last Modified: Thu, 13 Aug 2026 19:34:22 GMT  
		Size: 178.2 KB (178172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd55481f8fe72c95485a73d7e8c34494e1a35fb3086f7162d2828fb6375c2f7a`  
		Last Modified: Thu, 13 Aug 2026 19:34:22 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:27e01cb6675935c4112ad52dffdf321dde0f68d17407672ccc15adf4c62070b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69643456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843cd5c093d06c6bbb7ff093e2f6e6c3ae0c931a6f04508158423cc062746ec5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:47:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:47:52 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:47:52 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:47:52 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:47:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:47:52 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:47:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:47:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c354ec607d22fc609de2335aa25eecea40107a00b20f0a7c963bd783b3ee4ca`  
		Last Modified: Thu, 13 Aug 2026 19:47:34 GMT  
		Size: 246.1 KB (246133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd6a993c36f888b98401ce7d1615a1ca7b65bb268a542f686dceaf8c6b30c8f`  
		Last Modified: Thu, 13 Aug 2026 19:48:08 GMT  
		Size: 65.8 MB (65843715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db31d1cb7ed7b11f02a3c3be30c87877de69c0b4d61a994da7f34921c12cf4`  
		Last Modified: Thu, 13 Aug 2026 19:48:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:19eba7da8cbb33209d0684ea334924a4de2abc7fd79e8fe9d93a8df67bb7c446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 KB (25950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116540d173b0399367a6fbe8c919be4b32df01738c8cc921aa3e535af1fd3e9a`

```dockerfile
```

-	Layers:
	-	`sha256:4b27850c3072225c056181d8c6b8bd6ccca34ad5b98c05a7e2ab60230f9849e4`  
		Last Modified: Thu, 13 Aug 2026 19:48:06 GMT  
		Size: 25.9 KB (25950 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:23c67559d0da85bd5b8d64487ec1fd25ff9b06ba1c1843227d7081fec2ee618b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.3 MB (69349784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa41fa9a09af0c963c8120a7f1d7d200898a2e9effdc3fc7239b92084662c9ed`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:56:52 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:57:01 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:57:01 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:57:01 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:57:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:57:01 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:57:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:57:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58d1ae6d1c4159b9ddbd0eb1011cc67d85f8e638997df013ebe86b368c8ef39`  
		Last Modified: Thu, 13 Aug 2026 19:57:17 GMT  
		Size: 245.1 KB (245120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d33eb168b57114b4010647a3b9fa78f09a5c12dfda7910e365550d281e862ef`  
		Last Modified: Thu, 13 Aug 2026 19:57:19 GMT  
		Size: 65.8 MB (65843890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da258e6c04df52e3cdf5f92621f2a983b59554783a9f3562fc6202d1b4195e4a`  
		Last Modified: Thu, 13 Aug 2026 19:57:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:9667513eaad768ecba430a2b464b06872d08d6d6181b418fcc25e045523a112e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c4e87c902a47cd7431754ab63b24640ab840aaee824a576fb7c4387206d4f3b`

```dockerfile
```

-	Layers:
	-	`sha256:b781056b398fd07f39ec08b2b0bbd734b3397bc69cdf0040178176afd9244043`  
		Last Modified: Thu, 13 Aug 2026 19:57:17 GMT  
		Size: 177.6 KB (177574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:674032d15536b5cc7c19b8da5f9d5647dff55049be6e5344255973cae49b8eb6`  
		Last Modified: Thu, 13 Aug 2026 19:57:17 GMT  
		Size: 26.2 KB (26164 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:1b2cb58c3df8b93b8bcb5739778692c35e491087599139deb2c8c03567cbb03e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68651524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77e72e13ab7c12a3bbfc79766bb02ef7180864eb5a4d6d8c433a47119e3b2e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:00 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:34:08 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:34:08 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:34:08 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:34:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:08 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:34:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:34:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d344016b160c85e565c77b64623cdfb5cb24b4e82e1676ffec4f7d58ea708be4`  
		Last Modified: Thu, 13 Aug 2026 19:34:25 GMT  
		Size: 247.5 KB (247499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22db0ab2cdc67a637151bb7560ea06e6cc39a231b4459d38ff34fc6471ea35b1`  
		Last Modified: Thu, 13 Aug 2026 19:34:27 GMT  
		Size: 64.2 MB (64220829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af76316f7cac0ddfb43df3817536754f8ae5e3ffbb98921f19851ff75b89c92`  
		Last Modified: Thu, 13 Aug 2026 19:34:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:caba0e67354626936f2792130d1d76e9d2fe5b72c6266fb142643d440d985081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 KB (203835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204d6635680a2e03061495d04a979fdf3bb188306c7ef3c4d9ed5a9636fc6057`

```dockerfile
```

-	Layers:
	-	`sha256:d8d0d4b5f57c163b1644d0c9e0af9e6d3a2445ccfb72bc37f7647ba9f22d258e`  
		Last Modified: Thu, 13 Aug 2026 19:34:25 GMT  
		Size: 177.6 KB (177626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f2b78b9fb44d5f68636f33f6f6d8d53bf702183863d5bde67160349610e4484`  
		Last Modified: Thu, 13 Aug 2026 19:34:25 GMT  
		Size: 26.2 KB (26209 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:648921a68c7179241dd09daf8000fbfddc9e5ea9c1a24e7d0fe05b259dff2b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69561113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc32041fe5b65ab8a9c4748450a37b1b57fe53a06f0f4b008ffb6bd27e4d1799`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:33:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:33:34 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:33:34 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:33:34 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:33:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:33:34 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:33:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:33:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e423fa3ef7aae6aa303430b42dd576dbd2cdde666aa72de327d6cf9a0dae29`  
		Last Modified: Thu, 13 Aug 2026 19:33:50 GMT  
		Size: 245.6 KB (245595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009a0fff13fa32a5f6ee42bf65e9cb7a991649e1034836cd8bc0389d8248d5a8`  
		Last Modified: Thu, 13 Aug 2026 19:33:52 GMT  
		Size: 65.6 MB (65645219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7250d29aae0cc177417f5f62d957628f9e279e5f7453ba53996a0b926546b9be`  
		Last Modified: Thu, 13 Aug 2026 19:33:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:af1f662cb4d842015f60c433ee5a37db1801275242f8c197567cd66699bc76ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0af215b2ffb5174d8fefef4e519749966b67c88fa631676823b49e11f7c46f`

```dockerfile
```

-	Layers:
	-	`sha256:bf6dfb561fb8d00096e16a27df9ecf61f0605428d3da0e9f8e4b3c47d9cb062a`  
		Last Modified: Thu, 13 Aug 2026 19:33:50 GMT  
		Size: 178.1 KB (178111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e5e896faca3c6e947a732c9f5e2b8b4e4c60d98f812f4ee6798410d7db8efd`  
		Last Modified: Thu, 13 Aug 2026 19:33:50 GMT  
		Size: 26.0 KB (25971 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:828ca7f0f0de025bdefd031eb7fe995722e5fcd24b1efb2ef35169bb2f03a516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68960696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e46d37fe0df7dcb515e8cbb30c36a6f3c5c08e00d75d9cb8d68e7f4f10cd7f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 16:01:30 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:58:17 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:58:17 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:58:17 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:58:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:58:17 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:59:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:59:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b473c25e2fc3a2c6e3a6db0e87ddd7f731e62e38bf48ce30e73e3daaf294b6`  
		Last Modified: Wed, 05 Aug 2026 16:01:50 GMT  
		Size: 247.9 KB (247921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93dea1b66b9ab0862f63f7f6e84e84e54260cb687dc6a97b51c0c6a11c8af6d3`  
		Last Modified: Thu, 13 Aug 2026 19:59:12 GMT  
		Size: 64.9 MB (64899217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1b6357eefce86aa0ea718e7dfec7f6852c5f953e74883cf45f25a49037b424`  
		Last Modified: Thu, 13 Aug 2026 19:59:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:1f2176319c283e5292fdaf5af579c6eefa72f0b46aa1dcfec80c465297d9f1de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d09b79cf1a8ebd56f9761d21f62319a5c0bb3bb11c9142f011d5f748de62492`

```dockerfile
```

-	Layers:
	-	`sha256:ff71811fa6d4b3e6230135b6c5a4f7eb07111b02441504471f3a661dda005799`  
		Last Modified: Thu, 13 Aug 2026 19:59:59 GMT  
		Size: 177.6 KB (177595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:659767b945b3dc018a8be40a16d8c459e7476d8679aac03f584f7975e7725ccf`  
		Last Modified: Thu, 13 Aug 2026 19:59:59 GMT  
		Size: 26.1 KB (26099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:c75727aacd9fbd76a78651ae0302ff8cededf16ee05690dcf13548e77a6fd518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (69018195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f67b301bfecabaf7c1c5c703f254d0deb76c68affedae50af757f07473b28062`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:03:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Sun, 16 Aug 2026 13:10:32 GMT
ENV GOLANG_VERSION=1.26.6
# Sun, 16 Aug 2026 13:10:32 GMT
ENV GOTOOLCHAIN=local
# Sun, 16 Aug 2026 13:10:32 GMT
ENV GOPATH=/go
# Sun, 16 Aug 2026 13:10:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 16 Aug 2026 13:10:32 GMT
COPY /target/ / # buildkit
# Sun, 16 Aug 2026 13:18:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sun, 16 Aug 2026 13:18:57 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4eb8a0847d9b0c7c04686bc15eb9657f78c75e47160e656e88ff25111d0b39`  
		Last Modified: Sun, 16 Aug 2026 13:05:32 GMT  
		Size: 245.5 KB (245497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fada23dcc74335031cc183991f6dad7a6e2d29631642294a03560b8c7a02131e`  
		Last Modified: Sun, 16 Aug 2026 13:17:06 GMT  
		Size: 65.2 MB (65198183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c37778e2c30e460fc4143ac453990101c62846774f23a85bbe623378ca8b02dd`  
		Last Modified: Sun, 16 Aug 2026 13:20:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:c9cb079574afc605f560792a208f678996586fd87a3d635fa1bbe6ff30133492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c12eefebc7e7a57493404b2e87c79941eb735b395d77f97c422993665049007`

```dockerfile
```

-	Layers:
	-	`sha256:039ef8a4bda3663bd8a70f10927a77a8c3b79962790be30872dd1b2b6ab0dd5d`  
		Last Modified: Sun, 16 Aug 2026 13:20:04 GMT  
		Size: 177.6 KB (177591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96eef9bf6362d4fb246b0f259c5e67d6b3846493995d90cd20bc65985ef31052`  
		Last Modified: Sun, 16 Aug 2026 13:20:04 GMT  
		Size: 26.1 KB (26099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:2943e7d08c789b7876aedc7c00591d66722a64de7de37672f17912e547384e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70532728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00ecff9c33599f1c7c2143d3ee49b90b5c6647e019b5bec87863b6b133e16e3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:51:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:59:29 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:59:29 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:59:29 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:59:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:59:29 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:59:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:59:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289b5e867dee8258d2bc7ee83bccbf1005763af2a8e03ba1284bdfe16b0745c2`  
		Last Modified: Wed, 05 Aug 2026 15:58:43 GMT  
		Size: 246.1 KB (246146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb1f8b0dfbbe22ef84f2cb6e17624b40a7d50245301261dd5792762e808da02`  
		Last Modified: Thu, 13 Aug 2026 19:58:50 GMT  
		Size: 66.6 MB (66577104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e850b1bd0f27ac423d91d6bc430739ad93d0d954d54713773180de5c90b710`  
		Last Modified: Thu, 13 Aug 2026 20:00:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:b2ef9f3673aeebc00f4ef50863263d73e139d86997a2822fc63b3aaf7b82b704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba4b6d52325d3a1b5d4b8b611db8a90a6f506d15d1a9bd49e1c93c1ef01d1da`

```dockerfile
```

-	Layers:
	-	`sha256:8dd11e6acc5018a5b29b1c083c8f673228596ef3c308a09e72aa8f28247f5da7`  
		Last Modified: Thu, 13 Aug 2026 20:00:07 GMT  
		Size: 177.5 KB (177521 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9aa067bfd25b08d373d75fc8aa2cc8dee5e83cdf83c87dc8c8970560d5ce20cb`  
		Last Modified: Thu, 13 Aug 2026 20:00:07 GMT  
		Size: 25.9 KB (25853 bytes)  
		MIME: application/vnd.in-toto+json
