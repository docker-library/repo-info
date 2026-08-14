<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `krakend`

-	[`krakend:2`](#krakend2)
-	[`krakend:2.13`](#krakend213)
-	[`krakend:2.13.9`](#krakend2139)
-	[`krakend:latest`](#krakendlatest)

## `krakend:2`

```console
$ docker pull krakend@sha256:397680d16a0a44156d5bc47955385f2f109a3cf8b66f47bfe5db32d446c9effe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:2` - linux; amd64

```console
$ docker pull krakend@sha256:e8a4470820405ea728ffd1fd79ce4e6320966fa8c0b7a6e23e3ec822e8b4f62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59472299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d683dbf727468f9bf2ece3c664a5c2bf2889940c02c5f6199e044fa9b9cee4db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 16:50:43 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 08 Jul 2026 16:50:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 08 Jul 2026 16:50:48 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=33285ee9ef4864a34dc550ffffb3b390a57a9b39db014f9b0014cc09c07ac9d5dea7f60c3d9aab4a4719f3b885901b946cde0ec5b96bc268d349af101ee1fede; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=ea39f166aaf2d06a67c79922921617d4a60aa600fb77bde63880a279fdc26587257b8651fd83450d32c9529f08ab4b0be0504d121d488fdcd45f3e4d7bd30799; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Wed, 08 Jul 2026 16:50:48 GMT
WORKDIR /etc/krakend
# Wed, 08 Jul 2026 16:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:50:48 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 08 Jul 2026 16:50:48 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1872a5c902ffed49bcd69750f5451a7d45d951228260b4229060243ad432fb`  
		Last Modified: Wed, 08 Jul 2026 16:50:56 GMT  
		Size: 412.7 KB (412720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed02d4de02cd6cedb659ccea7aff768137e197a35356bfc8e42d2f327c1ed897`  
		Last Modified: Wed, 08 Jul 2026 16:50:57 GMT  
		Size: 55.2 MB (55214482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1b00c30d0c508ffea073200403a2b05049a765a659b73e3abbacb19f12de2d`  
		Last Modified: Wed, 08 Jul 2026 16:50:56 GMT  
		Size: 644.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2` - unknown; unknown

```console
$ docker pull krakend@sha256:5b7339aa6c6b0cc516ff916bff08a023a0e67b40b04ce2ff060df6a9ed40a577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bf3f5d7768538e12b4bf1c49658acbea061a48bbb87314d6edc02d1df3c28f`

```dockerfile
```

-	Layers:
	-	`sha256:a902f6c807d3528877459e1c00df720155cb274ac1cfca5834ba449f40567819`  
		Last Modified: Wed, 08 Jul 2026 16:50:56 GMT  
		Size: 15.1 KB (15142 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:2` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:d550ba62b4fe61a3c1b1bf51a262d4e79eea6d02ea1f4ec6fc8a86130fa787a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56455884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744ccf56dfff15d01e59b37a1459ff2cd44d1866b68d44b1c84c6173fb35ff91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 16:51:20 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 08 Jul 2026 16:51:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 08 Jul 2026 16:51:25 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=33285ee9ef4864a34dc550ffffb3b390a57a9b39db014f9b0014cc09c07ac9d5dea7f60c3d9aab4a4719f3b885901b946cde0ec5b96bc268d349af101ee1fede; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=ea39f166aaf2d06a67c79922921617d4a60aa600fb77bde63880a279fdc26587257b8651fd83450d32c9529f08ab4b0be0504d121d488fdcd45f3e4d7bd30799; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Wed, 08 Jul 2026 16:51:25 GMT
WORKDIR /etc/krakend
# Wed, 08 Jul 2026 16:51:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:51:25 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 08 Jul 2026 16:51:25 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef048ea21c5d733d7e6fa7514137dea9374c1a217c7cfd726a39442461aaedd`  
		Last Modified: Wed, 08 Jul 2026 16:51:33 GMT  
		Size: 417.1 KB (417088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bea7bef4821fde6b1a76f06439c9f5cf3bf3bdbd299dd2ca2f932e8387488393`  
		Last Modified: Wed, 08 Jul 2026 16:51:35 GMT  
		Size: 51.9 MB (51856263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091ab299e84a319c7dbce3cc6ea9c9e482623c73f55f63f02fa4574516b344a2`  
		Last Modified: Wed, 08 Jul 2026 16:51:33 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2` - unknown; unknown

```console
$ docker pull krakend@sha256:392ad6e08871f4047231d174bd57ca9686765183076458f97aa1ddd59c74f0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 KB (15261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ccc57c8efdcea6249ee8236330d111ba5847b4d4bd2ebdca35048de1e41a24`

```dockerfile
```

-	Layers:
	-	`sha256:0f2f3f5dd9dec524a1d34b255f3a595d2c5492ac9b5886ab2af5033ee8d59289`  
		Last Modified: Wed, 08 Jul 2026 16:51:33 GMT  
		Size: 15.3 KB (15261 bytes)  
		MIME: application/vnd.in-toto+json

## `krakend:2.13`

```console
$ docker pull krakend@sha256:397680d16a0a44156d5bc47955385f2f109a3cf8b66f47bfe5db32d446c9effe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:2.13` - linux; amd64

```console
$ docker pull krakend@sha256:e8a4470820405ea728ffd1fd79ce4e6320966fa8c0b7a6e23e3ec822e8b4f62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59472299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d683dbf727468f9bf2ece3c664a5c2bf2889940c02c5f6199e044fa9b9cee4db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 16:50:43 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 08 Jul 2026 16:50:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 08 Jul 2026 16:50:48 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=33285ee9ef4864a34dc550ffffb3b390a57a9b39db014f9b0014cc09c07ac9d5dea7f60c3d9aab4a4719f3b885901b946cde0ec5b96bc268d349af101ee1fede; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=ea39f166aaf2d06a67c79922921617d4a60aa600fb77bde63880a279fdc26587257b8651fd83450d32c9529f08ab4b0be0504d121d488fdcd45f3e4d7bd30799; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Wed, 08 Jul 2026 16:50:48 GMT
WORKDIR /etc/krakend
# Wed, 08 Jul 2026 16:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:50:48 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 08 Jul 2026 16:50:48 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1872a5c902ffed49bcd69750f5451a7d45d951228260b4229060243ad432fb`  
		Last Modified: Wed, 08 Jul 2026 16:50:56 GMT  
		Size: 412.7 KB (412720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed02d4de02cd6cedb659ccea7aff768137e197a35356bfc8e42d2f327c1ed897`  
		Last Modified: Wed, 08 Jul 2026 16:50:57 GMT  
		Size: 55.2 MB (55214482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1b00c30d0c508ffea073200403a2b05049a765a659b73e3abbacb19f12de2d`  
		Last Modified: Wed, 08 Jul 2026 16:50:56 GMT  
		Size: 644.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2.13` - unknown; unknown

```console
$ docker pull krakend@sha256:5b7339aa6c6b0cc516ff916bff08a023a0e67b40b04ce2ff060df6a9ed40a577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bf3f5d7768538e12b4bf1c49658acbea061a48bbb87314d6edc02d1df3c28f`

```dockerfile
```

-	Layers:
	-	`sha256:a902f6c807d3528877459e1c00df720155cb274ac1cfca5834ba449f40567819`  
		Last Modified: Wed, 08 Jul 2026 16:50:56 GMT  
		Size: 15.1 KB (15142 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:2.13` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:d550ba62b4fe61a3c1b1bf51a262d4e79eea6d02ea1f4ec6fc8a86130fa787a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56455884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744ccf56dfff15d01e59b37a1459ff2cd44d1866b68d44b1c84c6173fb35ff91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 16:51:20 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 08 Jul 2026 16:51:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 08 Jul 2026 16:51:25 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=33285ee9ef4864a34dc550ffffb3b390a57a9b39db014f9b0014cc09c07ac9d5dea7f60c3d9aab4a4719f3b885901b946cde0ec5b96bc268d349af101ee1fede; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=ea39f166aaf2d06a67c79922921617d4a60aa600fb77bde63880a279fdc26587257b8651fd83450d32c9529f08ab4b0be0504d121d488fdcd45f3e4d7bd30799; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Wed, 08 Jul 2026 16:51:25 GMT
WORKDIR /etc/krakend
# Wed, 08 Jul 2026 16:51:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:51:25 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 08 Jul 2026 16:51:25 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef048ea21c5d733d7e6fa7514137dea9374c1a217c7cfd726a39442461aaedd`  
		Last Modified: Wed, 08 Jul 2026 16:51:33 GMT  
		Size: 417.1 KB (417088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bea7bef4821fde6b1a76f06439c9f5cf3bf3bdbd299dd2ca2f932e8387488393`  
		Last Modified: Wed, 08 Jul 2026 16:51:35 GMT  
		Size: 51.9 MB (51856263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091ab299e84a319c7dbce3cc6ea9c9e482623c73f55f63f02fa4574516b344a2`  
		Last Modified: Wed, 08 Jul 2026 16:51:33 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:2.13` - unknown; unknown

```console
$ docker pull krakend@sha256:392ad6e08871f4047231d174bd57ca9686765183076458f97aa1ddd59c74f0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 KB (15261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ccc57c8efdcea6249ee8236330d111ba5847b4d4bd2ebdca35048de1e41a24`

```dockerfile
```

-	Layers:
	-	`sha256:0f2f3f5dd9dec524a1d34b255f3a595d2c5492ac9b5886ab2af5033ee8d59289`  
		Last Modified: Wed, 08 Jul 2026 16:51:33 GMT  
		Size: 15.3 KB (15261 bytes)  
		MIME: application/vnd.in-toto+json

## `krakend:2.13.9`

**does not exist** (yet?)

## `krakend:latest`

```console
$ docker pull krakend@sha256:397680d16a0a44156d5bc47955385f2f109a3cf8b66f47bfe5db32d446c9effe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:latest` - linux; amd64

```console
$ docker pull krakend@sha256:e8a4470820405ea728ffd1fd79ce4e6320966fa8c0b7a6e23e3ec822e8b4f62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59472299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d683dbf727468f9bf2ece3c664a5c2bf2889940c02c5f6199e044fa9b9cee4db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 16:50:43 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 08 Jul 2026 16:50:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 08 Jul 2026 16:50:48 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=33285ee9ef4864a34dc550ffffb3b390a57a9b39db014f9b0014cc09c07ac9d5dea7f60c3d9aab4a4719f3b885901b946cde0ec5b96bc268d349af101ee1fede; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=ea39f166aaf2d06a67c79922921617d4a60aa600fb77bde63880a279fdc26587257b8651fd83450d32c9529f08ab4b0be0504d121d488fdcd45f3e4d7bd30799; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Wed, 08 Jul 2026 16:50:48 GMT
WORKDIR /etc/krakend
# Wed, 08 Jul 2026 16:50:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:50:48 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 08 Jul 2026 16:50:48 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1872a5c902ffed49bcd69750f5451a7d45d951228260b4229060243ad432fb`  
		Last Modified: Wed, 08 Jul 2026 16:50:56 GMT  
		Size: 412.7 KB (412720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed02d4de02cd6cedb659ccea7aff768137e197a35356bfc8e42d2f327c1ed897`  
		Last Modified: Wed, 08 Jul 2026 16:50:57 GMT  
		Size: 55.2 MB (55214482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1b00c30d0c508ffea073200403a2b05049a765a659b73e3abbacb19f12de2d`  
		Last Modified: Wed, 08 Jul 2026 16:50:56 GMT  
		Size: 644.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:5b7339aa6c6b0cc516ff916bff08a023a0e67b40b04ce2ff060df6a9ed40a577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bf3f5d7768538e12b4bf1c49658acbea061a48bbb87314d6edc02d1df3c28f`

```dockerfile
```

-	Layers:
	-	`sha256:a902f6c807d3528877459e1c00df720155cb274ac1cfca5834ba449f40567819`  
		Last Modified: Wed, 08 Jul 2026 16:50:56 GMT  
		Size: 15.1 KB (15142 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:latest` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:d550ba62b4fe61a3c1b1bf51a262d4e79eea6d02ea1f4ec6fc8a86130fa787a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56455884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744ccf56dfff15d01e59b37a1459ff2cd44d1866b68d44b1c84c6173fb35ff91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 16:51:20 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Wed, 08 Jul 2026 16:51:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Wed, 08 Jul 2026 16:51:25 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=33285ee9ef4864a34dc550ffffb3b390a57a9b39db014f9b0014cc09c07ac9d5dea7f60c3d9aab4a4719f3b885901b946cde0ec5b96bc268d349af101ee1fede; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=ea39f166aaf2d06a67c79922921617d4a60aa600fb77bde63880a279fdc26587257b8651fd83450d32c9529f08ab4b0be0504d121d488fdcd45f3e4d7bd30799; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v2.13.8/krakend_2.13.8_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 3 }' > /etc/krakend/krakend.json # buildkit
# Wed, 08 Jul 2026 16:51:25 GMT
WORKDIR /etc/krakend
# Wed, 08 Jul 2026 16:51:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:51:25 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Wed, 08 Jul 2026 16:51:25 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef048ea21c5d733d7e6fa7514137dea9374c1a217c7cfd726a39442461aaedd`  
		Last Modified: Wed, 08 Jul 2026 16:51:33 GMT  
		Size: 417.1 KB (417088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bea7bef4821fde6b1a76f06439c9f5cf3bf3bdbd299dd2ca2f932e8387488393`  
		Last Modified: Wed, 08 Jul 2026 16:51:35 GMT  
		Size: 51.9 MB (51856263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091ab299e84a319c7dbce3cc6ea9c9e482623c73f55f63f02fa4574516b344a2`  
		Last Modified: Wed, 08 Jul 2026 16:51:33 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:392ad6e08871f4047231d174bd57ca9686765183076458f97aa1ddd59c74f0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 KB (15261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ccc57c8efdcea6249ee8236330d111ba5847b4d4bd2ebdca35048de1e41a24`

```dockerfile
```

-	Layers:
	-	`sha256:0f2f3f5dd9dec524a1d34b255f3a595d2c5492ac9b5886ab2af5033ee8d59289`  
		Last Modified: Wed, 08 Jul 2026 16:51:33 GMT  
		Size: 15.3 KB (15261 bytes)  
		MIME: application/vnd.in-toto+json
