## `caddy:builder`

```console
$ docker pull caddy@sha256:e04bd0aadab74d4ff446980f956fe3c63be24678f1838906962b56a7cab2d028
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
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `caddy:builder` - linux; amd64

```console
$ docker pull caddy@sha256:8c78bf0a666541cd56e36ea40d02f1c84847a2b4fd490f600aa38f7221d73c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79734110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d4f34dbb530cece73f3e56e62ec5bb6a134713d461f1926626b7662637d911`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:25:05 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:25:12 GMT
ENV GOLANG_VERSION=1.26.8
# Tue, 01 Sep 2026 23:25:12 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:25:12 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:25:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:25:12 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:25:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:25:15 GMT
WORKDIR /go
# Tue, 01 Sep 2026 23:34:09 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 01 Sep 2026 23:34:09 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 01 Sep 2026 23:34:09 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 01 Sep 2026 23:34:09 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 01 Sep 2026 23:34:09 GMT
ENV XCADDY_SETCAP=1
# Tue, 01 Sep 2026 23:34:09 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 01 Sep 2026 23:34:09 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 01 Sep 2026 23:34:09 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf85087de4d9029bde4e29993ffa1fd51bdcd601ee8f0b24b475b6f188b3015`  
		Last Modified: Tue, 01 Sep 2026 23:25:29 GMT  
		Size: 245.1 KB (245062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb3e687d353c47479f7eb82d6cc1b230f1d252bfefaddbeec9d3de57edf5d49`  
		Last Modified: Tue, 01 Sep 2026 23:25:30 GMT  
		Size: 67.3 MB (67308359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01ef6a6016004d114c97cf04a9708d71f6bb95e2b482f829ae547874376d5c7`  
		Last Modified: Tue, 01 Sep 2026 23:25:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd8c17890dbc73f8bb6f40ef0968d669b221cbe8c9a3ef7170983b8bca126f3`  
		Last Modified: Tue, 01 Sep 2026 23:34:17 GMT  
		Size: 6.5 MB (6489168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09612693ad193e1457380aa26ec51154996b78557d8eef3d51c273603f01b977`  
		Last Modified: Tue, 01 Sep 2026 23:34:17 GMT  
		Size: 1.8 MB (1846507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:190965b80b0cfe3b02431a55f4c8d1f863acca348ce52454efba550d642814fd`  
		Last Modified: Tue, 01 Sep 2026 23:34:17 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:708eb1ec1a90b5b6212be7ea480e7c06b51c887cdf26e08b0e2d120564410356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 KB (284012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0862ce099dc1fdf95105c4bbe4355ef0932d35d3b281f7f7e05b90e641585d21`

```dockerfile
```

-	Layers:
	-	`sha256:e7d95d2369ea62266f3a701bbac77139826b5ae62a97d832851fe553c292510d`  
		Last Modified: Tue, 01 Sep 2026 23:34:17 GMT  
		Size: 263.9 KB (263884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13456c1c66683722249b7059bfe73ca47bd910689947672e2a344d913c0d4b97`  
		Last Modified: Tue, 01 Sep 2026 23:34:17 GMT  
		Size: 20.1 KB (20128 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; arm variant v6

```console
$ docker pull caddy@sha256:fa4446e2ab7af9fece43e5b275fdb4b9c6f547dea299006a15d8527e07acdb43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77796882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c46aa364f65f9beb411470fa6d4ee195c66cce67a4f6793b0134f317beef8e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:26:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:26:41 GMT
ENV GOLANG_VERSION=1.26.8
# Tue, 01 Sep 2026 23:26:41 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:26:41 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:26:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:26:41 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:26:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:26:44 GMT
WORKDIR /go
# Tue, 01 Sep 2026 23:30:05 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 01 Sep 2026 23:30:06 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 01 Sep 2026 23:30:06 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 01 Sep 2026 23:30:06 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 01 Sep 2026 23:30:06 GMT
ENV XCADDY_SETCAP=1
# Tue, 01 Sep 2026 23:30:06 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 01 Sep 2026 23:30:06 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 01 Sep 2026 23:30:06 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9489812c282198f031aeffbf082aa1b8477eacf42a25f52a628034c545edbd7c`  
		Last Modified: Tue, 01 Sep 2026 23:26:55 GMT  
		Size: 246.1 KB (246146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4156a13a33a79c57e061c7bc88ad619b8a6c67e38936c6e71dda83cde648d80a`  
		Last Modified: Tue, 01 Sep 2026 23:26:28 GMT  
		Size: 65.8 MB (65847085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583197d14971525c48c3e629ab5f15f1cb86d58bb7b45b6a10a617a0ee36a349`  
		Last Modified: Tue, 01 Sep 2026 23:26:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76c00c51211e0061f0f5baac13c7b024f32e2ad0970715de2679555dcc053a9`  
		Last Modified: Tue, 01 Sep 2026 23:30:11 GMT  
		Size: 6.4 MB (6405463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11eb2c4bb74e519edd58b462038194f701fcbbf62368bbe686c99556d1ab8bbb`  
		Last Modified: Tue, 01 Sep 2026 23:30:11 GMT  
		Size: 1.7 MB (1745003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364f77fbc3595f7f4e18f96a1192caada891dd140898bb2fd397d321f6081a86`  
		Last Modified: Tue, 01 Sep 2026 23:30:11 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:e0f8e7375f34228aa4baa87e6323029811f30a28b4294171cbe19d3ea6aab137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b119fc638eb38a67c9861bcc1fe995ecd58c083080d6247132f8e03baa662708`

```dockerfile
```

-	Layers:
	-	`sha256:c2bd12a32b066da12c74ec75ca325a499260bccea65ddb2e9a59f2a21cd99f0c`  
		Last Modified: Tue, 01 Sep 2026 23:30:11 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; arm variant v7

```console
$ docker pull caddy@sha256:dce78e160aee762e50eb1c4a2c23c85f51f250cea0664220eae8744e89c54262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76952085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:027479b33ea4813905a5c08c61c9df27c711849d0c048ea94a8c43b4a76af558`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:25:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:25:14 GMT
ENV GOLANG_VERSION=1.26.8
# Tue, 01 Sep 2026 23:25:14 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:25:14 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:25:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:25:14 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:25:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:25:17 GMT
WORKDIR /go
# Tue, 01 Sep 2026 23:30:49 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 01 Sep 2026 23:30:49 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 01 Sep 2026 23:30:49 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 01 Sep 2026 23:30:49 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 01 Sep 2026 23:30:49 GMT
ENV XCADDY_SETCAP=1
# Tue, 01 Sep 2026 23:30:49 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 01 Sep 2026 23:30:49 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 01 Sep 2026 23:30:49 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab3198fda53bedde1e3de6163310acffff2c8d1f4b553a0ec577eaefb8fe778`  
		Last Modified: Tue, 01 Sep 2026 23:25:31 GMT  
		Size: 245.1 KB (245139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636b4b50639e7812023bedda52bb0714f692e2c655b0d178d2ef4e2405202b1f`  
		Last Modified: Tue, 01 Sep 2026 23:25:34 GMT  
		Size: 65.8 MB (65847672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5ac00fd2062dc013b6a51938e8579d4f5b73153a60064e2f3f8eae5400f573`  
		Last Modified: Tue, 01 Sep 2026 23:25:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23444bc81f638c23316262b15508bc130705295843eb05175f8c12399eb40b19`  
		Last Modified: Tue, 01 Sep 2026 23:30:57 GMT  
		Size: 5.9 MB (5858075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b6c58ad9da14530595a619bbc04b11504ed95d875c8e580e9950b556cccfed`  
		Last Modified: Tue, 01 Sep 2026 23:30:57 GMT  
		Size: 1.7 MB (1738752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ce984d7eed16676cd4795ac046a18f60e2ce54814c57eebfbfc5ceadd4c3ee`  
		Last Modified: Tue, 01 Sep 2026 23:30:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:09e78e567a91547a6cbb3bd8423e228983fa98cf5374038593506306d08afb2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.5 KB (286530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61cf8b194473608a7a4907b36bcde87c69782d847748912b9e83637bcc32a56`

```dockerfile
```

-	Layers:
	-	`sha256:cc9e4113da7801628b654a540214dff658e35f62d63e19cfef9d5244aae1f72d`  
		Last Modified: Tue, 01 Sep 2026 23:30:57 GMT  
		Size: 266.3 KB (266276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99f68c350a81619eed1e7a872903cf90ca04ac0d0b6572d471909f740f0d1b29`  
		Last Modified: Tue, 01 Sep 2026 23:30:56 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:9485b8761bfa2b307285b9cb7e2112058c55cd7133c9062bda8511c794ece244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76944677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e884772781170e3f8c01f90f06300362845654686e28c59f942dd4075218cbd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:25:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:25:32 GMT
ENV GOLANG_VERSION=1.26.8
# Tue, 01 Sep 2026 23:25:32 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:25:32 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:25:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:25:32 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:25:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:25:35 GMT
WORKDIR /go
# Tue, 01 Sep 2026 23:34:08 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 01 Sep 2026 23:34:08 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 01 Sep 2026 23:34:08 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 01 Sep 2026 23:34:08 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 01 Sep 2026 23:34:08 GMT
ENV XCADDY_SETCAP=1
# Tue, 01 Sep 2026 23:34:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 01 Sep 2026 23:34:08 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 01 Sep 2026 23:34:08 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:201eabdd8af41dfb6264a978919da90897afd6949704ec0ef47a253f26a2c38f`  
		Last Modified: Tue, 01 Sep 2026 23:25:49 GMT  
		Size: 247.5 KB (247510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fb0b9b10a77a100f12ca35704e0bf2e54f625945c6087b132491dec45b4ed6`  
		Last Modified: Tue, 01 Sep 2026 23:25:47 GMT  
		Size: 64.2 MB (64224554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beec94adeeb663f5c5d9f30adca781b98c20213630a7a36f486c8eed70dbd7b5`  
		Last Modified: Tue, 01 Sep 2026 23:25:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e450568264633ab20fed73bf014e60d48f5be0440544a54806818d3668917c7`  
		Last Modified: Tue, 01 Sep 2026 23:34:16 GMT  
		Size: 6.6 MB (6573778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d1de373b67f00b687f1ee374bc3fcc0ca36df201333d163538be3e5904469f`  
		Last Modified: Tue, 01 Sep 2026 23:34:16 GMT  
		Size: 1.7 MB (1716383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695813b65a8a33c937028383b7dd8be95455c673831ca04d653c15ecb8730878`  
		Last Modified: Tue, 01 Sep 2026 23:34:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:824778225f215564f7294b38f7d1b80e29029b1f1fadc96c2914a32ca1045435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.6 KB (283634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c18252e0e41f432289941abbb897c90c9ca6da59569df57abf7319fb62f3ccc`

```dockerfile
```

-	Layers:
	-	`sha256:711b1dc4d57afef571dcaec8cd6564a13341b1719edcf7d5f5022dd787dc3f78`  
		Last Modified: Tue, 01 Sep 2026 23:34:16 GMT  
		Size: 263.3 KB (263338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0e838274b655e90b334eaf36bb315ac65af03c7eaacadb37c7f7df81c195459`  
		Last Modified: Tue, 01 Sep 2026 23:34:16 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; ppc64le

```console
$ docker pull caddy@sha256:534c588d64706c91623d2d4fbdb0c8dae3ac238b4d59c37f704225d774af6309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77574475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac53cfd1fdfdaa748d771977b4261ee768a7b8034000774eb613c92ec3f44a8f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:35:31 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 02 Sep 2026 00:36:52 GMT
ENV GOLANG_VERSION=1.26.8
# Wed, 02 Sep 2026 00:36:52 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 00:36:52 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 00:36:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 00:36:52 GMT
COPY /target/ / # buildkit
# Wed, 02 Sep 2026 00:38:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 02 Sep 2026 00:38:18 GMT
WORKDIR /go
# Wed, 02 Sep 2026 01:16:34 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 02 Sep 2026 01:16:34 GMT
ENV XCADDY_VERSION=v0.4.5
# Wed, 02 Sep 2026 01:16:34 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 02 Sep 2026 01:16:34 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 02 Sep 2026 01:16:34 GMT
ENV XCADDY_SETCAP=1
# Wed, 02 Sep 2026 01:16:34 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 02 Sep 2026 01:16:36 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 02 Sep 2026 01:16:36 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c573765b09b24aca0c81a2ec6fd7fd55ac09922a693c253d9ed444b9e8b24cf5`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 247.9 KB (247909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d3d6a0c14ab5befbcdd4fd3432af93ba4b51f067cd970f8ccedda273f818fb`  
		Last Modified: Wed, 02 Sep 2026 00:37:48 GMT  
		Size: 64.9 MB (64901026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc016d0758d9041a1d2825c82f15cb40b6b57b79639af3bb9e35c3e32e9fffa`  
		Last Modified: Wed, 02 Sep 2026 00:38:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff7b47eed83c480a586d4028c1367c7f083b792bda103b4329fef84258a5893d`  
		Last Modified: Wed, 02 Sep 2026 01:16:56 GMT  
		Size: 6.9 MB (6906656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9d214fa56ee9d1ba759df1e2bdb23e0a4bec5c3c6dc7be5aa1140490df1c7c`  
		Last Modified: Wed, 02 Sep 2026 01:16:58 GMT  
		Size: 1.7 MB (1705994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43d4eaa149021edb5ef6e2266e8213a4ccbac2c230bb75ab2fafd7bcfa136e`  
		Last Modified: Wed, 02 Sep 2026 01:16:56 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:a949e71403160c74e8f1f1b6b1129ecb8f3f0f2bab60342cc88e4bdee78285b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 KB (283506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed344f5aea249a8f14b1b8e247f76e8afcab45b56d90e15a3680e6f75fb54428`

```dockerfile
```

-	Layers:
	-	`sha256:c8ed562e16fc56eb468c71eb92b9667a81b1d4d6b785cf20c639dd6168219a6f`  
		Last Modified: Wed, 02 Sep 2026 01:16:56 GMT  
		Size: 263.3 KB (263307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91c8a8dbc2ee4d9309ea44cf7116b0104664b811162c968fac3a3346c8d64897`  
		Last Modified: Wed, 02 Sep 2026 01:16:56 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; riscv64

```console
$ docker pull caddy@sha256:e8a512beacf3e2dc2a2f4dda102bbd2c674af49514437739d304a41c71cbf5fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77413809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a32e2945c8168ff1fcfd47cc960b3bbe4189c73b543214a0c5d710c4bf7eeb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:06:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:03:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:03:01 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:14:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:14:37 GMT
WORKDIR /go
# Wed, 19 Aug 2026 19:21:12 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 19 Aug 2026 19:21:14 GMT
ENV XCADDY_VERSION=v0.4.5
# Wed, 19 Aug 2026 19:21:14 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 19 Aug 2026 19:21:14 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 19 Aug 2026 19:21:14 GMT
ENV XCADDY_SETCAP=1
# Wed, 19 Aug 2026 19:21:14 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 19 Aug 2026 19:21:15 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 19 Aug 2026 19:21:15 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763e37d0b14f752701961821911203ad5187201b24aff2865f93072c9c427a4c`  
		Last Modified: Sun, 16 Aug 2026 13:08:36 GMT  
		Size: 245.5 KB (245482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114477b4c88c5490f91752364554f5f31a9f64dabdb50e05a57ae70bd462e4b6`  
		Last Modified: Wed, 19 Aug 2026 18:09:47 GMT  
		Size: 65.2 MB (65198421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a809f89810d0a0bad69651f8f671d48b9bf469227295d0676ef5addb00e07ac4`  
		Last Modified: Wed, 19 Aug 2026 18:15:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4c120b37fb3f5aa75ae72e1796c5a8c0998afe976e57d984ebbc1fe50e5082`  
		Last Modified: Wed, 19 Aug 2026 19:22:31 GMT  
		Size: 6.7 MB (6671854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746f8908c7d5040872ac1d892dfb436cdeb697c246f19f5bd8e38c10062e021d`  
		Last Modified: Wed, 19 Aug 2026 19:22:30 GMT  
		Size: 1.7 MB (1724219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1129e1e5d812ecfd53e49b51aa4b274c914951b0e5b9d25d640139c58ff7969e`  
		Last Modified: Wed, 19 Aug 2026 19:22:30 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:046c5e9ef5b0c938bf8a79e095e151a39f11c846505ec05a867fbb76bdfacd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 KB (283501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4973aaaad7865450f5f35c91cdee38c6b746349c424c342a47c167892e33891`

```dockerfile
```

-	Layers:
	-	`sha256:6b37d3f4c852a6a647f6c40378a381ac62955a60dfd82e9d403ee2e3953f9b7b`  
		Last Modified: Wed, 19 Aug 2026 19:22:30 GMT  
		Size: 263.3 KB (263303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27ddb8427c1bd7521f1b0b0afb8f731c66c31e83ae2c8238a13235edc29cdf1a`  
		Last Modified: Wed, 19 Aug 2026 19:22:29 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; s390x

```console
$ docker pull caddy@sha256:60e607c73bb31389e287f9c7ad70ceeca26698a164ea3b62325b6f6bdbf34b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79095813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c514886383aec0f284a147de42b537123b7aa9e46fc82f0add3437cbe0eb804`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:25:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:26:19 GMT
ENV GOLANG_VERSION=1.26.8
# Tue, 01 Sep 2026 23:26:19 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:26:19 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:26:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:26:19 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:26:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:26:21 GMT
WORKDIR /go
# Tue, 01 Sep 2026 23:30:03 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 01 Sep 2026 23:30:04 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 01 Sep 2026 23:30:04 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 01 Sep 2026 23:30:04 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 01 Sep 2026 23:30:04 GMT
ENV XCADDY_SETCAP=1
# Tue, 01 Sep 2026 23:30:04 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 01 Sep 2026 23:30:04 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 01 Sep 2026 23:30:04 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3710e0868e52965c92e51695026c829a917fe06c1a1181ca4b32ad3ff6de5a`  
		Last Modified: Tue, 01 Sep 2026 23:25:51 GMT  
		Size: 246.1 KB (246141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d84eb15669e2ea1c047f6d98c6248b418f5c30db96066e6227dff414c69789f`  
		Last Modified: Tue, 01 Sep 2026 23:26:08 GMT  
		Size: 66.6 MB (66579150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1eb88f0d703aa2de0388acd7dd0084bceff92b870a9db0d831a45340dfbc70c`  
		Last Modified: Tue, 01 Sep 2026 23:26:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cfb65de6d9ece620ec97ed979c5515afd277e3644e0d439abd41b20f458976a`  
		Last Modified: Tue, 01 Sep 2026 23:30:19 GMT  
		Size: 6.8 MB (6779823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6444d33c463ff040955a038c047322f840fd80f95cda52b9e02e6e3285ad97f`  
		Last Modified: Tue, 01 Sep 2026 23:30:19 GMT  
		Size: 1.8 MB (1782857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d71eb1dbc9661fdf2b89c673983bf3d7d53e539f0be9e7ad0faaa93dd3f02da`  
		Last Modified: Tue, 01 Sep 2026 23:30:19 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:6ddfd96eb76ab15c594817b67c63219b042045929e308837cd6537682240fa8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2297d5dd88930e1d027d3e6ffaadd1a3730ab69152f9963d12e5f06aec9476f6`

```dockerfile
```

-	Layers:
	-	`sha256:3b79d7e3eaa4e4086a97bb9acd92fe7241221f798eb05d08be5ff551ad968045`  
		Last Modified: Tue, 01 Sep 2026 23:30:18 GMT  
		Size: 263.2 KB (263233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba7cdd311b0c5d14b387585950ced6cd98736f7888335488a98c20e4f6c73466`  
		Last Modified: Tue, 01 Sep 2026 23:30:19 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - windows version 10.0.26100.33296; amd64

```console
$ docker pull caddy@sha256:687fd1fc2d37d01046d1852b03633136b937ac638f0e685a3d286c1a0cf2a0bc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2564691595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede6f4f861aefed39a738310d0ad0badd3c3f5d0dd7b146c7c795277472282fa`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 02 Sep 2026 01:26:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 02 Sep 2026 01:26:34 GMT
ENV GIT_VERSION=2.48.1
# Wed, 02 Sep 2026 01:26:35 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 02 Sep 2026 01:26:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 02 Sep 2026 01:26:36 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 02 Sep 2026 01:27:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 02 Sep 2026 01:27:38 GMT
ENV GOPATH=C:\go
# Wed, 02 Sep 2026 01:27:43 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 02 Sep 2026 01:27:43 GMT
ENV GOLANG_VERSION=1.26.8
# Wed, 02 Sep 2026 01:29:08 GMT
RUN $url = 'https://dl.google.com/go/go1.26.8.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'b92c3b2adae85a11ba71fe7216daf0d84e82af4c8ab6c5625807f28622043a59'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 02 Sep 2026 01:29:11 GMT
WORKDIR C:\go
# Wed, 02 Sep 2026 02:16:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 02 Sep 2026 02:16:35 GMT
ENV XCADDY_VERSION=v0.4.5
# Wed, 02 Sep 2026 02:16:35 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 02 Sep 2026 02:16:37 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 02 Sep 2026 02:17:18 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('652857d019f3e1772b154b33f2479d8f17f4b10818802363737d35601c4cd51dc9a9ba0b3c64cdada9fe6bdcebb4395d0561b2ca302ae1219b288758c01911c1')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 02 Sep 2026 02:17:19 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ec1bd63073e3ea0b26edf62f6b1bc8a7c33c746e56bfa1077808b60f539c7d`  
		Last Modified: Wed, 02 Sep 2026 01:29:23 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a989421a0582111dd4aaee29fcd655626fadae8667de5284861a7f424860550`  
		Last Modified: Wed, 02 Sep 2026 01:29:23 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca78ed99075672c371166d34388bc2ab7f93fafb6e032bf01785d31a482373f`  
		Last Modified: Wed, 02 Sep 2026 01:29:22 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a720697ed3a56ac4e0fdd5f3319e59b0c7e592ad028dd9b3a1280e3b5c4db31`  
		Last Modified: Wed, 02 Sep 2026 01:29:22 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9153eba8d1843c666f24de3d1ec0580cc012dfa190d4a4daa000976d0c1e6aa3`  
		Last Modified: Wed, 02 Sep 2026 01:29:22 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7662e1948f8a43aabd328fe9f171ccf350b7c9fed4645c26c2ca537292136d`  
		Last Modified: Wed, 02 Sep 2026 01:29:28 GMT  
		Size: 51.2 MB (51240387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea2769a6e8010fc3d1d7e61cdb60091dd2b18cca506bb7eedb86f88302fe6c5`  
		Last Modified: Wed, 02 Sep 2026 01:29:20 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c48879426af998a25a84d3c3de9dc773012baec910f55aa7231a1f2885548da`  
		Last Modified: Wed, 02 Sep 2026 01:29:21 GMT  
		Size: 374.8 KB (374757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55691f1918bf6f388b7660800fecdb87dfc9796cc3d61f24d46af26401533f8`  
		Last Modified: Wed, 02 Sep 2026 01:29:20 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35281696fee9b04db6a2c0afdb00123da7d3c5ccc1ef6f69a35a872e1a2a39c7`  
		Last Modified: Wed, 02 Sep 2026 01:29:31 GMT  
		Size: 70.0 MB (69956742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb193ebd081f0cfde8e5f47760335b7954f13f8cac2a3bb53835ce561ee52d7`  
		Last Modified: Wed, 02 Sep 2026 01:29:20 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72db6d11aee05c0d5d4c0ce7646a4f30a6d23904d7987001d8685bccbe8c56cc`  
		Last Modified: Wed, 02 Sep 2026 02:17:30 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea16d70ecfcb5a0c1c4f4072cd48a6cfa42fe470df11048f385bcefffad4db7`  
		Last Modified: Wed, 02 Sep 2026 02:17:28 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732fb24d2fed19cfb21a04ffe532f841529f049043e8c5497d3171a21194969b`  
		Last Modified: Wed, 02 Sep 2026 02:17:28 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981a27acad41a8cd35bab3c658ef2075e59b82c362814a2de2ffd419880ab924`  
		Last Modified: Wed, 02 Sep 2026 02:17:28 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8e220fa4f4de51142c0e44eefc6d1dd1c786cdaa3769b374d7914766ea1b73`  
		Last Modified: Wed, 02 Sep 2026 02:17:29 GMT  
		Size: 2.3 MB (2317441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e253b6dc179e79aae431177dd3d0e16754d630de253f056666747a7af1b7b08`  
		Last Modified: Wed, 02 Sep 2026 02:17:28 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:builder` - windows version 10.0.20348.5499; amd64

```console
$ docker pull caddy@sha256:165eee3ec57d5c3e905737a5c54f4392960df2f0280aa4bb21a0e15f976f5c64
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2307794229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45917e62e3ef2ef619e56b74f3030dca4cfd35e806cd08572ccf97f4080e0be`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 02 Sep 2026 01:07:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 02 Sep 2026 01:21:28 GMT
ENV GIT_VERSION=2.48.1
# Wed, 02 Sep 2026 01:21:28 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 02 Sep 2026 01:21:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 02 Sep 2026 01:21:30 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 02 Sep 2026 01:21:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 02 Sep 2026 01:21:44 GMT
ENV GOPATH=C:\go
# Wed, 02 Sep 2026 01:21:51 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 02 Sep 2026 01:24:43 GMT
ENV GOLANG_VERSION=1.26.8
# Wed, 02 Sep 2026 01:26:21 GMT
RUN $url = 'https://dl.google.com/go/go1.26.8.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'b92c3b2adae85a11ba71fe7216daf0d84e82af4c8ab6c5625807f28622043a59'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 02 Sep 2026 01:26:22 GMT
WORKDIR C:\go
# Wed, 02 Sep 2026 02:20:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 02 Sep 2026 02:20:31 GMT
ENV XCADDY_VERSION=v0.4.5
# Wed, 02 Sep 2026 02:20:32 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 02 Sep 2026 02:20:33 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 02 Sep 2026 02:21:11 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('652857d019f3e1772b154b33f2479d8f17f4b10818802363737d35601c4cd51dc9a9ba0b3c64cdada9fe6bdcebb4395d0561b2ca302ae1219b288758c01911c1')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 02 Sep 2026 02:21:12 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d486db5913163eff0e8cd2c68b015097d3e8c3d6d32f1e3cbbefd0cd4958f4`  
		Last Modified: Wed, 02 Sep 2026 01:09:21 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ee4731b79bd665af7f0e442b23d76b8ed30485b796cb0fb8825f51cf5e4970`  
		Last Modified: Wed, 02 Sep 2026 01:24:19 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431ef50715f6a3046b3caf4e30a40f9122bd5202e4272b47fbbe8acf1af0b768`  
		Last Modified: Wed, 02 Sep 2026 01:24:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d838a9f5e4a203a98cd443c249a94314fb90624dddeb9479aaea62b51a6ca`  
		Last Modified: Wed, 02 Sep 2026 01:24:17 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9743f28c6ea9069421dfe1f190a274276cb4032e8ca71588a0ea987d5ae7658b`  
		Last Modified: Wed, 02 Sep 2026 01:24:17 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632338157afb25e86c24cef2219b38668772874556e2717c75b0176a01f43a6e`  
		Last Modified: Wed, 02 Sep 2026 01:24:23 GMT  
		Size: 51.2 MB (51212519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d118dc45720b71c89130886eea1c8eff81a2d3d14a6aae26798ec88637996d1a`  
		Last Modified: Wed, 02 Sep 2026 01:24:15 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac393a519700231f03c336a14dcc9276ff6696969f1350f02ea15d02e1a3cda5`  
		Last Modified: Wed, 02 Sep 2026 01:24:16 GMT  
		Size: 341.9 KB (341939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2673236f584c3db782887b13afbf71d8734dc135a926da350cdcf7b687701e1a`  
		Last Modified: Wed, 02 Sep 2026 01:26:31 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80a270a4913cf005a8f4fee63befaf07b8bd2687865016858905c4c4af697f2`  
		Last Modified: Wed, 02 Sep 2026 01:26:42 GMT  
		Size: 69.9 MB (69932244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40871af54a92b5040c1fd9c86d1254a222d2ae45c98033f5090f093339151dd3`  
		Last Modified: Wed, 02 Sep 2026 01:26:31 GMT  
		Size: 1.5 KB (1464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c73ea8ad4ec7c4aedbc79c944d3c988b9a8c15d5308697b8d7492a338f4ef68`  
		Last Modified: Wed, 02 Sep 2026 02:21:19 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ab0c57431059abbfacbd9069902fb4539234111af6760fef016d9f734db4a3`  
		Last Modified: Wed, 02 Sep 2026 02:21:17 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617f155ac05b121254a5cd74b8996c5531332fdf3acf54e3094fef025dd21bbc`  
		Last Modified: Wed, 02 Sep 2026 02:21:17 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a146956cb4e7e72c22de604911412e11adea8ebff43732c41846f1ef446dcef`  
		Last Modified: Wed, 02 Sep 2026 02:21:17 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9554934e1f5ec92ae11436bd2b9c9c1f5b72c347bbf882f5e7e38fa05a49d536`  
		Last Modified: Wed, 02 Sep 2026 02:21:18 GMT  
		Size: 2.3 MB (2292890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9e24eb4eba0a2d00e86d2c632c58dc7ee588c587e53bd0ed87c71830321856`  
		Last Modified: Wed, 02 Sep 2026 02:21:17 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
