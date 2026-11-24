## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:2316bd7cb8c45d54cf946082e2520e8a37820f91fe4e45f560d84c0aa764f267
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
$ docker pull golang@sha256:6d15b3d6a1b9d82a01f972f36dbabc4aaa961d52aa538720d05d536f15b5dcf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111536958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95bdbbab19b8b5ad373b95ec8933d5cd25f8c657925772ce916857a057cbeeb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:51:08 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:52:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:31 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:31 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c76906e9b41b3a8a64aa24d2603bb473e33e0edc3affadf000b357d45b2dcc`  
		Last Modified: Mon, 23 Nov 2026 21:52:49 GMT  
		Size: 244.5 KB (244462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efe33ce08c2ab749d7e469454c13bd2c73074fd6987df765916f579beb88f77`  
		Last Modified: Mon, 23 Nov 2026 21:52:44 GMT  
		Size: 107.4 MB (107439749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dee3d80e6bfd3ee67e6e5828df42064d79e41c92fb9284c408fed4f908eed1e`  
		Last Modified: Mon, 23 Nov 2026 21:52:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:83c84efade2b38ce4c68f27414fb01f49303bc960dda5d77c9f9f1c275d3adda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ae27497d3563a04cae94cab59685d11945fcd2bc2813cdcf17c93b4e5628abe`

```dockerfile
```

-	Layers:
	-	`sha256:dc83d7d46651d91bd9d81e0c7a683a766df1c3746135490d05dc0ef2975bfbd3`  
		Last Modified: Mon, 23 Nov 2026 21:52:49 GMT  
		Size: 177.0 KB (176963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94ab4ed2412195ed2789c692f7ecd6d92ffad4d2bf9aa252e420d1b67e290379`  
		Last Modified: Mon, 23 Nov 2026 21:52:49 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:fa111cf61aa3ee7647fa30740b4897c119fcc49f70738240d3aaa93f500b092b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107496598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d13366abdd730529285ca07793e331cd1fd8a567b186b5dc977e65a86f692093`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:51:01 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:52:44 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:44 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:44 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:52:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:52:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d334e0cfe68e7131123fc5dbc8a81d4244f73f7a80d1b80cfb8eb3056a0c213`  
		Last Modified: Mon, 23 Nov 2026 21:53:01 GMT  
		Size: 245.6 KB (245578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524698e95b691be2af9b6eb9bd742a14f1cc978595ff164fdfc0bfc682c844a3`  
		Last Modified: Mon, 23 Nov 2026 21:52:03 GMT  
		Size: 103.7 MB (103692611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ef4d2d72247593882d2075b6e40052822cf4990923d4e0b5e1914cde0c45f5`  
		Last Modified: Mon, 23 Nov 2026 21:53:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:22f414d7f9215413b4c61cd3adbdb587bd97b736c37cf1aeffee22bc08753ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2ad3a7363aefd97c6aa7085c092bbe8b41db4c17504d8cf50695d6cbd159c4`

```dockerfile
```

-	Layers:
	-	`sha256:f41ecb2b6097e8230a93e4dcced049ab571c06a619cef06caff1647a10dc3f73`  
		Last Modified: Mon, 23 Nov 2026 21:53:01 GMT  
		Size: 24.4 KB (24366 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:085847c48731bdd9cb80bc6a041b8f03872086f3ece3a01d0cf74433054fa906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.9 MB (106866793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcc6fe2814142378487fb0190dcbb26b95b262ccd2df0d98e23c2e8a7639b4f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:51:50 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:53:32 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:53:32 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:53:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:53:32 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:53:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:53:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a482c295913d91c15bb15c276e8fefab9cff346db4a28841acc6d06e87543ebb`  
		Last Modified: Mon, 23 Nov 2026 21:53:51 GMT  
		Size: 244.5 KB (244524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39b245899a237a3af132c690f97082215657bd5be945fcbe2d30fc351bd15f3`  
		Last Modified: Mon, 23 Nov 2026 21:52:15 GMT  
		Size: 103.4 MB (103355283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0391e8d5c58bd671c3ea32814ac931dd198a75ce7cedb7d86e1b5f34cc41a3`  
		Last Modified: Mon, 23 Nov 2026 21:53:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:4cfec08211018ca20d4575be09897c1966e82b775ea8498cd912403bb24fe266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e9387bcd802edb6e77b4ef8935f579d99ed61669025eaff531b795b250ddff`

```dockerfile
```

-	Layers:
	-	`sha256:496b2b4330fcc03a8de90339f9498ccf7ad89b58be33375a375f448661f1232f`  
		Last Modified: Mon, 23 Nov 2026 21:53:51 GMT  
		Size: 176.3 KB (176315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bf29cf19ad1990942e444171cb692f726a19f78e7437e14c10286cf7048dddf`  
		Last Modified: Mon, 23 Nov 2026 21:53:51 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:08e718ff3b910e2d0a48262cc1637eab4f81b78215c06741519fd91a76129b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106082745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478bcb227f4fabcc4a65751823e6a34c5c73d2c208fbada06c38891707a69f0f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:52:08 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:51:27 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:51:27 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:51:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:51:27 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:53:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:53:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6811a938e2900d5ca83352ed231cfa60828f691319bb7998c90de8c2f27eeb5`  
		Last Modified: Mon, 23 Nov 2026 21:53:22 GMT  
		Size: 247.0 KB (246968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5832b11a785e394735436b1d989145581e95a9a87780254d1918be0af3a577`  
		Last Modified: Mon, 23 Nov 2026 21:51:59 GMT  
		Size: 101.6 MB (101645398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcd729fcc248cf713a9e6b698c14d5d1062f204e1d6900eb46146cf0a4ff3d2`  
		Last Modified: Mon, 23 Nov 2026 21:53:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:aa7e50a4d667e64afc6f0ad2de00e1a88c8867f4ea3addd98e7c7854a00f7c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4048d11a9a7017dff10e72d9c1fb734176d0a804cb8db68a6adcd439cb662edd`

```dockerfile
```

-	Layers:
	-	`sha256:7137de41ab0f72663e3b2f20cd55406994bfb5d7bfa52b3b9932311146f39c85`  
		Last Modified: Mon, 23 Nov 2026 21:53:22 GMT  
		Size: 176.3 KB (176345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a82c6f40a16df7fb4dab43109de493f3554f8d09214f28363ed7bbdacaa7b5e3`  
		Last Modified: Mon, 23 Nov 2026 21:53:22 GMT  
		Size: 24.6 KB (24605 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:677509a0534b5462b898c9a1e7b84907600c27b3383455125d458163fec89a98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109122190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef867c5f0ec8b23abf3920df20393cc6a72db43351bbd3b9ecbd1c7402f4e10`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:52:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:51:48 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:51:48 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:51:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:51:48 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:53:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:53:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ad230655c33c5b2b0c0b6bb59f41cd1fcbaef44b8a1d7c621b9da930968946`  
		Last Modified: Mon, 23 Nov 2026 21:54:06 GMT  
		Size: 245.0 KB (245015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4213e3c8db6bf2b11a1cac7a3711fe6e326415ca3b60eb2f135ec39bd863251d`  
		Last Modified: Mon, 23 Nov 2026 21:52:20 GMT  
		Size: 105.2 MB (105198439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3909191058e946c39f25503b10056a950ca7c438bd87b46213cb6f550cf22d8b`  
		Last Modified: Mon, 23 Nov 2026 21:54:05 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b9a129c4cfc525b514a846340b9d52c4b9e452ae7cfb07caea4726ad9d9b7b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b6ad7f220ef59475aeaff4f09925c8cc90c6862cbac331ee3b16d86dae9b41`

```dockerfile
```

-	Layers:
	-	`sha256:497acb792f35d7c29edb635fded9eae35b012644ae7436416952f0b0d05a3604`  
		Last Modified: Mon, 23 Nov 2026 21:54:06 GMT  
		Size: 176.9 KB (176930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:416d047f2515b4585348e8a9ef27a7c86bb94a5b2d073929b4b72a1d51d6f45c`  
		Last Modified: Mon, 23 Nov 2026 21:54:06 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:72abeb1c7d38314c8ab4acdeab209e10206da980524651490262fc114ad4a7b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108102384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7677fa2db52b1c1150ebc444d4ec59cf000e63c770fec595fb51a2382338f2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:56:40 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:13 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:56:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:56:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed0afb9174bc34ff1d41f27d6d67be5ccb7d1e0fe3be96b8d28857e79fa1da1`  
		Last Modified: Mon, 23 Nov 2026 21:57:06 GMT  
		Size: 247.4 KB (247384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6398754657f6617d56396f3bdc393c5a6e4b0491499f8730567ce43a74afb4`  
		Last Modified: Mon, 23 Nov 2026 21:53:45 GMT  
		Size: 104.0 MB (104035836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16afa281843d79f7288143931a5381e8069815b388f64128915e0b8cdd67e1c`  
		Last Modified: Mon, 23 Nov 2026 21:57:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9b7f13f19b37371f75590826730a55bd46440801554ffd9240d0418c180cfecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8bba612eecea576cd5de913fd66c151d8429dc331150d78dd0b8a2ac39bea79`

```dockerfile
```

-	Layers:
	-	`sha256:815b01e0424fbe11d2b238b02d698b84979215554994bf3ccc2ecc85eab49cc4`  
		Last Modified: Mon, 23 Nov 2026 21:57:06 GMT  
		Size: 176.4 KB (176352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6697803d2cb59def20e223dec3af73a9d42ae2c2d779acac5327dc391f4b3d2`  
		Last Modified: Mon, 23 Nov 2026 21:57:06 GMT  
		Size: 24.3 KB (24341 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:6759835d9fddb8bc8178937a30f627d5167e522840cffcb38b68679516e04a0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105528146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23b36ac816ce5ef803da3af8c7f5ffeb0ea33d6734d97327e1bfcb15cd118d6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 05:10:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 19 Nov 2026 04:24:43 GMT
ENV GOTOOLCHAIN=local
# Thu, 19 Nov 2026 04:24:43 GMT
ENV GOPATH=/go
# Thu, 19 Nov 2026 04:24:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 04:24:43 GMT
COPY /target/ / # buildkit
# Thu, 19 Nov 2026 05:44:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 19 Nov 2026 05:44:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdefcead78fb425d60779ec69da63ab58bdd6d2e2148ee4f444b3f487908a4f3`  
		Last Modified: Thu, 19 Nov 2026 05:45:51 GMT  
		Size: 244.9 KB (244854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218ca22bbc2fda98851746abe4b299e0c714b7e488a3ecf02950cb68449ddefe`  
		Last Modified: Thu, 19 Nov 2026 04:33:33 GMT  
		Size: 101.7 MB (101703006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2df396839642fed07768605c14bffd19a5978165ba8ff7e3cda7698e101e58`  
		Last Modified: Thu, 19 Nov 2026 05:45:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:64d29fd83a370a2b50be84d57ecf371c5a67d9235f9a8cbd9ca1572b4ac4acd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c31e44322fdea748bb8e8efec61bd39dce18d500c8b6f7899dc96a888960d4f`

```dockerfile
```

-	Layers:
	-	`sha256:967448e33531f9d4c53f51368168760b97ead74e3429c6f6b899b073dbeddd7d`  
		Last Modified: Thu, 19 Nov 2026 05:45:51 GMT  
		Size: 176.3 KB (176348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8197592d0acaaaf38f2c703905ab76bfe8d13e93104bc703096b9929512cc415`  
		Last Modified: Thu, 19 Nov 2026 05:45:51 GMT  
		Size: 24.5 KB (24514 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:1e6432f764675fa24427d8b1c04e6a0cfb888f547b348e281fc4a13416d61950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.1 MB (110080559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68edcc30fe8c6a008b6224ad0ca3c23b74ae6319266e10a90c7234d16504f8b6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 21:51:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 23 Nov 2026 21:51:48 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:51:48 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:51:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:51:48 GMT
COPY /target/ / # buildkit
# Mon, 23 Nov 2026 21:51:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 23 Nov 2026 21:51:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6de886d5fde7b7960126c2db58bd5bf17f227a18164afccb01469087049c94`  
		Last Modified: Mon, 23 Nov 2026 21:52:13 GMT  
		Size: 245.6 KB (245582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cd34b458c6176d100150fefe22bd10abee9b4e1cc0bcf39f09c5dde1a049c5`  
		Last Modified: Mon, 23 Nov 2026 21:51:39 GMT  
		Size: 106.1 MB (106116472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea86eb8115b2f5848b0ea2ecc1e92778b142722a7eb62bd05e53c77e963d1d7e`  
		Last Modified: Mon, 23 Nov 2026 21:52:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9093409fca0b12fa9e892612d5546d4a72bb4ff2050ec38eda6ae7c57e48bbf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 KB (200781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e10ee08d0373648cacce5d606f667cc22e89ddb5e59f6cd1073b6ee6d60b1dd4`

```dockerfile
```

-	Layers:
	-	`sha256:e464c00ac45f6393e0a049f8f738387dbfa28c8195b310cbb5f669b118dddc21`  
		Last Modified: Mon, 23 Nov 2026 21:52:13 GMT  
		Size: 176.3 KB (176312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fd795c94375d9ce5f24b2ad0ccbf27595cceb36f698eb9b8d9023c6a09e7e6a`  
		Last Modified: Mon, 23 Nov 2026 21:52:13 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
