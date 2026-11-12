## `krakend:latest`

```console
$ docker pull krakend@sha256:9f61092f8c627bb4d536e3977332ae4712113d603720b856d9951366bbf9b3ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `krakend:latest` - linux; amd64

```console
$ docker pull krakend@sha256:438d1351db2fc40887333d051fead1e12a97f31afb0b3619ecf154ee49d34196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49630020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee24d049a1b8636f0ce3b1f4b6e42113fe347fe44d0ca88ee95b6463d762e409`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 17:03:53 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Thu, 12 Nov 2026 17:03:53 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Thu, 12 Nov 2026 17:03:57 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=c6791b9cd37a93cbb0a510dbb353439386797faa67084e229d202a56e6a3a0bd4db8f048b9cb536060c756fa0168babacd4bafc60b9f09cbb2add0255588f18d; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=5327fe1bc1de7f1d20698807af53b3083f5d36da0b4262c40cb5c29b2a4c997571b66f0fe2dd903ffc549f9a96055666ae4219d1e0e8e65cc1f858126c11a7ec; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.4/krakend_3.0.4_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.4/krakend_3.0.4_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Thu, 12 Nov 2026 17:03:57 GMT
WORKDIR /etc/krakend
# Thu, 12 Nov 2026 17:03:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 17:03:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 17:03:58 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Thu, 12 Nov 2026 17:03:58 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7afb6c6a825dd8731620b8158beeac2691928bd887129490c8ea5d0153a59cf7`  
		Last Modified: Thu, 12 Nov 2026 17:04:05 GMT  
		Size: 415.9 KB (415915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd4303e2aefa2c946094f918ffe378d0868384c768c7ea2ddf02025ea4660ae`  
		Last Modified: Thu, 12 Nov 2026 17:04:06 GMT  
		Size: 45.4 MB (45360856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b132bde5a7f0e6eed3427febe17cdc4e30dbdac93316f932819abfda2d246f85`  
		Last Modified: Thu, 12 Nov 2026 17:04:04 GMT  
		Size: 628.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:1afa811289ad92ef687102cbd338c2b49db4da793decbefc0a0c5006c45af436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 KB (15127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b55277dbb91fab5dbd21dd3b4acdf475d9c02d582afe1081efb92edc449d2c`

```dockerfile
```

-	Layers:
	-	`sha256:63fbe140b14c8f13107014500d12a1b2608e8e432a9425f559c5fa2cacbba61c`  
		Last Modified: Thu, 12 Nov 2026 17:04:05 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json

### `krakend:latest` - linux; arm64 variant v8

```console
$ docker pull krakend@sha256:6847bc13a30a5d0b646cbe1bc5136e3727173c0f1e7292b00adc9aeb9b16b200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46303523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914ee537ae1cb15363ea57a849eb2b0a0b7f534ef5ba8e18f7aca89a5428a638`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["krakend","run","-c","krakend.json"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 17:03:55 GMT
LABEL org.opencontainers.image.authors=community@krakend.io
# Thu, 12 Nov 2026 17:03:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .run-deps ca-certificates su-exec tzdata; 	adduser -u 1000 -S -D -H krakend; # buildkit
# Thu, 12 Nov 2026 17:04:00 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps gnupg;     arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			export GOARCH='amd64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=c6791b9cd37a93cbb0a510dbb353439386797faa67084e229d202a56e6a3a0bd4db8f048b9cb536060c756fa0168babacd4bafc60b9f09cbb2add0255588f18d; 			;; 		'aarch64') 			export GOARCH='arm64' GOOS='linux'; 			export KRAKEND_DOWNLOAD_SHA512=5327fe1bc1de7f1d20698807af53b3083f5d36da0b4262c40cb5c29b2a4c997571b66f0fe2dd903ffc549f9a96055666ae4219d1e0e8e65cc1f858126c11a7ec; 			;; 		*) echo >&2 "error: unsupported architecture '$TARGETARCH' (likely packaging update needed)"; exit 1 ;; 	esac;     wget -O krakend.tar.gz "https://github.com/krakend/krakend-ce/releases/download/v3.0.4/krakend_3.0.4_${GOARCH}_alpine.tar.gz";     wget -O krakend.tar.gz.asc "https://github.com/krakend/krakend-ce/releases/download/v3.0.4/krakend_3.0.4_${GOARCH}_alpine.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 5B270F2E01E375FD9D5635E25DE6FD698AD6FDD2;     gpg --batch --verify krakend.tar.gz.asc krakend.tar.gz;     gpgconf --kill all;     rm -rf "$GNUPGHOME";     echo "$KRAKEND_DOWNLOAD_SHA512 *krakend.tar.gz" | sha512sum -c;     tar -xzf krakend.tar.gz -C / --strip-components 1;     rm -f krakend.tar.gz krakend.tar.gz.asc;     apk del --no-network .build-deps;     echo '{ "version": 4 }' > /etc/krakend/krakend.json # buildkit
# Thu, 12 Nov 2026 17:04:00 GMT
WORKDIR /etc/krakend
# Thu, 12 Nov 2026 17:04:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 17:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 17:04:00 GMT
EXPOSE map[8080/tcp:{} 8090/tcp:{}]
# Thu, 12 Nov 2026 17:04:00 GMT
CMD ["krakend" "run" "-c" "krakend.json"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127d5efcb27ce47a9d29c0200da89fdb74e553362addbbb06b41ca693a326815`  
		Last Modified: Thu, 12 Nov 2026 17:04:07 GMT  
		Size: 420.1 KB (420099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa3c07f186937bff0e801e56ec0d9f2428a190fb0f025488f603425273b68c8`  
		Last Modified: Thu, 12 Nov 2026 17:04:08 GMT  
		Size: 41.7 MB (41692545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576660951c3638f18749d2657c12bc391735fe54ded44371aae19030c5a9b57e`  
		Last Modified: Thu, 12 Nov 2026 17:04:07 GMT  
		Size: 626.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `krakend:latest` - unknown; unknown

```console
$ docker pull krakend@sha256:bbf46b1f6ece151c89c01afbb7f5d581a366c193e04d0047bd7cef2130c5c9af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 KB (15245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8482b4bc1254d9614a2861fb1cb1bebc3e369275192ac842ed5014ce1ee69f92`

```dockerfile
```

-	Layers:
	-	`sha256:aaaf0d0d8532d89e0da8d6f0d47d7defe45b5fe62b59099e67990904126a8c5b`  
		Last Modified: Thu, 12 Nov 2026 17:04:06 GMT  
		Size: 15.2 KB (15245 bytes)  
		MIME: application/vnd.in-toto+json
