## `redis:8-bookworm`

```console
$ docker pull redis@sha256:d7bb2f262c1e26b9bd0532f808bb493d7a1f2ad07674876cff050361be805f75
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
$ docker pull redis@sha256:3f2b4727fbce196fc6d8f2f265334fe6e482b3afa843dc85495aade926b3403f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.5 MB (53539571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3322e3790635a217e616cf49d7720cd4d561b4b09764230ce21fcc68a26d66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 16:34:42 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:34:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:41:42 GMT
ENV REDIS_VERSION=8.2.11
# Mon, 26 Oct 2026 16:41:42 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Mon, 26 Oct 2026 16:41:42 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Mon, 26 Oct 2026 16:41:42 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:41:42 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:41:42 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:41:42 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:41:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:41:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:41:42 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:41:42 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a9cdfcc1aa7e2995f70ed1587820c30e56260405bf0c9ef88ebfa8506fcba3`  
		Last Modified: Mon, 26 Oct 2026 16:41:50 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ead9d230747a2d9be2ef380bc1ca6fdad772f0a8e92d6e4b6594e83f7004223`  
		Last Modified: Mon, 26 Oct 2026 16:41:51 GMT  
		Size: 688.5 KB (688463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc805744e4eb5efe2dde48abe08fd424020eb1965c89a8e3725ac5a173ce24c0`  
		Last Modified: Mon, 26 Oct 2026 16:41:51 GMT  
		Size: 24.6 MB (24599829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5972901f4493e0891efe5d50aaa7da651c1c97195a756c49050b5340e3402cd`  
		Last Modified: Mon, 26 Oct 2026 16:41:51 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004226e625c8e736ee09701a899943994c084b34c3e90cd9695158ebbbb13125`  
		Last Modified: Mon, 26 Oct 2026 16:41:52 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:d042ce697ad3c35538ace76178b51494934173e429feed3b79754232d3fae8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85af937dc73fa369eef25acc401ebb07ebed93af8a1195bff17dc550b0bfbef9`

```dockerfile
```

-	Layers:
	-	`sha256:543fd2273a3ae387ad28fbaf8a4eb00510f5b4a597649db1db0474371049136b`  
		Last Modified: Mon, 26 Oct 2026 16:41:51 GMT  
		Size: 2.4 MB (2373168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06ada90f492a551f796dd7e6405b214fe6230b7c38d0cfd060bb8b0e1b09bd46`  
		Last Modified: Mon, 26 Oct 2026 16:41:50 GMT  
		Size: 27.7 KB (27737 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; arm variant v7

```console
$ docker pull redis@sha256:2e66c08376e727727dfe6b562da45759554ed727b2db2b1699c73c30051ea2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 MB (39662680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d947ce22b597556c188f3dd7b0020c96e68af1af68ac9757f153846bf8bf4364`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 16:35:37 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:35:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:36:39 GMT
ENV REDIS_VERSION=8.2.11
# Mon, 26 Oct 2026 16:36:39 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Mon, 26 Oct 2026 16:36:39 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Mon, 26 Oct 2026 16:36:39 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:36:39 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:36:39 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:36:39 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:36:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:36:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:36:39 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:36:39 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bde5847986d197cd0192ce1e0fb18abedf546d545cdaea26a56ae627ba05407`  
		Last Modified: Mon, 26 Oct 2026 16:36:46 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb62b351b148eca4fa29c882262998b26eeffb04c5176c3ffd81e84f3796ce38`  
		Last Modified: Mon, 26 Oct 2026 16:36:47 GMT  
		Size: 688.4 KB (688425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e57ab3fd50057c39817398335d98853120f9e6ef01f56e4f7d1c6d9d74db62`  
		Last Modified: Mon, 26 Oct 2026 16:36:47 GMT  
		Size: 15.0 MB (15009429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72c9bd4f58a99f3eec1170d65571204bebc7646d1c7fa569e8e2bfbbf18dca0e`  
		Last Modified: Mon, 26 Oct 2026 16:36:47 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:602c9376cb8b573df2e0271a89f941f1315ea1c83b7fb826a51fb548f1e5c67b`  
		Last Modified: Mon, 26 Oct 2026 16:36:48 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:d84a98269024821e948705203af1f760049e33a84ff035f2001e1956d9bbd96e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7d477c0c564c7a4f02f66338bb1dc535d25398ff7a4c97343c3b4f8d36df3f`

```dockerfile
```

-	Layers:
	-	`sha256:0b81f5ecf13ebc33dd250d2594432e387b077df83c7ed5669660a8035519b3c3`  
		Last Modified: Mon, 26 Oct 2026 16:36:47 GMT  
		Size: 2.4 MB (2375405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48a80795040e87d7554d6a9098dd00375be1cecc2f74d3cc7c02f1110c908082`  
		Last Modified: Mon, 26 Oct 2026 16:36:47 GMT  
		Size: 27.9 KB (27874 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:0389f5cc741c3cabca9aa960a2d8e2dab3c29a0b829da14b816240596412b883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (52992863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab5775a6956fa90f2201f21d17bf8aaba48a00a4813819d9a58929513f14615`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 16:33:55 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:34:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:40:44 GMT
ENV REDIS_VERSION=8.2.11
# Mon, 26 Oct 2026 16:40:44 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Mon, 26 Oct 2026 16:40:44 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Mon, 26 Oct 2026 16:40:44 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:40:44 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:40:44 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:40:44 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:40:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:40:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:40:44 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:40:44 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d10e0b9dd338217d68ff48a055416d2b8b730157d7bdddf806ba9422720f59`  
		Last Modified: Mon, 26 Oct 2026 16:40:53 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce132b2463bc58d799d560b4c2d2161fad742b5780e941af821338cd3368cd1f`  
		Last Modified: Mon, 26 Oct 2026 16:40:53 GMT  
		Size: 688.5 KB (688541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b156ab4fd5bd51a0facf3a0e978c1217404647eb6efced68d0f6e1ec52bcb2`  
		Last Modified: Mon, 26 Oct 2026 16:40:54 GMT  
		Size: 24.2 MB (24162552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d275f5aa05c10e07f7cc65b08c1f6841a35c233e0eafed4db7d80aba84138778`  
		Last Modified: Mon, 26 Oct 2026 16:40:53 GMT  
		Size: 96.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e20e6de7f44ef7e5133c248c3fabb0d563084baf7dbab902374373dc0dead3f`  
		Last Modified: Mon, 26 Oct 2026 16:40:54 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:21f9e94bdacc4c6865e93c0d71f5660a035196436d91e3c00ef24996a942c50d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91bc9fda70f4c03d94dd09b73a9de734f1a9bb114989ce7aec94b81c0ce14c78`

```dockerfile
```

-	Layers:
	-	`sha256:207f48cd53ea509f4e701223118bd32b04b75e9ce59cf758ef65903d74bd6053`  
		Last Modified: Mon, 26 Oct 2026 16:40:53 GMT  
		Size: 2.4 MB (2373449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f08bc2462f5fab9afe6e1f199f71222fbf96ab96177a0582ce17213fdc56c0`  
		Last Modified: Mon, 26 Oct 2026 16:40:53 GMT  
		Size: 27.9 KB (27912 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; 386

```console
$ docker pull redis@sha256:bfec421dab47436779d0af26d566e30c5402322f415d4563de140ce9fba2a86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45111323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:111eec86960a2e45692af80198ec73618012d1dbd6d5215c0c7833a455909888`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 16:34:28 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:34:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:35:25 GMT
ENV REDIS_VERSION=8.2.11
# Mon, 26 Oct 2026 16:35:25 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Mon, 26 Oct 2026 16:35:25 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Mon, 26 Oct 2026 16:35:25 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:35:25 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:35:25 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:35:25 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:35:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:35:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:35:25 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:35:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f18bb404f18e1a55e73386e40eac6da347163fe58e54559004ef9b0d1c24e4f2`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 29.2 MB (29239245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425e4ef4fb5ca3c00867f52bd42816108ae8bb4cd83731afe6aba68d021ce15a`  
		Last Modified: Mon, 26 Oct 2026 16:35:32 GMT  
		Size: 1.1 KB (1103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45df6695b2f449cd40ba78ecebe3b8d8578a86104f3cbe17a5319e02d41fbd36`  
		Last Modified: Mon, 26 Oct 2026 16:35:32 GMT  
		Size: 688.5 KB (688523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71912489e9c293d5a9c3f2a3c370595f941c00be2d82538e93a5cda4ecd763e2`  
		Last Modified: Mon, 26 Oct 2026 16:35:33 GMT  
		Size: 15.2 MB (15180214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0834203d4544be42a55b8c0b042c822eebd32c41e736d678df760eb34f3b78`  
		Last Modified: Mon, 26 Oct 2026 16:35:32 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed1d7d3f695448467a9d5536851af3dfd0560cfee568935a80c377f5777042f`  
		Last Modified: Mon, 26 Oct 2026 16:35:33 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:7c80f3cedfcf51ae1ec35cc13b44614b026cf84976f31e738dcdfb9064ec2a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d618fe5a93b9628b759c92a1ced5088e222f2add719468bd301c54eefbbe94`

```dockerfile
```

-	Layers:
	-	`sha256:8fb7c61e9e36e25edf6569ab3a592e7d65ef9354f014a7c83258f3e49a0b8d15`  
		Last Modified: Mon, 26 Oct 2026 16:35:32 GMT  
		Size: 2.4 MB (2370341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db41594a0ec5d5baa58165f8d201c334f0fff2a68525fbf1d9c125358911ee4d`  
		Last Modified: Mon, 26 Oct 2026 16:35:32 GMT  
		Size: 27.7 KB (27691 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:8-bookworm` - linux; ppc64le

```console
$ docker pull redis@sha256:a0d60fb7833a6ccfa102836c10aa9bd3f12131b3dc44df0f62e6dcc9802c8305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48949527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b73fd972657991be18f838d19febe3a84c43db7b9516bebd03b583f187945b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 04:12:50 GMT
RUN set -eux; 	groupadd -r -g 999 redis; 	useradd -r -g redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 04:12:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 16:46:57 GMT
ENV REDIS_VERSION=8.2.11
# Mon, 26 Oct 2026 16:46:57 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz
# Mon, 26 Oct 2026 16:46:57 GMT
ARG REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
# Mon, 26 Oct 2026 16:46:57 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 		dpkg-dev 		gcc 		g++ 		libc6-dev 		libssl-dev 		make; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apt-get install -y --no-install-recommends 			git 			cmake 			python3 			python3-pip 			python3-venv 			python3-dev 			unzip 			rsync 			clang 			automake 			autoconf 			libtool 			g++; 	fi; 		rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	case "${arch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export BUILD_TLS=yes; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/cache/debconf/*; 		redis-cli --version; 	redis-server --version # buildkit
# Mon, 26 Oct 2026 16:46:57 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.2.11.tar.gz REDIS_DOWNLOAD_SHA=921fa6d9210d7012782861b256e2fca18cff7d71a62c27693c293bd626def4b4
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:46:57 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:46:58 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:46:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:46:58 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:46:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7f8e25d896f6052dae39fef5bce082c21c7ab04d17beb02a929d2a4294f846`  
		Last Modified: Wed, 21 Oct 2026 04:15:27 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e921b88adaa5ced0d36ff4eb4611c8e83009ba4bdb11cf1c265f35769c95b6`  
		Last Modified: Wed, 21 Oct 2026 04:15:27 GMT  
		Size: 873.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7095f0c1ca6dce02f52615179eba55d9c71212d4668019b3e644a3a5d0f46fdc`  
		Last Modified: Mon, 26 Oct 2026 16:47:17 GMT  
		Size: 16.9 MB (16852107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69bcea52fc40ce00a29200260d2e7dd690c99833da80ecf86a3fec4d9abca85`  
		Last Modified: Mon, 26 Oct 2026 16:47:16 GMT  
		Size: 97.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6c4ef1004fab707f5ac66dc005c8eff3dbd6ac8577c9159febd7826762feaa`  
		Last Modified: Mon, 26 Oct 2026 16:47:16 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:8-bookworm` - unknown; unknown

```console
$ docker pull redis@sha256:00a351b3660bcd16bd5cdbeefb481d8b135c5dd29551dd7a1f88509e9484d7df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2405348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7907941894d4a0efd6745f3ee4b7496c7dc92ebb0671946622067d9b248f76c9`

```dockerfile
```

-	Layers:
	-	`sha256:5e88959a993cb879dbee710b8f80c0e341c860dae7ca5db18582a63da2c80656`  
		Last Modified: Mon, 26 Oct 2026 16:47:16 GMT  
		Size: 2.4 MB (2377562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1047e9b44fb6cc5e9138c6749d6e9c485a78896245c6e6251502d7f1b1b8d17d`  
		Last Modified: Mon, 26 Oct 2026 16:47:16 GMT  
		Size: 27.8 KB (27786 bytes)  
		MIME: application/vnd.in-toto+json
