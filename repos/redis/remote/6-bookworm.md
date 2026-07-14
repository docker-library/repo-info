## `redis:6-bookworm`

```console
$ docker pull redis@sha256:8430713546135a3885b0370faea3f6429b660b17a407ab677f7b824ef6be18aa
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

### `redis:6-bookworm` - linux; amd64

```console
$ docker pull redis@sha256:ab355bedea09d1dc584ff77356661cbdfe2da147d91122ce90e07712792ec00a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38733003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84f39380592b3ef25428ea785c8e42aa92da865fcea6cf7736a607cf128ff2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:37:37 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 14 Jul 2026 01:37:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
ENV REDIS_VERSION=6.2.22
# Tue, 14 Jul 2026 01:38:14 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz
# Tue, 14 Jul 2026 01:38:14 GMT
ARG REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
# Tue, 14 Jul 2026 01:38:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
VOLUME [/data]
# Tue, 14 Jul 2026 01:38:14 GMT
WORKDIR /data
# Tue, 14 Jul 2026 01:38:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:14 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 14 Jul 2026 01:38:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05451e52c36ffff45f451eac584c10f181937c6300bd4855c4eea9a64a16bff7`  
		Last Modified: Tue, 14 Jul 2026 01:38:20 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ec11d458eb0a883976a1736c1fa9c5d68bcd3e684db108240df5458eae6859`  
		Last Modified: Tue, 14 Jul 2026 01:38:20 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4408a92924fe1fa87068d590e684327ddb61b89d6f0cb9e7bf3317a886aa725`  
		Last Modified: Tue, 14 Jul 2026 01:38:21 GMT  
		Size: 10.5 MB (10497653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e529cf44ae451623dc5889746b516ffa98f60196b68894eed0570667a0af672a`  
		Last Modified: Tue, 14 Jul 2026 01:38:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd9c9bd47a8f88006335fb1ea2f93318785749f93a2df595be38b37fabc6272`  
		Last Modified: Tue, 14 Jul 2026 01:38:21 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:000b474eb9d233532c2ceee471e7013c119b6e7e41e53905fe33e8b64837df8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3250b871aca67f5bd706201fc6dddcccbdf9e508aab66bb2ef61d89c8c07a84`

```dockerfile
```

-	Layers:
	-	`sha256:9ec04289b009c6e040364181ed99eb64bec6178ccefa27d9919ca0d2c5161fac`  
		Last Modified: Tue, 14 Jul 2026 01:38:20 GMT  
		Size: 2.4 MB (2373118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b700507b012004fe19db6da3447bdd71e03053bef3ce0ef9ec3b53d4d998ac5`  
		Last Modified: Tue, 14 Jul 2026 01:38:20 GMT  
		Size: 25.1 KB (25149 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; arm variant v5

```console
$ docker pull redis@sha256:153c8ce5c81f32457dd52cf7a05cda65f5c87da75d0900590a62234212908c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35852709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c440a3119b8ff0882c83c6524be635bb169ad27c2712c9512baadc74f1626086`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:16:01 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 24 Jun 2026 02:16:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:17:54 GMT
ENV REDIS_VERSION=6.2.22
# Wed, 24 Jun 2026 02:17:54 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz
# Wed, 24 Jun 2026 02:17:54 GMT
ARG REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
# Wed, 24 Jun 2026 02:17:54 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 24 Jun 2026 02:17:54 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 24 Jun 2026 02:17:54 GMT
VOLUME [/data]
# Wed, 24 Jun 2026 02:17:54 GMT
WORKDIR /data
# Wed, 24 Jun 2026 02:17:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:17:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:17:54 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 24 Jun 2026 02:17:54 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:56a07f407b343196efb8a614d5b61dad4cbe8fd8c8e97a11342cd7a61eadc02c`  
		Last Modified: Wed, 24 Jun 2026 00:27:42 GMT  
		Size: 25.8 MB (25773229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb83bc360c31a8171cebb0a8159f5da99112de3e3b41e9fbf2395828bf3bbf8`  
		Last Modified: Wed, 24 Jun 2026 02:17:03 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d911cba7e2f26ea8e3f8bc83f5609ac9fd3e04b00034325e3c4d3dbde6a8ff5d`  
		Last Modified: Wed, 24 Jun 2026 02:17:03 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082ea9a2a174df4d6fd9470e9b8927b555c2552f328db02fbb736994b5051d46`  
		Last Modified: Wed, 24 Jun 2026 02:18:02 GMT  
		Size: 10.1 MB (10076772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa04288f75dfc3ab33600a888156cc6b66751092fbf2131d5e47686f9f4a94e1`  
		Last Modified: Wed, 24 Jun 2026 02:18:01 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f197272a06053286994b9f6549cc3b71adc8ffaa07f46155478e59308cfba09`  
		Last Modified: Wed, 24 Jun 2026 02:18:01 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:14580afbf90529a3e9fa7a982cca33901993e22d2c28af33a999a6d3f1f6da02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5522abe598b41a6fcf99d5fa3df0c78b0a89993be997f0d28a6d7ba0ba45a5`

```dockerfile
```

-	Layers:
	-	`sha256:771e4e09858af82c128c83ca9b9200cf5561b478296733bb5151b01eaee52197`  
		Last Modified: Wed, 24 Jun 2026 02:18:01 GMT  
		Size: 2.4 MB (2376902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c6655fd727a5d3689f2cb3cbae607fc075b6d9619a3ce4ef362c79e05ecd9cd`  
		Last Modified: Wed, 24 Jun 2026 02:18:01 GMT  
		Size: 25.3 KB (25284 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; arm variant v7

```console
$ docker pull redis@sha256:0b9e56862d3f949f521bf14a76da1e9f38ba374a2d3eb427c9688730f267b28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33742200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95d4e77daa4ba77980992fd844ffbe8f729976c8c5517051dcd357f1198bf70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:19:41 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 24 Jun 2026 02:19:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:20:26 GMT
ENV REDIS_VERSION=6.2.22
# Wed, 24 Jun 2026 02:20:26 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz
# Wed, 24 Jun 2026 02:20:26 GMT
ARG REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
# Wed, 24 Jun 2026 02:20:26 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 24 Jun 2026 02:20:26 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 24 Jun 2026 02:20:26 GMT
VOLUME [/data]
# Wed, 24 Jun 2026 02:20:26 GMT
WORKDIR /data
# Wed, 24 Jun 2026 02:20:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:20:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:20:26 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 24 Jun 2026 02:20:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a250416f93fd423268d9bdb16c35f6bd625389b859f398551b4869a5a4c59a`  
		Last Modified: Wed, 24 Jun 2026 02:20:33 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fd4bcc020996af7f34dde60d700f8685e7b4c2307b9ce8afd73f0cff178603`  
		Last Modified: Wed, 24 Jun 2026 02:20:33 GMT  
		Size: 872.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3acc98e54e500ee7efe858b3a982b70385639d57575a623e139297cb5878d4`  
		Last Modified: Wed, 24 Jun 2026 02:20:34 GMT  
		Size: 9.8 MB (9794963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90599dc3968964b7e0b9fe0b7b9676d75e1b285885962a3e6a9e744e6ff689f`  
		Last Modified: Wed, 24 Jun 2026 02:20:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2031fa821cf4bf024b789e6765449b6436c652a1bc66497abcb054f5186f62da`  
		Last Modified: Wed, 24 Jun 2026 02:20:34 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:d7740db1a67a8d5c34856acbdbed38c84e2511768a24bf439f172ce5ae8bfb0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8847b4cd23da12dd5f96a6c5ae9e2caf3e124536c20dd1a1596122f21603f1e`

```dockerfile
```

-	Layers:
	-	`sha256:7a217d744a69e60e034093cda961c07f0d019aab966404237276c280bdd2dc97`  
		Last Modified: Wed, 24 Jun 2026 02:20:33 GMT  
		Size: 2.4 MB (2375319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7aee638839a286332d21a0796e1c8fdf4922a4af24fdf0b2c327ca2cafedf2da`  
		Last Modified: Wed, 24 Jun 2026 02:20:33 GMT  
		Size: 25.3 KB (25280 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:3c12f9cdd6c2d45dd0dd9800c9846548f16b9dc5e2beca962f94dbe1a816e258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38566424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32c2bcd37392e8deabea28d85d87353cd646cec6ebba4735f88376e93b2e23f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:37:31 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 24 Jun 2026 01:37:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:38:09 GMT
ENV REDIS_VERSION=6.2.22
# Wed, 24 Jun 2026 01:38:09 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz
# Wed, 24 Jun 2026 01:38:09 GMT
ARG REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
# Wed, 24 Jun 2026 01:38:09 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 24 Jun 2026 01:38:10 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 24 Jun 2026 01:38:10 GMT
VOLUME [/data]
# Wed, 24 Jun 2026 01:38:10 GMT
WORKDIR /data
# Wed, 24 Jun 2026 01:38:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 01:38:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:38:10 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 24 Jun 2026 01:38:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984219ac6e7991eddd2f6e5ca0cdcf3b25484c054177094719516446d673d899`  
		Last Modified: Wed, 24 Jun 2026 01:38:17 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93bbfe32c66c8eba893cbfb076c630a646068d96d83d2b7847f0fc490e7ec02`  
		Last Modified: Wed, 24 Jun 2026 01:38:17 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5133946beb3f092e00f9959dfdada9c844b0c6555f613d60cd750f0ebc0fa4b`  
		Last Modified: Wed, 24 Jun 2026 01:38:17 GMT  
		Size: 10.4 MB (10441301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c4491b96632e6f439d32cefb589bdd371bd206e87243567bfef1eaa872e187`  
		Last Modified: Wed, 24 Jun 2026 01:38:17 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf1710b349233e88929428c98da1a6284742d07b621e0e86baea9388fa78266`  
		Last Modified: Wed, 24 Jun 2026 01:38:18 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:4fa1a3caedd1b0fa93bf5768b6ae7d2e34de01f03fd04b6b75e55434d24d63c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7ad72d1584cdada2ce59ab3dd70dfb4e39c5724bb851ab74bd0bf4c1f0a23c`

```dockerfile
```

-	Layers:
	-	`sha256:f04bc126377524b1f6fef30d70d4480470e5406d52c74c64027a24fccb49177a`  
		Last Modified: Wed, 24 Jun 2026 01:38:17 GMT  
		Size: 2.4 MB (2373363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c344700a8cf9e4227982e2956f8de0f67d8a398f8945b55ad53522baf0bce6ea`  
		Last Modified: Wed, 24 Jun 2026 01:38:16 GMT  
		Size: 25.3 KB (25321 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; 386

```console
$ docker pull redis@sha256:58fa793019c3e98faad3bc595969abed6e0602cfd8388225345b529d69127b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39457461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc76be5c2919361b1ec4374faa277798b020546adb6b02152c92f618ae58c481`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:47 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 24 Jun 2026 01:41:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:43:39 GMT
ENV REDIS_VERSION=6.2.22
# Wed, 24 Jun 2026 01:43:39 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz
# Wed, 24 Jun 2026 01:43:39 GMT
ARG REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
# Wed, 24 Jun 2026 01:43:39 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 24 Jun 2026 01:43:39 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 24 Jun 2026 01:43:39 GMT
VOLUME [/data]
# Wed, 24 Jun 2026 01:43:39 GMT
WORKDIR /data
# Wed, 24 Jun 2026 01:43:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 01:43:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 01:43:39 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 24 Jun 2026 01:43:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:df519b11ac99d8e2d452cbd55f824e658d0b86f649745abaaf8cbe33e2736a30`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 29.2 MB (29225809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4eef720eb589e9f44d4ff35b972677f92bbdd919b9b9f657cf786a2a987e1c`  
		Last Modified: Wed, 24 Jun 2026 01:42:53 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329b994ea6a803ac799476d256539b658ff2a78e7a8cc146fec006c3de268a03`  
		Last Modified: Wed, 24 Jun 2026 01:42:53 GMT  
		Size: 869.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a1d54a0b1b7e4495a59d344d95970dafada6d00990b20982add0b6c1c4a9bd`  
		Last Modified: Wed, 24 Jun 2026 01:43:46 GMT  
		Size: 10.2 MB (10228950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bfee56b421ace67b19cbebf9b43fa96cf51076771f90ca57018b23735fe3588`  
		Last Modified: Wed, 24 Jun 2026 01:43:46 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ba65631b7532b4b703320571dfa7fae56e67df4bb98b72ab31b674b15eb9c7`  
		Last Modified: Wed, 24 Jun 2026 01:43:46 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:29161461fb2704f9b85711433673e51c80c80201aa3e4074fd7f1c9958072403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2395356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64baa77e8e4374eb8a95d2659a09a02a092d3ec63350e996f32101696c967486`

```dockerfile
```

-	Layers:
	-	`sha256:b2dca416c1d1b095212d25c689b0efbe1e746b0770a9ba396166f0fc7fbe1a35`  
		Last Modified: Wed, 24 Jun 2026 01:43:46 GMT  
		Size: 2.4 MB (2370255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e55fc074119935e784b5b29cd2f9b2eb975388becc3e2314db9449423ff89e1`  
		Last Modified: Wed, 24 Jun 2026 01:43:45 GMT  
		Size: 25.1 KB (25101 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; mips64le

```console
$ docker pull redis@sha256:595d2d0f4a5dfe90fc7efceff807c9fa93e1992020ed3a88f26f539bcc68b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (38952436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdde5d4fa218ea0fe7c1af9b32ec5674037935e7b421f95d715db5d51d3a63d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 13:37:01 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 24 Jun 2026 13:37:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 14:02:27 GMT
ENV REDIS_VERSION=6.2.22
# Wed, 24 Jun 2026 14:02:27 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz
# Wed, 24 Jun 2026 14:02:27 GMT
ARG REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
# Wed, 24 Jun 2026 14:02:27 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 24 Jun 2026 14:02:29 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 24 Jun 2026 14:02:29 GMT
VOLUME [/data]
# Wed, 24 Jun 2026 14:02:30 GMT
WORKDIR /data
# Wed, 24 Jun 2026 14:02:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 14:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 14:02:31 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 24 Jun 2026 14:02:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e3e59e5d9fba86ba9cccde17de0c09e1a6250f5fd1ae881c8b925031848b7a5d`  
		Last Modified: Wed, 24 Jun 2026 00:27:28 GMT  
		Size: 28.5 MB (28528885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306fa3079ce25ae05d627f4a0ffea703cfc9ae3197334fcbdf4919938611a27f`  
		Last Modified: Wed, 24 Jun 2026 13:44:00 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0311b0dbe76ff37ad781e72690522306933aaf177c4992a2dea8af0ba1681a13`  
		Last Modified: Wed, 24 Jun 2026 13:44:00 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a9f6fe853da486d840dc55c65c1e0c1736330302478e4b6c396be0b8f0d37d`  
		Last Modified: Wed, 24 Jun 2026 14:02:57 GMT  
		Size: 10.4 MB (10420843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d51f86aea4f62ad0abfa853b320b3a28cf6f89ce17dfc75bc99a42579963e2`  
		Last Modified: Wed, 24 Jun 2026 14:02:56 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5caa1a5245a84cb460f1d36ac6ecdab5456477c52c8a6103e4a68f6f3bb42b`  
		Last Modified: Wed, 24 Jun 2026 14:02:56 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:7bc3b43f8a68fc79ebc4f7fb1eb1651cf6f2249e753debf03800152cedc5eba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd70daae91fda8c69a3f790196f97910a5f16720d24c079e0a2dbe6c23ba236`

```dockerfile
```

-	Layers:
	-	`sha256:a19f80b0dd67caa53541fbbbc21ab3ae740e126d1afe3f80bb7dea834497de88`  
		Last Modified: Wed, 24 Jun 2026 14:02:57 GMT  
		Size: 25.0 KB (25027 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; ppc64le

```console
$ docker pull redis@sha256:90a1000b394fb172eeb84c811db3316a5db3dc1d0a9c13bbfeb89c3fddf09007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43429144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cb655fd005498557899b03bd68c6504fbc706b48bf11cc173b7a6ba717850f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 03:18:52 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 24 Jun 2026 03:18:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:24:34 GMT
ENV REDIS_VERSION=6.2.22
# Wed, 24 Jun 2026 03:24:34 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz
# Wed, 24 Jun 2026 03:24:34 GMT
ARG REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
# Wed, 24 Jun 2026 03:24:34 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 24 Jun 2026 03:24:34 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 24 Jun 2026 03:24:34 GMT
VOLUME [/data]
# Wed, 24 Jun 2026 03:24:35 GMT
WORKDIR /data
# Wed, 24 Jun 2026 03:24:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 03:24:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 03:24:35 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 24 Jun 2026 03:24:35 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca0fb7bd82c76f50de1e02447d8e823f3fe7eb70225eceb4e2252cb16cdeb39`  
		Last Modified: Wed, 24 Jun 2026 03:21:05 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f733f45e548a3e62d7939916c5013ee014bfabfe2162eca64dc1c18664d5e1d6`  
		Last Modified: Wed, 24 Jun 2026 03:21:05 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0609b9a49498b2b665fe5c014c98bc920580e933db9c105df6eaa238ad96466`  
		Last Modified: Wed, 24 Jun 2026 03:24:52 GMT  
		Size: 11.3 MB (11344460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db76e2d7fc947f6255d943dbabb7f9e06f54649b2b3c7bc5e45460e29a3f779b`  
		Last Modified: Wed, 24 Jun 2026 03:24:52 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b2dd1793a7bb33e49fe5e2b20f4349af56821b3ab4c8a66bccad7f3296fabe`  
		Last Modified: Wed, 24 Jun 2026 03:24:52 GMT  
		Size: 602.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:a33cd6aac07faedd940e626f85fcf81aab1e24606e4bd23f3bd2e4c066371feb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aac0104e63986aa34b8d165af0030e5312725968a0e7323ff733da2df8b8930`

```dockerfile
```

-	Layers:
	-	`sha256:012647c095721e68a3b7a7745be94ecee915e653241dd6b00e99ac5ea19073b3`  
		Last Modified: Wed, 24 Jun 2026 03:24:52 GMT  
		Size: 2.4 MB (2377476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d2c495c8f7349f3d227c7af6ac5c10f7cf3f0b4c84869679c62959d8157e208`  
		Last Modified: Wed, 24 Jun 2026 03:24:52 GMT  
		Size: 25.2 KB (25211 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; s390x

```console
$ docker pull redis@sha256:a872d4bc5360a10cbd946fb4fe81c44bdbc5caee91f68c8594606706064493f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37357641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f6a55e378e5af457af8b934adf6c5f251e9cbfb343667f1490557a1b1862ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:43:01 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 24 Jun 2026 02:43:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:45:45 GMT
ENV REDIS_VERSION=6.2.22
# Wed, 24 Jun 2026 02:45:45 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz
# Wed, 24 Jun 2026 02:45:45 GMT
ARG REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
# Wed, 24 Jun 2026 02:45:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 24 Jun 2026 02:45:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.22.tar.gz REDIS_DOWNLOAD_SHA=224a32db84ce3be2bf432ce7c78ac858df7851bff1e089e71e15dc442be9e95b
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 24 Jun 2026 02:45:45 GMT
VOLUME [/data]
# Wed, 24 Jun 2026 02:45:45 GMT
WORKDIR /data
# Wed, 24 Jun 2026 02:45:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jun 2026 02:45:46 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 24 Jun 2026 02:45:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfaf77fe3854db47f75b4141dff8abb2ed2555644236afd08266dbb49eae2878`  
		Last Modified: Wed, 24 Jun 2026 02:44:34 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b1f4776b4df0c0d1ccd4bb902673fe8127e34f41de1a175f371fb197a16f74`  
		Last Modified: Wed, 24 Jun 2026 02:44:34 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f448f5248706f9a6b99ce1f9fde58b1f53b17cd37eaf46fad493aa65bc1dd9`  
		Last Modified: Wed, 24 Jun 2026 02:45:57 GMT  
		Size: 10.5 MB (10461351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:277aaab3ba3eb56eb38ee6b4db1d30ba61a78766272cd82a64e405fed94bb3d9`  
		Last Modified: Wed, 24 Jun 2026 02:45:57 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6f31dadd1220b1eccc18a3362a5f094f3a6c92c474bdd031ecfdcf984b9192`  
		Last Modified: Wed, 24 Jun 2026 02:45:57 GMT  
		Size: 600.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:48884deae6ba649d96208ee64494eb658a30897f3d5178327b8c9675b1f0e93f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2395063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512bb37f71e3fec3ed0e20933bd141bf28a1593736af1995fe75480b0c015201`

```dockerfile
```

-	Layers:
	-	`sha256:ee7f8cb7ba2dc30f73615b627ef885007b287f2be21c7ca0be2b87d3408615b6`  
		Last Modified: Wed, 24 Jun 2026 02:45:57 GMT  
		Size: 2.4 MB (2369914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cff52173467b328a7c7bafa1ad570b5dd3751e73c334ff72140d5ee39e87267`  
		Last Modified: Wed, 24 Jun 2026 02:45:57 GMT  
		Size: 25.1 KB (25149 bytes)  
		MIME: application/vnd.in-toto+json
