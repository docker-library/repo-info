## `redis:alpine3.22`

```console
$ docker pull redis@sha256:ff72f74e4f471df79ed920aa8bbc35efe72ff8a1f8acdc50aad5dbb9b14a4034
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
$ docker pull redis@sha256:03c154d35a0f088f7434f38d49a42795c569639b50a8f86bb17750f19036f827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33935110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1a55edf382b63b1e4f0bf450d635ad3e1853d00cad2712feee9222e2d16a3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:05:49 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 19:05:50 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 19:12:33 GMT
ENV REDIS_VERSION=8.4.8
# Thu, 05 Nov 2026 19:12:33 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Thu, 05 Nov 2026 19:12:33 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Thu, 05 Nov 2026 19:12:33 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 19:12:33 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 19:12:33 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 19:12:33 GMT
WORKDIR /data
# Thu, 05 Nov 2026 19:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:12:33 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 19:12:33 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0646661212c1cd8086599a6ee3f65bf3e97d6722732faba581f77721d707c323`  
		Last Modified: Thu, 05 Nov 2026 19:12:42 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4366593abc5bed92d8f7f2a9cfceeeeb4cf38d7d36d23657c4c7ec547cb53611`  
		Last Modified: Thu, 05 Nov 2026 19:12:41 GMT  
		Size: 202.1 KB (202106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe63c808cb0a4eb5d7e337805ce291296855283b2a6f229a53654de6d2a03cc`  
		Last Modified: Thu, 05 Nov 2026 19:12:42 GMT  
		Size: 29.6 MB (29602430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6eb567acfa1729394a3cffc5cd9d96ae4e9098c37d569c094bfa89f428447f`  
		Last Modified: Thu, 05 Nov 2026 19:12:42 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89338733c67d8798ed4d1e1ec1ab57582c89c1e44c05a5e042ffbb15d98fa2e0`  
		Last Modified: Thu, 05 Nov 2026 19:12:43 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:d2a68363a031ea3f31cc119bf57d1aad0147d955d2aaeb87e376a03deaf4ee48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **499.0 KB (498990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46799775d6ecc86423aa00c17916f2675f4e4bffb3dc5523e4f454ee0a1cce72`

```dockerfile
```

-	Layers:
	-	`sha256:b3bbd561b50f63bfa4297099b083ae40a963022c9fc5a82cb5aec4a7522f9aa1`  
		Last Modified: Thu, 05 Nov 2026 19:12:42 GMT  
		Size: 468.4 KB (468429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e64cb2661cddeb76940f500d8eb3d11efcd3a0b7e77ffa0afbd384e98a4dec0`  
		Last Modified: Thu, 05 Nov 2026 19:12:41 GMT  
		Size: 30.6 KB (30561 bytes)  
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
$ docker pull redis@sha256:ed40051502fbbde0d0f70ebd87212baece7fddf1ab72bd6f2717b6638d295ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19565811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0ab11584b19391511368c8e330c19607aae5aa7fb8e85cdcd608732257ba1c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:29:13 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 23:29:21 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 23:31:38 GMT
ENV REDIS_VERSION=8.4.8
# Thu, 05 Nov 2026 23:31:38 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Thu, 05 Nov 2026 23:31:38 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Thu, 05 Nov 2026 23:31:38 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 23:31:39 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 23:31:39 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 23:31:39 GMT
WORKDIR /data
# Thu, 05 Nov 2026 23:31:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:31:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 23:31:40 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 23:31:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d87a0e83b6aeb16ad15307e574941891064b6ab61e93062eac57642fba6759`  
		Last Modified: Thu, 05 Nov 2026 23:32:09 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1be47024bd22cf6acfc23cdd444bacc131f03e96d0c32733e607571789e1aa`  
		Last Modified: Thu, 05 Nov 2026 23:32:09 GMT  
		Size: 203.1 KB (203107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8afe2eab3e47a9996ef84f4e444136ed9a3d1bac8dd17a6e7739d82802bcefc`  
		Last Modified: Thu, 05 Nov 2026 23:32:10 GMT  
		Size: 15.6 MB (15634003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1249ab3afd50a8d58e3863eb14b7ce9785558382669ab3d5343e39b6bc36728`  
		Last Modified: Thu, 05 Nov 2026 23:32:09 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6765830fdc582060606c001e60ad70f8b922600827cb7c4a28b6037bbf0027`  
		Last Modified: Thu, 05 Nov 2026 23:32:11 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:20f4a8be03fc7c57f3c36e812a806a1d809c054bcd45b05c53fb3cd60978a9a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.9 KB (496895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8c179c6042bc2a870cd492e780514b9f806c4e77fd72c2ddebb3abcc3acac4`

```dockerfile
```

-	Layers:
	-	`sha256:a2422461051d0b41f5f17de3b852830d55ec718b73d79f53370ee645af1fd921`  
		Last Modified: Thu, 05 Nov 2026 23:32:10 GMT  
		Size: 466.4 KB (466444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2c91c4a5155e9a7d93bec2bb82f915d0ce28c63d970da8d834c467785d53fca`  
		Last Modified: Thu, 05 Nov 2026 23:32:09 GMT  
		Size: 30.5 KB (30451 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.22` - linux; riscv64

```console
$ docker pull redis@sha256:e25132e3dd53f43747c5b96c8f0dc4e24518f8668749b95e36a3cccb3ec74a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17794425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad441eb35beb0a981375910a2322a26a26bcb18e48b28d2af9b358314b1adafa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sun, 08 Nov 2026 12:38:25 GMT
ADD alpine-minirootfs-3.22.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:38:25 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 21:04:43 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 11 Nov 2026 21:04:48 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Wed, 11 Nov 2026 21:22:45 GMT
ENV REDIS_VERSION=8.4.8
# Wed, 11 Nov 2026 21:22:45 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Wed, 11 Nov 2026 21:22:45 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Wed, 11 Nov 2026 21:22:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Wed, 11 Nov 2026 21:22:45 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Wed, 11 Nov 2026 21:22:45 GMT
VOLUME [/data]
# Wed, 11 Nov 2026 21:22:45 GMT
WORKDIR /data
# Wed, 11 Nov 2026 21:22:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 21:22:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 21:22:46 GMT
EXPOSE map[6379/tcp:{}]
# Wed, 11 Nov 2026 21:22:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:89533e1a1a5a89d7e2d7d280a92bc335cdd20828db19882bac5a6d9678e1c409`  
		Last Modified: Sun, 08 Nov 2026 12:39:00 GMT  
		Size: 3.5 MB (3512926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865ef8c7403f058dea03d9e7bb79ef79eb45aeb82d6014f164af1380ebe6ff0`  
		Last Modified: Wed, 11 Nov 2026 21:23:46 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a0d0950887fdd480f11b927b3e00014406612cbf2611fd583c2b585a38d796`  
		Last Modified: Wed, 11 Nov 2026 21:23:45 GMT  
		Size: 200.4 KB (200426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adbc4db508892487f77a321354a0ffac3b8ae845b4f2d2f0ba84c6849637c09d`  
		Last Modified: Wed, 11 Nov 2026 21:23:48 GMT  
		Size: 14.1 MB (14077884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df39f41be667d55242d5d77565ac83d9077b459af13b38847816cab59f88603`  
		Last Modified: Wed, 11 Nov 2026 21:23:46 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7aee57fa4ce6b115539ea11709e52e6b59dad0a04be6c8089bf0dcf686d5cc`  
		Last Modified: Wed, 11 Nov 2026 21:23:47 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:eab6b308cc3141ed750957ba2cfb003634d7b218053ebbd7ed6642e9d276bdd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.9 KB (496891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5443277c15e8bfa2afc65c0b082682b8733e26e24c3e72ba35fbb25cb1f7e09b`

```dockerfile
```

-	Layers:
	-	`sha256:a49203f497d1d0e899d37f760dbbc31a0c7a18692bbf16a1f0b57cd034009c76`  
		Last Modified: Wed, 11 Nov 2026 21:23:46 GMT  
		Size: 466.4 KB (466440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23db3cc99aaa60a4f4f9a30fac9b8bd8100e9255d072dc99d856e78b74278245`  
		Last Modified: Wed, 11 Nov 2026 21:23:45 GMT  
		Size: 30.5 KB (30451 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine3.22` - linux; s390x

```console
$ docker pull redis@sha256:2213337eee4c52cd326e60c0aff5426fb4020c46e3e0cc9b0e83d3a751ac1f87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19214743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434b0e4de6b7b2b811d5cbcfd7617fda006b5f2052c8297d16bc0ca5b5c9d12b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:10:01 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 05 Nov 2026 19:10:02 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 05 Nov 2026 19:11:21 GMT
ENV REDIS_VERSION=8.4.8
# Thu, 05 Nov 2026 19:11:21 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz
# Thu, 05 Nov 2026 19:11:21 GMT
ARG REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
# Thu, 05 Nov 2026 19:11:21 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang 		clang-static 		clang-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm-dev 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 05 Nov 2026 19:11:21 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.4.8.tar.gz REDIS_DOWNLOAD_SHA=540ea095ead87cf9eb1cfd3788287a16c180e95997bdda7cfebca106d9f5284d
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 05 Nov 2026 19:11:21 GMT
VOLUME [/data]
# Thu, 05 Nov 2026 19:11:23 GMT
WORKDIR /data
# Thu, 05 Nov 2026 19:11:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:11:24 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 05 Nov 2026 19:11:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79cee0c681eb3c2c1e32524130170065c4ff96a08f4c50e29c1f4325edfb646`  
		Last Modified: Thu, 05 Nov 2026 19:11:48 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f80e0661268eb0471654f9a54be94998bc2fed8f84506ce0f5b1a3357e41d4`  
		Last Modified: Thu, 05 Nov 2026 19:11:48 GMT  
		Size: 202.4 KB (202424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:786b5d751560de5d12f0a2d96d1e0d6a921200cf8642646b3579a4ee26742949`  
		Last Modified: Thu, 05 Nov 2026 19:11:51 GMT  
		Size: 15.4 MB (15365924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043ca0306a0479f79cf2d583c2963b717278b57af9808669cfdb3d54d367149f`  
		Last Modified: Thu, 05 Nov 2026 19:11:48 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8200b2f6e10b3ed317fc5b7fa4f8cd70080866b6d0784cf059a4a80bed925856`  
		Last Modified: Thu, 05 Nov 2026 19:11:50 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine3.22` - unknown; unknown

```console
$ docker pull redis@sha256:1a6d23810b41011d60aa444e108f8251915b7f30b0e20bdbce80b2c9c0d94bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.8 KB (496786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700eaef26c4f1a17ca79aac89a473a41b1571a3bd5399f6e40bb0d72b834b891`

```dockerfile
```

-	Layers:
	-	`sha256:1705eded9263bb00ac4cc62c03dcf27eb9dbd5b104443772e7628744ced74768`  
		Last Modified: Thu, 05 Nov 2026 19:11:48 GMT  
		Size: 466.4 KB (466398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d179553ca2a7f51bfb471cb76157af78dbef7a8eae52d9a6049b4dc5987b6dea`  
		Last Modified: Thu, 05 Nov 2026 19:11:48 GMT  
		Size: 30.4 KB (30388 bytes)  
		MIME: application/vnd.in-toto+json
