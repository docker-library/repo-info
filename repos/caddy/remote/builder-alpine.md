## `caddy:builder-alpine`

```console
$ docker pull caddy@sha256:096ec6e825e219175bd5be64b5e7a4000977f701a2bcaab825621d9fb1e1154b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `caddy:builder-alpine` - linux; amd64

```console
$ docker pull caddy@sha256:5422662685717cf44c13082c71c8569311606c5f76e0cb553253452c781dd31b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83809927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d50897d0aaee4bbabfd6ebcfce6066c1bdfa30d0d2731c2f2b5ba42793153a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:42:13 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:42:20 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 21:42:20 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:42:20 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:42:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:42:20 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:42:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:42:23 GMT
WORKDIR /go
# Fri, 02 Oct 2026 18:17:12 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Fri, 02 Oct 2026 18:17:12 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 02 Oct 2026 18:17:12 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:17:12 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 02 Oct 2026 18:17:12 GMT
ENV XCADDY_SETCAP=1
# Fri, 02 Oct 2026 18:17:12 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Fri, 02 Oct 2026 18:17:12 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Fri, 02 Oct 2026 18:17:12 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6e7f3ded592e443fd9ff13e0934fc149b642f26b962019d38fc8879f8764d1`  
		Last Modified: Thu, 17 Sep 2026 21:42:36 GMT  
		Size: 247.5 KB (247529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1dbfdbb5d59bdeac07b1398a9f0808b453513bf6a76eb3ffd509a284483095`  
		Last Modified: Tue, 01 Sep 2026 23:25:25 GMT  
		Size: 71.1 MB (71077884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e707d1be9b7cfef08708f1d35029e5e65c69766a1e39e2c027d0acd54b8e7b5`  
		Last Modified: Thu, 17 Sep 2026 21:42:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d00868358d65d64c1e0b74b80463e4ce5606f66ad95d96b8c66b9f57d229c3`  
		Last Modified: Fri, 02 Oct 2026 18:17:21 GMT  
		Size: 6.6 MB (6624686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a299990792ca77f721edf1636ca73386b8c6e4ea469e6bbee4c941c20bbdb6de`  
		Last Modified: Fri, 02 Oct 2026 18:17:21 GMT  
		Size: 2.0 MB (2009497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ceed599090be98e2d9ce7dd504a9b974b028fb7ba74b3ae6e4c6ec1c70d720`  
		Last Modified: Fri, 02 Oct 2026 18:17:20 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:6b7f08445a41c3092bee1a3610a0f779ba4815aff3f5fb198dc41af72454c29a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 KB (285300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae90eea1af3660d4d7166501cd644c88d065a296d07b27818a60823beec016bb`

```dockerfile
```

-	Layers:
	-	`sha256:9645699d8a547323c147f1a786b84ae2fefbfa7f0b8c3c0133ad9b6cf9864a96`  
		Last Modified: Fri, 02 Oct 2026 18:17:21 GMT  
		Size: 265.2 KB (265174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53a399048c6963abe3b1c2c6139f6dbbea5d2176acd102b17f9e6b4017b3c10b`  
		Last Modified: Fri, 02 Oct 2026 18:17:20 GMT  
		Size: 20.1 KB (20126 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:67e8340def24fd3e0c78d64d9c638cef0148dffa534e6cc114d63f34c01d1272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81818343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a44dcc4f16164f00fe7cb18d1319d62180def922c7f889fd1f6713c32d5bb9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:53:57 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 21:53:57 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:53:57 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:53:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:53:57 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:53:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:53:59 GMT
WORKDIR /go
# Fri, 02 Oct 2026 18:16:08 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Fri, 02 Oct 2026 18:16:09 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 02 Oct 2026 18:16:09 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:16:09 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 02 Oct 2026 18:16:09 GMT
ENV XCADDY_SETCAP=1
# Fri, 02 Oct 2026 18:16:09 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Fri, 02 Oct 2026 18:16:09 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Fri, 02 Oct 2026 18:16:09 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27374dc460abe6b9627d797f9bb847d830831b897abe39cab7a3c4a990c11ef4`  
		Last Modified: Thu, 17 Sep 2026 21:54:11 GMT  
		Size: 248.5 KB (248491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f7e99e312594e3ac977d577523ea809adb09d77bddf9f9cf7582dc6ad0661e`  
		Last Modified: Tue, 01 Sep 2026 23:26:24 GMT  
		Size: 69.6 MB (69593938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fdef7ccc31171bcc38220c5c7aa0f5a336f81206d020ef5e3dcdcc62126a6c`  
		Last Modified: Thu, 17 Sep 2026 21:54:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21be99fe41bc2dac28e453288bb3a50173a790afb7869eed355c32f36d42f5d`  
		Last Modified: Fri, 02 Oct 2026 18:16:13 GMT  
		Size: 6.5 MB (6538742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609256e0aa4575b67e42fecaa02c7add4a8f50306ac1d6449eb6c12ac1a04f22`  
		Last Modified: Fri, 02 Oct 2026 18:16:13 GMT  
		Size: 1.9 MB (1881467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d945483ed26a4de5d732d6b38b213455e16195f683321c0a3fbcd4c965e1e02`  
		Last Modified: Fri, 02 Oct 2026 18:16:13 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:411bb87ed9779f5416402b5858c428631961c98bab3161e3c9e617f6d772ad33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d70bb31f18b001ca92b300f377b724df73f98ae28420a7f4dcc97b02ae34775`

```dockerfile
```

-	Layers:
	-	`sha256:0d3c7540eb66269641ef7ff379293ea2d9f835a30bc70d4d5f7a44b7db767ab9`  
		Last Modified: Fri, 02 Oct 2026 18:16:13 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:bd1ed20b9fad9cf04bdf14afcc92eb39efb64181475ff7f70ed1ca342f599afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (80966744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a45d14faf47984ceb9c390da5187ae0159d41730e22b6f7972b05678ca4e69e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:54:17 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:54:26 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 21:54:26 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:54:26 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:54:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:54:26 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:54:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:54:29 GMT
WORKDIR /go
# Fri, 02 Oct 2026 18:15:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Fri, 02 Oct 2026 18:15:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 02 Oct 2026 18:15:33 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:15:33 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 02 Oct 2026 18:15:33 GMT
ENV XCADDY_SETCAP=1
# Fri, 02 Oct 2026 18:15:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Fri, 02 Oct 2026 18:15:33 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Fri, 02 Oct 2026 18:15:33 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f53a0aeea60d6e8a3ed1901675722850f491ac8feab5787c0bedcbe27188d2dc`  
		Last Modified: Thu, 17 Sep 2026 21:54:43 GMT  
		Size: 247.5 KB (247539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c87d6cd0bfacc76bdbce7c62a92cd8c0545cfe85ace1f630659004478cd2a0a`  
		Last Modified: Tue, 01 Sep 2026 23:25:28 GMT  
		Size: 69.6 MB (69594062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2d50eb1bf33ebbe3f48b16b93d47a655b01f19a6268c596c9726ebb2d254ac`  
		Last Modified: Thu, 17 Sep 2026 21:54:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe7ed6c98fcd4e52abdce0451c50537ab38cebfc8b6f64f99d72fb3f2bef7a8`  
		Last Modified: Fri, 02 Oct 2026 18:15:41 GMT  
		Size: 6.0 MB (5982310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcd2b761d15a1b38e58a38e12ccdd5fa212c315339e2a8a457d2181a1687d73`  
		Last Modified: Fri, 02 Oct 2026 18:15:41 GMT  
		Size: 1.9 MB (1877042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8c459b82ab7096ee5ce8940e6de02817cc0cb1c4d575615891b7ef7582f6cc`  
		Last Modified: Fri, 02 Oct 2026 18:15:41 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:5b7a9872d789ac4ae3f2059e8d1620efc1496aa86ca4fb91c37e2e34147458ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 KB (287820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ee6bd53ba0b707f25c339a37da295cc982c2ce6d1d3684ea1a1311fca54d90`

```dockerfile
```

-	Layers:
	-	`sha256:885dc7747dcab285d089a48bfd65b8bc65fe8baaf341bc50afeb369c3ba47977`  
		Last Modified: Fri, 02 Oct 2026 18:15:41 GMT  
		Size: 267.6 KB (267566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7222eecda667b0c074b7f69487af465a8ee852b3895c0730e6a9129c175af35`  
		Last Modified: Fri, 02 Oct 2026 18:15:41 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:6664fbd3401b108bc9b8ccc90dc0af07b0dcc5c004b721c5a920e281391b7c2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80636700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d36bea3844461cf7d1ba9e5558ad2d42994b4197050f6298f43d6ef18ca8a08`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:42:35 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:42:43 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 21:42:43 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:42:43 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:42:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:42:43 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:42:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:42:46 GMT
WORKDIR /go
# Fri, 02 Oct 2026 18:16:58 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Fri, 02 Oct 2026 18:16:59 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 02 Oct 2026 18:16:59 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:16:59 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 02 Oct 2026 18:16:59 GMT
ENV XCADDY_SETCAP=1
# Fri, 02 Oct 2026 18:16:59 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Fri, 02 Oct 2026 18:16:59 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Fri, 02 Oct 2026 18:16:59 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b5554000d05ec20e2ac0a68df0baef42b8f1ab003021f677f7bdb1aab017f8`  
		Last Modified: Thu, 17 Sep 2026 21:43:00 GMT  
		Size: 249.8 KB (249811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125215c6056cfe0a165d14de8a72a3546ec1167a4468ebcd93c0f403469ef15d`  
		Last Modified: Tue, 01 Sep 2026 23:25:44 GMT  
		Size: 67.7 MB (67652866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35df002bd9011b0379adcf4733094a3adc75f7fd382eb9ac6ec7f5c5470a852f`  
		Last Modified: Thu, 17 Sep 2026 21:43:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92d7dc522c61a98276509796b6ef0fc1009ece2965db40782fe1c0c4f462ba8`  
		Last Modified: Fri, 02 Oct 2026 18:17:07 GMT  
		Size: 6.7 MB (6714818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71308bec8680d399e2c99288f9b511d11b082c5789faabaa9bc85ee2761b5552`  
		Last Modified: Fri, 02 Oct 2026 18:17:07 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc59a5ed954b5013c7028eed55bf8f233044d610d2fbf3a6acb036288d57d01`  
		Last Modified: Fri, 02 Oct 2026 18:17:07 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c3f3917ecd23440770b0ad5a4639c94f2b2d5302e666f58351180c580790b5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 KB (284923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8621159819ac2f75b43a51eb89349a6445e8de78767bd8395b6fc51fbe2cca47`

```dockerfile
```

-	Layers:
	-	`sha256:a73c5382e4553fe5bb25dbe275fa0ed23601f0012805fd9eb923a2aa8425f704`  
		Last Modified: Fri, 02 Oct 2026 18:17:07 GMT  
		Size: 264.6 KB (264628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d79512998ce8d35b6305050ee961fe6a57822781b0bdcf53a834817c5040f4b5`  
		Last Modified: Fri, 02 Oct 2026 18:17:07 GMT  
		Size: 20.3 KB (20295 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:999f6abb743990a46ad69035b40bee55c494c7a9c9c67ef89d3fafa14c36c057
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81399874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f8ef3efee340e984ca750a93c3c1b92439d8d31ef7a860ebc152602b60a4cf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:51:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 00:33:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 00:33:47 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 23:52:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 23:52:13 GMT
WORKDIR /go
# Fri, 02 Oct 2026 18:22:11 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Fri, 02 Oct 2026 18:22:12 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 02 Oct 2026 18:22:12 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:22:12 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 02 Oct 2026 18:22:12 GMT
ENV XCADDY_SETCAP=1
# Fri, 02 Oct 2026 18:22:12 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Fri, 02 Oct 2026 18:22:12 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Fri, 02 Oct 2026 18:22:12 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5918951508472ab4ec51b446f5d6016e2a2ab83bb844d05101b37a59cee6212e`  
		Last Modified: Thu, 17 Sep 2026 23:52:33 GMT  
		Size: 250.3 KB (250270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc1383ca9979dac83a00fd2d5a8ae62102a5d700d144342a55ab6b86117926e`  
		Last Modified: Wed, 02 Sep 2026 00:34:40 GMT  
		Size: 68.4 MB (68423497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054a7a27b5520de5bf221a4bd76970327498e9dfb87c0a9b03cc3f4f78fdeec9`  
		Last Modified: Thu, 17 Sep 2026 23:52:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77e665659a0b2b99f54016d4cf7e3a3f6bc66eff23fb2190598ac84e568ac42`  
		Last Modified: Fri, 02 Oct 2026 18:22:31 GMT  
		Size: 7.1 MB (7055329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5b56e1addf1c39fbdfc9e2fc6bc56d09181dc3ef3c252c5bd7d7745aa8af24`  
		Last Modified: Fri, 02 Oct 2026 18:22:31 GMT  
		Size: 1.9 MB (1852709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f97612c29abbfc11776590b6f7e4eb065e2e9bf23acd80e72ee7a9dccf424e76`  
		Last Modified: Fri, 02 Oct 2026 18:22:31 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:9e762161b6353e6b794cac17626053dd4f29e5930826f096479394fcd1e5bd0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 KB (284796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc3340b887de6158258dae33f8018882966148edf2c4bc6be3d3d8b6a85d099`

```dockerfile
```

-	Layers:
	-	`sha256:7d4387957b995282ae916d82fbc313cc06769e8a8d62da66e292782d844bd037`  
		Last Modified: Fri, 02 Oct 2026 18:22:31 GMT  
		Size: 264.6 KB (264597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa72ec773fe455cb83d0cd0739784c3327dfdd356c7658daf5f6890d869f6e85`  
		Last Modified: Fri, 02 Oct 2026 18:22:31 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:7ea3cd1b70731c4d75879dff10f857b7eba82b7e2c5aaec9876b9ed1eec83dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81613758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d225bd199b9ad22b7b5737747b8da71393fd9d2b7fd81b39d24401ec600bfb26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 02 Sep 2026 15:04:05 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 15:04:05 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 15:04:05 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 15:04:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 15:04:05 GMT
COPY /target/ / # buildkit
# Mon, 21 Sep 2026 10:09:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 21 Sep 2026 10:09:05 GMT
WORKDIR /go
# Sun, 04 Oct 2026 17:25:45 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Sun, 04 Oct 2026 17:25:47 GMT
ENV XCADDY_VERSION=v0.4.7
# Sun, 04 Oct 2026 17:25:47 GMT
ENV CADDY_VERSION=v2.11.6
# Sun, 04 Oct 2026 17:25:47 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Sun, 04 Oct 2026 17:25:47 GMT
ENV XCADDY_SETCAP=1
# Sun, 04 Oct 2026 17:25:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Sun, 04 Oct 2026 17:25:47 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Sun, 04 Oct 2026 17:25:47 GMT
WORKDIR /usr/bin
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
	-	`sha256:f2541a96ffc493ef95d3b2021cc7250f84890c317940ecfe928a57b9aa793d78`  
		Last Modified: Wed, 02 Sep 2026 15:10:47 GMT  
		Size: 69.1 MB (69122621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d897cd8668baed1a87d21affd491d01c016e8c773c7a640fa0a0a97ee4cf352`  
		Last Modified: Mon, 21 Sep 2026 10:10:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260aed979cc7da2598be2fea2d59be19ee226f434fd0e474b424bb274732e319`  
		Last Modified: Sun, 04 Oct 2026 17:27:24 GMT  
		Size: 6.8 MB (6814432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdcc562ba1963efc774eccbe646cfbd0c7dcc691db992c235a9d1fc09336f5c`  
		Last Modified: Sun, 04 Oct 2026 17:27:24 GMT  
		Size: 1.9 MB (1852790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ace8b1591cc36489eab49bf417d526dba8cd213b885d52a37c68fe6e9afb07`  
		Last Modified: Sun, 04 Oct 2026 17:27:23 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:95a2d6115dcf029b23bbbea806cf62151d1f27a766998f14899b9cb51c8bfbd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 KB (284792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:092e75af3dba37d954a4e6e81611f1454a7c9d6bd63e69167544711b6bbe6b48`

```dockerfile
```

-	Layers:
	-	`sha256:5aa1a57861292dd4c309323ea668ca3055bfaf3f513fbbdb2f7d6c246c8b279d`  
		Last Modified: Sun, 04 Oct 2026 17:27:23 GMT  
		Size: 264.6 KB (264593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36d8b0817e6a176e4119f34215a2d133f5841d5e18a3a49ca2103c548e116761`  
		Last Modified: Sun, 04 Oct 2026 17:27:23 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:aaa75200b8ce61641938dfeaedd2852cc028145fe439aa4ee19c92a05cf15f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83046597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb196b2c46e89a6fa2633ae09564916a17b4de18d72af0e912a02c35fb29d315`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:39:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 23:39:56 GMT
ENV GOLANG_VERSION=1.27.1
# Thu, 17 Sep 2026 23:39:56 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 23:39:56 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 23:39:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 23:39:56 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 23:39:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 23:39:58 GMT
WORKDIR /go
# Fri, 02 Oct 2026 18:19:08 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Fri, 02 Oct 2026 18:19:10 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 02 Oct 2026 18:19:10 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:19:10 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 02 Oct 2026 18:19:10 GMT
ENV XCADDY_SETCAP=1
# Fri, 02 Oct 2026 18:19:10 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Fri, 02 Oct 2026 18:19:11 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Fri, 02 Oct 2026 18:19:12 GMT
WORKDIR /usr/bin
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
	-	`sha256:0cdf782217446d8f5c55dd5fedfa6da1094820bbf610bbdd9bc0564db4e82fd9`  
		Last Modified: Tue, 01 Sep 2026 23:25:53 GMT  
		Size: 70.2 MB (70220888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:065064535ea9d142ecdbb1be011e559f1ce99ac9a8956027d84ab41f3eea4a0c`  
		Last Modified: Thu, 17 Sep 2026 23:40:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51dc09947eaf3338d93a63bdef83001090dbe2880b106c629b448649e45fde6e`  
		Last Modified: Fri, 02 Oct 2026 18:19:41 GMT  
		Size: 6.9 MB (6917113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8612aa4d8cd6d272c4d5e924310c6c19b802f7bf304450504b8f81b389cfa667`  
		Last Modified: Fri, 02 Oct 2026 18:19:41 GMT  
		Size: 1.9 MB (1944098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a7c655eb52119273ea752efa94724aecf3498d5fd3d87e94d1d0704f1d9529a`  
		Last Modified: Fri, 02 Oct 2026 18:19:40 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:a2117986a2ec9ba61b0f8f83672b1b5bcc19f3e910677dfbbab891d5dba9f3cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.1 KB (285148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbaa2f33364ddeccd4fa5c721d027feb38f503aaca1cec10a6eaf88deffc01c7`

```dockerfile
```

-	Layers:
	-	`sha256:57b9b68d71898e9ea12963802071265acbf4e341b39dffe02525610da131dc1c`  
		Last Modified: Fri, 02 Oct 2026 18:19:40 GMT  
		Size: 265.0 KB (265019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47e0be6c5fd1fd65454d62345863933afef765d2daff7f5fc03454259348b455`  
		Last Modified: Fri, 02 Oct 2026 18:19:40 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json
