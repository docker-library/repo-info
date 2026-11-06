## `caddy:2-builder`

```console
$ docker pull caddy@sha256:ccd8bdb5d7b25c78962bac46b7daaabfb0a354d0decf7d752e1b69caf46d9b85
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
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2-builder` - linux; amd64

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; arm variant v6

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; arm variant v7

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; arm64 variant v8

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; ppc64le

```console
$ docker pull caddy@sha256:2c6692c88ae9ce80f131b5d4b74388fef59f0562bf9ba63f48927d0deb672ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81481471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c078bdbd49232982d7b0a5b520eb8ca7d0e2fa6f5c4413b231845c5ed69e91d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:35:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:55:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:55:30 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:55:30 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:55:42 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:55:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1039312999d7cc79e1a73e7d562cb99a4e1d9808a1c7eb990e7bd00db569593`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 247.4 KB (247354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d26cca5cf4e23e7a631853927e088cd119148d2149259c5d02e4358523c9f9b`  
		Last Modified: Thu, 22 Oct 2026 13:43:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ec1cdb0369df3ec046840060bcdbafe17a6d5d0b64286b96ff3bd86f4c36a9`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 7.1 MB (7067825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a74bbbbe3cab47dc229b607b0ab407ed2ea0e57494a027de2a771709fc6e578`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 1.9 MB (1852706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5d4efc145ed802ea281abacad7847207d1e5b29f7028adb36ed021ee7623cb`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:7ef384c917d2c72247359c2f8206cce9da27e7a01410109a801e062512c81b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fffb55fa30667e00acb5dad7551df3b10c6165ff741c359a72ca9a1610782502`

```dockerfile
```

-	Layers:
	-	`sha256:b5e6a2af55077255e40063701decf51a2ebffc67802ef6533fd5e2e55d9084e2`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 262.7 KB (262664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d07be2f615552682b5000418a0d635db93b098e2060fb882cff1d21ef7df550`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; riscv64

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; s390x

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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:322cf178420fc490995ab4926e551ded39c7741bafd40e52d8f37721a5af63d3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512025216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405652c8cb9a777e8aee873526e5de489b3584c99fe7a4d85fc6e4cc6c00bf0a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 23:01:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:08 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:13 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:13 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:36 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:37 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:42 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:44 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:46 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:54:15 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:17 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9dc3ea73737b5e7988b67a3b7d66fb12d1c2d45ae0faa88815590457b0a29b`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca6fe69737ca73ad3f90994d40696ec38484b78dfb551c7453e8a9807b6d01`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82709fc838d73d56ca04aa73f6f789b6386d035fb9349e1c9d228780049400c4`  
		Last Modified: Tue, 27 Oct 2026 23:03:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82212b5c849462e3dd0139e5a5b8d58d3290d92803198d5c1fee2a88cc24a5be`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e0cc77e3f495c77875f1db941bab19c86844345c0256d4bf05597e900d69`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3325ade1b95eef958b43223a8e2f930fb7a88598ff07289c108e40ea9568a3b`  
		Last Modified: Tue, 27 Oct 2026 23:03:56 GMT  
		Size: 43.3 MB (43340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45beab588c2115a45d58cb6eab918d433478c7dbbef7d92f37cba8577cf68bd`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f4a352e310ffb8a93987326f53c0de896ff11e6a2ff1eea5ff3e7d53ecbdd0`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 342.2 KB (342171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a5f4fcc0e72594b3ae2c9f480fa94be4c163c60eb901be1efe8af9a3b22da`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514708ffcd88eb748540b2377d36f6f66979a9a404466596eef1f4ddc267a9f`  
		Last Modified: Tue, 27 Oct 2026 23:04:00 GMT  
		Size: 73.8 MB (73799496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0d49c8c867b9582a5632680730d342eb19e9b2312e19c6d15dd7d0c6224a5`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ab2e56e2d098ba7b923d3900c3a059128580601b8c4330b3ce30e9801c480`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b8a891d239d53a8974688b221304c7560ebdbbfd82a019bd055f295d44192`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792e2e2b39b4dd9c9c9c571462238ef17d5af5ac4ddd4b5d66fd6fa8cfe2c4ee`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb594f57a5fb2306703fce5e22bcd0a0ccb5b0e92fe12f50d71de5b2da826c1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0850508e52ef599053526680e30927a065d297bd0fc01bcc6eb20f754de41af2`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 2.5 MB (2476586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a6383ffbf32a8756510d52ecb475ef4a6fb14b5a146d9165cae7ecc4944d3`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-builder` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:251630ed505d1bc71474d21c55de8c81013041f0be69b00734d6f10fc3af37a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346987143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b538f9c56cc6192b44467cf39f5699357058cab8013b2b91347260eaef074f10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 23:01:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:55 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:19 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:25 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:25 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:54 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:55 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:35 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:36 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:53:59 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:01 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f98ea005c6b5e82948bfd0d9f8a10a638f47353d2a860c1f04848b1fe63f43`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25ff349fed69087dede49cbfb0d3b004befe6b14a59c473e56c8e2cccf4a6b4`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8daa49ca7ead8b36f0b651f5788eead2db56caec3df7b94eb6f594cd3e5badb`  
		Last Modified: Tue, 27 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32b0dbaa15dfd6332ead1255f233ea55cbb7a7d2eb216492a47bc4eb4f08a36`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845ec009e41fbeeb45ebd214b6d358294dbf999e572d9d7ed78fb3f3f1b141a1`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343caa9e4c6abefa9caf25adbeacea608cbff97167723f99a282aa3a2d3c41c`  
		Last Modified: Tue, 27 Oct 2026 23:04:10 GMT  
		Size: 43.3 MB (43334640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6898c1b1554e9b4d9b0dab9c58c389f3f346f9f3d8be61f727d3dded97076b`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad6ffce0035c184d0f1cc69cc6eeee2960caf115514e65c99284f29a2362e3c`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 328.9 KB (328893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb5a2f945389244a435c579c2a21d1f289ebc2085d6ca51a23413dbb7345ff`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20140fb2422e642b34aa718958c5502a414c499b2fb93bff0ad64a135333051a`  
		Last Modified: Tue, 27 Oct 2026 23:04:14 GMT  
		Size: 73.8 MB (73788363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d46f6710058016f086fc453a4ff487f1ef0a8a5f2ed98c165d7be7df1a9daa`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd9afb309fbe0e00e3c3890bcb6b657012badb1ab77379d780d0f9516f4402`  
		Last Modified: Thu, 05 Nov 2026 18:54:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e418dd3b67b3ce1fde3dd9b4986f075bfdf19d21ac4739722823ca30f57ae692`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b96bd881305e184e63e771a5a35a07de64033d714d1f2f5fc3bbb36b516450`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11e7419554a1a0ed1cbe7f59c491e8a4b2219697a873b9ced64719df5a79466`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdc448824d456f3fddbdb0e5431171a1f7274d188b46463e05c83f183fd15c0`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 2.5 MB (2461854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dead047b3a40bbbeb7dd37f709c20f5672f1fca49a8c9e3fb78ea309f92c26`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
