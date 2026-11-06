## `caddy:2-builder-alpine`

```console
$ docker pull caddy@sha256:3dbe908afe8ecb4f5505a80153c8de0fecd1b14d560798a6955c5cf115951561
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

### `caddy:2-builder-alpine` - linux; amd64

```console
$ docker pull caddy@sha256:f7d08b96ba62ff0ae985079c0db4e0f97acb1f174e0e111aebe1f8a4b2d56f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83902197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28b5f2b4e6976b1fa11413892a6164d6331c7ea689a703bbfc138fd3e3490d0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:19:44 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 19:19:44 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:19:44 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:19:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:19:44 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:19:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:19:47 GMT
WORKDIR /go
# Thu, 05 Nov 2026 20:27:09 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 20:27:09 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 20:27:09 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 20:27:09 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 20:27:09 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 20:27:09 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 20:27:09 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 20:27:10 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91cd85cbb99965c7b0f724a0fc60517c2c41f3d77b2da9236eaa8717a3de2357`  
		Last Modified: Thu, 05 Nov 2026 19:11:14 GMT  
		Size: 244.5 KB (244476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6fea6449ae0cdc0aa3243e118dd884d76a5a908c6e37b868632ec1dde4363f`  
		Last Modified: Thu, 05 Nov 2026 19:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dba87224bb2ed1fcbd53c3b961818fd4cc29a68890b9ef858d7f29a5d13d812`  
		Last Modified: Thu, 05 Nov 2026 20:27:17 GMT  
		Size: 6.6 MB (6643568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b40d73cb85f8fd3d3356e7db85fa756f90675f27d5b33c2ac6e2397a7a1b36f`  
		Last Modified: Thu, 05 Nov 2026 20:27:17 GMT  
		Size: 2.0 MB (2009494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e9dd194133ef0a40202a0c6d6f59dbf11eb0000029272259251558aa74a925`  
		Last Modified: Thu, 05 Nov 2026 20:27:17 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:ef7c65228e4052ba2725d46fff3402c7500a60019f17ba2c57bcb500d14505cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51131e843cd7e8afa3cfbb7340d0febd9edf84b2b2135a09552023b41edd27c7`

```dockerfile
```

-	Layers:
	-	`sha256:9ecfee5996a769b115f080539a9db29a9355966fd42c5ccf4b984389b5bd008e`  
		Last Modified: Thu, 05 Nov 2026 20:27:17 GMT  
		Size: 263.2 KB (263241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d59bef3b97fee2d2ba7d3519d8f59d059f49cd8adce1658af78b489c5a909e3`  
		Last Modified: Thu, 05 Nov 2026 20:27:17 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:7f8e58955ce9614f4b81510fbf0f4d012b74d96461a7fdfc63fa1cf39dce0474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81892843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2beb68911ed48b8f1585c0aa01b63328f41fb5a0d29f1fe803281a25bebf53fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:49:20 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:49:30 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 18:49:30 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 18:49:30 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 18:49:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:49:30 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 18:49:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 18:49:32 GMT
WORKDIR /go
# Thu, 05 Nov 2026 19:42:06 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 19:42:07 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 19:42:07 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:42:07 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 19:42:07 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 19:42:07 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 19:42:07 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 19:42:07 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa769d4c97878c047af4100c83a1a8491867ca9a581852472e86999b7532de71`  
		Last Modified: Thu, 05 Nov 2026 18:49:44 GMT  
		Size: 245.6 KB (245566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10be0e407951f733082603dfdc29cb85df3ee39d0e9e8de63ad5efeaf197479`  
		Last Modified: Thu, 05 Nov 2026 18:49:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec073b4c4586bab9c792fb98b53ff75d546abd2d30beb25f0bec5b552718e913`  
		Last Modified: Thu, 05 Nov 2026 19:42:12 GMT  
		Size: 6.6 MB (6550959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03efbc6648b8ccc78056f9617df4c8b9b8ecd744ba287e684d3f77555587633b`  
		Last Modified: Thu, 05 Nov 2026 19:42:12 GMT  
		Size: 1.9 MB (1881469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d329a2b2c6129e8aaa8d8bf5db2cf13f62db561ba899f6e63e638b4c83bf9c`  
		Last Modified: Thu, 05 Nov 2026 19:42:11 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:fdc3b23f56c61ba51949ac9902cc462a4f4e5384be88ad10a04470b2dcbfba49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc7bd5a4f0daf8f353190261128b12f335ab6c89dae64dcb6f8bb7f2606914b`

```dockerfile
```

-	Layers:
	-	`sha256:f9a5c052cb07d6592a851551357d05fd5e1922085aa0d6be33be2c1bc209603a`  
		Last Modified: Thu, 05 Nov 2026 19:42:11 GMT  
		Size: 20.0 KB (20038 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:fa27131cdf4af7d6645e87be1a9c25f7730de87e8f1e3b2697a323ed9c6c0520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81041183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b5ff7254b3ee6c72fc4de09a2fe310a3ea459595bd3f292bb71ca57332137e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:48:14 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 18:49:24 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 18:49:24 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 18:49:24 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 18:49:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:49:24 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 18:49:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 18:49:27 GMT
WORKDIR /go
# Thu, 05 Nov 2026 19:50:59 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 19:51:00 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 19:51:00 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:51:00 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 19:51:00 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 19:51:00 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 19:51:00 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 19:51:00 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b852c2d6183156ff5a35236afa63ee5a082b1a3f0908f4bab961fc00903bb70d`  
		Last Modified: Thu, 05 Nov 2026 18:48:23 GMT  
		Size: 244.5 KB (244522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e05bbd8e46f42daed24d2713831b4bbdb9602bb849f5daf1d8870df1e80641a`  
		Last Modified: Thu, 05 Nov 2026 18:49:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700258a8e15af963777be1f01b7e25655b3945c122e1141783dc6b867092cd2d`  
		Last Modified: Thu, 05 Nov 2026 19:51:08 GMT  
		Size: 6.0 MB (5995489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb11d48b758f6b633ba9b963d2afb6c781fdb5e6772a7e37344373efc18b30b0`  
		Last Modified: Thu, 05 Nov 2026 19:51:08 GMT  
		Size: 1.9 MB (1877042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ceff1efc5fa2d9122e913a3dd8dc77c7d2833573a68858fb6aea16548836f52`  
		Last Modified: Thu, 05 Nov 2026 19:51:08 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:92acbc5a82f2848b2d53e9e60d932e545f455931fb8f1336857d1fadd77e6888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 KB (285886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a411d4b406a0556fdc1fe50ae80a2b1fcd70d12c8614487f701cca3bc73d0b33`

```dockerfile
```

-	Layers:
	-	`sha256:78809076f6d6bc42eda7c81c810de313d151f60b0fc8686c3918fef4da8bc9b7`  
		Last Modified: Thu, 05 Nov 2026 19:51:08 GMT  
		Size: 265.6 KB (265633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:374bddc11d6a4615b09824f1961bbbc26418707093a2da1753f07494516e4390`  
		Last Modified: Thu, 05 Nov 2026 19:51:08 GMT  
		Size: 20.3 KB (20253 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:32d9fa37e1ff98a8e4ef06684a90c55ddbc676f4ab38b48f5a66389201cb1017
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80715864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f30f6d04b2b2a36f7aaafcf7486d578c0dc1f40cb69803d76c274a9cc2333dc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:38 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:14:46 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 19:14:46 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:14:46 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:14:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:14:46 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:14:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:14:50 GMT
WORKDIR /go
# Thu, 05 Nov 2026 21:34:55 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 21:34:55 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 21:34:55 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 21:34:55 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 21:34:55 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 21:34:55 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 21:34:55 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 21:34:55 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87af31f6c71c67a7e6fbdc71e17f45e5fefdfd53c7cc59f6dec60bffd86ef890`  
		Last Modified: Thu, 05 Nov 2026 19:15:04 GMT  
		Size: 246.9 KB (246917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd9da892f7923a673bef7da478d2574668de7a18c4763264b09da2e150ff3c5`  
		Last Modified: Thu, 05 Nov 2026 19:15:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0371154a0b4cff8d76450f412ff13f91b84f51998641f890f271f15a46fc4cae`  
		Last Modified: Thu, 05 Nov 2026 21:35:03 GMT  
		Size: 6.7 MB (6727077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd59e263a87d364d18d613881187fa3a778777cfd143cb00c3b67e20add85f5`  
		Last Modified: Thu, 05 Nov 2026 21:35:03 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ebbab7f4d0f5070339d235d2d2365b5363666ad59a053021a6224fc23fbaef`  
		Last Modified: Thu, 05 Nov 2026 21:35:03 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:e1eab9743e9e18a1cb52555e990c9eeb057aeef278812eac7a33282ef1930929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 KB (282991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d08e0c5109ed8ff64f324a13a4bacf3a911b007446337ee728d2cff2697365`

```dockerfile
```

-	Layers:
	-	`sha256:a083d5b11bb0de9cf8033b3f1a8d20fda46a8778137f79469b82f6d587596840`  
		Last Modified: Thu, 05 Nov 2026 21:35:03 GMT  
		Size: 262.7 KB (262695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aeff124ae5eb7a1d3121fcb21d7ffe51139659101bb7cd98b5e4c1def2c2888`  
		Last Modified: Thu, 05 Nov 2026 21:35:03 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:46ae25d132a23239a9d6e259f3853f0a47106dcb6febf3b6dbf6bc85ae45d210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81482590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2fad8e1e1d8fa7dac4e41e3d1ff9961e0ef8880ee308801c5838572168f88d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:36:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 20:52:15 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 20:52:15 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 20:52:15 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 20:52:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:52:15 GMT
COPY /target/ / # buildkit
# Fri, 06 Nov 2026 00:19:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Fri, 06 Nov 2026 00:19:20 GMT
WORKDIR /go
# Fri, 06 Nov 2026 12:06:02 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Fri, 06 Nov 2026 12:06:03 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 06 Nov 2026 12:06:03 GMT
ENV CADDY_VERSION=v2.11.9
# Fri, 06 Nov 2026 12:06:03 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 06 Nov 2026 12:06:03 GMT
ENV XCADDY_SETCAP=1
# Fri, 06 Nov 2026 12:06:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Fri, 06 Nov 2026 12:06:03 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Fri, 06 Nov 2026 12:06:03 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0182ddd5961f722a2fa1a03726f16f1610e93687b1f32d100d4748a469285ed3`  
		Last Modified: Thu, 05 Nov 2026 23:37:49 GMT  
		Size: 247.4 KB (247360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8eec74006a423e4bcea8a9600f52e381ced7a4ce56a71ba48d203f847caebc8`  
		Last Modified: Fri, 06 Nov 2026 00:19:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be5cd225f2d73bee660c3bb9e6195fee4371f374bd2f4aacec0cc767ce3223b`  
		Last Modified: Fri, 06 Nov 2026 12:06:29 GMT  
		Size: 7.1 MB (7067840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8aab9e196f50a1a2ca0cecae9f5baaca5e2fef2fb6cb6d68f86012e8981751`  
		Last Modified: Fri, 06 Nov 2026 12:06:29 GMT  
		Size: 1.9 MB (1852709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f35eb280c3c95e3489aa0a014170345c35eefe8656d2625e39140449848781b`  
		Last Modified: Fri, 06 Nov 2026 12:06:29 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:2860036f5723fc4bc129b7581a5180168223863b80a0fe4335546a88dd0240c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bbad22c6dc433c42b00caf04ce81cc18d0a7ec930d165481f786d633bbc48d7`

```dockerfile
```

-	Layers:
	-	`sha256:788bfee87bbac5c8630160d130836edbd811bba938cf2988a818377a87d1bb7d`  
		Last Modified: Fri, 06 Nov 2026 12:06:29 GMT  
		Size: 262.7 KB (262664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b738511328046ba10dd912a5aa5e0e9eb956d0a23dc227d98dff3b124b49e732`  
		Last Modified: Fri, 06 Nov 2026 12:06:29 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:5976ed6ad86ce3fa234815ce06110972c027b5f3602c3b026c5de8d5e48789d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81675521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0bf3a1751a3aeefba4002876c682d97f77e0c732a1b5df1ef55496ab6e0026`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
WORKDIR /go
# Thu, 05 Nov 2026 07:03:46 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 07:03:47 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 07:03:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dad86abc0730a42f957fd3d2aeb23ea0616dea43d14b33d12b96325a36d169e`  
		Last Modified: Tue, 27 Oct 2026 00:24:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4c16eb9680371fca8f637985610d3a4b85255941c76a98a2ea0dd04432c00b`  
		Last Modified: Thu, 05 Nov 2026 07:05:27 GMT  
		Size: 6.8 MB (6825625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f45a92b7c360dc9219503a83da9c3c705416b0b93da5f576141a4f54c00774`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 1.9 MB (1852791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d08bd7441e433de00fd4eae87a8b3ff26f54839ffb155a092b95127a5dc51f`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:df2ff7bf921df9a16643efdb2163df724b2cecdb7b9d18dc62e40246d386c79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fdef83eeef55f4039393b700e958a9ef945541926df8d9c7b36ecd394819dd`

```dockerfile
```

-	Layers:
	-	`sha256:71f67b9b9248518abcbb988b596d199d322073e385b35b7b3ef9573cce5637c3`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 262.7 KB (262660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1db7972890027e7ce8cb45c48ea7206795733fc21a313202520668bae351437e`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:b8f7acab634adbfc0d9196e1da61c01122751b283c071d457fd52b65d4236948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83121724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055fbebdaef99d5b82a35f81f8590e97aaf501a0d79bc836fcbc774795f10f1b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 05 Nov 2026 19:15:40 GMT
ENV GOLANG_VERSION=1.27.3
# Thu, 05 Nov 2026 19:15:40 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 19:15:40 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 19:15:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:15:40 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 19:15:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 19:15:45 GMT
WORKDIR /go
# Thu, 05 Nov 2026 22:06:49 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 22:06:50 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 22:06:50 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 22:06:50 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 22:06:50 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 22:06:50 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 22:06:51 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 22:06:51 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa896657d8763e0f093ba3fd892c1ca57b016eaf8be90b93308ddab74fdc8a9b`  
		Last Modified: Thu, 05 Nov 2026 19:16:16 GMT  
		Size: 245.6 KB (245566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bb68783ff0accb6f652fe454b9910326faff5c91617a0a67e3eaa0f239502e`  
		Last Modified: Thu, 05 Nov 2026 19:16:17 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55e91d5b2db0f36e598d46c3124cd9238cb5e3734deebdf2013b2cdef285e9c`  
		Last Modified: Thu, 05 Nov 2026 22:07:11 GMT  
		Size: 6.9 MB (6929160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ce46ed0564d7b940d03c669e82f1aa757aa94315a70b0dafabf63283849b1`  
		Last Modified: Thu, 05 Nov 2026 22:07:11 GMT  
		Size: 1.9 MB (1944100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e03f270aaab73f84ec5a4f2cc3591ea18fe58286fcc5946b9612323660913e`  
		Last Modified: Thu, 05 Nov 2026 22:07:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:cc5d1ad3441fa356c0ce9fd443aebaf1c5ec276d3131910e8d4b7beee97fdb1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 KB (283215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cd62d7d249762f4e5046f55037e4dc6a5a883a749e73a7a42c220b59bec845`

```dockerfile
```

-	Layers:
	-	`sha256:c20b6c9a8bf89c158b8b8605a230b7e03edce9c284ee5eda7307dfb2a2219160`  
		Last Modified: Thu, 05 Nov 2026 22:07:11 GMT  
		Size: 263.1 KB (263086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3307d0ad9a5cd74430a356ddb4e096799a184e9214260c9dc8610ddbdc59e33e`  
		Last Modified: Thu, 05 Nov 2026 22:07:11 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json
