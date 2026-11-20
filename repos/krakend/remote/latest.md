## `krakend:latest`

```console
$ docker pull krakend@sha256:ec97cf701de92cc5037aea84fe87fb00f1dd3619b924908bfc9ccb64ddea5e83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:latest` - linux; amd64

```console
$ docker pull krakend@sha256:13dd436973732f0331622ac2a3d8bc55d07a712c3206a5bce9cc15ea8fa844c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49719301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88916f3032bfd74f4a0ae815b8403f78b3e2b2067bbd81a9d68b146d6e19e7b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 21:41:02 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Thu, 19 Nov 2026 21:41:02 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Thu, 19 Nov 2026 21:41:07 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=1090158f79b3da1e168148e47414706e74840e211cadca7d524e18dc2f8b445d056e9811e90ee4034b728dc8d0b181f768349649a95dde80856fbc637ba3b359; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=70820140dddff6f571c3a98364a91badf44e966f9a3a41e360c49a354505b22cefbd375496ac26c1c02929dcf2645de4da9fe99b9b2165cb80ccfc8d3cec59ea; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.5/krakend_3.0.5_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.5/krakend_3.0.5_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Thu, 19 Nov 2026 21:41:07 GMT
WORKDIR /etc/krakend
# Thu, 19 Nov 2026 21:41:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 21:41:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Nov 2026 21:41:07 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Thu, 19 Nov 2026 21:41:07 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba824abeac0cf46db7f37f4962697ed829166b9f80577fd55dec45702166e0cd`  
		Last Modified: Thu, 19 Nov 2026 21:41:14 GMT  
		Size: 415.9 KB (415914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090aeb51fc19dda2831c3356c40ecccfc17d6f1b84fe066731dd66bb8861b936`  
		Last Modified: Thu, 19 Nov 2026 21:41:15 GMT  
		Size: 45.5 MB (45450137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f214f585d6ed1c91ffaea2a6e11627abf5073dc773bdbd1524726649954d1c5a`  
		Last Modified: Thu, 19 Nov 2026 21:41:14 GMT  
		Size: 629.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:52cf3abb9cd744ddba4ad188cbcad98622af11d90154f9342a7cf1a5d5c04a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8189e2f268b2f1ad57d617ee222aac715017194899da917d5f4cf455cbdd25e`

```dockerfile
```

-	Layers:
	-	`sha256:ffc99432da22ffc149f0a68760cc7a791a0193b1d4c0a2f020b1628aa263bb62`  
		Last Modified: Thu, 19 Nov 2026 21:41:14 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:latest` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:98d37e9805326873715a150475a9b2c68674cbaf9db4f1b97661a938c0d80640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46390461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8071163765604d79f225d5498fd5f617d0364189868d24224f3bb7a49dc52a11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 22:10:25 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Thu, 19 Nov 2026 22:10:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Thu, 19 Nov 2026 22:10:29 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=1090158f79b3da1e168148e47414706e74840e211cadca7d524e18dc2f8b445d056e9811e90ee4034b728dc8d0b181f768349649a95dde80856fbc637ba3b359; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=70820140dddff6f571c3a98364a91badf44e966f9a3a41e360c49a354505b22cefbd375496ac26c1c02929dcf2645de4da9fe99b9b2165cb80ccfc8d3cec59ea; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.5/krakend_3.0.5_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.5/krakend_3.0.5_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Thu, 19 Nov 2026 22:10:29 GMT
WORKDIR /etc/krakend
# Thu, 19 Nov 2026 22:10:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 22:10:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Nov 2026 22:10:29 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Thu, 19 Nov 2026 22:10:29 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2861258df52d95dff2db3a4040e7a6fbaa84a90bc0b9046fac017205735c14`  
		Last Modified: Thu, 19 Nov 2026 22:10:36 GMT  
		Size: 420.1 KB (420103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a141881f95cecfa175b5e4d28309241a4c23faa4442ec9badf4509dd6157fb`  
		Last Modified: Thu, 19 Nov 2026 22:10:37 GMT  
		Size: 41.8 MB (41779477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5dc7b4b5a2e2b07d188e2bd1ca5f3a2b4fcf0f20a2d319946421d6c9f320ae`  
		Last Modified: Thu, 19 Nov 2026 22:10:36 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:0a80731ac26f123790915f7c0d46b3e79506053a00423dc73ef44846d5877034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 KB (15246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3198d94c217a6820eeb5f4ab26616b3e1312892abcfc62da2b60b1004051ee43`

```dockerfile
```

-	Layers:
	-	`sha256:1608e5d624f5f9f47dbaf028fd4501edcfe1fc3be75c7c04e9e182170fded0ba`  
		Last Modified: Thu, 19 Nov 2026 22:10:36 GMT  
		Size: 15.2 KB (15246 bytes)  
		MIME: application/vnd.in-toto+json
