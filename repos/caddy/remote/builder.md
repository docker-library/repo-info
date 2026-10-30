## `caddy:builder`

```console
$ docker pull caddy@sha256:c4cd20eaa0b69112fd5d4f721ffc9671687e1d5d0b155c8620cf7546dbef94c0
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

### `caddy:builder` - linux; amd64

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

### `caddy:builder` - unknown; unknown

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

### `caddy:builder` - linux; arm variant v6

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

### `caddy:builder` - unknown; unknown

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

### `caddy:builder` - linux; arm variant v7

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

### `caddy:builder` - unknown; unknown

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

### `caddy:builder` - linux; arm64 variant v8

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

### `caddy:builder` - unknown; unknown

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

### `caddy:builder` - linux; ppc64le

```console
$ docker pull caddy@sha256:cc23230ace1a6c194c0b62bead246b56de683084cf07b39e6fa51c26f51000c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81471846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b9c543e15d1f91e7c097d9c8229429c687d05cea485833495d7579488b5446`
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
# Thu, 22 Oct 2026 16:56:17 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 22 Oct 2026 16:56:19 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 22 Oct 2026 16:56:19 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 22 Oct 2026 16:56:19 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 22 Oct 2026 16:56:19 GMT
ENV XCADDY_SETCAP=1
# Thu, 22 Oct 2026 16:56:19 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 22 Oct 2026 16:56:19 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 22 Oct 2026 16:56:21 GMT
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
	-	`sha256:eae5d5684d9fad63a3eba18e3159181573ddafa1b5f7cea90f5e4024df9a06ef`  
		Last Modified: Thu, 22 Oct 2026 16:57:09 GMT  
		Size: 7.1 MB (7058207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd75939db6b4c0ebe3e05c34e31c43da709b26d6cb88191b738b1105437c4dd`  
		Last Modified: Thu, 22 Oct 2026 16:57:09 GMT  
		Size: 1.9 MB (1852704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57af13468515cbc2253f4136ef6d503fb8f93ff199b6819fa99e09085bc75ee7`  
		Last Modified: Thu, 22 Oct 2026 16:57:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:a891af9f143bf1ef404fe648630ca452250aa3d928bb4182f33a6b42acf267d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd44303b24f4f70532a1d0e9671fa66f8bb4052e78f26baf3f07b43a1e78dd04`

```dockerfile
```

-	Layers:
	-	`sha256:036f9c7afc9cb3b38454d81d657f0a57c5fb46396d8e0ad9db05de82b8c38d68`  
		Last Modified: Thu, 22 Oct 2026 16:57:09 GMT  
		Size: 262.7 KB (262660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7efc94de2235c9a4bb45385757708e0436e45cc9583965386b385b9957fed7f`  
		Last Modified: Thu, 22 Oct 2026 16:57:09 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; riscv64

```console
$ docker pull caddy@sha256:1a070238e6db404cfa52ae9b67ca3fa625f99ad7520de63ef8f2439d161ce78b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81667171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ace5c186c746311bb2a27836401fb27d20703b7ee9bf67de064db55d2ee7bb2`
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
# Fri, 30 Oct 2026 08:49:39 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Fri, 30 Oct 2026 08:49:41 GMT
ENV XCADDY_VERSION=v0.4.7
# Fri, 30 Oct 2026 08:49:41 GMT
ENV CADDY_VERSION=v2.11.7
# Fri, 30 Oct 2026 08:49:41 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 30 Oct 2026 08:49:41 GMT
ENV XCADDY_SETCAP=1
# Fri, 30 Oct 2026 08:49:41 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Fri, 30 Oct 2026 08:49:41 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Fri, 30 Oct 2026 08:49:41 GMT
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
	-	`sha256:1c8381fd1ca1dad9cd4e3ab141ad320ce7d7a3656f3a5fefd5885d05cc3c9394`  
		Last Modified: Fri, 30 Oct 2026 08:51:06 GMT  
		Size: 6.8 MB (6817279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce30914e3945ad7ee8d799ab174678cce87702b45d210160855555bf8534d1b4`  
		Last Modified: Fri, 30 Oct 2026 08:51:06 GMT  
		Size: 1.9 MB (1852788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e0b81877ce7205cb475517001f170f0216bbc228501e5b303044e3731bb83e`  
		Last Modified: Fri, 30 Oct 2026 08:51:05 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:7b3390f6960e8223c53314d7e609aae4a4f1e4f3eaadf40e80b193d87a4d42fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c874903c15fa3348d0e9151e5ca5d1d9a101a71bc3dfdbab013821560722267`

```dockerfile
```

-	Layers:
	-	`sha256:f241e3610aaeed38046f93b8e4160ddaeead3dd291b2ed043689ef8717813bb4`  
		Last Modified: Fri, 30 Oct 2026 08:51:05 GMT  
		Size: 262.7 KB (262656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f35f0c3782b470e2aa46240c733a4fed34f0750cebf03582eee07b2d3aa94b`  
		Last Modified: Fri, 30 Oct 2026 08:51:05 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; s390x

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

### `caddy:builder` - unknown; unknown

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

### `caddy:builder` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:8ae7b4e7732735282857ea423514281da29c33ac1c6a7ff9a827bc901412bfd9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512001726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46fb39195641fd0263d5703c6bcf4108ceb2b409903efa4351178a6569262140`
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
# Wed, 28 Oct 2026 00:16:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 28 Oct 2026 00:16:04 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 28 Oct 2026 00:16:04 GMT
ENV CADDY_VERSION=v2.11.7
# Wed, 28 Oct 2026 00:16:05 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 28 Oct 2026 00:16:16 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 28 Oct 2026 00:16:17 GMT
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
	-	`sha256:692b3deac86f35fc3bd5b73dbbb59c1ee0914895881654c21b3ba21e0ddc9610`  
		Last Modified: Wed, 28 Oct 2026 00:16:23 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea8422c348811b88cf7264ef38417ad5deda515c51c2787fcf54f6b22d6984c`  
		Last Modified: Wed, 28 Oct 2026 00:16:21 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e13ebe670337d668e4f91ebd1a337545ffafa7b66238a1f6ebb64cb9e6e66ae`  
		Last Modified: Wed, 28 Oct 2026 00:16:21 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5c62d8d6c6003a0180a9fc79b2a7ecf30b77b1e1182a99f8202bc5a4ba96ec`  
		Last Modified: Wed, 28 Oct 2026 00:16:21 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ce739aeb28c89768239a9ebcb6d36e7cd626cb43c7fa57b9cb97dc3262c07c`  
		Last Modified: Wed, 28 Oct 2026 00:16:22 GMT  
		Size: 2.5 MB (2453114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7439d6fe0ed6cc80e84bea5998bcee6ef5f0337d4bddac9c69af328b30b3cd4`  
		Last Modified: Wed, 28 Oct 2026 00:16:21 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:builder` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:a5b5433a308ce347c5c3baa4854535b1a69d5de25b1a6802082ea9a23271e856
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346969212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874b1ab2a3de1ecf0673ab06372dcb2c0eb83e7dc351ca7316b5123591f2d212`
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
# Wed, 28 Oct 2026 00:15:37 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 28 Oct 2026 00:15:39 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 28 Oct 2026 00:15:40 GMT
ENV CADDY_VERSION=v2.11.7
# Wed, 28 Oct 2026 00:15:40 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 28 Oct 2026 00:16:02 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 28 Oct 2026 00:16:03 GMT
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
	-	`sha256:ee5a4468de7198499d277a58a57a8f623680bc420b20fea5a24eb6cad8ba60e4`  
		Last Modified: Wed, 28 Oct 2026 00:16:09 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9405ecd59ed0652d539539cc8ce4554e741419950a328c220d373d1b67f70d4b`  
		Last Modified: Wed, 28 Oct 2026 00:16:08 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04066b78580df7e51e7191374d2e57da561d38f57dd723fad1671b74f663d9ab`  
		Last Modified: Wed, 28 Oct 2026 00:16:08 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa8c8928d9fbd83cb4e9cef93491dd1423bf22e5dda74e9189da94aac922ca2`  
		Last Modified: Wed, 28 Oct 2026 00:16:08 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72da6fcd021e040166195a755494d81a36da1c4ae196982adb8ad6d0eac9731c`  
		Last Modified: Wed, 28 Oct 2026 00:16:09 GMT  
		Size: 2.4 MB (2443960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09069bded439cc604472feab8b37a28d609321c9aa6aa191a1deb3ea0729c046`  
		Last Modified: Wed, 28 Oct 2026 00:16:08 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
