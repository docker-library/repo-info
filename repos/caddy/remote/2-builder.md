## `caddy:2-builder`

```console
$ docker pull caddy@sha256:34466183d881df9a8226caf360ff86fe50456f0971221b127dcb756cf514e1ea
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `caddy:2-builder` - linux; amd64

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; arm variant v6

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; arm variant v7

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; arm64 variant v8

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; ppc64le

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; riscv64

```console
$ docker pull caddy@sha256:da2b0733fe08cf1f788a3ae47e2d03abae4b783625e4196f59c2db6bc6f112de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77446120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30d99a8b1ce732ffedc06a7b492e207ed3aba853f4743a2caf069c24fd16313`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 02 Sep 2026 15:18:33 GMT
ENV GOLANG_VERSION=1.26.8
# Wed, 02 Sep 2026 15:18:33 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 15:18:33 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 15:18:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 15:18:33 GMT
COPY /target/ / # buildkit
# Mon, 21 Sep 2026 10:18:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 21 Sep 2026 10:18:19 GMT
WORKDIR /go
# Sat, 26 Sep 2026 04:42:27 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Sat, 26 Sep 2026 04:42:29 GMT
ENV XCADDY_VERSION=v0.4.5
# Sat, 26 Sep 2026 04:42:29 GMT
ENV CADDY_VERSION=v2.11.4
# Sat, 26 Sep 2026 04:42:29 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Sat, 26 Sep 2026 04:42:29 GMT
ENV XCADDY_SETCAP=1
# Sat, 26 Sep 2026 04:42:29 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Sat, 26 Sep 2026 04:42:29 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Sat, 26 Sep 2026 04:42:29 GMT
WORKDIR /usr/bin
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
	-	`sha256:dfbfb3e21a50cab84000c30aabe7f0eeed3433b23c1bdaa9366ede849bdafdcf`  
		Last Modified: Wed, 02 Sep 2026 15:25:11 GMT  
		Size: 65.2 MB (65200816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dcf00de6f761c13dc3f308eff83fb45c7e02612f7847e14c66ee9fae05a0675`  
		Last Modified: Mon, 21 Sep 2026 10:19:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a07176e12d03284a456a51029ef69f88cdd63fe282e5ba413b6f3e6d5c58c4`  
		Last Modified: Sat, 26 Sep 2026 04:43:53 GMT  
		Size: 6.7 MB (6696230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d151853a8376f8cef7f232cb5cf23559ef5a39d7bf4dcda56302a062d22cc90e`  
		Last Modified: Sat, 26 Sep 2026 04:43:53 GMT  
		Size: 1.7 MB (1724208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13566f4354fa49cd44cedb99e6f180430fe85a60b84c3b6def39c2d0bc4b661`  
		Last Modified: Sat, 26 Sep 2026 04:43:52 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:fea93fed153c0cb741b313c040da20bbe336d7e33fe72e0a603c7017d5502404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 KB (284795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905eb2fe4d76d972d5de7f8c5ff1c0894df5b107e900978e4dbbe18e12410450`

```dockerfile
```

-	Layers:
	-	`sha256:a8c257e5764a3891dafdae45b6d6108da4b7d53bcbd75494a9abca94fee55900`  
		Last Modified: Sat, 26 Sep 2026 04:43:52 GMT  
		Size: 264.6 KB (264597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3199886c3715df841876a8333ddfe9d1af3cf5db44a6becf452ba244b03638d`  
		Last Modified: Sat, 26 Sep 2026 04:43:52 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; s390x

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - windows version 10.0.26100.33438; amd64

```console
$ docker pull caddy@sha256:198a4a9c7699c3d138dfae1d30f5509ed632cb6d8eee8fb56bc1efba17916ace
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2585426579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27bda45fccd3e572dda1261244d2a4d0d6a427ab86359930f2b116fe7e06cbf`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:44:52 GMT
ENV GIT_VERSION=2.48.1
# Wed, 09 Sep 2026 22:44:54 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 09 Sep 2026 22:44:54 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 09 Sep 2026 22:44:56 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 09 Sep 2026 22:45:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:45:11 GMT
ENV GOPATH=C:\go
# Wed, 09 Sep 2026 22:45:16 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:45:17 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 09 Sep 2026 22:46:50 GMT
RUN $url = 'https://dl.google.com/go/go1.27.1.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3911b5e0e1b1053f25ed0675f4c1c6aad1e2bfcf253df2b9be4caabd2edd95d'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:46:51 GMT
WORKDIR C:\go
# Fri, 02 Oct 2026 18:22:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 02 Oct 2026 18:22:24 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 02 Oct 2026 18:22:25 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:22:25 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 02 Oct 2026 18:23:36 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Fri, 02 Oct 2026 18:23:37 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7703c25d879bd497a23a6de4be9e43407f7e63bcd72a21fcaebea19562f5a85`  
		Last Modified: Wed, 09 Sep 2026 22:34:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e206e5ef6c9ea47ae76aa238c88ae473589445768eb35598cd339a775532d1d0`  
		Last Modified: Wed, 09 Sep 2026 22:47:04 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3fc1fdb5659fac3ea2b286c66f9a8d749c813041677e7248f30e7b66ae77bb`  
		Last Modified: Wed, 09 Sep 2026 22:47:02 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b51dca2b33e974a49ae7f2cdba38347668f13f49bf012ff01c714f63f4adec`  
		Last Modified: Wed, 09 Sep 2026 22:47:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f6deb4a192d6cd59a2c5cceae29ba720ecaf9d1d805d683731b77db63048a1`  
		Last Modified: Wed, 09 Sep 2026 22:47:02 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aee00c2406e641f6aa9b8200ce7e28b49955acf6326bd3f62760ba21c240ec9`  
		Last Modified: Wed, 09 Sep 2026 22:47:08 GMT  
		Size: 51.2 MB (51221034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d1f55a4d187401b75d29c5429388523eeeca83a5eef7fdc2bbe7761d372946`  
		Last Modified: Wed, 09 Sep 2026 22:47:00 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596bf7fb501fdfe749ea365e25a52a8d34a631aba93e5ea78be45e5bb800d126`  
		Last Modified: Wed, 09 Sep 2026 22:47:00 GMT  
		Size: 351.7 KB (351689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdca3fae9289d22e96550825cb37bbce5861b29d32d458e44a0c0fad9cca11d2`  
		Last Modified: Wed, 09 Sep 2026 22:47:00 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7046da004909ba9c5a378829b876f4229a573c02059a96be9f2a18a6e270c6e2`  
		Last Modified: Wed, 09 Sep 2026 22:47:12 GMT  
		Size: 73.7 MB (73719596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9390a67416af03b0078d31360bd3ac0bf960175a16d6d84be59842d16a98cde`  
		Last Modified: Wed, 09 Sep 2026 22:47:00 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d30dae56d0caeae6a3c992b22e4fa93e31f5ba8cfef54c4d09decdfccd7ff5`  
		Last Modified: Fri, 02 Oct 2026 18:23:53 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1afb4005700801bc9cc9632620c0dd20a4f04e0a6963eb929b6b0b04419468c`  
		Last Modified: Fri, 02 Oct 2026 18:23:52 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03d3b4664cb0aaf2739d2d03c980820dfaccd3d5359bf79cf53cc64c5fa1bb3`  
		Last Modified: Fri, 02 Oct 2026 18:23:51 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663683508d97885e582612ce9ce2f248f2780c83f13dca93c236999f5b5c67af`  
		Last Modified: Fri, 02 Oct 2026 18:23:52 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb168d69d2fb67b88d62c9c2ec1a3febb4cac3086f9188b7c0df1362b6b5f05f`  
		Last Modified: Fri, 02 Oct 2026 18:23:53 GMT  
		Size: 2.5 MB (2487547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36193c59f53f0e28106d8b9936b22fa8ddc30d52c01f36749ea3c790bc5fe5be`  
		Last Modified: Fri, 02 Oct 2026 18:23:52 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-builder` - windows version 10.0.20348.5622; amd64

```console
$ docker pull caddy@sha256:cce295a195b3c73b672a06b7e7f554aff658c814fd303163b3b40f84b1ff403c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2347201944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506a9a932ff5d391fd9fb9fed9d760a45cd5b834fcd8a79ceda768bb2d2f7b63`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:46:44 GMT
ENV GIT_VERSION=2.48.1
# Wed, 09 Sep 2026 22:46:45 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 09 Sep 2026 22:46:45 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 09 Sep 2026 22:46:46 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 09 Sep 2026 22:47:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:47:14 GMT
ENV GOPATH=C:\go
# Wed, 09 Sep 2026 22:47:19 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:47:20 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 09 Sep 2026 22:49:07 GMT
RUN $url = 'https://dl.google.com/go/go1.27.1.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3911b5e0e1b1053f25ed0675f4c1c6aad1e2bfcf253df2b9be4caabd2edd95d'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:49:09 GMT
WORKDIR C:\go
# Fri, 02 Oct 2026 18:48:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 02 Oct 2026 18:48:39 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 02 Oct 2026 18:48:40 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:48:41 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 02 Oct 2026 18:49:42 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Fri, 02 Oct 2026 18:49:42 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2b454245496d177f49bf752d1b43585fa7e5486969ff0620b6d71bd6f0a77e`  
		Last Modified: Wed, 09 Sep 2026 22:34:10 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8297fb68555244bf18978faf7197346aef34f153574ce7f2385325ee107d85eb`  
		Last Modified: Wed, 09 Sep 2026 22:49:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01db828cdd91d42542fcd0b712bb26cd293cdb99551313eac881837ece7d631`  
		Last Modified: Wed, 09 Sep 2026 22:49:24 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32943754430b7730923055db5e5b18c319af9b0568eb0c41d9cf671f421a61db`  
		Last Modified: Wed, 09 Sep 2026 22:49:24 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b1c5d72ba18be6e2a0550c30e24ca37bc4f15da9aa948d6e63930b7e6579ed`  
		Last Modified: Wed, 09 Sep 2026 22:49:24 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d866abcb3ad135b6712d98e24fa9f3fe04297407ab6536a6892dad74846d7318`  
		Last Modified: Wed, 09 Sep 2026 22:49:30 GMT  
		Size: 51.2 MB (51203328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f852f1a889873994fa7338f1c454b32fdef75787d64a34c2695042d52ad59413`  
		Last Modified: Wed, 09 Sep 2026 22:49:22 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5627f21ecc3559c50659c9faf1012cb0b9d491446763eee7ce15c10074b6f756`  
		Last Modified: Wed, 09 Sep 2026 22:49:22 GMT  
		Size: 328.5 KB (328451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d8306a6173a8a6c63387c43aeefe83176fff2de6dce93fda0012ca437cb09b`  
		Last Modified: Wed, 09 Sep 2026 22:49:22 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7b492f11df4bfb8b78853a600a8c6c065fbea367ebd870909490615b24bde0`  
		Last Modified: Wed, 09 Sep 2026 22:49:33 GMT  
		Size: 73.7 MB (73702770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d34e1e0ec3a9ef0a184daf04b1bedadf3667ecd6092d69c553efee173bdfb39`  
		Last Modified: Wed, 09 Sep 2026 22:49:22 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3e37a6bbadcd3716a741ca2a8838f4379e2acecb873523b8c9a40b426bfe64`  
		Last Modified: Fri, 02 Oct 2026 18:49:55 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a57478851f4057ee174a0bed52819e83d829cf09edb84f6c70a90288398976`  
		Last Modified: Fri, 02 Oct 2026 18:49:53 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41543a98ac3183ec6b93d76c42b15738839692c478b5bf266ccbfb5ae8590af`  
		Last Modified: Fri, 02 Oct 2026 18:49:53 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d4e672e6f40f7b014583c2ffd0d32f9df641763b2e4a176790836734ed531a`  
		Last Modified: Fri, 02 Oct 2026 18:49:54 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826e07ba46a55bf8d2c099d6554bc9e20935fd3dc96c950797b4cf85580732b9`  
		Last Modified: Fri, 02 Oct 2026 18:49:55 GMT  
		Size: 2.5 MB (2461514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e27151ec25da0814aac3fa58e707677b1798f9219159f6816061f3535231d`  
		Last Modified: Fri, 02 Oct 2026 18:49:53 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
