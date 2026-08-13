## `caddy:2-builder-alpine`

```console
$ docker pull caddy@sha256:7a8601bc62477d677e977e2bdfc3ae6b532fc05595acb2d61f758488546b0143
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
$ docker pull caddy@sha256:302c5bf7723b61c0491544221aa21d63467cd035950c3c23129e8fd77c25fc8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79733449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870295ed9ad0fb4fcf4e8286c62b5bb1e34b4ad6d0a4b2483915fa2160f70de7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:03 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:34:10 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:34:10 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:34:10 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:34:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:10 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:34:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:34:12 GMT
WORKDIR /go
# Thu, 13 Aug 2026 20:11:33 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 13 Aug 2026 20:11:33 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 13 Aug 2026 20:11:33 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 13 Aug 2026 20:11:33 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 13 Aug 2026 20:11:33 GMT
ENV XCADDY_SETCAP=1
# Thu, 13 Aug 2026 20:11:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 13 Aug 2026 20:11:33 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 13 Aug 2026 20:11:33 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57c94ce7cf49d52576d267b94a7105fbe8eb5d1cbe9042d462a8cb8d84c0574`  
		Last Modified: Thu, 13 Aug 2026 19:34:27 GMT  
		Size: 245.1 KB (245056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa55d8c7975bdc26e118c1a6e8ee122aea1e654a365c1d6f7b48658c58be2e18`  
		Last Modified: Thu, 13 Aug 2026 19:34:24 GMT  
		Size: 67.3 MB (67308470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf265a321f31d8032e3b21ea032da3829f60e895453d911645033edcec66ca4`  
		Last Modified: Thu, 13 Aug 2026 19:34:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d9c40452b4574841ddb73f02f2c59b9fc09e1992fb1fc8a5c8664a905703da`  
		Last Modified: Thu, 13 Aug 2026 20:11:41 GMT  
		Size: 6.5 MB (6488406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4733b1c22599ce7b9694678534849005ad08f1b1bb7124d9ddba259105f61fe0`  
		Last Modified: Thu, 13 Aug 2026 20:11:41 GMT  
		Size: 1.8 MB (1846503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b287805ecbbf51bf8c2b39c820befae17f09801b4acb73b1927e38a90c8d8706`  
		Last Modified: Thu, 13 Aug 2026 20:11:40 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:7e53dc48b3759d14e2ff826a33d15b2ccda20fd72c36b6f4db09b0bc32f65979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 KB (284013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9c26cfc5df193a17b1dbeaafa30f8658c7874a8485ca35f4d922281ce0bbaa`

```dockerfile
```

-	Layers:
	-	`sha256:ce1683458a0549ce0e6c0df4c3bf8c30504bd22fb7bd038a8e74bb36e25d733a`  
		Last Modified: Thu, 13 Aug 2026 20:11:40 GMT  
		Size: 263.9 KB (263884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1f7f65cecaa0ccb0f7007c020dfddfa67e1088f93be4b0f433bc88f43f4a75c`  
		Last Modified: Thu, 13 Aug 2026 20:11:40 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:0b3267a26d941b2b96c04495039908b33bfafdd0dbf985175977fad18c2ba71b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77793205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a96dd4cfbeb5b7290ac833f6a85403991e7e887d8217a8f58725733e1efb698`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:47:18 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:47:57 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:47:57 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:47:57 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:47:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:47:57 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:47:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:47:59 GMT
WORKDIR /go
# Thu, 13 Aug 2026 20:22:54 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 13 Aug 2026 20:22:55 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 13 Aug 2026 20:22:55 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 13 Aug 2026 20:22:55 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 13 Aug 2026 20:22:55 GMT
ENV XCADDY_SETCAP=1
# Thu, 13 Aug 2026 20:22:55 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 13 Aug 2026 20:22:55 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 13 Aug 2026 20:22:55 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5f9e01e760a410137fa6c52d241533baa474d706485d3a3929d9be6cfe2446`  
		Last Modified: Thu, 13 Aug 2026 19:47:41 GMT  
		Size: 246.1 KB (246143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd6a993c36f888b98401ce7d1615a1ca7b65bb268a542f686dceaf8c6b30c8f`  
		Last Modified: Thu, 13 Aug 2026 19:48:08 GMT  
		Size: 65.8 MB (65843715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3b5718a315063828c883f5de665c034123eeebb8c643b3fe5c92f28f691392`  
		Last Modified: Thu, 13 Aug 2026 19:48:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2a362efb2df336039d0a230662739aa66f375a166011b79d20839c27129226`  
		Last Modified: Thu, 13 Aug 2026 20:23:00 GMT  
		Size: 6.4 MB (6405158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3686d0c92dc899a7b811f2ca94b0d32c503cd70aa9a67e34aa498c9c0f9b9cc7`  
		Last Modified: Thu, 13 Aug 2026 20:22:59 GMT  
		Size: 1.7 MB (1745001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924ab9664f219e081cfac0932ab559e7e95cb6690df4f69e2dcc9885f7b78345`  
		Last Modified: Thu, 13 Aug 2026 20:22:59 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:3b33dd88d0e614ee98b62482db51b34e6f3a0e811641d76037eac3acbc395263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e1254c3b0cf15e6a7b0fda232d6970380b9404f467e957f2e129d7baddeaeaf`

```dockerfile
```

-	Layers:
	-	`sha256:1f210a37d5df65aefe73a2688d37b20cd094d059a5b32b85d5aedb0dd17254c5`  
		Last Modified: Thu, 13 Aug 2026 20:22:59 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:9d6841da63a0ba2d1f43adbcd3665c18bbd679813b6e2f1d4421afc8c8b7df6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76947755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468124d960da2e237538c9cdc927deabd67371ff3f456f6df7bdeef63c537b18`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:56:29 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:57:11 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:57:11 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:57:11 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:57:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:57:11 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:57:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:57:13 GMT
WORKDIR /go
# Thu, 13 Aug 2026 20:26:31 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 13 Aug 2026 20:26:31 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 13 Aug 2026 20:26:31 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 13 Aug 2026 20:26:31 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 13 Aug 2026 20:26:31 GMT
ENV XCADDY_SETCAP=1
# Thu, 13 Aug 2026 20:26:31 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 13 Aug 2026 20:26:31 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 13 Aug 2026 20:26:31 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab102f2d6c45c1d5511878af110b8c38b46370bc10a8007706d61d9c06abea52`  
		Last Modified: Thu, 13 Aug 2026 19:56:55 GMT  
		Size: 245.1 KB (245130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d33eb168b57114b4010647a3b9fa78f09a5c12dfda7910e365550d281e862ef`  
		Last Modified: Thu, 13 Aug 2026 19:57:19 GMT  
		Size: 65.8 MB (65843890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4d289265e1fdd408475061e78d79fc68f608bceca7bebd95f4a0eecc77e5cc`  
		Last Modified: Thu, 13 Aug 2026 19:57:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc29958b19252351f9e47296830189446eac2d2c09d867fa376718a5609c8acd`  
		Last Modified: Thu, 13 Aug 2026 20:26:39 GMT  
		Size: 5.9 MB (5857535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbd4117dc0fb85cb76dcb2786a43ab278ee5055797bb3a6f33d416e4364b268`  
		Last Modified: Thu, 13 Aug 2026 20:26:39 GMT  
		Size: 1.7 MB (1738754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777d6994f6fa2914906e6900bee429cd3ac22ddd8a57d3759d0a713d26748278`  
		Last Modified: Thu, 13 Aug 2026 20:26:39 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:2666db3ed9ac915af9c3990119c5aa71bdfb8cf8cfa1705d0526d64692b8880b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.5 KB (286530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c359e24e50a2facd08537cc9c7f3264f422662a4965c01cbc1447b7583d76d3`

```dockerfile
```

-	Layers:
	-	`sha256:37aae329809b78a4587596688e28ebc1df149637adeacceae3cce502c112ee6f`  
		Last Modified: Thu, 13 Aug 2026 20:26:39 GMT  
		Size: 266.3 KB (266276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eebb5688661a8e7d4a4384134006bf016a0e8a70e6752c7d25f718cf24cd57f`  
		Last Modified: Thu, 13 Aug 2026 20:26:39 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:351ed071fe64a3686815a67a3e543c1678cfe15106a81f68ce09c5d8466ff726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76941089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf891ea3b1912764e1837d3dd7462d1efccc74110b254719a900645134b74ca2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:11 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:34:19 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:34:19 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:34:19 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:34:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:19 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:34:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:34:22 GMT
WORKDIR /go
# Thu, 13 Aug 2026 20:11:22 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 13 Aug 2026 20:11:23 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 13 Aug 2026 20:11:23 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 13 Aug 2026 20:11:23 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 13 Aug 2026 20:11:23 GMT
ENV XCADDY_SETCAP=1
# Thu, 13 Aug 2026 20:11:23 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 13 Aug 2026 20:11:23 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 13 Aug 2026 20:11:23 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54be9a7f2e97a138d2da8d7ad77986ff36b7fee9471c9d2207637670e304e372`  
		Last Modified: Thu, 13 Aug 2026 19:34:36 GMT  
		Size: 247.5 KB (247497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22db0ab2cdc67a637151bb7560ea06e6cc39a231b4459d38ff34fc6471ea35b1`  
		Last Modified: Thu, 13 Aug 2026 19:34:27 GMT  
		Size: 64.2 MB (64220829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e96942188975f4caf1bbed035181af5c64b172e7d559a3f6863e996ebf6eec`  
		Last Modified: Thu, 13 Aug 2026 19:34:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1261290755788f68bffed8e30ef4c892d57191e8c70280a64ea4a072d37d36d`  
		Last Modified: Thu, 13 Aug 2026 20:11:31 GMT  
		Size: 6.6 MB (6573931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37e35dcf0a90a21856905dfc04836497f3f674e017e4d54706b65cfd868c1ec`  
		Last Modified: Thu, 13 Aug 2026 20:11:31 GMT  
		Size: 1.7 MB (1716381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4b0816c315203e36e28b638c1fd854d45ae62f4338823ec24c8de62832b1dc`  
		Last Modified: Thu, 13 Aug 2026 20:11:31 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:e45b2e935d8f2889f470f37c5bb31bba945f438a444e0cd60e8f150252659abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.6 KB (283634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f00eed9b447d22abc1ef4dc6c562479907f400707ab4c5422b6b118a2a16d7d`

```dockerfile
```

-	Layers:
	-	`sha256:d4b91fd7b72e0c6071f9d30330da1a3e3dec60d592fa7d1ae123c737400073cf`  
		Last Modified: Thu, 13 Aug 2026 20:11:31 GMT  
		Size: 263.3 KB (263338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf819c61f9b5a27d3b8cddcaaa839bd25c17e801ec70edf239c2214fe8618506`  
		Last Modified: Thu, 13 Aug 2026 20:11:31 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:923b28e9c3955506b87810373b5c03208b4ea809a297f5dba39a698cb30b9972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.5 MB (77535528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c0a8d3207888be22163c5290175dddf9f55fad5a7d59b238e1a085fe9f9155`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:59 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:15:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:15:11 GMT
WORKDIR /go
# Tue, 07 Jul 2026 23:20:29 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 07 Jul 2026 23:20:30 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 07 Jul 2026 23:20:30 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 07 Jul 2026 23:20:30 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 07 Jul 2026 23:20:30 GMT
ENV XCADDY_SETCAP=1
# Tue, 07 Jul 2026 23:20:30 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 07 Jul 2026 23:20:30 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 07 Jul 2026 23:20:30 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2afe4ddf70535a87895dd2928115f13eed6bd80bb630863f6b224ede37a652`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 247.9 KB (247906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837a88f92efe9877f23e6c12528d62e7ccdb9b8fa95a610a27ff13c8eae13062`  
		Last Modified: Tue, 07 Jul 2026 22:15:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99bb8ae79aca501340202e2b3f72351df752fdc0578e61eef0484c5af88bee90`  
		Last Modified: Tue, 07 Jul 2026 23:20:58 GMT  
		Size: 6.9 MB (6905607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6c6c5ca74bbefdb18b6165830bdfbd16d8fe28fc1f08160f2aadfe4f6285f3`  
		Last Modified: Tue, 07 Jul 2026 23:20:57 GMT  
		Size: 1.7 MB (1705994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9252b4ad4ee677ba1dc8228525c0d934b324dfd72744a9876becbd1fd38c2d2`  
		Last Modified: Tue, 07 Jul 2026 23:20:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:05b26b2ccab7d10e5ecba3b6a9c84954b039bb032a0ef8d8f176ade7cfc8aa17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 KB (283506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67e70976a6d5485ce8e45559738c876987895d4f0c881cc9c6f987bbdcd826cc`

```dockerfile
```

-	Layers:
	-	`sha256:d29994ecd02100babe7fb3f0eac2ee720dcbee3847f6e545fc3a969acd67eb5a`  
		Last Modified: Tue, 07 Jul 2026 23:20:57 GMT  
		Size: 263.3 KB (263307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c7b1857eaf4c7962d88a57531276db30126f0bb31ddd291463ccaeb0eb3578e`  
		Last Modified: Tue, 07 Jul 2026 23:20:57 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:01a8f667e554a0e97968aad09dc01345eb95a5fa6be81951e5ca6d34d5fe9f9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77380861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88dcb0e95ee4978e6d4b801a479e8db632f9e8c810f278178ced8236e7f0a364`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOTOOLCHAIN=local
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOPATH=/go
# Wed, 08 Jul 2026 20:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 20:35:16 GMT
COPY /target/ / # buildkit
# Wed, 08 Jul 2026 20:46:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 08 Jul 2026 20:46:30 GMT
WORKDIR /go
# Thu, 09 Jul 2026 13:57:26 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 09 Jul 2026 13:57:27 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 09 Jul 2026 13:57:27 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 09 Jul 2026 13:57:27 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 09 Jul 2026 13:57:27 GMT
ENV XCADDY_SETCAP=1
# Thu, 09 Jul 2026 13:57:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 09 Jul 2026 13:57:28 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 09 Jul 2026 13:57:28 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d1b6a4c21a78dbb25159d2e273a4550eac3caff5f0f9a74168efac89740c36`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 245.5 KB (245467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ba61866bff16c6d67dd671f0c2945d522b517e8a4429596c829088207b394e`  
		Last Modified: Wed, 08 Jul 2026 20:41:58 GMT  
		Size: 65.2 MB (65163350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c5e36bd441e281c048a60c9d5c8f0cb94a07a80df27a9fdaf1078658646bd1`  
		Last Modified: Wed, 08 Jul 2026 20:47:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be596e0c3572ec084f2d40c3140ef9aa3dbc08ab368891ab867c280275d60afc`  
		Last Modified: Thu, 09 Jul 2026 13:58:48 GMT  
		Size: 6.7 MB (6674005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75190c6dfcc5df8dcb13973971df0bf13a93a0f33f6a1eff2cd821a86e4dc6b5`  
		Last Modified: Thu, 09 Jul 2026 13:58:47 GMT  
		Size: 1.7 MB (1724208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed0c93df464a68a404656cbe38e7b166c34fb19d681c345c9a4059a7d0b3f78`  
		Last Modified: Thu, 09 Jul 2026 13:58:47 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:320aed7c9ebbcd7fe986c7b294e3d379e8713b8c2c910b6161da42eddc27d68e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 KB (283502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8868cd37491e015dbbb8df59ce304bc1febdea85ddb0bdc303f70d823f551f7c`

```dockerfile
```

-	Layers:
	-	`sha256:ffa1e4eb56d343ddad0bc067877e38cb883ce4790bd5d3e679ac917004efa2a3`  
		Last Modified: Thu, 09 Jul 2026 13:58:46 GMT  
		Size: 263.3 KB (263303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5874ad3cd74d1c14306f950ab09918463869ccdb0abdccc7b38823ebf3bb6ee`  
		Last Modified: Thu, 09 Jul 2026 13:58:46 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:4aec8d7eee3e3ba18d36762bf41500876d1fe7e7f5a0e244981885c53d228036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (79045434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed74804fd4d399b1b433da049428f443acfa25b19f2ce485efe853fc7f5be97`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:41:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:26 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:28 GMT
WORKDIR /go
# Tue, 07 Jul 2026 23:14:19 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 07 Jul 2026 23:14:20 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 07 Jul 2026 23:14:20 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 07 Jul 2026 23:14:20 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 07 Jul 2026 23:14:20 GMT
ENV XCADDY_SETCAP=1
# Tue, 07 Jul 2026 23:14:20 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 07 Jul 2026 23:14:20 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 07 Jul 2026 23:14:20 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1718196a71a3addbf43c83e0e65418bdf203de52f5b7783093a5f70b48bfa636`  
		Last Modified: Mon, 06 Jul 2026 20:42:07 GMT  
		Size: 246.2 KB (246160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02a0b92c64bea7b8e82336e0a7f2afcc7dad25aedbcab036aeb985d0f3e2228`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 66.5 MB (66528843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d0e6a39272a6e8258b921992f6a9600bbea6bd650620f7ab098d55cd81feb2`  
		Last Modified: Tue, 07 Jul 2026 22:11:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf59c9f0d3040bf913d4fcd889f5736730273cfdbe23e15c2b49594eb9469e1`  
		Last Modified: Tue, 07 Jul 2026 23:14:32 GMT  
		Size: 6.8 MB (6779735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53557377bdc0028b550264b2f0105ad5edfecbba3f74bc0ecf65b1745cdcd249`  
		Last Modified: Tue, 07 Jul 2026 23:14:32 GMT  
		Size: 1.8 MB (1782856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d0218166ed4080cc574976400478fa8ad7cd2ac2bb1083bdc1b03ba352c730`  
		Last Modified: Tue, 07 Jul 2026 23:14:31 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:a14e8487ae3896356e92691d15d9bf6ce73acbbdf38bb5f04570a60b38e0cd22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1519f855454b660a4dca3d2bd568e67e10743c468797c0eb34c78d34410158`

```dockerfile
```

-	Layers:
	-	`sha256:cfbceaa2df4620a4f6e8a1830ec163a9cff2a49d749163b7cd46e25124a2e2c5`  
		Last Modified: Tue, 07 Jul 2026 23:14:32 GMT  
		Size: 263.2 KB (263233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c85cab3aa8a79f1125991b3a55c7406c6c0a3b2137d136903104f8df922e059`  
		Last Modified: Tue, 07 Jul 2026 23:14:32 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json
