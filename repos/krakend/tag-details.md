<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `krakend`

-	[`krakend:2`](#krakend2)
-	[`krakend:2.13`](#krakend213)
-	[`krakend:2.13.8`](#krakend2138)
-	[`krakend:latest`](#krakendlatest)

## `krakend:2`

```console
$ docker pull krakend@sha256:4a7504efd9f5535d47a0789525657d37bc5aa365e3cfa6259bace26532a932ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:2` - linux; amd64

```console
$ docker pull krakend@sha256:b22fd9b52b6c4ab6b585876966dc675b50dca8dacb9823f084abe1b6775986f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59470871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7ea025c3e0f9b329bb4131e96113530c985fa9fc87bc8988f1209068cdc392`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:45:00 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Mon, 22 Jun 2026 19:45:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Mon, 22 Jun 2026 19:45:05 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=7fad4a25772a51bb7935fcf2d5b440b65686e2653db6c963853564d63379bab832e26f8527c0b4f78defb2b4566e37ab14da85b3008d6cc562c5396c2b580e28; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=038efd98782fcc9b2103bb2fc9931fd781af4bb153b76c15fb9abb5784c7e5a915b3d009f138af95eff7157bd6a4e66b64a4e204d3a451bc1835c409d2a3b28a; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Mon, 22 Jun 2026 19:45:05 GMT
WORKDIR /etc/krakend
# Mon, 22 Jun 2026 19:45:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:45:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:45:05 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Mon, 22 Jun 2026 19:45:05 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77d2a8f91b9bee039a1f70ab7f736bf0d689a538385d4a94f40fb417cf6a0fc`  
		Last Modified: Mon, 22 Jun 2026 19:45:14 GMT  
		Size: 412.7 KB (412708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7afd757378ba0bfa68da8816244415c015f0972389e0b6226b1f58ded146e0b`  
		Last Modified: Mon, 22 Jun 2026 19:45:16 GMT  
		Size: 55.2 MB (55213067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4abafec1088e0daab9904a75f4f0b0da50b2107c4f5025ebf35202a8c4b64e`  
		Last Modified: Mon, 22 Jun 2026 19:45:14 GMT  
		Size: 643.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2` - unknown; unknown

```console
$ docker pull krakend@sha256:cc36bdf8e9594ea6ae5ee646aa7ae222c0ea2fc7584db24792b546a71d2e35e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1ebd825a48c94c1d6e648aa43f32b11d79d6d79f2e657b8e7b03f687357d62`

```dockerfile
```

-	Layers:
	-	`sha256:b0aefd7a97e7ca831d97161bcf500bf232662ea25971697af4d42063442e0f9e`  
		Last Modified: Mon, 22 Jun 2026 19:45:14 GMT  
		Size: 15.1 KB (15142 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:2` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:62060ed007ab72bec2db7c2718d9807a016b5f08e8fca3122b3762d935b2d72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56453827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5adf640aa24f99fce21deb7ddebe5b5cae4670ef45985ff1e9c5997536eb5625`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:04 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Mon, 22 Jun 2026 19:47:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Mon, 22 Jun 2026 19:47:09 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=7fad4a25772a51bb7935fcf2d5b440b65686e2653db6c963853564d63379bab832e26f8527c0b4f78defb2b4566e37ab14da85b3008d6cc562c5396c2b580e28; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=038efd98782fcc9b2103bb2fc9931fd781af4bb153b76c15fb9abb5784c7e5a915b3d009f138af95eff7157bd6a4e66b64a4e204d3a451bc1835c409d2a3b28a; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Mon, 22 Jun 2026 19:47:09 GMT
WORKDIR /etc/krakend
# Mon, 22 Jun 2026 19:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:47:09 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Mon, 22 Jun 2026 19:47:09 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed1c05968eea1bccd19bb69db5f8872df09cda4ed8fb49e09c5a8ac74105100`  
		Last Modified: Mon, 22 Jun 2026 19:47:17 GMT  
		Size: 417.1 KB (417078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d149ae2b5ba0ee5c0336cbdad8b65f41aa30c478b069d70f409c50c67f3c85`  
		Last Modified: Mon, 22 Jun 2026 19:47:19 GMT  
		Size: 51.9 MB (51854218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1ca42f9ae6822bf4b5f8f25105d2f2c74f27bc62774c9c2cb4eb736227e9fb`  
		Last Modified: Mon, 22 Jun 2026 19:47:18 GMT  
		Size: 639.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2` - unknown; unknown

```console
$ docker pull krakend@sha256:149d2ef656cbcdca6778be5a5be27cf5674c25ff26e81d5ef0608a84aca8d831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 KB (15261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a620c17ebd1611f8b89feb5b65162a33e71275013235a6828816ca059a3d31d`

```dockerfile
```

-	Layers:
	-	`sha256:b44007c1d6946fdc7a00e20648faa444dbde106ae2e7f99b6ab5d5f87b2d3e9c`  
		Last Modified: Mon, 22 Jun 2026 19:47:18 GMT  
		Size: 15.3 KB (15261 bytes)  
		MIME: application/vnd.in-toto+json

## `krakend:2.13`

```console
$ docker pull krakend@sha256:4a7504efd9f5535d47a0789525657d37bc5aa365e3cfa6259bace26532a932ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:2.13` - linux; amd64

```console
$ docker pull krakend@sha256:b22fd9b52b6c4ab6b585876966dc675b50dca8dacb9823f084abe1b6775986f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59470871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7ea025c3e0f9b329bb4131e96113530c985fa9fc87bc8988f1209068cdc392`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:45:00 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Mon, 22 Jun 2026 19:45:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Mon, 22 Jun 2026 19:45:05 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=7fad4a25772a51bb7935fcf2d5b440b65686e2653db6c963853564d63379bab832e26f8527c0b4f78defb2b4566e37ab14da85b3008d6cc562c5396c2b580e28; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=038efd98782fcc9b2103bb2fc9931fd781af4bb153b76c15fb9abb5784c7e5a915b3d009f138af95eff7157bd6a4e66b64a4e204d3a451bc1835c409d2a3b28a; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Mon, 22 Jun 2026 19:45:05 GMT
WORKDIR /etc/krakend
# Mon, 22 Jun 2026 19:45:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:45:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:45:05 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Mon, 22 Jun 2026 19:45:05 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77d2a8f91b9bee039a1f70ab7f736bf0d689a538385d4a94f40fb417cf6a0fc`  
		Last Modified: Mon, 22 Jun 2026 19:45:14 GMT  
		Size: 412.7 KB (412708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7afd757378ba0bfa68da8816244415c015f0972389e0b6226b1f58ded146e0b`  
		Last Modified: Mon, 22 Jun 2026 19:45:16 GMT  
		Size: 55.2 MB (55213067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4abafec1088e0daab9904a75f4f0b0da50b2107c4f5025ebf35202a8c4b64e`  
		Last Modified: Mon, 22 Jun 2026 19:45:14 GMT  
		Size: 643.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2.13` - unknown; unknown

```console
$ docker pull krakend@sha256:cc36bdf8e9594ea6ae5ee646aa7ae222c0ea2fc7584db24792b546a71d2e35e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1ebd825a48c94c1d6e648aa43f32b11d79d6d79f2e657b8e7b03f687357d62`

```dockerfile
```

-	Layers:
	-	`sha256:b0aefd7a97e7ca831d97161bcf500bf232662ea25971697af4d42063442e0f9e`  
		Last Modified: Mon, 22 Jun 2026 19:45:14 GMT  
		Size: 15.1 KB (15142 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:2.13` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:62060ed007ab72bec2db7c2718d9807a016b5f08e8fca3122b3762d935b2d72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56453827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5adf640aa24f99fce21deb7ddebe5b5cae4670ef45985ff1e9c5997536eb5625`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:04 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Mon, 22 Jun 2026 19:47:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Mon, 22 Jun 2026 19:47:09 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=7fad4a25772a51bb7935fcf2d5b440b65686e2653db6c963853564d63379bab832e26f8527c0b4f78defb2b4566e37ab14da85b3008d6cc562c5396c2b580e28; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=038efd98782fcc9b2103bb2fc9931fd781af4bb153b76c15fb9abb5784c7e5a915b3d009f138af95eff7157bd6a4e66b64a4e204d3a451bc1835c409d2a3b28a; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Mon, 22 Jun 2026 19:47:09 GMT
WORKDIR /etc/krakend
# Mon, 22 Jun 2026 19:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:47:09 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Mon, 22 Jun 2026 19:47:09 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed1c05968eea1bccd19bb69db5f8872df09cda4ed8fb49e09c5a8ac74105100`  
		Last Modified: Mon, 22 Jun 2026 19:47:17 GMT  
		Size: 417.1 KB (417078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d149ae2b5ba0ee5c0336cbdad8b65f41aa30c478b069d70f409c50c67f3c85`  
		Last Modified: Mon, 22 Jun 2026 19:47:19 GMT  
		Size: 51.9 MB (51854218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1ca42f9ae6822bf4b5f8f25105d2f2c74f27bc62774c9c2cb4eb736227e9fb`  
		Last Modified: Mon, 22 Jun 2026 19:47:18 GMT  
		Size: 639.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2.13` - unknown; unknown

```console
$ docker pull krakend@sha256:149d2ef656cbcdca6778be5a5be27cf5674c25ff26e81d5ef0608a84aca8d831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 KB (15261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a620c17ebd1611f8b89feb5b65162a33e71275013235a6828816ca059a3d31d`

```dockerfile
```

-	Layers:
	-	`sha256:b44007c1d6946fdc7a00e20648faa444dbde106ae2e7f99b6ab5d5f87b2d3e9c`  
		Last Modified: Mon, 22 Jun 2026 19:47:18 GMT  
		Size: 15.3 KB (15261 bytes)  
		MIME: application/vnd.in-toto+json

## `krakend:2.13.8`

**does not exist** (yet?)

## `krakend:latest`

```console
$ docker pull krakend@sha256:4a7504efd9f5535d47a0789525657d37bc5aa365e3cfa6259bace26532a932ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:latest` - linux; amd64

```console
$ docker pull krakend@sha256:b22fd9b52b6c4ab6b585876966dc675b50dca8dacb9823f084abe1b6775986f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59470871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7ea025c3e0f9b329bb4131e96113530c985fa9fc87bc8988f1209068cdc392`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:45:00 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Mon, 22 Jun 2026 19:45:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Mon, 22 Jun 2026 19:45:05 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=7fad4a25772a51bb7935fcf2d5b440b65686e2653db6c963853564d63379bab832e26f8527c0b4f78defb2b4566e37ab14da85b3008d6cc562c5396c2b580e28; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=038efd98782fcc9b2103bb2fc9931fd781af4bb153b76c15fb9abb5784c7e5a915b3d009f138af95eff7157bd6a4e66b64a4e204d3a451bc1835c409d2a3b28a; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Mon, 22 Jun 2026 19:45:05 GMT
WORKDIR /etc/krakend
# Mon, 22 Jun 2026 19:45:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:45:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:45:05 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Mon, 22 Jun 2026 19:45:05 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77d2a8f91b9bee039a1f70ab7f736bf0d689a538385d4a94f40fb417cf6a0fc`  
		Last Modified: Mon, 22 Jun 2026 19:45:14 GMT  
		Size: 412.7 KB (412708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7afd757378ba0bfa68da8816244415c015f0972389e0b6226b1f58ded146e0b`  
		Last Modified: Mon, 22 Jun 2026 19:45:16 GMT  
		Size: 55.2 MB (55213067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4abafec1088e0daab9904a75f4f0b0da50b2107c4f5025ebf35202a8c4b64e`  
		Last Modified: Mon, 22 Jun 2026 19:45:14 GMT  
		Size: 643.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:cc36bdf8e9594ea6ae5ee646aa7ae222c0ea2fc7584db24792b546a71d2e35e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1ebd825a48c94c1d6e648aa43f32b11d79d6d79f2e657b8e7b03f687357d62`

```dockerfile
```

-	Layers:
	-	`sha256:b0aefd7a97e7ca831d97161bcf500bf232662ea25971697af4d42063442e0f9e`  
		Last Modified: Mon, 22 Jun 2026 19:45:14 GMT  
		Size: 15.1 KB (15142 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:latest` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:62060ed007ab72bec2db7c2718d9807a016b5f08e8fca3122b3762d935b2d72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56453827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5adf640aa24f99fce21deb7ddebe5b5cae4670ef45985ff1e9c5997536eb5625`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:47:04 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Mon, 22 Jun 2026 19:47:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Mon, 22 Jun 2026 19:47:09 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=7fad4a25772a51bb7935fcf2d5b440b65686e2653db6c963853564d63379bab832e26f8527c0b4f78defb2b4566e37ab14da85b3008d6cc562c5396c2b580e28; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=038efd98782fcc9b2103bb2fc9931fd781af4bb153b76c15fb9abb5784c7e5a915b3d009f138af95eff7157bd6a4e66b64a4e204d3a451bc1835c409d2a3b28a; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.7/krakend_2.13.7_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Mon, 22 Jun 2026 19:47:09 GMT
WORKDIR /etc/krakend
# Mon, 22 Jun 2026 19:47:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 22 Jun 2026 19:47:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:47:09 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Mon, 22 Jun 2026 19:47:09 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed1c05968eea1bccd19bb69db5f8872df09cda4ed8fb49e09c5a8ac74105100`  
		Last Modified: Mon, 22 Jun 2026 19:47:17 GMT  
		Size: 417.1 KB (417078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d149ae2b5ba0ee5c0336cbdad8b65f41aa30c478b069d70f409c50c67f3c85`  
		Last Modified: Mon, 22 Jun 2026 19:47:19 GMT  
		Size: 51.9 MB (51854218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1ca42f9ae6822bf4b5f8f25105d2f2c74f27bc62774c9c2cb4eb736227e9fb`  
		Last Modified: Mon, 22 Jun 2026 19:47:18 GMT  
		Size: 639.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:149d2ef656cbcdca6778be5a5be27cf5674c25ff26e81d5ef0608a84aca8d831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 KB (15261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a620c17ebd1611f8b89feb5b65162a33e71275013235a6828816ca059a3d31d`

```dockerfile
```

-	Layers:
	-	`sha256:b44007c1d6946fdc7a00e20648faa444dbde106ae2e7f99b6ab5d5f87b2d3e9c`  
		Last Modified: Mon, 22 Jun 2026 19:47:18 GMT  
		Size: 15.3 KB (15261 bytes)  
		MIME: application/vnd.in-toto+json
