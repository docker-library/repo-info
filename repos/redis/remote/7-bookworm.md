## `redis:7-bookworm`

```console
$ docker pull redis@sha256:8e839f5b3738dbc1223ea01d5d3da0da0d750018e1336f45866630a9bf217014
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `redis:7-bookworm` - linux; amd64

```console
$ docker pull redis@sha256:1feed93082d872fa051fb6b5787a247d39e9c0d00357404c3a6554ba5e4a5315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43585872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a0a2a0551f7339f9509d1f9d80296b5486e2d86d1265ae29bec790f1ab4701`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:37:52 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 05 Aug 2026 00:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:38:38 GMT
ENV REDIS_VERSION=7.4.10
# Wed, 05 Aug 2026 00:38:38 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz
# Wed, 05 Aug 2026 00:38:38 GMT
ARG REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
# Wed, 05 Aug 2026 00:38:38 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 05 Aug 2026 00:38:39 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 05 Aug 2026 00:38:39 GMT
VOLUME [/data]
# Wed, 05 Aug 2026 00:38:39 GMT
WORKDIR /data
# Wed, 05 Aug 2026 00:38:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:38:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:38:39 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 05 Aug 2026 00:38:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b03f5a6cdec89f45657c659a5c2c17c9782e9ed50a7b2779d8ebf0202fb7f42`  
		Last Modified: Wed, 05 Aug 2026 00:38:46 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced91743e4683d38d4f0c246eda76b57dc0844d1ad78b4ae9da8e7ccc87c1008`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:709eacfa0183339e27616fe478844a5853d64ee6b3edb4359a3c24e0df226644`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 15.4 MB (15350578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9e4bd718adf57bb360bff46257db5b2f53dcf7ff01ae9a29a89e0dafe1b6ac`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c846c34d54492b9ad1935bdf5e24851510a4db7fdcb16d195da6de6e2c80f0fb`  
		Last Modified: Wed, 05 Aug 2026 00:38:48 GMT  
		Size: 597.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:d9d3a39f85608a6c14008282566b8dd694a0f0609cb65d344a42fda3c9faf5ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7265769d882542655ec9e378ef6c3f3819c4946b1e82709f36082e80cba5ade4`

```dockerfile
```

-	Layers:
	-	`sha256:87c6e097d89366c3eb9d7b6d6a6ce6d73b69f9ec30dd1ac81e3ccd9ea613bc1d`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 2.4 MB (2373118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7b1716d310afe0ee8978de61e58e4904472081ac9595652c0e109b81d26a573`  
		Last Modified: Wed, 05 Aug 2026 00:38:46 GMT  
		Size: 25.1 KB (25149 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; arm variant v5

```console
$ docker pull redis@sha256:6aa0a2f2cce59054bf6d34c380f5e28e9555139018752eae48fcca61119b2312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40831785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8759970d7fcf63ac29223d6f5c3b6f169e0d53e73abd04aac0716b1ff682ee00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1783900800'
# Sun, 26 Jul 2026 04:41:14 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sun, 26 Jul 2026 04:41:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 26 Jul 2026 04:42:15 GMT
ENV REDIS_VERSION=7.4.10
# Sun, 26 Jul 2026 04:42:15 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz
# Sun, 26 Jul 2026 04:42:15 GMT
ARG REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
# Sun, 26 Jul 2026 04:42:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sun, 26 Jul 2026 04:42:15 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN mkdir /data && chown redis:redis /data # buildkit
# Sun, 26 Jul 2026 04:42:15 GMT
VOLUME [/data]
# Sun, 26 Jul 2026 04:42:15 GMT
WORKDIR /data
# Sun, 26 Jul 2026 04:42:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 26 Jul 2026 04:42:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 26 Jul 2026 04:42:15 GMT
EXPOSE map[6379/tcp:{}]
# Sun, 26 Jul 2026 04:42:15 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1c9b9cc9660939ca6a733102f55ee8694e0218bfc63bcd2cf72f4093124edc5f`  
		Last Modified: Tue, 14 Jul 2026 00:13:52 GMT  
		Size: 25.8 MB (25767982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b306a2a216c36582302004dd3e04649a2cb147cadf431ae1fefacb6904f63737`  
		Last Modified: Sun, 26 Jul 2026 04:42:24 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378baf7aa69efe4575aee77b23f5ab0e15ceed0dd663279235a63a47a4a45bd5`  
		Last Modified: Sun, 26 Jul 2026 04:42:23 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d85da46046398a0d6d9388ba67facfe8ef84ed8934efbc5e4c962d188390495`  
		Last Modified: Sun, 26 Jul 2026 04:42:24 GMT  
		Size: 15.1 MB (15061098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b6aaac20c8ff0f8469a30688d6cafbee1b9533a2657666eb59a8873ea8d605`  
		Last Modified: Sun, 26 Jul 2026 04:42:23 GMT  
		Size: 95.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd408a553611339f448c7fb68c8e82675b1adc5031da331f182ff1d0e557c477`  
		Last Modified: Sun, 26 Jul 2026 04:42:25 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:30b38e83bae56684d83b08530ce33d4b626d4aaa56e805dcab9833edd3d523dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:594ef3cdde8c93a217e19394f93f31189de0c428f11fc9950db92c1e18fd8118`

```dockerfile
```

-	Layers:
	-	`sha256:03faeee7af764327bcbf24774bb29591a57596e23c76e672bb6e4cc14a8cb534`  
		Last Modified: Sun, 26 Jul 2026 04:42:24 GMT  
		Size: 2.4 MB (2376938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e5613d8a0cc39f54f3663089a63c2cb715bc4cf6d174f9ca27324fec0c932f`  
		Last Modified: Sun, 26 Jul 2026 04:42:23 GMT  
		Size: 25.3 KB (25284 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; arm variant v7

```console
$ docker pull redis@sha256:a71d80ac9c14344a9bbec3c2b9f39e86000049820680ee63c506308ef3f81d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38664248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764d6f1df430d9e968eb8d123664be5fa25697724489d943cbf942f17cd34ad4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Sun, 26 Jul 2026 04:39:55 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Sun, 26 Jul 2026 04:39:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 26 Jul 2026 04:40:49 GMT
ENV REDIS_VERSION=7.4.10
# Sun, 26 Jul 2026 04:40:49 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz
# Sun, 26 Jul 2026 04:40:49 GMT
ARG REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
# Sun, 26 Jul 2026 04:40:49 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sun, 26 Jul 2026 04:40:49 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN mkdir /data && chown redis:redis /data # buildkit
# Sun, 26 Jul 2026 04:40:49 GMT
VOLUME [/data]
# Sun, 26 Jul 2026 04:40:49 GMT
WORKDIR /data
# Sun, 26 Jul 2026 04:40:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 26 Jul 2026 04:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 26 Jul 2026 04:40:49 GMT
EXPOSE map[6379/tcp:{}]
# Sun, 26 Jul 2026 04:40:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c970137512e9c1873bc5fbb4e9674f7a6e3b915918d5d867f723ede8fb2b45b0`  
		Last Modified: Sun, 26 Jul 2026 04:40:57 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad71d41c6bc159297376427c9d7bb13dd05563dad4fb655a2bcdff9a0cc31bd`  
		Last Modified: Sun, 26 Jul 2026 04:40:56 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9f7e094ceff755074b024b0351ef637577f3abb25fae1f5bfad9e4ee19256f`  
		Last Modified: Sun, 26 Jul 2026 04:40:57 GMT  
		Size: 14.7 MB (14721762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f0e9b22d61d9524eccf3ca588fb08d0893d7709ce28ce51b5789db4b619b81`  
		Last Modified: Sun, 26 Jul 2026 04:40:57 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08fdc4aaaccc0a9540283ee1b87ca9e83bf4163dea430060b979f76370e71349`  
		Last Modified: Sun, 26 Jul 2026 04:40:58 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:ca02edf8071689769ae71bff58a404e0d9edc8680d38ab3a052624b4951399f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347b5e2e459be36997b99e4b25876295359a5bde347b4b6a84b72b967d5027a`

```dockerfile
```

-	Layers:
	-	`sha256:afc2e7647f6209b3ea6485c488c62103febfc5f300f1ef89f125dce1fda0a437`  
		Last Modified: Sun, 26 Jul 2026 04:40:57 GMT  
		Size: 2.4 MB (2375355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a739b2496cd59e25a89f224518dd547d1e939b356cbc5bd15baa2194535fb183`  
		Last Modified: Sun, 26 Jul 2026 04:40:57 GMT  
		Size: 25.3 KB (25284 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6d6958e270ef6a8dc31ad3fdb4bf075f0c9c0e41cc41e39e88a63d517eb5fc42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43473682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a512ee242dae02da9baa89a65fe8684737a8b7fa5a43fde8a44f27347a9a94d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:40:00 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 05 Aug 2026 00:40:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:40:47 GMT
ENV REDIS_VERSION=7.4.10
# Wed, 05 Aug 2026 00:40:47 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz
# Wed, 05 Aug 2026 00:40:47 GMT
ARG REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
# Wed, 05 Aug 2026 00:40:47 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 05 Aug 2026 00:40:47 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 05 Aug 2026 00:40:47 GMT
VOLUME [/data]
# Wed, 05 Aug 2026 00:40:47 GMT
WORKDIR /data
# Wed, 05 Aug 2026 00:40:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:40:47 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 05 Aug 2026 00:40:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162ff2d67a4b497b8a78d220cff4a36eacea8e9e2df9212c01e3358e43d23f0c`  
		Last Modified: Wed, 05 Aug 2026 00:40:54 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979d7b6b825409e978fb6cb3ef519d4cbe501d4c614c7bb376a5b386a94b3f4f`  
		Last Modified: Wed, 05 Aug 2026 00:40:54 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e194bf666bd67a8a54a5c40c63639b80ff0fde8bc41adc53d7501f4abf06b10d`  
		Last Modified: Wed, 05 Aug 2026 00:40:55 GMT  
		Size: 15.4 MB (15353775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23909f31123b90613e2dbf1f3a053963fd5da036571948a0364c3d66c3c57915`  
		Last Modified: Wed, 05 Aug 2026 00:40:55 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84edf429c8ee246e6bffa138b5b591f5effeefae434f3e63f67c5064e66a00ba`  
		Last Modified: Wed, 05 Aug 2026 00:40:56 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:6f45cd27696862379c2153eea45c269ca4309f3c6cb1322635c4ae29165cbacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea2b640e9538fdae00fef7368ba58882982e4674274ab0a378dcd86570f3fb5`

```dockerfile
```

-	Layers:
	-	`sha256:cef48e2d2a7e19d76145a6f617845d16f058933d6ab26b31c9c41795476aa2f9`  
		Last Modified: Wed, 05 Aug 2026 00:40:54 GMT  
		Size: 2.4 MB (2373399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92d4fe87412286c5d93a6dccd9e9a3e9ce462ce910b3b5ce52ada8e559cda639`  
		Last Modified: Wed, 05 Aug 2026 00:40:54 GMT  
		Size: 25.3 KB (25322 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; 386

```console
$ docker pull redis@sha256:369b6d9bd9d8e0f7d8279ff7a6906148eaed14e5cc44e938ab87b3fbda857d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44093382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871585e80dd1dab7c1622a32a67e1d4c54491fe73d0783240fdeb66ff1264916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:45:32 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 05 Aug 2026 00:45:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:22 GMT
ENV REDIS_VERSION=7.4.10
# Wed, 05 Aug 2026 00:46:22 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz
# Wed, 05 Aug 2026 00:46:22 GMT
ARG REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
# Wed, 05 Aug 2026 00:46:22 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 05 Aug 2026 00:46:23 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 05 Aug 2026 00:46:23 GMT
VOLUME [/data]
# Wed, 05 Aug 2026 00:46:23 GMT
WORKDIR /data
# Wed, 05 Aug 2026 00:46:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:23 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 05 Aug 2026 00:46:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e935352d38b58284449b6245156d8c19e1cf315f26cb708bff0c102ed3459ed`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 1.1 KB (1106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806c9c03c6cb8c1d81f4ac86b4a475fedf1d8e4960df9c0ca9fc358cd3116409`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 872.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ba0af606bddc47564f8302ef59ff6b3c2c34a4bbebbeab38c578a5568e6579`  
		Last Modified: Wed, 05 Aug 2026 00:46:30 GMT  
		Size: 14.9 MB (14869698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91210619247100aee363a8263dbaa84f1a496abb120bc2fb3f1436511962ed2f`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37e34870c8c1f768f34a1f34d8c24d61bb808aebcee82986cc124954e56452a`  
		Last Modified: Wed, 05 Aug 2026 00:46:30 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:07fd49b1b57294508f9d170196f0cbc00f7e46320540ed34a9480235deb53bcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2395392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abf9617b007b87dd3f6a15d599ea2c63812c64e5d0582b26a3e010579e7807c`

```dockerfile
```

-	Layers:
	-	`sha256:1eb9fb9484426c654b853445f182fdc6660a71ce705759650dc315e5a44eb94d`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 2.4 MB (2370291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eda581db7392b28bd4b34b95654ea096946c9a02574762261b39ebfe88e336e7`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 25.1 KB (25101 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; mips64le

```console
$ docker pull redis@sha256:a0895dbb64b6cc4357b24f191e7c018470e0241b29497b88da64eec16de4ea85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43963242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f72bfd89d32e82e0de1bab130f1146b35c1eef07c0f771f10ac627d312ba937`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 14:55:48 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 14 Jul 2026 14:56:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 26 Jul 2026 04:45:18 GMT
ENV REDIS_VERSION=7.4.10
# Sun, 26 Jul 2026 04:45:18 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz
# Sun, 26 Jul 2026 04:45:18 GMT
ARG REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
# Sun, 26 Jul 2026 04:45:18 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sun, 26 Jul 2026 04:45:20 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN mkdir /data && chown redis:redis /data # buildkit
# Sun, 26 Jul 2026 04:45:20 GMT
VOLUME [/data]
# Sun, 26 Jul 2026 04:45:22 GMT
WORKDIR /data
# Sun, 26 Jul 2026 04:45:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 26 Jul 2026 04:45:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 26 Jul 2026 04:45:23 GMT
EXPOSE map[6379/tcp:{}]
# Sun, 26 Jul 2026 04:45:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d21b0b947b634d95463968de77b75d10281e25c61d8caed6ddc0fca630368421`  
		Last Modified: Tue, 14 Jul 2026 00:13:36 GMT  
		Size: 28.5 MB (28523225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ecd7a6a3e40a9d0d55447712d88177e9d00d217811bf52bab11fe73b219dc7`  
		Last Modified: Tue, 14 Jul 2026 15:02:57 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2c290c15fe6638cefda7a8be83322afe0b9ff833e0bf7cc79bed369b6143b3`  
		Last Modified: Tue, 14 Jul 2026 15:02:57 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43799ad8e26d7cbe5e6b453ec5fa15e82aa93edfd17e90339bf8ea2d5fdca59d`  
		Last Modified: Sun, 26 Jul 2026 04:45:55 GMT  
		Size: 15.4 MB (15437307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe5877c33d875ecca3620aa2d3b3a9eaf6ab7bb7075bbdb0a54c6c6b7858b0b`  
		Last Modified: Sun, 26 Jul 2026 04:45:53 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4529ba95ad4682bb577be55e28ace19f0a63829b3acc822457e0686fdda2a8`  
		Last Modified: Sun, 26 Jul 2026 04:45:53 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:1857d51676bf658569ff85d831529e0e2eaeed3e73522ca16e6d5a9e902b3e77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335f149732f8463a10f150a308c3003aab4715fd1fc1dfeebdb1e3642086f405`

```dockerfile
```

-	Layers:
	-	`sha256:9f90fab92bdec4bc3be87ec6576955c58b426ab58f372a705532752b6ae2a9b6`  
		Last Modified: Sun, 26 Jul 2026 04:45:53 GMT  
		Size: 25.0 KB (25026 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; ppc64le

```console
$ docker pull redis@sha256:079ebe92f1e9746d8bf3d48df843fb152b044bcf959bc117b81748467f5b8ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48597400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986a8be87250546b48075c2d00966920d412bd739f298de1644431cbbb45aced`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:53:02 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 05 Aug 2026 00:53:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:55:23 GMT
ENV REDIS_VERSION=7.4.10
# Wed, 05 Aug 2026 00:55:23 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz
# Wed, 05 Aug 2026 00:55:23 GMT
ARG REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
# Wed, 05 Aug 2026 00:55:23 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 05 Aug 2026 00:55:23 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 05 Aug 2026 00:55:23 GMT
VOLUME [/data]
# Wed, 05 Aug 2026 00:55:23 GMT
WORKDIR /data
# Wed, 05 Aug 2026 00:55:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:55:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:55:23 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 05 Aug 2026 00:55:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf52623d460074d50fa56323816a10a1b49e6a50d5a5c1d18bb272aaf208689f`  
		Last Modified: Wed, 05 Aug 2026 00:54:47 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff04c05bce5fce6e135eae35b2ead5ad5de7b70bf72c60bb8301acb6bce7b75`  
		Last Modified: Wed, 05 Aug 2026 00:54:47 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e14f253e83ac88348bb4e91c19c78684aab01c34912e680aed9a30b6fdd5518`  
		Last Modified: Wed, 05 Aug 2026 00:55:38 GMT  
		Size: 16.5 MB (16518370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0612b821738e056b8d34919a89665d1f3ac7223531fc46300056035e4a808df5`  
		Last Modified: Wed, 05 Aug 2026 00:55:37 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a90cbf1acf453f90dee13f1476906390348735b720fac985db4f47d4c8d408`  
		Last Modified: Wed, 05 Aug 2026 00:55:37 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:0e66477354c1e4b30d4732bd9c47748b86a71d439937d4410c56b8f7c5690a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e3fa53f9771304c0be96e86e2193a935b292bcad5e2eaaae4b1428056fc1e2`

```dockerfile
```

-	Layers:
	-	`sha256:dd13bd69816d83df73a552e3332c31c80c2bcd7cd71a660317e270e2ff9ad976`  
		Last Modified: Wed, 05 Aug 2026 00:55:37 GMT  
		Size: 2.4 MB (2377512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7b6fde6e31d9007c92b3e3e8e05c84c1c564abb95838df893ede199c80e17f0`  
		Last Modified: Wed, 05 Aug 2026 00:55:37 GMT  
		Size: 25.2 KB (25211 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:7-bookworm` - linux; s390x

```console
$ docker pull redis@sha256:185eafab86ccfd053f93fca40b5edf58e7b26119b2b1cfbc55f4e15bcc1124ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42271635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a067a08e8e43b639ef79c3ffabca0179f25ed892534732eb9140fdf5551e3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Fri, 24 Jul 2026 17:10:21 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:10:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 26 Jul 2026 04:40:00 GMT
ENV REDIS_VERSION=7.4.10
# Sun, 26 Jul 2026 04:40:00 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz
# Sun, 26 Jul 2026 04:40:00 GMT
ARG REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
# Sun, 26 Jul 2026 04:40:00 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Sun, 26 Jul 2026 04:40:00 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/7.4.10.tar.gz REDIS_DOWNLOAD_SHA=88491784fc03e1bbdae408e61273910af5b61a20ab7eeec48b2377fa71f3870d
RUN mkdir /data && chown redis:redis /data # buildkit
# Sun, 26 Jul 2026 04:40:00 GMT
VOLUME [/data]
# Sun, 26 Jul 2026 04:40:00 GMT
WORKDIR /data
# Sun, 26 Jul 2026 04:40:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 26 Jul 2026 04:40:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 26 Jul 2026 04:40:00 GMT
EXPOSE map[6379/tcp:{}]
# Sun, 26 Jul 2026 04:40:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17811b84c4bbd40cffac6d589de3ef6d50ca5adbf52f2475422ca107cbc8caf`  
		Last Modified: Fri, 24 Jul 2026 17:11:48 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e8318ac4ebee155242742d6b8cd1bf056b32d2bd784be9601c685d30ce2b55`  
		Last Modified: Fri, 24 Jul 2026 17:11:48 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada22992303c68db601afb0f56d3f461245ad5e7f1104d4d0a8d6373a5f2e6e3`  
		Last Modified: Sun, 26 Jul 2026 04:40:14 GMT  
		Size: 15.4 MB (15380659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b7f2af3127b0b5b996fe4951b4232de361b33d8f1a31e21d08211c148cd097`  
		Last Modified: Sun, 26 Jul 2026 04:40:13 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78df56317d2382895201b40815aa87cbbe5cfefbc497d90862cae196f06d14aa`  
		Last Modified: Sun, 26 Jul 2026 04:40:14 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:7-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:bd019f47094b7de375bfd2e7f325019e5a3b605ed830bf9ba0d509d23be96f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2395099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7c918dcb83046f136b1d7812ba3634acdc34dbebffee83d237deac4cdbae24`

```dockerfile
```

-	Layers:
	-	`sha256:8573625a41e8e512195ea6e345cb33b644a9fd500337618203da2502a0145a99`  
		Last Modified: Sun, 26 Jul 2026 04:40:13 GMT  
		Size: 2.4 MB (2369950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:129b510468a07f8d56dd8522a161623a4e82b9eefcb729ed354b47e299fb8346`  
		Last Modified: Sun, 26 Jul 2026 04:40:13 GMT  
		Size: 25.1 KB (25149 bytes)  
		MIME: application/vnd.in-toto+json
