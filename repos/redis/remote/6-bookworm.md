## `redis:6-bookworm`

```console
$ docker pull redis@sha256:785eeaeeaa4785572a3ca3a4257d3ddd2b5bb40be457fdc9afa6b4d855b18c25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `redis:6-bookworm` - linux; amd64

```console
$ docker pull redis@sha256:7adef2fce425567d6f1573ad43987e7b2c94132eed61c6dea3e88a29ffb11621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38751970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2bb46cd4fe8648c5e675ebe8129325b7a6ef10208df6f218a4b483b5b82ec0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:31:18 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 07:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:31:55 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 07:31:55 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 07:31:55 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 07:31:55 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Thu, 05 Nov 2026 07:31:55 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 07:31:55 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 07:31:55 GMT
WORKDIR /data
# Thu, 05 Nov 2026 07:31:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:31:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:31:55 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 07:31:55 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1edf9125771ffe4730bf8b923a1d3f8ca720aa1871f371fe1bb66df9cdc10d5`  
		Last Modified: Thu, 05 Nov 2026 07:32:02 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285d4d6523a152b2a496e2ff0823c6786c2ba7ad91fd0f69656ee1a8f5a62153`  
		Last Modified: Thu, 05 Nov 2026 07:32:02 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc7f3328a93c6cb29fd5a1ecec1e10251ffa0059d497ba776610265149f50c30`  
		Last Modified: Thu, 05 Nov 2026 07:32:02 GMT  
		Size: 10.5 MB (10501283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69e7c94f44b77503cc6f852a7569e1f23261118b405e06fb94b6941dbbec295`  
		Last Modified: Thu, 05 Nov 2026 07:32:02 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81814356311ab072681187e3c44e1e32571e6bff899352080d5039b5a21df28d`  
		Last Modified: Thu, 05 Nov 2026 07:32:03 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:728928c3d3f52a7df0c2bfd3fecc01b2e5a91b1e6dd7ba659fcbd139847546cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfed32bd6da8cb6c214369289b5f0728509c8b57059bc783edfa74a0d4cafa4`

```dockerfile
```

-	Layers:
	-	`sha256:1bc75785971f7c3c892b6478bdc6fa1d9377089e1d83487cf41bb0d03f3cbbcb`  
		Last Modified: Thu, 05 Nov 2026 07:32:02 GMT  
		Size: 2.4 MB (2373154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63bf043b1f72db11ec0409ad21ae74282e6da1c92b6dab216ba90ca60cfc09fc`  
		Last Modified: Thu, 05 Nov 2026 07:32:02 GMT  
		Size: 25.1 KB (25149 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; arm variant v7

```console
$ docker pull redis@sha256:77a0268bb374c5043b0a859093c495ff0e1a7aafb54f36fa5decefee88c46dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33763963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1801dad3b215dd650da500db348f302dfdece3092d536d7458782816d475c03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:17:06 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 08:17:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:17:51 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 08:17:51 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 08:17:51 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 08:17:51 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Thu, 05 Nov 2026 08:17:51 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 08:17:51 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 08:17:51 GMT
WORKDIR /data
# Thu, 05 Nov 2026 08:17:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:17:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:17:51 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 08:17:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f24477e10665825e0165e43d3662d941801bddf400148f5dcdc378f19342561`  
		Last Modified: Thu, 05 Nov 2026 08:17:58 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d621286b84f025ef62c99e65f7c1a46794ee4811f88a6969a478fc8b052696f0`  
		Last Modified: Thu, 05 Nov 2026 08:17:58 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894072e2e39e182cb6e43222311e3b7ea0c025b31c0a1cdbeab47965bfd078dd`  
		Last Modified: Thu, 05 Nov 2026 08:17:58 GMT  
		Size: 9.8 MB (9799903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbee8b1a83f6d824bb46d7f47f797bed05b3f3074f44fc9e6531c5324bca7e8`  
		Last Modified: Thu, 05 Nov 2026 08:17:58 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71133b67ba43452bac243ef24429eb8b1bee4d40a06da6799c9ead42481ac501`  
		Last Modified: Thu, 05 Nov 2026 08:17:59 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:2ef228afc15b0dff416b43efc5bc07fb3dc5673f2729264685fe38cd0680f268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf94fbe1cd28ea0822eb4cca8708e01fc88a54a0bbe662cd2a8c2a17e97f19e`

```dockerfile
```

-	Layers:
	-	`sha256:f0045e971430aff287c5ac94d10d30f5217424b246a6143178ff1b04bb60129c`  
		Last Modified: Thu, 05 Nov 2026 08:17:58 GMT  
		Size: 2.4 MB (2375391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96e3b35cb310f54443e3e8d4f47e6dc6c5b03bbfb79c9e020c08eadc505fd803`  
		Last Modified: Thu, 05 Nov 2026 08:17:58 GMT  
		Size: 25.3 KB (25280 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:5511c3ed6a67c00f8e184814373ffbf4bf78df05d61fc640296561d560927635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38590818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527c89a3327800594a39c8cd42de4d44f42f46db814bae0bbf32ec74fde82418`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:34:45 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 07:34:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:35:27 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 07:35:27 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 07:35:27 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 07:35:27 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Thu, 05 Nov 2026 07:35:27 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 07:35:27 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 07:35:27 GMT
WORKDIR /data
# Thu, 05 Nov 2026 07:35:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:35:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:35:27 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 07:35:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91f06746237e89bf8c01a337b4996a89a900d849477b4c67ebd0f8b74f0530e`  
		Last Modified: Thu, 05 Nov 2026 07:35:34 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d9b4818bcc4cbc6aa17765fc1070cbfc5af381c1e60d465f0210f35c3eceaa2`  
		Last Modified: Thu, 05 Nov 2026 07:35:34 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0402f9faf5669134ed31cc63abbd8b32b3d68f8d1c960dab6ab9ed619e01de25`  
		Last Modified: Thu, 05 Nov 2026 07:35:34 GMT  
		Size: 10.4 MB (10443757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5191071f0ac0dd13f4101af3acf2bf3f35427bd254446368b5359fc1b672b878`  
		Last Modified: Thu, 05 Nov 2026 07:35:34 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22c19dc81fca9c59b12b30895d7a5bca6a4989ceabb06c9b634fd4288fdc19a`  
		Last Modified: Thu, 05 Nov 2026 07:35:35 GMT  
		Size: 599.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:643f24530bd57f9ccd75f1ce1225d6fcc42146bfa7a19dc3e76ba85126b13722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da5f7aa13058a35faccb5a9e6aa0626e8be2ab9a1459f08cdea75efc45a9a00`

```dockerfile
```

-	Layers:
	-	`sha256:168b2d9cecad24ea755d838de83e233ea43b55404025ef23e49c84132f5a1aa1`  
		Last Modified: Thu, 05 Nov 2026 07:35:34 GMT  
		Size: 2.4 MB (2373435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99386204b6b83837e8184eb13c8d84ea3c85921f4c65553eb060cc963977e236`  
		Last Modified: Thu, 05 Nov 2026 07:35:34 GMT  
		Size: 25.3 KB (25322 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; 386

```console
$ docker pull redis@sha256:7deebe6525409be6405b7d2458c503c6fed2f1395053e88618509d0633ac5584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39473974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e388a666439069c123095d87a0ac22693c1c40912a6662c51731a885c52e95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:40:25 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 07:40:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:10 GMT
ENV REDIS_VERSION=6.2.24
# Thu, 05 Nov 2026 07:41:10 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Thu, 05 Nov 2026 07:41:10 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Thu, 05 Nov 2026 07:41:10 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Thu, 05 Nov 2026 07:41:10 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 07:41:10 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 07:41:10 GMT
WORKDIR /data
# Thu, 05 Nov 2026 07:41:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:41:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:41:10 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 07:41:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb259cc97a19064ca2f9e9e105101b7292623a7d6eaf193e0cf61e14337e96f`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264900fe5eef221e8b19de30d36435f63a8e8d6d5df5af217c9fbc43591dbd00`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 872.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47c4ae1866603c0998203f34e04388ab513e9c281cb211134968a4495d9cde9`  
		Last Modified: Thu, 05 Nov 2026 07:41:18 GMT  
		Size: 10.2 MB (10232057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6caef08980044fe92bb3974d98fbcff1646cf4ee93fdaf1595ece8bd03ced4`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586b02e1649f1223b2c927590b79475fad948dc4dc6d940fe146500da837cb8c`  
		Last Modified: Thu, 05 Nov 2026 07:41:19 GMT  
		Size: 601.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:b6845ab91d4666f798095565eee3be1970678c79cb3ea81b0f09dbdba75bcfa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2395428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb85bf902b1426174f4eeecc0a253a4bbdad09bf03188d161c9e9b19caba4ed`

```dockerfile
```

-	Layers:
	-	`sha256:20914f181f97e4ecda1b3d6440f8f0af5c325964404aa82b0d859bda56a8511a`  
		Last Modified: Thu, 05 Nov 2026 07:41:20 GMT  
		Size: 2.4 MB (2370327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22776c6184b652920317941c5e8da5d5f3b406041a6597b03dc5ddf13580924d`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 25.1 KB (25101 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:6-bookworm` - linux; ppc64le

```console
$ docker pull redis@sha256:129f5abd382acdba28540c3a520fe6919513862c65e459195f76682490a40364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43444623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef7da6623a3bceb6b4b9a61455f29394a9edee2e3eff5ed2a56da2c1ad3c1c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 04:12:48 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 28 Oct 2026 04:12:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:18:02 GMT
ENV REDIS_VERSION=6.2.24
# Wed, 28 Oct 2026 04:18:02 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz
# Wed, 28 Oct 2026 04:18:02 GMT
ARG REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
# Wed, 28 Oct 2026 04:18:02 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		libc6-dev 		libssl-dev 		make 	; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 28 Oct 2026 04:18:02 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/6.2.24.tar.gz REDIS_DOWNLOAD_SHA=4840108eb0182fe7ea59f4f4bcb47b36848372591d3115bf02c2a2b739655116
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 28 Oct 2026 04:18:02 GMT
VOLUME [/data]
# Wed, 28 Oct 2026 04:18:03 GMT
WORKDIR /data
# Wed, 28 Oct 2026 04:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 04:18:03 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 28 Oct 2026 04:18:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3413857b11a7784d53786dfb88ba4bcfdc3fdf419a908eac21b56b24a554f31`  
		Last Modified: Wed, 28 Oct 2026 04:14:45 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ecfb8da4761e54131b2c434d073044b8bee90d3dbc460c0c7c07bfcc201271`  
		Last Modified: Wed, 28 Oct 2026 04:14:44 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808357c9ab9c95ef0636833daba46e9eeb2add4fdfa257e6c0993659b96e7dad`  
		Last Modified: Wed, 28 Oct 2026 04:18:18 GMT  
		Size: 11.3 MB (11349074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cf11269c78af26a56924f2e23d995217da7683a48a66908668b280a0df6ebf`  
		Last Modified: Wed, 28 Oct 2026 04:18:17 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:200c41129cdaf87b4c35efa775573e9164e6d2027ff4cfb44b77d9d20301f3cc`  
		Last Modified: Wed, 28 Oct 2026 04:18:18 GMT  
		Size: 603.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:6-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:87a2de2afe1137b556c1afd93e56f617d0e383fd0d313a65b943f9a78db0ad39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2584fbc1d875e7e95bb9548ee9c506267ba9287e497ed4f7bfcdda769d2388eb`

```dockerfile
```

-	Layers:
	-	`sha256:c8b0e3777018220bdcf7d07765374b2e7ab02d19a522aa548dedccb49e08d9b0`  
		Last Modified: Wed, 28 Oct 2026 04:18:18 GMT  
		Size: 2.4 MB (2377548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eacb8783fd38cc4c357318233134efb0e3799024a79ea99900d9b94c0db8316`  
		Last Modified: Wed, 28 Oct 2026 04:18:17 GMT  
		Size: 25.2 KB (25211 bytes)  
		MIME: application/vnd.in-toto+json
