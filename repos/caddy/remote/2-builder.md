## `caddy:2-builder`

```console
$ docker pull caddy@sha256:769c49615cfd4275ff9176b5752ecca3b97448028f73a2a469219db26b536205
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
$ docker pull caddy@sha256:f5ca6b3084eb14bd936970e95ad0b00d814b039b9263c3227cdead98c6b89a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83901648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a4be9b1fc009db503df9d7fd20d8a5d059dacfea8514298d2d59698e0fd357`
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
# Wed, 04 Nov 2026 17:57:18 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:57:18 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:57:18 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
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
	-	`sha256:9f75821daa4e57f3cf136ac3698c24e27acc6148b904936fad0875779d9a7896`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 6.6 MB (6643577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363e2d59666e67f976bdd297efde475d864502c6df48318c8ec218b3c02f60b7`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 2.0 MB (2009506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f753fcec1ce79dc0413a0a309b6fb2956d4eba7c0b69fa8bf2521ba976f6a891`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:c6ff12d4b199ab8009031f6f52380f34dfe292ab0a3b4e94bf091954bf832fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29d63d2129aa380ca65172aae435b595525aaf52718784904bea68b9dff8e02`

```dockerfile
```

-	Layers:
	-	`sha256:b43270beb5d9fa4753496c872822e2a9c7de255f3b67b18d19bdc2f7eb86e790`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 263.2 KB (263241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0cd564e6a1a4c550c2bb1412edd3214269f177e85a5dae8388f2fad4cbd5b2`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm variant v6

```console
$ docker pull caddy@sha256:b568aab6f8b018ddb505fa6055c6e7c622f767a36976ba68cfab769be167e0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81892741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83650bcf36d98ced23db81cb3f128c49e97039e39bcb4f25f0289082f037adcc`
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
# Wed, 04 Nov 2026 17:56:04 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:05 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:05 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
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
	-	`sha256:57981200b77c1ac92be88844e2b5d96ed3085b7d4bf3a2a65c38812afc5adaae`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 6.6 MB (6550958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f91d9deb69265e264ce01570a2c8096325281fb63fae1d86d1f1c4b45c705d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 1.9 MB (1881469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc603c44182b798efd59c2539361f0c2091b5cce17da95246a8317bd751bf59`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:ae2567192a55556ecfa6571bbf2b213ae00692d20a5adc60e9ef41d52be603fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e5d6b36579df986e3a4fbce904711cff41d948011bc50249655b1c0b53ff0c`

```dockerfile
```

-	Layers:
	-	`sha256:88d4f38776bbaa9941ccb45282129440b1ad886df732151a9b64dc6ebd5cf462`  
		Last Modified: Wed, 04 Nov 2026 17:56:09 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm variant v7

```console
$ docker pull caddy@sha256:dd6a43a6c388a1550850ce282e5f3380c65e6eb0c816c3bdd92d0bedee6d8747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81040107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef03978689ceb0b7e301965ff96198caaf5b44eb2d860e1dd347b6a875c6f9d`
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
# Wed, 04 Nov 2026 17:56:37 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:38 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:38 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
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
	-	`sha256:ddeac073f1ff9ce1762b297bdd4dc1735ce37ab24c5af711fdfd0907a0ad0ca7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 6.0 MB (5995495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a745b9350000bcd3caa8d30555052a24a52df1e4445ecf1552b74fb5e1766bf7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 1.9 MB (1877039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9929a95fe998bd09e0fd1ea6e728e41de22218969a24a5a235eeb5021ed86a`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:f534cd318dde50f4dfb5d7c4d09dd55993ee4e56051566e04943e6450c823aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 KB (285887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200aafce2fad433150b55aaf21e495b9fad99309cab50ff448dcf7c60eb473b0`

```dockerfile
```

-	Layers:
	-	`sha256:6a41681ca1d8c3bd081286d8a0bf3afb1164d71bbe0534f2703014ee8dc7b1a3`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 265.6 KB (265633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2331cc41bfa20b1f481c65211a111ffac4b73b9a3bc58775fa9bc905db1a98`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:188269e13e55e4fd9b8d07c70a116b64de79d6cc8868cc508e60d079ab89b18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80715823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a5a3c3741317bb370be72fb12c60d0becda282cf1878f8d6f36d74d0dc0fea`
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
# Wed, 04 Nov 2026 17:56:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:21 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:21 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
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
	-	`sha256:3ebdeb09f3c924d39a56d696297e2d657a33871448b8e075942cf6a752f6c58c`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 6.7 MB (6727138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39f58f80fb592545c17183ccbecd0b91355710c0665447e528d36424e942860`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689232fbef6373f21177d0f3d90d3882efce2c056f4a0a1a2f274c5940996b4`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:ad0d33a228c686de25fba171bceb5c6af03099048487bdc6e3f6c1c83c1b5547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 KB (282991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31d63d5e32fc1cc2653faf3997b6b813beac19ed930b727da0d45d2425331cc`

```dockerfile
```

-	Layers:
	-	`sha256:5debd47c4c43686d18317b7954ead90bd0e141ca4dac0b9c3d62ebfc9c223937`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 262.7 KB (262695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53d25d2936ebab3f9951b9e7e0a2c51d87d02980c61d812a5f129bf7bc681ea3`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
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

### `caddy:2-builder` - unknown; unknown

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

### `caddy:2-builder` - linux; s390x

```console
$ docker pull caddy@sha256:7673aabded7251df3319d5c0ebeca77666e5d8efe0371ea7a2d8c5213b12479a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83120777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bb20b8d4b4a40649130906bec7ebd5660dfafb0487e66c87e7e0600d727e`
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
# Wed, 04 Nov 2026 17:54:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:54:32 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
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
	-	`sha256:3fd451073c8291040e36d1ad69d5d1aff7fcbcdde6a619463318c669639663ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 6.9 MB (6929167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91773e053345d095de77ac8ee8097500d4e2adfb2d4e79185160197a7c95188`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 1.9 MB (1944097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983f6d28817b32472305d38546d4ad8c5039c0bb56072fefb0ed383da9cef71b`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:f96d9615c049ff203083b41f15e921e7cf3220baf4a9baacb89dd47e0dd2646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 KB (283215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e23784b2c54a2206de5ede21d1d08d0c11dbcc9138f2d41fc8f0d6a821325d6`

```dockerfile
```

-	Layers:
	-	`sha256:20d26e6c47c81bb7d1f238d070f68b16820f4b39cf7838d591209a27b40a3ac5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 263.1 KB (263086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4602176494052efed8ad3b0302d9053e7abd5be5a0ecc43d8636d9b52799a5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:d7a58c8ad40388c41207e9816f125d7ab604604afa897407484a12ec1aeab6d3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512025561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b772b26c0f267959e263d876a02f0668a5bea1b8b10a61cc19fd2bf92450ad36`
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
# Wed, 04 Nov 2026 18:04:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 04 Nov 2026 18:04:11 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 18:04:13 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 18:04:14 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 18:05:16 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 04 Nov 2026 18:05:17 GMT
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
	-	`sha256:e0d3cb985bd160313591261e81afefbd9492f0ef1ef0d050d7783c18d13707c8`  
		Last Modified: Wed, 04 Nov 2026 18:05:29 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf42345bfb6aa8afc714d8c9a31c06b0a4171d34f76bc2c128c49bc026d10d8d`  
		Last Modified: Wed, 04 Nov 2026 18:05:27 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7137f606fbf4ade0104c3e1f4cab23017a1aab0b75372af452a73736d5ad56f`  
		Last Modified: Wed, 04 Nov 2026 18:05:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a877a3c775495f470a25d1f97d92c62cae9429da2b39f2596c72252c9976241`  
		Last Modified: Wed, 04 Nov 2026 18:05:27 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a51bb5b10c93662e59ca70970c98a9ec6755f8c51c594f384664a80741cc050`  
		Last Modified: Wed, 04 Nov 2026 18:05:28 GMT  
		Size: 2.5 MB (2476929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46e24f5a3d85d340335e89bc7868dc4da7ed264acbce15d0eb59db423666b14`  
		Last Modified: Wed, 04 Nov 2026 18:05:27 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-builder` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:784bc30341bbe86dbcd1ffb9e7731a70c4a7be39788cda89c1ef13c56981e4a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346987125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8350da002e8a9bad57062a4a044b0d775eeaaed5f32b8895aa812e8fb8609d56`
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
# Wed, 04 Nov 2026 18:24:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 04 Nov 2026 18:24:50 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 18:24:52 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 18:24:54 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 18:26:22 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 04 Nov 2026 18:26:24 GMT
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
	-	`sha256:05194c259ab148bf92443ca837496742cf323e94b88dd417a64f6117f2bf1e16`  
		Last Modified: Wed, 04 Nov 2026 18:26:38 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85872b5ca9c97491224552f6da2df7b38c1e8bef42464cd9f441a011a908cfd`  
		Last Modified: Wed, 04 Nov 2026 18:26:36 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131c4949e7c1f89f96fb643c557cc8407fbf288f1f16ed2119b373bfeb9183e`  
		Last Modified: Wed, 04 Nov 2026 18:26:36 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b881a4d4eb7da76aa035e9eeb1b67eb5bca445aae123ecf73e5f7505e0aef599`  
		Last Modified: Wed, 04 Nov 2026 18:26:36 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aeddf1b6a1d640a17f4b882aa930929f2111ffc5505e767a144144138f747e8`  
		Last Modified: Wed, 04 Nov 2026 18:26:38 GMT  
		Size: 2.5 MB (2461913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e3cb06ef75ea5855dc4822b633e01b36f17637204a002f6ae4a66c52d22b79`  
		Last Modified: Wed, 04 Nov 2026 18:26:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
