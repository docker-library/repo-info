## `caddy:2-builder-alpine`

```console
$ docker pull caddy@sha256:bb53bc0dd94d5e93eca88bac50e435fd5f9dc6cc828fc6140086f282fb329e92
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
$ docker pull caddy@sha256:420db7c0f6927c7e8140c666628915fb4a9141282fc5c344716ebf3879fe8f9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83886465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcfe02f38379df7922c32f133c4bca78cf62c42b7cd351335f562d067224063b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:58:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:58:09 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
WORKDIR /go
# Wed, 21 Oct 2026 23:39:22 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 21 Oct 2026 23:39:22 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 21 Oct 2026 23:39:22 GMT
ENV CADDY_VERSION=v2.11.7
# Wed, 21 Oct 2026 23:39:22 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 21 Oct 2026 23:39:22 GMT
ENV XCADDY_SETCAP=1
# Wed, 21 Oct 2026 23:39:22 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 21 Oct 2026 23:39:22 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 21 Oct 2026 23:39:22 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c012d78a862fe59ae6789c91f982ea68a882c9c44bbde97013914458dcdd9c4c`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e3100880d834be60a9562375f4c5018b2cb26d64591bd0060aa3a80b935f43`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e43f36a074c019e33c82e90ad7b199cc4ce4f9cb09ae7ebb97d756fe0d7a51`  
		Last Modified: Wed, 21 Oct 2026 23:39:31 GMT  
		Size: 6.6 MB (6628407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359eb85c26c1538dcdc3e3675261ba25045a619e508f0996a092747918047c91`  
		Last Modified: Wed, 21 Oct 2026 23:39:31 GMT  
		Size: 2.0 MB (2009492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f9ebd1ca982fd85afa19edefa0cde9e7e87089a4c8bd8160bfa420e8be7437`  
		Last Modified: Wed, 21 Oct 2026 23:39:30 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c91aaaed9c16b68501c96ba152d97c6f21c3d442431c3ca2ccc0545dd8d13782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:180326912b895c0258dff89282619a042746a2c71cbb3c176f53fed8cfce8e0c`

```dockerfile
```

-	Layers:
	-	`sha256:cebe6e5fd7c78e368849da775161f14314c577bd733c8553a035d510ad51be7e`  
		Last Modified: Wed, 21 Oct 2026 23:39:31 GMT  
		Size: 263.2 KB (263237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1d0a01e73f365f1c5d870375926c3635d91ac71e6ab5fc3f7db68145477d6e6`  
		Last Modified: Wed, 21 Oct 2026 23:39:30 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:f6347eb9b4d30758235f5b98e506ed47dee662f4349ad72f573077f275511390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81885292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3314f92b3b2f8e82c9e193cbf8aed4498f2daa534f0c3a89e016a37ff34d4e9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:29:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:29:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:29:45 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
WORKDIR /go
# Thu, 22 Oct 2026 00:18:24 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 22 Oct 2026 00:18:24 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 22 Oct 2026 00:18:24 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 22 Oct 2026 00:18:24 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 22 Oct 2026 00:18:24 GMT
ENV XCADDY_SETCAP=1
# Thu, 22 Oct 2026 00:18:24 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 22 Oct 2026 00:18:24 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 22 Oct 2026 00:18:24 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057399039eb243e7808b91993ba9f63d3e0da431e05f5bbb72f37e5dd6b080c8`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 245.6 KB (245575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4270a94f0219df984116129a409fe43c3d2d9c5996177b591aca31e1f3615398`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc8de61d5b52c718b0f4b2ff7d5216f3f72b3381fcf19e4bf2816b8f6405758`  
		Last Modified: Thu, 22 Oct 2026 00:18:29 GMT  
		Size: 6.5 MB (6543510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23171917fef7401263f7f44b2a4d25e32783f639a057f9d2e310a69c5ab4d066`  
		Last Modified: Thu, 22 Oct 2026 00:18:29 GMT  
		Size: 1.9 MB (1881467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9a7853618588a2e809737e11f7b8fac6b8248a5ccd6872655f9868a98e58d2`  
		Last Modified: Thu, 22 Oct 2026 00:18:29 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:cfbdd73dbfc5565b8977b02d2a7c6e30cf3bd7e9714d6e62ca86fac3a8e966e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c253a298e477c88633fbd138356e503e11aafdaa691b72baf3c725069e45ebf4`

```dockerfile
```

-	Layers:
	-	`sha256:ba7f7be1cfb1b3625b17b4387619cabbef495271193c19b10432af1d4bc421a3`  
		Last Modified: Thu, 22 Oct 2026 00:18:29 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:c3a1164d96d8f83ddff8f091df8ad06ca36ca4ac873bdce8ffcbc80e0602e9af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81031214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ddddf7a6ada0c1c406d8bc7cbf6e149715b8ca7f7a043812bc42829905efd6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:30:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:33:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:33:59 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
WORKDIR /go
# Thu, 22 Oct 2026 00:28:06 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 22 Oct 2026 00:28:06 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 22 Oct 2026 00:28:06 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 22 Oct 2026 00:28:06 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 22 Oct 2026 00:28:06 GMT
ENV XCADDY_SETCAP=1
# Thu, 22 Oct 2026 00:28:06 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 22 Oct 2026 00:28:06 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 22 Oct 2026 00:28:06 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ea789e2969e7e9134f029905c7800eb29baab37b23bce0b5c7b8842814015e`  
		Last Modified: Wed, 21 Oct 2026 23:30:58 GMT  
		Size: 244.5 KB (244518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d4e0aad963a6de3ba7f2ac6cad5cd64943f102880db12296ba798d90e05b19`  
		Last Modified: Wed, 21 Oct 2026 23:34:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1264bc987f5311b43f5f234a84008b4caf428ba3a36311a6e6c8a14988f8b182`  
		Last Modified: Thu, 22 Oct 2026 00:28:14 GMT  
		Size: 6.0 MB (5986599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b74c059a0e2a3a1633d3244aa297588139330a99996ef61296f0a2c156bfb7`  
		Last Modified: Thu, 22 Oct 2026 00:28:14 GMT  
		Size: 1.9 MB (1877042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fd37e7776bb142ffe49d87d103c3379da19c08a607321396ff5a0fd717e79f`  
		Last Modified: Thu, 22 Oct 2026 00:28:14 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:8f7edda42c80d48c1ac173a89c9920432a83863f6026f2e19fbbe3344b7f22b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 KB (285883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc76c10d81c70da6dd22b61432236b2cb03a4b8c46f623664514a9abfaade0c4`

```dockerfile
```

-	Layers:
	-	`sha256:d26a078f90b91c35ba3c02322467188fe3524ec2c5609ea578b1ab49b2110d22`  
		Last Modified: Thu, 22 Oct 2026 00:28:14 GMT  
		Size: 265.6 KB (265629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:800775b5c5c5773d5f9a100adad0b3a70ef6f3b4a3f8ac038004635cc609a0ff`  
		Last Modified: Thu, 22 Oct 2026 00:28:14 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:3b407e6dffa0659c879c41185683a5010378680b912e51d509e9d1a7a9740d89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80709766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a852729cedda26bbfa8f3e10381184a3b8ab1956cd90c328a4f46971c81ec87f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:54 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
WORKDIR /go
# Thu, 22 Oct 2026 00:29:41 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 22 Oct 2026 00:29:42 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 22 Oct 2026 00:29:42 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 22 Oct 2026 00:29:42 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 22 Oct 2026 00:29:42 GMT
ENV XCADDY_SETCAP=1
# Thu, 22 Oct 2026 00:29:42 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 22 Oct 2026 00:29:42 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 22 Oct 2026 00:29:42 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdc05aad5cf439d58eff6bbe6e136d87af146e3b7442a5c64928da3ae1b86a3`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 246.9 KB (246920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070112d392529aede516cb12dd04bbbf175fcab48c54121d76e09a5043ce92a1`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a22016a811c13c5e1ce8f891f8dce9e81989f91afc0dd16562d9fdcde14a84d`  
		Last Modified: Thu, 22 Oct 2026 00:29:50 GMT  
		Size: 6.7 MB (6721080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912d7d108dc23fddf50b78f52ad101a55fa6e3d296f29f34426b4b1cd3d5b850`  
		Last Modified: Thu, 22 Oct 2026 00:29:50 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c658d7b5caa145bd1ed0676d845b4541a267748be05f550b8238b93b03ffa7`  
		Last Modified: Thu, 22 Oct 2026 00:29:50 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:4e8b3b562b54e8a32dee5246f1fef4a2cf9f0fddece9f9477b59f7556ca166b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 KB (282987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21ac23b9c920ec41e10042a1fe58ed9ad0036535c727e23089aa40bf40390e`

```dockerfile
```

-	Layers:
	-	`sha256:4aa83360569443d4e38c6a9f64084e367e5a278d8974ffcb5091e9582bcb3e35`  
		Last Modified: Thu, 22 Oct 2026 00:29:50 GMT  
		Size: 262.7 KB (262691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3154481dd43e68c00988c5dabc27b14b28e4c8bbd3916e39ed4c969477e76497`  
		Last Modified: Thu, 22 Oct 2026 00:29:50 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:e346e7768f6cf196ef0575e956b9aa89d2310e39c6a1c65823b8fef4d2dddcdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81469714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:444355d7d37b0cfb19a14713e61ea8964853e979e4ad9d2db1d2f7afcd0567e4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:16 GMT
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
# Tue, 20 Oct 2026 02:43:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:37 GMT
WORKDIR /go
# Tue, 20 Oct 2026 03:17:07 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 20 Oct 2026 03:17:09 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 20 Oct 2026 03:17:09 GMT
ENV CADDY_VERSION=v2.11.7
# Tue, 20 Oct 2026 03:17:09 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 20 Oct 2026 03:17:09 GMT
ENV XCADDY_SETCAP=1
# Tue, 20 Oct 2026 03:17:09 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 20 Oct 2026 03:17:09 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 20 Oct 2026 03:17:11 GMT
WORKDIR /usr/bin
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
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93836b5774e96155b60c3b65c2f6d830538d61203683c6012b8b71caed9f226`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6242f8ac30509b87baff265067be99506b493e99bc2460228eef2f9eb39159b2`  
		Last Modified: Tue, 20 Oct 2026 03:17:35 GMT  
		Size: 7.1 MB (7056494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2847a2d0b430dea10419507b9e061a4c9e60491eba29242e19d9752cb2bdb1`  
		Last Modified: Tue, 20 Oct 2026 03:17:35 GMT  
		Size: 1.9 MB (1852705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f3b0c5b5d41ec931ffbe2d041c288eb40bb95c5409cabe8835cf9f8edfcdbe`  
		Last Modified: Tue, 20 Oct 2026 03:17:35 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:66d834c72115d40bda65619bec4e198b314a7c717202477d0878a048e934aada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 KB (284796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e3a4000b6dd0714a78a5759f5b184245b5c42ede0b41c740bae39dec50cd8f3`

```dockerfile
```

-	Layers:
	-	`sha256:a05b8168660eb2748db4feb78756cdfe362627a225c4b3f6e0a4b2c23064caee`  
		Last Modified: Tue, 20 Oct 2026 03:17:35 GMT  
		Size: 264.6 KB (264597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:902aaafa09950ac5b1a82568658adf39dff38e61da613d987cd304374b86a47d`  
		Last Modified: Tue, 20 Oct 2026 03:17:35 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:43deb9dd041d6fcd6d15178c5afc91a8daec1a62d26a742db50dc2d2659de95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81663199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ed4d7331a794caaf37e46a65532247bfd5b5a089371e010de0173bdb27fb7c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
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
# Tue, 20 Oct 2026 02:53:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:53:35 GMT
WORKDIR /go
# Tue, 20 Oct 2026 05:09:56 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 20 Oct 2026 05:09:57 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 20 Oct 2026 05:09:57 GMT
ENV CADDY_VERSION=v2.11.7
# Tue, 20 Oct 2026 05:09:57 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 20 Oct 2026 05:09:57 GMT
ENV XCADDY_SETCAP=1
# Tue, 20 Oct 2026 05:09:57 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 20 Oct 2026 05:09:58 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 20 Oct 2026 05:09:58 GMT
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
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d210471bbbad4155d5d9d7a03dedf3bea72046f85d8dd4431b4da5f1892521`  
		Last Modified: Tue, 20 Oct 2026 02:54:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07768ba1958d24ae8f1b8f61ab4a5a2f9a3d6a3e9170f6437cbc41b20f1ff0e6`  
		Last Modified: Tue, 20 Oct 2026 05:11:28 GMT  
		Size: 6.8 MB (6815519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5603e396fdcdb8fe911cc5865b3c88274f93c9b13c9e07d1ee683d8145cfcc7`  
		Last Modified: Tue, 20 Oct 2026 05:11:28 GMT  
		Size: 1.9 MB (1852782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a5687f3f59ca82d7548bd1918309f5f7ff853d635bc831dffae89e4f4d4ad`  
		Last Modified: Tue, 20 Oct 2026 05:11:27 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:0f7371b0c750d4d016fc9272402d3ede2eeeae3e7c2403c453377e14ddff6bcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 KB (284792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a47b69f6cc51a76b4b996471b4b82a9487fa7f1f4b8956959a52f74bd5384d4`

```dockerfile
```

-	Layers:
	-	`sha256:742785bb1c915906f11cccae54274b5ab44bc9c63339c49e47c3626eb22d27db`  
		Last Modified: Tue, 20 Oct 2026 05:11:27 GMT  
		Size: 264.6 KB (264593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b836189533490810189cedcc0e434bc9c360d6a2623a10f3e6b5441c0ea02b2f`  
		Last Modified: Tue, 20 Oct 2026 05:11:27 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:c9b7a0a0d6a6cc2756a0f2e518bb1943747e53e5ed274ea6433164c6ab9cb1cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83114340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25c56368404e10e313d548c76af8ed1a956db9c43851580fef47bd13a29b0e62`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:41:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:05 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
WORKDIR /go
# Thu, 22 Oct 2026 01:18:03 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 22 Oct 2026 01:18:03 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 22 Oct 2026 01:18:03 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 22 Oct 2026 01:18:03 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 22 Oct 2026 01:18:03 GMT
ENV XCADDY_SETCAP=1
# Thu, 22 Oct 2026 01:18:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 22 Oct 2026 01:18:03 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 22 Oct 2026 01:18:03 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394b72af52beb97b1ac0b1a98b13629b3b0aee2321f877e115a82124b80d7793`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 245.6 KB (245571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096905f6e50b9f46f97862a2a89bf93646cfd1326c57bfde369c1e8b28b45e43`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ea01bc8ee85dd23e5926c738cf363effa733edc70f530be655e5ca11b9dc29`  
		Last Modified: Thu, 22 Oct 2026 01:18:16 GMT  
		Size: 6.9 MB (6922729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd89e8db7622738905ed2b1323c27b006b34b39ae6dd9c91059272faad3d5ff1`  
		Last Modified: Thu, 22 Oct 2026 01:18:16 GMT  
		Size: 1.9 MB (1944100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796f50788b3746951a847cb19dbbef989724978e2680dfca9d094dd13d57e493`  
		Last Modified: Thu, 22 Oct 2026 01:18:16 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:ed2926c939b67d21b06b1b85fd76aa3205a44fd08e6a1524bd53296c6eb37464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 KB (283211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:310a04c1968e25f7f02959b10aff897e9a44ee38b557398b933c0e2b93afe0f0`

```dockerfile
```

-	Layers:
	-	`sha256:180b0bd183d5147aebe388bf1465345bd3766120483e7e0a73004f26c9426929`  
		Last Modified: Thu, 22 Oct 2026 01:18:16 GMT  
		Size: 263.1 KB (263082 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdb7902e77f76b915b3e56f118bf679c915c9a9069ee365dad4326e7ccca9e17`  
		Last Modified: Thu, 22 Oct 2026 01:18:16 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json
