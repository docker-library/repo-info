## `redis:alpine3.22`

```console
$ docker pull redis@sha256:b14cda27723338be9c247d2df72588e3fa0236de814caa4d225376483d1b787a
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
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `redis:alpine3.22` - linux; amd64

```console
$ docker pull redis@sha256:35b3979c49e47dd206645bf8416fad4f93dd7527f925a6426a2594cf16bf6e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34094399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec27e105190350223ea9a9658e2c00956ce3f1c9c78577315e363e7a6d55a798`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:10:26 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 19:10:27 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 19:17:45 GMT
ENV REDIS_VERSION=8.4.8
# Thu, 05 Nov 2026 19:17:45 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Thu, 05 Nov 2026 19:17:45 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Thu, 05 Nov 2026 19:17:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 19:17:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 19:17:45 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 19:17:45 GMT
WORKDIR /data
# Thu, 05 Nov 2026 19:17:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:17:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:17:45 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 19:17:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e9fc114761891cb7f55d979a0624b40c0228da9c859852404c25bac64793d7`  
		Last Modified: Thu, 05 Nov 2026 19:17:53 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f816d4523db6edf0a6ab8878608b0961ed56ddaa5f80013d45e8d93a43aca86`  
		Last Modified: Thu, 05 Nov 2026 19:17:53 GMT  
		Size: 200.3 KB (200304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2138d5ab48da403a3a7c2c7d47d03fb821310635483442653bc77c379f3b9802`  
		Last Modified: Thu, 05 Nov 2026 19:17:54 GMT  
		Size: 30.1 MB (30096536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767d5f8d6898ad6a11a7fb98c99f89aa76dde07c78c43a0fa63d928ad74661c5`  
		Last Modified: Thu, 05 Nov 2026 19:17:54 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7087700058ec30a234828b20da82d6c9aa208cf81cce0b9510471441811dbfef`  
		Last Modified: Thu, 05 Nov 2026 19:17:55 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:38100b5e7ce872bbccbb20fb2666ed4e8be081d3a006539b9f81d00f2ec50831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.7 KB (498738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83277319263c88ec4c0b23d37a060c4d362d56ba26350f9aef46d103cad9f46e`

```dockerfile
```

-	Layers:
	-	`sha256:11a0beda13e82e914ba6e16b6df785e6817569cf67cca261b7f40c9006e8fd5f`  
		Last Modified: Thu, 05 Nov 2026 19:17:53 GMT  
		Size: 468.3 KB (468349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:393cfa1d185d009d21964e5d56d1d13d5d58b621ebffb02b8c85808be9e8e9e8`  
		Last Modified: Thu, 05 Nov 2026 19:17:53 GMT  
		Size: 30.4 KB (30389 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.22` - linux; arm variant v6

```console
$ docker pull redis@sha256:f847d6b08ba24225cb6abc284ab86edbf9145b639712a40a93178609f99b506b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18323887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:800fd1e7421cdd2f006c45c1f6932552ebdc5877a5655d0dbe9cb52cf4bf93cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:47:33 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 18:47:34 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 18:48:30 GMT
ENV REDIS_VERSION=8.4.8
# Thu, 05 Nov 2026 18:48:30 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Thu, 05 Nov 2026 18:48:30 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Thu, 05 Nov 2026 18:48:30 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 18:48:30 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 18:48:30 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 18:48:30 GMT
WORKDIR /data
# Thu, 05 Nov 2026 18:48:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:48:30 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 18:48:30 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a6de679654b5de6744a59b32e15fef9feb12ed05917235f8b30cb245191f46`  
		Last Modified: Thu, 05 Nov 2026 18:48:35 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f90319e0523ad9aa8e5f4fa4b43d9ceb954611fded1eb27cf00259aae3437f`  
		Last Modified: Thu, 05 Nov 2026 18:48:35 GMT  
		Size: 200.5 KB (200515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3902f476779085e9606590374de7252c00686a9071604049780e30357f0633e`  
		Last Modified: Thu, 05 Nov 2026 18:48:36 GMT  
		Size: 14.6 MB (14618652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b76b8a372826efb266a06902dd9f9bf4242abd92dac54c75884cd3ec0260612`  
		Last Modified: Thu, 05 Nov 2026 18:48:35 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaf2fbdd1187010ea37dcc0b5913a7eb1ba87861f5382dcaec65c0026cc9e35`  
		Last Modified: Thu, 05 Nov 2026 18:48:36 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:993c205bd8abcfd017f8d67f8c2d652e669d40aa9a49a89380f8139e24362b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 KB (30309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7faf013dc5c05a7a5dd956496017d1bf8e5022417cdfa0de6ba21344d6c5f8ed`

```dockerfile
```

-	Layers:
	-	`sha256:02b5ce29a1940c8fdc3162532bbbf1b0ebc5e91da498e2c6b26a82e5de17cf3e`  
		Last Modified: Thu, 05 Nov 2026 18:48:35 GMT  
		Size: 30.3 KB (30309 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.22` - linux; arm variant v7

```console
$ docker pull redis@sha256:f789100892ad0fe2f350be792faa2186bbeb70a923913b6cf7027fbb3137bab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17806054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e1ae6c2100907e0809ae182c823dab12ef9de116a3abc66e666bef5cda555f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:46:31 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 18:46:32 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 18:47:27 GMT
ENV REDIS_VERSION=8.4.8
# Thu, 05 Nov 2026 18:47:27 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Thu, 05 Nov 2026 18:47:27 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Thu, 05 Nov 2026 18:47:27 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 18:47:27 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 18:47:27 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 18:47:27 GMT
WORKDIR /data
# Thu, 05 Nov 2026 18:47:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:47:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:47:27 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 18:47:27 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31c4d0b2e60b52b6d24b3ebb655de114df1159b44ddfaa789820d530d23982e`  
		Last Modified: Thu, 05 Nov 2026 18:47:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883d27c2b1dc8241c90eafe80ab326038989c86893d365ed1f7589c3dbb15514`  
		Last Modified: Thu, 05 Nov 2026 18:47:33 GMT  
		Size: 198.8 KB (198782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bc0fd06469eac321e689a34bc07ef756bd6c6922e44aec32bbbfb9bd36b6db`  
		Last Modified: Thu, 05 Nov 2026 18:47:34 GMT  
		Size: 14.4 MB (14388621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033e04653a29943dee0694bb6eeba5fae7f77a85feba19d054e17bd452284f04`  
		Last Modified: Thu, 05 Nov 2026 18:47:33 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e29e880dbcbddcd280e54c2121e752216fcc3983c963bf0a6b268d1ac41c49a`  
		Last Modified: Thu, 05 Nov 2026 18:47:34 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:e5113ec6dba44b4e9dc53d3b454f77de35b318f1da46088ce7a661bb07714228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.9 KB (498925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b95a861deddfa39b998f794e6b57fdcb28b6eafdcbce530098aa19157cc6bd4`

```dockerfile
```

-	Layers:
	-	`sha256:297f49023bd6117043dd6da3d9c9ca7472c719e8ec69f2fbbfbe0bdcdc63c0cb`  
		Last Modified: Thu, 05 Nov 2026 18:47:33 GMT  
		Size: 468.4 KB (468401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd36005d72e1bb620a6c437d4f87dcec2b243d1708b1a3c4073b490ff1cf89a6`  
		Last Modified: Thu, 05 Nov 2026 18:47:33 GMT  
		Size: 30.5 KB (30524 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:650e937e1e4dd8f659f3dd3edc218288a9f476658b53b8f5dcd42b2e725099b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33935162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f860c2d05dff83546e368cef456c74a4807091e1ce7ede67846f001db815ade0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 16:33:54 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 16:33:55 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:40:33 GMT
ENV REDIS_VERSION=8.4.8
# Mon, 26 Oct 2026 16:40:33 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Mon, 26 Oct 2026 16:40:33 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Mon, 26 Oct 2026 16:40:33 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:40:33 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:40:33 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:40:33 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:40:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:40:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:40:33 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:40:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac726450ea214a76a151146e97e858c9275b0c1a85e053652f94767f141c1a39`  
		Last Modified: Mon, 26 Oct 2026 16:40:41 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cfbecc8a3527c0b14d52f891d5ad97bc9fcdae111bd13248a1d6ea76b74e8ea`  
		Last Modified: Mon, 26 Oct 2026 16:40:41 GMT  
		Size: 202.1 KB (202122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7551583af2a2d058b027f76b4104b6c08bf55f7787a8ed149a54b1a67f60a7a`  
		Last Modified: Mon, 26 Oct 2026 16:40:42 GMT  
		Size: 29.6 MB (29602475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab966bf16c702813c9cec517db4f2caa309eb9317f83c842821927e2d0d3775a`  
		Last Modified: Mon, 26 Oct 2026 16:40:42 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ac7019ba12a4ee091586f3a88e9b4ef8e618ca710ff851f1b38df479482a27e`  
		Last Modified: Mon, 26 Oct 2026 16:40:43 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:cf59d929ec7dada3a5015ae0f9c51bb286ac0679e8864266b7fa345484c68e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **499.0 KB (498988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27dfbd556ed8da1f3121568169c488f4ac585b1b52260090ec7d5b4b10bf14c2`

```dockerfile
```

-	Layers:
	-	`sha256:e82fb93c6c523cbcf1fadfe07c5b0a2e284ec6d5978652fe336d747dd34d0690`  
		Last Modified: Mon, 26 Oct 2026 16:40:41 GMT  
		Size: 468.4 KB (468429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b11532243bdf7454972e342532851eaa26de21ce0b6b6036e4b30e92f05766d`  
		Last Modified: Mon, 26 Oct 2026 16:40:41 GMT  
		Size: 30.6 KB (30559 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.22` - linux; 386

```console
$ docker pull redis@sha256:19594bbfa8d0d0563e0a68489cdd5cc62ccdeaf99b40ddd810a49622bf0d079f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 MB (18202495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41dfdbca3eb557dd1f685a9415c3f86e6031b1214f3ba5c944c0819beca875f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:25 GMT
ADD alpine-minirootfs-3.22.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:25 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:30:11 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 18:30:12 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 18:31:10 GMT
ENV REDIS_VERSION=8.4.8
# Thu, 05 Nov 2026 18:31:10 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Thu, 05 Nov 2026 18:31:10 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Thu, 05 Nov 2026 18:31:10 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 18:31:10 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 18:31:10 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 18:31:10 GMT
WORKDIR /data
# Thu, 05 Nov 2026 18:31:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:31:10 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 18:31:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5fd039ef8ccef5ed7275f159020694fbd23bd01317ed3a82428afbe0712175c8`  
		Last Modified: Thu, 05 Nov 2026 18:01:31 GMT  
		Size: 3.6 MB (3613476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863917bb5b7567d39e0e2e23a2351301fb945b6c1361ee78e2483ad30858b982`  
		Last Modified: Thu, 05 Nov 2026 18:31:16 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db98daf9183b14c95474f592f206260d2efa85bf29115595a1cc6bf327a18084`  
		Last Modified: Thu, 05 Nov 2026 18:31:16 GMT  
		Size: 200.7 KB (200691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a91580997f1cd4e2d2185892adda07018676540a03a74d980a78eca89a60b72`  
		Last Modified: Thu, 05 Nov 2026 18:31:17 GMT  
		Size: 14.4 MB (14385143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bd2b189957798492ab22112357897be57e37c92a67b9cc1175cfd421488858`  
		Last Modified: Thu, 05 Nov 2026 18:31:16 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e5bf13ea129ec4175f89bab0fce921073e5a47054c20b440cb3f70adc13424`  
		Last Modified: Thu, 05 Nov 2026 18:31:17 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:08d8574ed7ed03eebd8a50616999bd2efdc91ba4759bac4002739be6e3a815ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.7 KB (498655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d640e9902029b5cecef9f1ed28f12fd3e5e179a79277d45bbcbb0ff5591237e`

```dockerfile
```

-	Layers:
	-	`sha256:d44f459a09c74f84de0849f47246895a2e2d6744e49792e7b2e6340653d759ad`  
		Last Modified: Thu, 05 Nov 2026 18:31:16 GMT  
		Size: 468.3 KB (468314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b8fcdb62568865478b3762f5f40fd879ef9af2244e9852ef0ebe5a38afad51e`  
		Last Modified: Thu, 05 Nov 2026 18:31:16 GMT  
		Size: 30.3 KB (30341 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.22` - linux; ppc64le

```console
$ docker pull redis@sha256:d6c7547f983800cd7931c113a26070f09faa4b15f107b8f0c668b2b7dd6bb866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19565783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc900c49e9ca8cdd39279d813f8e99f1f6bdfc8c63156067f10f74885a32e47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:30:28 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 22 Oct 2026 13:30:32 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:44:29 GMT
ENV REDIS_VERSION=8.4.8
# Mon, 26 Oct 2026 16:44:29 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Mon, 26 Oct 2026 16:44:29 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Mon, 26 Oct 2026 16:44:29 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:44:30 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:44:30 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:44:31 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:44:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:44:32 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:44:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a5a97451caa2fdf66620579fd4110cf386c0a00c9e8d4d43060c493d11590b`  
		Last Modified: Thu, 22 Oct 2026 13:32:28 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8befde48623f2ed7c03f8fd6c8a2bd6bb38b30599d2b389a88861edfe0b4c`  
		Last Modified: Thu, 22 Oct 2026 13:32:28 GMT  
		Size: 203.1 KB (203125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d782df3dbe2b5a02f6e73d11aaa9221c3418d76e1015d07b9fb338edc31565b9`  
		Last Modified: Mon, 26 Oct 2026 16:44:48 GMT  
		Size: 15.6 MB (15634031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd0296c45d0e754567435fa8b87cfafcdd5468aec0390141415d0eb0369741b`  
		Last Modified: Mon, 26 Oct 2026 16:44:48 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493f6dc5a07fe1e0602746475c81664b12a2d2314253256c745b7eccbcd3c67c`  
		Last Modified: Mon, 26 Oct 2026 16:44:48 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:e6949a29eca0f9e22ef789f885781b04f72faa9c90422265379ac51cce74817a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.9 KB (496895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb53b87506817b0ede338f78fefef0e5530daa9154fc4d82b87909fd5d2fe1d`

```dockerfile
```

-	Layers:
	-	`sha256:62632ac3bb66ebd1266a8bd2fd7869ccf2fa0c8da04f79f24effeb9d54d1fa98`  
		Last Modified: Mon, 26 Oct 2026 16:44:48 GMT  
		Size: 466.4 KB (466444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dd927f45eeabbde72d53c7887ea848c486804267eb0eba39bd4cf2cb8c761ef`  
		Last Modified: Mon, 26 Oct 2026 16:44:48 GMT  
		Size: 30.5 KB (30451 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.22` - linux; riscv64

```console
$ docker pull redis@sha256:2da76c215def8aae57abfc8c237b82afc128470d9d0ef1f0b70e72bf4aabdb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17794455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2828530a44e06acc51b8cbcd3115a8d43e17f051847651b3e26b937353bf3b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Oct 2026 04:58:08 GMT
ADD alpine-minirootfs-3.22.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:58:08 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 12:08:41 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Mon, 26 Oct 2026 12:08:46 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 29 Oct 2026 01:34:57 GMT
ENV REDIS_VERSION=8.4.8
# Thu, 29 Oct 2026 01:34:57 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Thu, 29 Oct 2026 01:34:57 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Thu, 29 Oct 2026 01:34:57 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 29 Oct 2026 01:34:57 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 29 Oct 2026 01:34:57 GMT
VOLUME [/data]
# Thu, 29 Oct 2026 01:34:57 GMT
WORKDIR /data
# Thu, 29 Oct 2026 01:34:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 01:34:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 01:34:58 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 29 Oct 2026 01:34:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8ac0a590d56e5959a275a0d1ee0a48b4b3f07fa6305e9f047ef5accff095605b`  
		Last Modified: Fri, 23 Oct 2026 04:58:43 GMT  
		Size: 3.5 MB (3512898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7053ce4b2a566d8639519cc26236fe81e4722835ebcdb10aae94831f8abfa97f`  
		Last Modified: Mon, 26 Oct 2026 12:27:39 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43703d4b368d18c2bb440eea9dcc5d37f9f7cd45ba7014c01018d42f395bb69d`  
		Last Modified: Mon, 26 Oct 2026 12:27:39 GMT  
		Size: 200.4 KB (200437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f450e02789b16449e3fda2d5f748882c3e2b1d49439e8dc79fd882165b0a32bb`  
		Last Modified: Thu, 29 Oct 2026 01:35:49 GMT  
		Size: 14.1 MB (14077926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f50dee1b4730076dfb27d0121c78d42a8a23050d65f8d16f81d44ea4367604`  
		Last Modified: Thu, 29 Oct 2026 01:35:47 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57981f7fc3218ddd783f7a10aaaa84db2ab32f03d94c863e02608b462f00379`  
		Last Modified: Thu, 29 Oct 2026 01:35:47 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:5c6f8fcf4fcc14b86c3bf592972fff15b4f7e8b629dbca2f06c53c4e4eda69ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.9 KB (496888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5460ea328e647053b361f3433fc16b9b46edbabd7bca85c67f600b8b6bc702a4`

```dockerfile
```

-	Layers:
	-	`sha256:1182116a93692e000a2e68a955a0210bf13b6d52dc04d57e328764a35147705c`  
		Last Modified: Thu, 29 Oct 2026 01:35:47 GMT  
		Size: 466.4 KB (466440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac53b2644e5fa8e600466d5541c80c944cf722c51ca4966b18fbace712c7dc2`  
		Last Modified: Thu, 29 Oct 2026 01:35:47 GMT  
		Size: 30.4 KB (30448 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.22` - linux; s390x

```console
$ docker pull redis@sha256:c73a7baee60bfc72fc6aab0f881678772771f0c7c8edbc6ca5c3c0f508fc7f19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19214849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597e389cd3eccc80c6b88a27b885667612cb8d8bf31eb5b6b9bceb60b1bd43cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:29:14 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 21 Oct 2026 21:29:15 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Mon, 26 Oct 2026 16:36:48 GMT
ENV REDIS_VERSION=8.4.8
# Mon, 26 Oct 2026 16:36:48 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Mon, 26 Oct 2026 16:36:48 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Mon, 26 Oct 2026 16:36:48 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Mon, 26 Oct 2026 16:36:48 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Mon, 26 Oct 2026 16:36:48 GMT
VOLUME [/data]
# Mon, 26 Oct 2026 16:36:48 GMT
WORKDIR /data
# Mon, 26 Oct 2026 16:36:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 16:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 16:36:48 GMT
EXPOSE map[6379/tcp:{}]
# Mon, 26 Oct 2026 16:36:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74390019d516bc5aee97b992b2bc04750fecef3efafef2605ef8d8fb0f7ab2b3`  
		Last Modified: Wed, 21 Oct 2026 21:30:47 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c904429becaa46b470b1fb4e83c76de766da09a3521a84164b9829dc5e81d7e`  
		Last Modified: Wed, 21 Oct 2026 21:30:47 GMT  
		Size: 202.4 KB (202449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc04d2aead4fe75b1db3272840032c4cb995e0d26154a409e48b42548c62c63`  
		Last Modified: Mon, 26 Oct 2026 16:37:00 GMT  
		Size: 15.4 MB (15365999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b512ad8657793e794a5215bffbf770b8e98490779faf02b5903ba7305bd517`  
		Last Modified: Mon, 26 Oct 2026 16:37:00 GMT  
		Size: 99.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f3b175194d8b6e4c3470ae7ca1af62d5b327617b5f56fc52f9b74a1f561d72f`  
		Last Modified: Mon, 26 Oct 2026 16:37:00 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:6625c63c83f3557f8ef5f607917393094801dd1bcc804c0863272c510d640957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.8 KB (496784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f47911b4077693ab3890101e8c525fddde5ed844999d0dc7308f5fba299f9c`

```dockerfile
```

-	Layers:
	-	`sha256:0309b10dba588dabf97ef0080085d2a43c90f9ebc7ef1ded6900ded14bfb3cc0`  
		Last Modified: Mon, 26 Oct 2026 16:37:00 GMT  
		Size: 466.4 KB (466398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb513e05cc08c87cf6ccef94d5c54771fbbfd3729acc9f09ae90b8d9959dd6b`  
		Last Modified: Mon, 26 Oct 2026 16:37:00 GMT  
		Size: 30.4 KB (30386 bytes)  
		MIME: application/vnd.in-toto+json
