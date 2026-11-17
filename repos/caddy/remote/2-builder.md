## `caddy:2-builder`

```console
$ docker pull caddy@sha256:aef223d1f943bc12a29a9e0a0a73983aa19a36672daede7507da4201a6b1016a
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
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `caddy:2-builder` - linux; amd64

```console
$ docker pull caddy@sha256:29f98311e17e583811355fa62cc080f71d6f3aa19cf09a9e1494d30579f8bebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83975653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27d022ebb7178145c50aa4b3e2c828637bc2cdc829c97ab3036a66833387d5c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:20:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:20:54 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:20:54 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:20:54 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:20:54 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:20:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:20:56 GMT
WORKDIR /go
# Tue, 10 Nov 2026 18:35:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 10 Nov 2026 18:35:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 10 Nov 2026 18:35:33 GMT
ENV CADDY_VERSION=v2.11.9
# Tue, 10 Nov 2026 18:35:33 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 10 Nov 2026 18:35:33 GMT
ENV XCADDY_SETCAP=1
# Tue, 10 Nov 2026 18:35:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 10 Nov 2026 18:35:33 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 10 Nov 2026 18:35:33 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d88fd0fb393f123f061aada1719163fe157015d4f15ab0a77954f6b499de6de`  
		Last Modified: Tue, 10 Nov 2026 18:21:10 GMT  
		Size: 244.5 KB (244472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d129a974dd319fef9f5f496bf3a04194c14ba0fbf95635c2d5577185dd0b2f`  
		Last Modified: Tue, 10 Nov 2026 18:20:43 GMT  
		Size: 71.2 MB (71223837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c050182f513fb753ca709ec66cab639c3c37a5356e5d597ca81bcddcf2aaee91`  
		Last Modified: Tue, 10 Nov 2026 18:21:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345d8fa307fde895d2919d94a67ee538919bacd6f2bf0e2100eb3baae64fad88`  
		Last Modified: Tue, 10 Nov 2026 18:35:41 GMT  
		Size: 6.6 MB (6643580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa34397a983d5784c3f3b5f9d3c5dfec57006558528c7b6c94742edd96ca1bc4`  
		Last Modified: Tue, 10 Nov 2026 18:35:41 GMT  
		Size: 2.0 MB (2009501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46dd739a6445bbaa962d3053d7170a23f067dda53ab8171b6a8b91f48c67700`  
		Last Modified: Tue, 10 Nov 2026 18:35:42 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:fa392173564d239cf229283a48f9d93c4775ffba577b6549f8f3210a190fb6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb50c33ad772ceefdf7e9387810b80f2601a93f187639241eab9142655b0a60`

```dockerfile
```

-	Layers:
	-	`sha256:1e7c8445a16963b1d4f4b947fdea99e4dfb296aa433157a8aaa1fac5b7cb6a3c`  
		Last Modified: Tue, 10 Nov 2026 18:35:41 GMT  
		Size: 263.2 KB (263241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb5ad076594df4e6ad9b3f4d735ec575a242f047d567a0ef908cec3ea8ee0b9c`  
		Last Modified: Tue, 10 Nov 2026 18:35:41 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm variant v6

```console
$ docker pull caddy@sha256:3f580755b56908b0b37b0d54de9d002901efc39537df01a3a1d700999edd6454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81969374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a500c59e532caf4c7cca27234a2613eec22cadc4194acd67896c814f90abe7f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:19:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:19:13 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:19:13 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:19:13 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:19:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:19:13 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:19:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:19:15 GMT
WORKDIR /go
# Tue, 10 Nov 2026 18:34:44 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 10 Nov 2026 18:34:45 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 10 Nov 2026 18:34:45 GMT
ENV CADDY_VERSION=v2.11.9
# Tue, 10 Nov 2026 18:34:45 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 10 Nov 2026 18:34:45 GMT
ENV XCADDY_SETCAP=1
# Tue, 10 Nov 2026 18:34:45 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 10 Nov 2026 18:34:45 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 10 Nov 2026 18:34:45 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4db691ce64f295eb0d82edb424aec7b5f7a1a13474ad71bd35a1ab5953f430`  
		Last Modified: Tue, 10 Nov 2026 18:19:27 GMT  
		Size: 245.6 KB (245570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fad61b71c7506e8c4e78fc7f0cb9d54a1cbab78a9ef19d5b17ba072f7022f1e`  
		Last Modified: Tue, 10 Nov 2026 18:19:29 GMT  
		Size: 69.7 MB (69732386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce5c2deea95da48e2f0b6394333a64ac9a63c66e7086c7351a720cf542ed9ea`  
		Last Modified: Tue, 10 Nov 2026 18:19:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b189e39cc02a201a53c9011d981ee4cab4150d5e8828d607aa0b38dbfbb2657b`  
		Last Modified: Tue, 10 Nov 2026 18:34:50 GMT  
		Size: 6.6 MB (6550950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af37b44b391da9154adf9e8962fc0d57eb1862b184fd176a1d64155a8000039d`  
		Last Modified: Tue, 10 Nov 2026 18:34:50 GMT  
		Size: 1.9 MB (1881474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc3dc0b551d33a661c5f72c3a235ada51f68d793f353fff53be51b0411437b6`  
		Last Modified: Tue, 10 Nov 2026 18:34:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:1006eb7048e5137e1be8a00ef96151ed69b902d84a4f097f52bfbeb50327b361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27dd05836059c1aea8ef815f227a540567326869f5d42c981a280ae24c75f6b6`

```dockerfile
```

-	Layers:
	-	`sha256:e6171cf9cf2374dcbd90f6799f33cb96f2f69624c84a64e390ff475f6ed58d54`  
		Last Modified: Tue, 10 Nov 2026 18:34:49 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm variant v7

```console
$ docker pull caddy@sha256:96485c868a5739c0712ecc829370d45325d25522c8e019e6d04c6aa0afad2775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81117914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6fe2f31c685448df15b6517b6f0f1190abc4ed052b9f826dcad06f6d8f7208`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:19:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:20:04 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:20:04 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:20:04 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:20:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:20:04 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:20:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:20:07 GMT
WORKDIR /go
# Tue, 10 Nov 2026 18:34:53 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 10 Nov 2026 18:34:54 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 10 Nov 2026 18:34:54 GMT
ENV CADDY_VERSION=v2.11.9
# Tue, 10 Nov 2026 18:34:54 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 10 Nov 2026 18:34:54 GMT
ENV XCADDY_SETCAP=1
# Tue, 10 Nov 2026 18:34:54 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 10 Nov 2026 18:34:54 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 10 Nov 2026 18:34:54 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4285afe857e4d5ccac33d472463b062a2426737b7b44f32f0d12d3836917d60`  
		Last Modified: Tue, 10 Nov 2026 18:20:21 GMT  
		Size: 244.5 KB (244528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ab9cea82d17d7b101f541f4ecfbb6f5af2bde3cf6c49715c9fc54b6864466b`  
		Last Modified: Tue, 10 Nov 2026 18:20:03 GMT  
		Size: 69.7 MB (69732535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952436ef12e33d08a78a1d4956a2cb5258f30c1f03b7ad3d9b38cd902ab0580f`  
		Last Modified: Tue, 10 Nov 2026 18:20:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6bbd126ad4cc8ef309828507f716343e2341b1afed2019489ed50b2ee911faf`  
		Last Modified: Tue, 10 Nov 2026 18:35:02 GMT  
		Size: 6.0 MB (5995486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac1cb48bae96c4c7dc6e4a4b39f23fab77c48cdf99e43f103beb915dbff9ee8`  
		Last Modified: Tue, 10 Nov 2026 18:35:02 GMT  
		Size: 1.9 MB (1877040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a65989cd6b824c5c8da4bb3e3df2f7f578245b39da8b9c266658bec332f83f6`  
		Last Modified: Tue, 10 Nov 2026 18:35:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:2e017488e465d95aeaab5fc3bcf7db03a1813298ed6cfe7585d74929ef3f8467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 KB (285887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075d2e0223663a3955a6887499a7195c55283d1532027a2f62d07f265df3a986`

```dockerfile
```

-	Layers:
	-	`sha256:897f58232253f1535e88f3a0da4f000060310372cb1a3479d3851c4eb100f134`  
		Last Modified: Tue, 10 Nov 2026 18:35:02 GMT  
		Size: 265.6 KB (265633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57f522c2b1f8a7cc0415ac9d1ae00d679a8169d447ec4d5e1cfb09ca092777e7`  
		Last Modified: Tue, 10 Nov 2026 18:35:02 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:f68d5c35fe57f624a04143b87dbea141d2a9eae9264c8bbe8f25eb43f8e40735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80780697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835645a156cf0236deaada3725ad6b474b3afdabec6fb53fe4fe9616126cd7fc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:19:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:19:43 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:19:43 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:19:43 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:19:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:19:43 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:19:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:19:46 GMT
WORKDIR /go
# Tue, 10 Nov 2026 18:34:04 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 10 Nov 2026 18:34:05 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 10 Nov 2026 18:34:05 GMT
ENV CADDY_VERSION=v2.11.9
# Tue, 10 Nov 2026 18:34:05 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 10 Nov 2026 18:34:05 GMT
ENV XCADDY_SETCAP=1
# Tue, 10 Nov 2026 18:34:05 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 10 Nov 2026 18:34:05 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 10 Nov 2026 18:34:05 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d92df4fb64ea56316fbb09560bd83827420fc0f097dba20099a7ef723b8c14`  
		Last Modified: Tue, 10 Nov 2026 18:20:01 GMT  
		Size: 246.9 KB (246927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2570c62d304fb94a946f8e736b532b0adcafee91acb6c9c2d10806ac87bb96bd`  
		Last Modified: Tue, 10 Nov 2026 18:19:55 GMT  
		Size: 67.8 MB (67784510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f192243dce60a28e71b2ed4556796becc04ac0fcecf40bb78c892ac8759378`  
		Last Modified: Tue, 10 Nov 2026 18:20:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6d4882a942867c4698e28e7b3cfeb5eb99ec0163c881e030a8201560618d37`  
		Last Modified: Tue, 10 Nov 2026 18:34:13 GMT  
		Size: 6.7 MB (6727120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddab5b6e8c4ed95f91ad7492d7123c51b067c28bcdf6c40612bc608102fef78`  
		Last Modified: Tue, 10 Nov 2026 18:34:13 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d728c2fe3bb593f6d581b20fd7adc4c98c95b887199eba9b0bc187e58d6377`  
		Last Modified: Tue, 10 Nov 2026 18:34:13 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:1d84515095200de49f002df7deaa646c7565e66b6b740bc19fcfdc692a39ad08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 KB (282991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b552fc095ab7c12f477c18db012cd28fa6f673d7a763561df620c33f61da6b5`

```dockerfile
```

-	Layers:
	-	`sha256:03bf84b50ef8d2cb9b0cc05fdaa7059fbcf957399d4e4fd31c5d6121ff9c831c`  
		Last Modified: Tue, 10 Nov 2026 18:34:13 GMT  
		Size: 262.7 KB (262695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae0de8d9b12ae1413f11591cd3c77fc75d1a2e5e0da8a3d6be9367e82c803730`  
		Last Modified: Tue, 10 Nov 2026 18:34:13 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; ppc64le

```console
$ docker pull caddy@sha256:164072aaaa94026aa09f74a6ad8ba9b021953e4176a5204b3298d26493f46fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81546876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471a2ca72162bc47ce9a9f43aebd2c275cb902b4d8a1a8d922facace4694ad3d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:36:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:18:44 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:18:44 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:18:44 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:18:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:18:44 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:21:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:21:15 GMT
WORKDIR /go
# Tue, 10 Nov 2026 18:40:02 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 10 Nov 2026 18:40:03 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 10 Nov 2026 18:40:03 GMT
ENV CADDY_VERSION=v2.11.9
# Tue, 10 Nov 2026 18:40:03 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 10 Nov 2026 18:40:03 GMT
ENV XCADDY_SETCAP=1
# Tue, 10 Nov 2026 18:40:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 10 Nov 2026 18:40:04 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 10 Nov 2026 18:40:05 GMT
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
	-	`sha256:936ff7bdd356b6321d4d066574778945eb16f3eeb57dfe78006287ea6903e635`  
		Last Modified: Tue, 10 Nov 2026 18:19:53 GMT  
		Size: 68.6 MB (68556462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efabae3b768a8eb447e97dbd85f841e32c6d59de4c2f32a4e391f99594ed46ae`  
		Last Modified: Tue, 10 Nov 2026 18:21:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b83244d4cc078fdc450d00662f410e2edacaf43407e53355010dd37b60c576`  
		Last Modified: Tue, 10 Nov 2026 18:40:27 GMT  
		Size: 7.1 MB (7067832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403a42985f86deeeb442ded387d4d372cf75e98cc1af406c95ec1c7703372fa5`  
		Last Modified: Tue, 10 Nov 2026 18:40:27 GMT  
		Size: 1.9 MB (1852708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9792a087e8885d7a2f9cc48f7ffc62dc9f62666e821b4d899f9f538c3aea3c`  
		Last Modified: Tue, 10 Nov 2026 18:40:27 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:9bcc2dc2f19f47878ebf0bd21f124ee1ccc0fabef2eadbc6c96c81b9d305156d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2934e35e5134b7569f0c58c9079513bfaf69b05ffe8eca144c87217cf28a2d`

```dockerfile
```

-	Layers:
	-	`sha256:711656cfc1c1a272df7a2a5ae5703076f4876d788ae2758da2a7d65be3bd129e`  
		Last Modified: Tue, 10 Nov 2026 18:40:27 GMT  
		Size: 262.7 KB (262664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d7cc25d67b38feedae9549310556539802804e78bd9aa4cd8a9fbb785a01ee8`  
		Last Modified: Tue, 10 Nov 2026 18:40:27 GMT  
		Size: 20.2 KB (20199 bytes)  
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
$ docker pull caddy@sha256:1cb78f457d6f77cd1980068ef57597026a31c0de8d98738272d4d6d5f1f02cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83197838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf8cbed38ca28f7a078488f9efe00ab41bfa573dfa6bf0d2eaf552446b70893`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:18:59 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:18:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:18:59 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:18:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:18:59 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:19:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:19:09 GMT
WORKDIR /go
# Tue, 10 Nov 2026 18:30:18 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 10 Nov 2026 18:30:21 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 10 Nov 2026 18:30:21 GMT
ENV CADDY_VERSION=v2.11.9
# Tue, 10 Nov 2026 18:30:21 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 10 Nov 2026 18:30:21 GMT
ENV XCADDY_SETCAP=1
# Tue, 10 Nov 2026 18:30:21 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 10 Nov 2026 18:30:22 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 10 Nov 2026 18:30:23 GMT
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
	-	`sha256:7de8d0ebac894dd2fa17e9f4b4e946a13dbd458a348605d2271be16c9081a6ff`  
		Last Modified: Tue, 10 Nov 2026 18:20:02 GMT  
		Size: 70.4 MB (70357736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f216f8fd16166f4161d480f01c51482919534e840e3d8b33a4bfbb8b2dde269`  
		Last Modified: Tue, 10 Nov 2026 18:20:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de3400b883b58116a9ea9ae57549b803ced71ec759927684d895c49e915a1b6`  
		Last Modified: Tue, 10 Nov 2026 18:32:09 GMT  
		Size: 6.9 MB (6929178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d406f5e32c7ebf7756314c47306d67fdbc30ec7161908def23a9b8ca95ac0935`  
		Last Modified: Tue, 10 Nov 2026 18:32:08 GMT  
		Size: 1.9 MB (1944097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a286eab9426cfe4b379ec2a04ec2608cb5f291cf2a2a9593ae9b7e6b928e37`  
		Last Modified: Tue, 10 Nov 2026 18:32:07 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:a051f68c331070a5eea4d87f151ecebe58dc56de6315b5c925143652d51305dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 KB (283215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d514fe4fe8ca1e5100e2c3cabf028b511652facfef30c5bb2c1c58c647123af7`

```dockerfile
```

-	Layers:
	-	`sha256:88a6d57b741c727ac7e80ad219eb45cc288d397fce159af04471558d55e68098`  
		Last Modified: Tue, 10 Nov 2026 18:32:06 GMT  
		Size: 263.1 KB (263086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfaa0cc65dac2a5f9996bbaeeb896d7eaad38a6f7b8bcef21e5bc86f84523da5`  
		Last Modified: Tue, 10 Nov 2026 18:32:05 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - windows version 10.0.26100.33828; amd64

```console
$ docker pull caddy@sha256:25216c1fb8daefb6f6265ae6fd1aa653fd8a62fabfb08ef2afaa3ab04c102e46
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2527079197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f1203a5ad62cb1bcafac96caa16dec635940e23b69a343025665da3215dad0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:04:42 GMT
ENV GIT_VERSION=2.56.1
# Mon, 16 Nov 2026 20:04:42 GMT
ENV GIT_TAG=v2.56.1.windows.1
# Mon, 16 Nov 2026 20:04:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.1.windows.1/MinGit-2.56.1-64-bit.zip
# Mon, 16 Nov 2026 20:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=4a92850b6e917da4fd010669b614b55dccf5b0ec333a534cc4be4700dfefdafd
# Mon, 16 Nov 2026 20:04:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:04:55 GMT
ENV GOPATH=C:\go
# Mon, 16 Nov 2026 20:05:00 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 16 Nov 2026 20:05:01 GMT
ENV GOLANG_VERSION=1.27.4
# Mon, 16 Nov 2026 20:06:25 GMT
RUN $url = 'https://dl.google.com/go/go1.27.4.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '178ab98950ac69ab25069307dc6ade79f3816e414cce95b4da166a115cde1e7e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:06:26 GMT
WORKDIR C:\go
# Mon, 16 Nov 2026 20:46:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:46:13 GMT
ENV XCADDY_VERSION=v0.4.7
# Mon, 16 Nov 2026 20:46:13 GMT
ENV CADDY_VERSION=v2.11.9
# Mon, 16 Nov 2026 20:46:14 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Mon, 16 Nov 2026 20:46:26 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Mon, 16 Nov 2026 20:46:27 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258b8ca421c56b5c9c99b175da794c28dc2695af7af6c8065e63deab793a98d2`  
		Last Modified: Mon, 16 Nov 2026 19:54:22 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82a3b19138c7a5ed94634d27faa41b97c9a927c624b1b78b31fae52b38406cf`  
		Last Modified: Mon, 16 Nov 2026 20:06:37 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9bced516c679171da13f8235fc7f45ce09b6f39c106699b0e343ee910a07bf`  
		Last Modified: Mon, 16 Nov 2026 20:06:36 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e90cd0fae423eddcddf168f2bc8155830ff2447331d8efaefd4d4397a556394`  
		Last Modified: Mon, 16 Nov 2026 20:06:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5347ca3d8acbd5547dc561fc1c0b74b47cb572474d8db7f0c6c005cec7898be`  
		Last Modified: Mon, 16 Nov 2026 20:06:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1921c4b4493838e0caa6b0cc9fc5e363fdc2d915c8a23fee127bae3f42c26c46`  
		Last Modified: Mon, 16 Nov 2026 20:06:41 GMT  
		Size: 43.3 MB (43343352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7195a5149e84ccec31b8a1c406b8c8b32707a22cbe4c63bfe7a79a767013e3f1`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096b236a6299327caf91aa47021cd4c6559aa2303cd53b88fc5ce90ff46b3365`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 337.8 KB (337828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3e6a8da0f4bfae63c85c6614b4b110d5742457b31434f90bafcde9b354a175`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3741dc8b65d58b0538d49590060b5572bad883401455c92eee6c5f4dbbfafa2a`  
		Last Modified: Mon, 16 Nov 2026 20:06:45 GMT  
		Size: 73.9 MB (73864875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc691753cb7f7656ffa5db49fc9c7864f0d5f5e2c506b91cf3d18a3ef12d4f`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a2c4cb7d6330e58b982d8b427a1cec8043d52829fc8e4fd598424b11a6c424`  
		Last Modified: Mon, 16 Nov 2026 20:46:33 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642bb3eda4a441c92af554164fac7b1e9452773d77e8397957cfa4bae1bab4bf`  
		Last Modified: Mon, 16 Nov 2026 20:46:31 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310c92b4325585012621341c361e88295611dd29d88cc954daf8890036037603`  
		Last Modified: Mon, 16 Nov 2026 20:46:31 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7c3b96743aa7309e6d606a187cbccf2b98a2323001d4e1c7c74ae62d6c0d1a`  
		Last Modified: Mon, 16 Nov 2026 20:46:31 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f666daf954fa71b634b18bf5707279fd2881763acda159907f555365877a9e12`  
		Last Modified: Mon, 16 Nov 2026 20:46:32 GMT  
		Size: 2.4 MB (2448507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c512c8274d4a4481265b443653a7fa8dd88d9a9b96d5dda1853ee8bc3274198`  
		Last Modified: Mon, 16 Nov 2026 20:46:31 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-builder` - windows version 10.0.20348.5873; amd64

```console
$ docker pull caddy@sha256:f75a30431394145e94d996426e7e521384e823b05357c5673614b4e1515adf60
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2366068969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ae7850164660eefad03ee59bd22251d74c900e99a029f2de737fe504704fe73`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:55:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:06:21 GMT
ENV GIT_VERSION=2.56.1
# Mon, 16 Nov 2026 20:06:22 GMT
ENV GIT_TAG=v2.56.1.windows.1
# Mon, 16 Nov 2026 20:06:22 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.1.windows.1/MinGit-2.56.1-64-bit.zip
# Mon, 16 Nov 2026 20:06:23 GMT
ENV GIT_DOWNLOAD_SHA256=4a92850b6e917da4fd010669b614b55dccf5b0ec333a534cc4be4700dfefdafd
# Mon, 16 Nov 2026 20:06:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:06:36 GMT
ENV GOPATH=C:\go
# Mon, 16 Nov 2026 20:06:42 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 16 Nov 2026 20:06:44 GMT
ENV GOLANG_VERSION=1.27.4
# Mon, 16 Nov 2026 20:08:20 GMT
RUN $url = 'https://dl.google.com/go/go1.27.4.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '178ab98950ac69ab25069307dc6ade79f3816e414cce95b4da166a115cde1e7e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:08:22 GMT
WORKDIR C:\go
# Mon, 16 Nov 2026 20:37:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:37:14 GMT
ENV XCADDY_VERSION=v0.4.7
# Mon, 16 Nov 2026 20:37:15 GMT
ENV CADDY_VERSION=v2.11.9
# Mon, 16 Nov 2026 20:37:16 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Mon, 16 Nov 2026 20:37:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Mon, 16 Nov 2026 20:37:24 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d1d4428786cff57e799560ea1abdaf3b97bf6b120df6d7396db9deb86178c0`  
		Last Modified: Mon, 16 Nov 2026 19:55:53 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c925a15dc0dcbfd156f09c3bba7489664c1fb065188dc8e4a82c7e18ff904f`  
		Last Modified: Mon, 16 Nov 2026 20:08:35 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9581ed18be73b89eae9e030569973aae7f68fdd940579d8e12b6e5adce1719`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa47839fb5095ee31bfb832ab721ce7c947571744de14585398ed113a39be02e`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad8128e3f63ab8b706f1ba3f28f07b9edd5ffda0ef961fe14da3e63b185c602`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfc78ca8419ece385894d9a3210e30c36d92222996517b045839bc0ee18437e`  
		Last Modified: Mon, 16 Nov 2026 20:08:38 GMT  
		Size: 43.3 MB (43338163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce133c64f5112ee00601164e946c1e853c1c20045775da1f59af28d6bd220a13`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81633b6b3291d29581c8a5217b624de063e495e8e257b2419167d95c21c7136`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 328.6 KB (328634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e19149e960e133a29c75dc18ee64c026d96ca05650a2b05a87de7d933a53f02`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c0f51b87348368484b85cbedb0c68417b471c73ee064d0a4691b4ab2dbe024`  
		Last Modified: Mon, 16 Nov 2026 20:08:43 GMT  
		Size: 73.9 MB (73850642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cd1b81ca1421cbbd9047e12988991a74a3e4da4c11077f56f4137552e2b143`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ead48116694b95b3f5536077fbae74ddd5cbf1c05b756f8749459250685cdd`  
		Last Modified: Mon, 16 Nov 2026 20:37:30 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604298f242805e68a6e192e54a26fb90049f230382224b982bdbfad52b872155`  
		Last Modified: Mon, 16 Nov 2026 20:37:29 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b72c4bec17e5356e7887e6a579be47fca908a2f924dd72ed2957fb2d1d216f`  
		Last Modified: Mon, 16 Nov 2026 20:37:29 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bdfa4f98af63f57447ce3fff0c36de397b0c3d5948028efa491c2471de6ceb`  
		Last Modified: Mon, 16 Nov 2026 20:37:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0895fa2b3732e341cddf89a74fdf3e2d88a4719b30f690cbc54436a93ce6e3`  
		Last Modified: Mon, 16 Nov 2026 20:37:29 GMT  
		Size: 2.4 MB (2443603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e982b15015d3ef0520c1192262c449c210c8f61d9d287b9c8ce81bb071dba3`  
		Last Modified: Mon, 16 Nov 2026 20:37:29 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
