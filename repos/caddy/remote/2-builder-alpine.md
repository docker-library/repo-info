## `caddy:2-builder-alpine`

```console
$ docker pull caddy@sha256:d6161a2c82fd58b3205048958fb6246d0c5d892beee8a47e90944610c4efd100
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
$ docker pull caddy@sha256:d995bae802dc640e494ee7c8dfb95717b95daa8ec5f6bf4dd294b78f6e995c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83877488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1257f21c387a4b9c9c0d90f8217ac8495923a4bf7d625187fa8d40c54bed66bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:53 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 17:12:00 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:12:00 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:12:00 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:12:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:12:00 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:12:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:12:03 GMT
WORKDIR /go
# Thu, 08 Oct 2026 18:04:18 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 08 Oct 2026 18:04:19 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 08 Oct 2026 18:04:19 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 08 Oct 2026 18:04:19 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 08 Oct 2026 18:04:19 GMT
ENV XCADDY_SETCAP=1
# Thu, 08 Oct 2026 18:04:19 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 08 Oct 2026 18:04:19 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 08 Oct 2026 18:04:19 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2443a591f6296d5e94b53e785f358049a0c73d97e9e0941fcf48cf482f385b8`  
		Last Modified: Thu, 08 Oct 2026 17:12:18 GMT  
		Size: 247.5 KB (247525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b6413ae8f393d11d32262c8dc6bd053dbaea3d074f95edd5605d3eb116e3c2`  
		Last Modified: Thu, 08 Oct 2026 17:12:15 GMT  
		Size: 71.1 MB (71145476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff05f868da7888e9c1d6b4967ff0892cf86b51d23c81149794e72c001604803`  
		Last Modified: Thu, 08 Oct 2026 17:12:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade008153babe92d969deebbcd31ae22e2abab929237dd3b618b47339fde81f0`  
		Last Modified: Thu, 08 Oct 2026 18:04:26 GMT  
		Size: 6.6 MB (6624665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b09afbe9328b93427ef524437fbdbdfb81b0b9c1118d9beb307491e5a96262a`  
		Last Modified: Thu, 08 Oct 2026 18:04:26 GMT  
		Size: 2.0 MB (2009492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28edafdaf0c8b9009a17a4f9dfca7361dd1162a25ec42ac9904b42b451f907ff`  
		Last Modified: Thu, 08 Oct 2026 18:04:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:f82f7aa652069e2a7d57e46a270332488127fde5d09f9ffd04506b28fea7cbbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 KB (285303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a313b1ef13bb0ae6875a1025d1153c0779724be8b076069de28084f8e8ff4d89`

```dockerfile
```

-	Layers:
	-	`sha256:b2f6aa4247653596ba315640e18f61ceec7a952618ebb2f7c402ec0f6771c379`  
		Last Modified: Thu, 08 Oct 2026 18:04:26 GMT  
		Size: 265.2 KB (265174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706d90cfa03b1e7a52726f80fee6b26a0283ace55042901e1c4b03fa4a9107ac`  
		Last Modified: Thu, 08 Oct 2026 18:04:26 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:4e9ecbbd91413bfca5eb9868b706074602ad3af575a776b54eb8bc9e907bf1dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81877859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49ed287af03af4088f23b92beb24194fb244c0219ef3cd18b021aa296bc421b5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:10:40 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 17:10:50 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:10:50 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:10:50 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:10:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:10:50 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:10:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:10:53 GMT
WORKDIR /go
# Thu, 08 Oct 2026 18:01:13 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 08 Oct 2026 18:01:14 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 08 Oct 2026 18:01:14 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 08 Oct 2026 18:01:14 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 08 Oct 2026 18:01:14 GMT
ENV XCADDY_SETCAP=1
# Thu, 08 Oct 2026 18:01:14 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 08 Oct 2026 18:01:14 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 08 Oct 2026 18:01:14 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8efd36fc6735820046d8d24f951801e523bfbb7530aa8f5f2fef18422e945c`  
		Last Modified: Thu, 08 Oct 2026 17:11:05 GMT  
		Size: 248.5 KB (248498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39381eaf56e34eb5c731c578cb28e454f14f4f9954cc8993e719abdee1277583`  
		Last Modified: Thu, 08 Oct 2026 17:11:07 GMT  
		Size: 69.7 MB (69653439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb51058baa84872f89ba9a572f4fb0b4555cea73c97c9ff6a23f4d786475f86`  
		Last Modified: Thu, 08 Oct 2026 17:11:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c053e9e7c4bfad42382a24168fc46e289954fae28ec55b02fcb071ac8b04cf5`  
		Last Modified: Thu, 08 Oct 2026 18:01:19 GMT  
		Size: 6.5 MB (6538746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f107b81b292c0f72a9ceceabf6fa026706a0202dfbb8da7c7c2223949a3fe3`  
		Last Modified: Thu, 08 Oct 2026 18:01:19 GMT  
		Size: 1.9 MB (1881471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239e8c9249c57adf8ee272ac79315b71fd3a23f30c3204173d5b5180c4206ebf`  
		Last Modified: Thu, 08 Oct 2026 18:01:19 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:aaca4cceaead1cae4091b58bbf60756e1ffbc31bb0f92642ef00b0aa6d7b854d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208e91b1a620ad519f8440adf73fafcd35bdf1bc5e64aea9858bc8415631d531`

```dockerfile
```

-	Layers:
	-	`sha256:a3d0acfdf5aaa71a0993033bd081d7034dfe74b9dd899670a87b3eb90a9e0698`  
		Last Modified: Thu, 08 Oct 2026 18:01:19 GMT  
		Size: 20.0 KB (20038 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:8423a748805fbec1ae5d453e79286762fa52fb271c2c5e6c72f6ac059b59dded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81026130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126e45f21f8e1cb7e92ad578a3bdddb3fe438fac60244e2a1012dd55329ae210`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:35 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 17:11:43 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:11:43 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:11:43 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:11:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:11:43 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:11:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:11:46 GMT
WORKDIR /go
# Thu, 08 Oct 2026 18:03:56 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 08 Oct 2026 18:03:56 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 08 Oct 2026 18:03:56 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 08 Oct 2026 18:03:56 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 08 Oct 2026 18:03:56 GMT
ENV XCADDY_SETCAP=1
# Thu, 08 Oct 2026 18:03:56 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 08 Oct 2026 18:03:56 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 08 Oct 2026 18:03:56 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bbf3be0a29304da64b27f230a997e315163194710e03be5db0c77bce663880`  
		Last Modified: Thu, 08 Oct 2026 17:12:00 GMT  
		Size: 247.5 KB (247539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167d1e171207277b05e359386542bdc9c54367f99ef4ca1760e6945013febeb7`  
		Last Modified: Thu, 08 Oct 2026 17:11:28 GMT  
		Size: 69.7 MB (69653422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d2fa30c4935b177ce8df6459cc74f97a948905f1c8b4c931c74c5899300165`  
		Last Modified: Thu, 08 Oct 2026 17:11:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e3590eec337b6c34b58e82603c490c26a857f2bd2f3a4d45352e8e066e9605`  
		Last Modified: Thu, 08 Oct 2026 18:04:05 GMT  
		Size: 6.0 MB (5982333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8002b51b9e15f41d308d10764481a5263f2466e938bf3a1785c4dc4f5e9721`  
		Last Modified: Thu, 08 Oct 2026 18:04:04 GMT  
		Size: 1.9 MB (1877042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c9f0ef7d082c19adb1e7cc024d37e32759d6a00ee17a2d91b6d6d3f9f5d230`  
		Last Modified: Thu, 08 Oct 2026 18:04:04 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:7de321e0d9c1608013f918c5f3edb98a99c6e8622fb08f52f2aaa475badeae59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 KB (287819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a23ff622e28695a7d3690856824f0565d3db4b1f0554355ff1c834fe41cd7b61`

```dockerfile
```

-	Layers:
	-	`sha256:a9809278c77d17394826cc614de9f45dab0a76c3fae77c11320b9f3217d3fa9b`  
		Last Modified: Thu, 08 Oct 2026 18:04:04 GMT  
		Size: 267.6 KB (267566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96785a27a06b17c0e84418f5b89e8673a750bc17f558164779efde9e72d47259`  
		Last Modified: Thu, 08 Oct 2026 18:04:04 GMT  
		Size: 20.3 KB (20253 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:40a35565a4b21b5c7bcee199e368c6a130eeea79ab64cf3eb0732dd58e63a347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80700525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a92f4f2179f4004ed408e885af19f7fc7c943504aa00f3f54eedf3293d7cfdf0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:35 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 17:11:42 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:11:42 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:11:42 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:11:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:11:42 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:11:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:11:45 GMT
WORKDIR /go
# Thu, 08 Oct 2026 18:05:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 08 Oct 2026 18:05:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 08 Oct 2026 18:05:33 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 08 Oct 2026 18:05:33 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 08 Oct 2026 18:05:33 GMT
ENV XCADDY_SETCAP=1
# Thu, 08 Oct 2026 18:05:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 08 Oct 2026 18:05:33 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 08 Oct 2026 18:05:33 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59cacf40f01273b31f59a831583128e3c131d6d02094b21bc85b7c5b997d8834`  
		Last Modified: Thu, 08 Oct 2026 17:11:59 GMT  
		Size: 249.8 KB (249816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c488414f4e10f9495a8ef36b033a81ae04a3d43955e64f351a4247848f292d26`  
		Last Modified: Thu, 08 Oct 2026 17:11:42 GMT  
		Size: 67.7 MB (67716662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d2fa30c4935b177ce8df6459cc74f97a948905f1c8b4c931c74c5899300165`  
		Last Modified: Thu, 08 Oct 2026 17:11:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372cd89985f537e78c4b818ffae6b79f0fad83841eb084d2918aa71a16278491`  
		Last Modified: Thu, 08 Oct 2026 18:05:41 GMT  
		Size: 6.7 MB (6714841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda85136368bfc841b72ff2e6a2d0fb1cc506bd0a9d8c1bf8cf6b332b2cdabcb`  
		Last Modified: Thu, 08 Oct 2026 18:05:41 GMT  
		Size: 1.8 MB (1830956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d6fd2c5666b9dadce4538b6b6a199aba651187d7f2a0940c8581357f245fe1`  
		Last Modified: Thu, 08 Oct 2026 18:05:41 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:60693cb05759d03ce70831b1b4f7aa2e46334be26dcb2fb7ca43af1c77369d78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 KB (284924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee7824a2e1e0ecb9e2d7745a807e97953041e0050e2434c1d30369eed53d6e2`

```dockerfile
```

-	Layers:
	-	`sha256:bfa740cbf9474d0f3fd03fe03ad5c095c0f89389491b65b5339c6551ecf2162e`  
		Last Modified: Thu, 08 Oct 2026 18:05:41 GMT  
		Size: 264.6 KB (264628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49089922b5782f4fa041285da4625f1cb1e3983911c8466aa3b547c442411517`  
		Last Modified: Thu, 08 Oct 2026 18:05:41 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:7a3ebb58b126e8d185c1664c22d352d47cb59a17ee94d3042c8a74866cd3755a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81467727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ec079153d02c49fc01cd593ee63feb9cea0318d5c2a21d381d4982f17cb8e2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 17:10:24 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:10:24 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:10:24 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:10:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:10:24 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:13:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:13:24 GMT
WORKDIR /go
# Thu, 08 Oct 2026 18:09:24 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 08 Oct 2026 18:09:25 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 08 Oct 2026 18:09:25 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 08 Oct 2026 18:09:25 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 08 Oct 2026 18:09:25 GMT
ENV XCADDY_SETCAP=1
# Thu, 08 Oct 2026 18:09:25 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 08 Oct 2026 18:09:26 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 08 Oct 2026 18:09:26 GMT
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
	-	`sha256:3bc28fa329b5121ec57d673044ea58538bd2701fa5f3632a4cd95c4ef7ec97c3`  
		Last Modified: Thu, 08 Oct 2026 17:12:09 GMT  
		Size: 68.5 MB (68491354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda193aaa650cc41d3fcf77b4b1fd16df99e6b761fd7c1e6511f1ad9311cf641`  
		Last Modified: Thu, 08 Oct 2026 17:13:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa21781b2f44658004a90ab9db13ed48933b4f37bdfcd162dab7b339acf85b`  
		Last Modified: Thu, 08 Oct 2026 18:09:47 GMT  
		Size: 7.1 MB (7055321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d836e46c44ede5f305bd1e3371d067e3ef11acec5bf0dbc3830f6cb4c2fafe1`  
		Last Modified: Thu, 08 Oct 2026 18:09:47 GMT  
		Size: 1.9 MB (1852706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96a1ef082467d2b7fc9d21cb7390c0d7f9b30e23fe2b6fd8b652d6d41ee380a`  
		Last Modified: Thu, 08 Oct 2026 18:09:47 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:d7d82df49c3ebb1f4586b61767fdceb26fa773ed8e66d52d56a14f29f4ccbe0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 KB (284796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff9cd4abd0fd028000b49946245f6c1314e07d504baad34ea9b26c09eb44dbf`

```dockerfile
```

-	Layers:
	-	`sha256:50d90836f66bc1433c43b7d7a352c35d026f20bf87692da8490b1373cd5e6624`  
		Last Modified: Thu, 08 Oct 2026 18:09:47 GMT  
		Size: 264.6 KB (264597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e6cdde3ca14678ed047ed5cc998380b579e9a5c945ebc6026f4ea010b9c997f`  
		Last Modified: Thu, 08 Oct 2026 18:09:47 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:fa1ee0c4f815f5759fcf795dcda3aad8f8294efe0fca2814bbdb643d249a4429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81652701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9288095d4831e06e5397ff2e1997ae03b1c0ed45739f08b4fb50707dceb9c7bc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Sat, 10 Oct 2026 07:43:43 GMT
ENV GOLANG_VERSION=1.27.2
# Sat, 10 Oct 2026 07:43:43 GMT
ENV GOTOOLCHAIN=local
# Sat, 10 Oct 2026 07:43:43 GMT
ENV GOPATH=/go
# Sat, 10 Oct 2026 07:43:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 10 Oct 2026 07:43:43 GMT
COPY /target/ / # buildkit
# Sat, 10 Oct 2026 07:54:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sat, 10 Oct 2026 07:54:40 GMT
WORKDIR /go
# Mon, 12 Oct 2026 17:19:33 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Mon, 12 Oct 2026 17:19:35 GMT
ENV XCADDY_VERSION=v0.4.7
# Mon, 12 Oct 2026 17:19:35 GMT
ENV CADDY_VERSION=v2.11.7
# Mon, 12 Oct 2026 17:19:35 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Mon, 12 Oct 2026 17:19:35 GMT
ENV XCADDY_SETCAP=1
# Mon, 12 Oct 2026 17:19:35 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Mon, 12 Oct 2026 17:19:35 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Mon, 12 Oct 2026 17:19:36 GMT
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
	-	`sha256:dd0e8d2f76fe91bc37fb3bc06eed17197bd95231b1e72cc9853d47c621ac06da`  
		Last Modified: Sat, 10 Oct 2026 07:52:41 GMT  
		Size: 69.2 MB (69161613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7bbcfa834fe9eedd9364c1164abbf68774f2bfc645babeae1ef34ee789991bb`  
		Last Modified: Sat, 10 Oct 2026 07:55:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab773b5286b8bae4e3cdcb6bd95f61d4a50bbc2982615301bed34633ac23a4ba`  
		Last Modified: Mon, 12 Oct 2026 17:21:00 GMT  
		Size: 6.8 MB (6814389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e57a8a4bd26381854308965c943dae7f7d81b87ef1b584814c820149cdf32f`  
		Last Modified: Mon, 12 Oct 2026 17:20:59 GMT  
		Size: 1.9 MB (1852787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037cf9b123b94abc81a868827a281064e9a05aeba7ae8e4478f3ccb0de62d58a`  
		Last Modified: Mon, 12 Oct 2026 17:20:59 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:e80c83fcb61a70f7ee77ae55677ac3fc450044f9c0d0f6f8236818c08d44772d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 KB (284791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e1c4b5b2e2707a07c878f0cfcdc2d477afba9a151aef95390122c27203f59a`

```dockerfile
```

-	Layers:
	-	`sha256:b04c293819c071fda5336f2cc8f1b5341d9c7b41737e78efe43f1be41f4e797f`  
		Last Modified: Mon, 12 Oct 2026 17:20:59 GMT  
		Size: 264.6 KB (264593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f238b1c050bd81cea9157c0a0ee1d2cad3c11609222dfcaed82513d1f3c8956`  
		Last Modified: Mon, 12 Oct 2026 17:20:59 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:30330a889af9f13f2cf9159f1dbffb167f4e487170924607fe343e0efa30b122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83108434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fd08982222587ad5ae2d8358911bfa6330fbed242afb5668cd23cd02b7a846c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 17:11:25 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 17:11:25 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 17:11:25 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 17:11:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 17:11:25 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 17:11:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 17:11:44 GMT
WORKDIR /go
# Thu, 08 Oct 2026 18:02:17 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 08 Oct 2026 18:02:25 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 08 Oct 2026 18:02:25 GMT
ENV CADDY_VERSION=v2.11.7
# Thu, 08 Oct 2026 18:02:25 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 08 Oct 2026 18:02:25 GMT
ENV XCADDY_SETCAP=1
# Thu, 08 Oct 2026 18:02:25 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 08 Oct 2026 18:02:28 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 08 Oct 2026 18:02:31 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29d3dd38ba53030beb03fdefbdab2103c1e496f7fee3765c41e59ac3f61bad2`  
		Last Modified: Thu, 08 Oct 2026 17:13:11 GMT  
		Size: 248.6 KB (248567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af7769e9dea28e53d244dbedcfa1703f44730d1eba6209c1650b331b5bde690`  
		Last Modified: Thu, 08 Oct 2026 17:13:22 GMT  
		Size: 70.3 MB (70282856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ffbe4475998f264e145a03e3caad39d9dff13688ada380c435fdb278d12fa`  
		Last Modified: Thu, 08 Oct 2026 17:13:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d33e6eac00989728c62ad16d73f241f992bd265ce7c8a9e96eeefdc20271f2`  
		Last Modified: Thu, 08 Oct 2026 18:04:44 GMT  
		Size: 6.9 MB (6916982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3cd499336120db65e7813bce936f458d8989582dbd51ccc7f876cc612814f9`  
		Last Modified: Thu, 08 Oct 2026 18:04:42 GMT  
		Size: 1.9 MB (1944097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29290700c48bc666d0918995fcd05ccf2a9aabb9c42147b9c1f287caf42927f`  
		Last Modified: Thu, 08 Oct 2026 18:04:39 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:a8471f5233affdfd038be8961fd8ce95aa03cf100f1d00eb0cc902830cd8bed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.1 KB (285148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0284d0ee6ed3d0c3ecb2dbcd0184ebb521cf47744cd4fc84e6cc334e388a57b8`

```dockerfile
```

-	Layers:
	-	`sha256:64538aa63b13d65f6ba86c9800b13f3661b1e6cc63c8e365cd1621ea58d97d76`  
		Last Modified: Thu, 08 Oct 2026 18:04:37 GMT  
		Size: 265.0 KB (265019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec7a4124c3d9288400a3076a010237348ff69ad9c8bbf9b772cdb22e1f90d7c9`  
		Last Modified: Thu, 08 Oct 2026 18:04:33 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json
