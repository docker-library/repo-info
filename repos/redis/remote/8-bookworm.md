## `redis:8-bookworm`

```console
$ docker pull redis@sha256:709d30641c07c0a7e883908e61f8bd2f545ec1c464e9fab8df4bb36563984027
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

### `redis:8-bookworm` - linux; amd64

```console
$ docker pull redis@sha256:dfb838e40392b4142485b89a51241c635e9e04e4f30bd9d3db4dabf1c1429e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52848184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d5dfb81eeefbf92a7d5b47749f31b5216a749e8e271c8c2cb05f3f41cf1f48`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:38:49 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 00:38:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:46:32 GMT
ENV REDIS_VERSION=8.2.10
# Wed, 21 Oct 2026 00:46:32 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz
# Wed, 21 Oct 2026 00:46:32 GMT
ARG REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
# Wed, 21 Oct 2026 00:46:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 21 Oct 2026 00:46:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 00:46:32 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:46:32 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:46:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:46:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:32 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 00:46:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5abf81c6e4033580a949a29506c4f1f0efdb0caba42b1614cdbd6258a9cb9e`  
		Last Modified: Wed, 21 Oct 2026 00:46:41 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73056f4e75b193f68158a337cd241c3181f2d6f816fbecd3dc51b71b2efe727`  
		Last Modified: Wed, 21 Oct 2026 00:46:41 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970f2062a46847b79d265aff64fe68578498ab32b2c52f27fc87e9683c199186`  
		Last Modified: Wed, 21 Oct 2026 00:46:42 GMT  
		Size: 24.6 MB (24596029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3125f3e9047fac8280dd6232404b09ed6b87427b91b126317f3dedff9932c72`  
		Last Modified: Wed, 21 Oct 2026 00:46:41 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f998b789fcf2df043b02d984cec5fb621bc004be13d7a3a3b6dc26bc3cf133ef`  
		Last Modified: Wed, 21 Oct 2026 00:46:42 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:6d8d57433aef28a05d6c663600dbdb33f5c3d101dbe8abcb43c02fd68854ef9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7faccb49d4740912639bbc985728d75c9d190735d27878c91789ac68df496da9`

```dockerfile
```

-	Layers:
	-	`sha256:78f4b52ed37a389ce6cbb61b51ecc2a223f7d1e60260ef44c07865d842f95d11`  
		Last Modified: Wed, 21 Oct 2026 00:46:41 GMT  
		Size: 2.4 MB (2373168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b424a506aca8f6b4a5115eb11285b76eb62e00d56f9fd5ee349862ea1c244dbd`  
		Last Modified: Wed, 21 Oct 2026 00:46:41 GMT  
		Size: 27.7 KB (27724 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; arm variant v7

```console
$ docker pull redis@sha256:0961f74211905a08c05f0f88b7c359471e80046127450ac4ea750bb176c95f34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41056709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc4282e66b97a75631da61faaedd48d230f90ef8d72e464627d670c81481fdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:21:32 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 06 Oct 2026 02:21:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:22:32 GMT
ENV REDIS_VERSION=8.2.10
# Tue, 06 Oct 2026 02:22:32 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz
# Tue, 06 Oct 2026 02:22:32 GMT
ARG REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
# Tue, 06 Oct 2026 02:22:32 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 06 Oct 2026 02:22:33 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 06 Oct 2026 02:22:33 GMT
VOLUME [/data]
# Tue, 06 Oct 2026 02:22:33 GMT
WORKDIR /data
# Tue, 06 Oct 2026 02:22:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:22:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:22:33 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 06 Oct 2026 02:22:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb7588bdfb9d816f8a8171a19818c5478d71a3a52efd124d0ebf5d9652168eb`  
		Last Modified: Tue, 06 Oct 2026 02:22:40 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60cc870ec5d5fa6940dcd5df7186741549cae73d591c668e8a845ee50819d8c`  
		Last Modified: Tue, 06 Oct 2026 02:22:40 GMT  
		Size: 875.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1adcb6b6af66ca6c42b6492a76bbdb5230feb91878d3d0f2fe30f95c8808cd`  
		Last Modified: Tue, 06 Oct 2026 02:22:40 GMT  
		Size: 17.1 MB (17095924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0abbea953c798c6a36dd83b3d26e921c16153d10d8ada914e15cc3faa41313`  
		Last Modified: Tue, 06 Oct 2026 02:22:40 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e158e78c4f643f5b5680e2f26514039cbc5bbff2a984096bc963873666bb0d0`  
		Last Modified: Tue, 06 Oct 2026 02:22:41 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:20303fee399c6febc4bf957d40204377b3f4399a25e1ae78b33ae647525cdd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a88cd0c137464d21a604586f74f4c6314444dd47473886ea325c3c148331489c`

```dockerfile
```

-	Layers:
	-	`sha256:39cd809176e14f5a89e0f6b83f1bdfdefe9698ad813bceec8d9e6416836ebef9`  
		Last Modified: Tue, 06 Oct 2026 02:22:40 GMT  
		Size: 2.4 MB (2375405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c078f451b5d08b727dbc5504cc01411ae4bacaf956f1081cd43bd6f1038bf218`  
		Last Modified: Tue, 06 Oct 2026 02:22:40 GMT  
		Size: 27.9 KB (27859 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:b9fe60acc13c30e9a4ed29b9022ceea7b468fa2f032a173787a55bb8f8998f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52303073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16cbfd2e088be0a00f2546f428d2e9c48721adad035f422509faa630ab87096f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:42:16 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 00:42:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENV REDIS_VERSION=8.2.10
# Wed, 21 Oct 2026 00:48:50 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz
# Wed, 21 Oct 2026 00:48:50 GMT
ARG REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
# Wed, 21 Oct 2026 00:48:50 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
VOLUME [/data]
# Wed, 21 Oct 2026 00:48:50 GMT
WORKDIR /data
# Wed, 21 Oct 2026 00:48:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:48:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:48:50 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 21 Oct 2026 00:48:50 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf78435acad52e8a30d9dff9aaf7b1726b106dacf26b8f278302319f18f985a`  
		Last Modified: Wed, 21 Oct 2026 00:43:11 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f96b697119f4e22b96949ec2e5dd7c326ea44ae0c45bd98f80f934e21238932e`  
		Last Modified: Wed, 21 Oct 2026 00:43:11 GMT  
		Size: 876.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3c80acba11d6881a6842fe033346435a7dc8a2e5dfee5a3a6323adad4accc9`  
		Last Modified: Wed, 21 Oct 2026 00:49:00 GMT  
		Size: 24.2 MB (24160434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab84c5402142855eec050a04f00274ce0a836bde7a7daad983f439c654e2080`  
		Last Modified: Wed, 21 Oct 2026 00:48:59 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a18fa71f3b71baf57ff61d887814e20b6e226c4c09d7abc3dd5ade0c2d703e`  
		Last Modified: Wed, 21 Oct 2026 00:48:59 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:3b08c8ae9f93bb58bb06a2648c68ed4018d63a5cbecb5a160c90068ddd78208c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a697ec2cdd8e979012a413197104944e89560556535b3248ffebbb7e038981c`

```dockerfile
```

-	Layers:
	-	`sha256:3a3d08ea4693d511fe722c45ac048655fecb383540a15c3b5b23ba43045ce8d1`  
		Last Modified: Wed, 21 Oct 2026 00:48:59 GMT  
		Size: 2.4 MB (2373449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28eb0a9b84344367eaad63dce5a209cc28d9a979af530069508bdb02deeaeaa4`  
		Last Modified: Wed, 21 Oct 2026 00:48:59 GMT  
		Size: 27.9 KB (27897 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; 386

```console
$ docker pull redis@sha256:b78dccb7e18d6f876d2356e7e3d466d9a1f1ebc4aedb0d5bccfef9ae5ef8b204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46844390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c46fa762708d3f91b8ba6a17b299632db7e6dbdfbce624afa74afac8982a825`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:33 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 06 Oct 2026 01:44:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:45:39 GMT
ENV REDIS_VERSION=8.2.10
# Tue, 06 Oct 2026 01:45:39 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz
# Tue, 06 Oct 2026 01:45:39 GMT
ARG REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
# Tue, 06 Oct 2026 01:45:39 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 06 Oct 2026 01:45:39 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 06 Oct 2026 01:45:39 GMT
VOLUME [/data]
# Tue, 06 Oct 2026 01:45:39 GMT
WORKDIR /data
# Tue, 06 Oct 2026 01:45:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:45:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:39 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 06 Oct 2026 01:45:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2edfc5268e2dbd02f252bfba185298a9774668c0853e78d35a4af91c45a2158a`  
		Last Modified: Tue, 06 Oct 2026 01:45:46 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40b4a6670b3926f17fa30e2e6db01cf5937c1a3210d187f7e7c503452df6e87`  
		Last Modified: Tue, 06 Oct 2026 01:45:46 GMT  
		Size: 871.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8590e70ef221784f1e3bbc0f622b586e4a303d1d5d0ed74a1699210dd6a78f79`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 17.6 MB (17600806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3ef92797f41720e753719fc23b6a777cd3c8e390a96faf74b565849460fd40`  
		Last Modified: Tue, 06 Oct 2026 01:45:46 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070447bd9c21133fb9bd9f68a48b407d40d765e21798f5659fa6903d8ea4bb47`  
		Last Modified: Tue, 06 Oct 2026 01:45:47 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:c28002289d09a676117729cd970b2b2ef5207a02a14376c31c08a43a18ab134c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54efd4d03b817a56d6084bf1f403bde130a0248bacb45eb46298824ea9e7ea45`

```dockerfile
```

-	Layers:
	-	`sha256:82b4d9b0e0a3bcee2ea259931cacde3709141bfa2d44c03ddf6093c781009a7a`  
		Last Modified: Tue, 06 Oct 2026 01:45:46 GMT  
		Size: 2.4 MB (2370341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b76eb83caa8a7584b4a9cc10de91e8e552a70c3a155edafe04495a4b30c590c`  
		Last Modified: Tue, 06 Oct 2026 01:45:46 GMT  
		Size: 27.7 KB (27675 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; ppc64le

```console
$ docker pull redis@sha256:3cdbbafc42a4f5674be03a3ba93f328d857d0a3976352df11fe1917ed73fd9d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51399817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2bc4a8475630acdf319d7f3c8e506ca946286e2d9a218c8126a75ea512ac486`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:31:34 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Tue, 06 Oct 2026 04:31:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:34:07 GMT
ENV REDIS_VERSION=8.2.10
# Tue, 06 Oct 2026 04:34:07 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz
# Tue, 06 Oct 2026 04:34:07 GMT
ARG REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
# Tue, 06 Oct 2026 04:34:07 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Tue, 06 Oct 2026 04:34:08 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.10.tar.gz REDIS_DOWNLOAD_SHA=d6de0ec3bce8eeba13ecbd7478dd56fb87a4bbe8ec832dd876892a86ac1a55ec
RUN mkdir /data && chown redis:redis /data # buildkit
# Tue, 06 Oct 2026 04:34:08 GMT
VOLUME [/data]
# Tue, 06 Oct 2026 04:34:08 GMT
WORKDIR /data
# Tue, 06 Oct 2026 04:34:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:34:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:34:10 GMT
EXPOSE map[6379/tcp:{}]
# Tue, 06 Oct 2026 04:34:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4688d276b95cda5f12087c0f368e3258e0cdca6cdd46f9c95892a07c4d2d0a`  
		Last Modified: Tue, 06 Oct 2026 04:34:27 GMT  
		Size: 1.1 KB (1105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21fa28fbe7b13e2355c022431a47b8a4b2af8007fb330873e59c12558c01a0e4`  
		Last Modified: Tue, 06 Oct 2026 04:34:27 GMT  
		Size: 874.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ef1a86914a3d9fc9e565cb608ced257ca2b8406138707361bda30b144f457f`  
		Last Modified: Tue, 06 Oct 2026 04:34:28 GMT  
		Size: 19.3 MB (19303167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ef6a7d46cf248d5443bd69e3a3fb1bb35e36e40d64c3ad5da1b02349b59187`  
		Last Modified: Tue, 06 Oct 2026 04:34:27 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5e33de761b7891a7b20e8511351ed826d119e9bdf3004b369a29592c7d77dd`  
		Last Modified: Tue, 06 Oct 2026 04:34:29 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:d66b409e25f853cfaf62c46b261340b99e2e211f5b810dba4458237c29b00bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2405348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77eb8f8a4bda8097a277d83e5fd252f41b538c08cbb417c9ca213f9f27b87bd`

```dockerfile
```

-	Layers:
	-	`sha256:eec8599fb3f9b6a30a6141b4f714f8223c176a4f65c929c6e28c880bdd53df4a`  
		Last Modified: Tue, 06 Oct 2026 04:34:28 GMT  
		Size: 2.4 MB (2377562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4c38355765581428a52be6e15d2ef4fabb5a4afe3ee3ec4d0ade52be8d5c3f`  
		Last Modified: Tue, 06 Oct 2026 04:34:27 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json
