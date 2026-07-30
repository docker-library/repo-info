## `redis:alpine`

```console
$ docker pull redis@sha256:e8eb6f2980c06c6a25c08f62cb2e00dc7d2fead9aa492cfdd8b54a42109ae0f2
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

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:a6a88248ad5b0c724b7f2b380b7d21f46097db158b2b077ef85bcb97f90aee3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (39003587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc48e0fe25c0095fb69b711b6c110b3801e7b30189e14358a5f16d4a747c9ec0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:33:18 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 30 Jul 2026 19:33:19 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 30 Jul 2026 19:42:11 GMT
ENV REDIS_VERSION=8.10.0
# Thu, 30 Jul 2026 19:42:11 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz
# Thu, 30 Jul 2026 19:42:11 GMT
ARG REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
# Thu, 30 Jul 2026 19:42:11 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 30 Jul 2026 19:42:11 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 30 Jul 2026 19:42:11 GMT
WORKDIR /data
# Thu, 30 Jul 2026 19:42:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 19:42:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:42:11 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 30 Jul 2026 19:42:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae5c34d24584bed007288d67355cd80d67c3209d89df6b8d2d70f2aaa185bb1`  
		Last Modified: Thu, 30 Jul 2026 19:42:19 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcaf2c69e5bf8d69ede36dd1a11c2ba5c78d7b83f124c814df2972af27cbaa09`  
		Last Modified: Thu, 30 Jul 2026 19:42:19 GMT  
		Size: 196.9 KB (196893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c39d5b7aae4b7ccf9382d5de78dd7d1f1fa7f581e232daf43fcec7359cd2fb7`  
		Last Modified: Thu, 30 Jul 2026 19:42:20 GMT  
		Size: 35.0 MB (34959088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b5200b7471be76c1613a4f00c5b0da5652ea186d850b1b18b24a9a61ba36ca`  
		Last Modified: Thu, 30 Jul 2026 19:42:19 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5107053fcce47b4308cdbe47b1d9610a9a40e938730a79397dc4a1d05b49a3a4`  
		Last Modified: Thu, 30 Jul 2026 19:42:21 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine` - unknown; unknown

```console
$ docker pull redis@sha256:67282334139bcecae473c4c92926796d297ed53a1dcaf7a484da69e8065f085c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.6 KB (498619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9916e70001f07a8876255015487837bb317ba11b38c35b32323f5b62356525ca`

```dockerfile
```

-	Layers:
	-	`sha256:72951379407e61608c70b8c3cac0bcf74d5819773623ff14ed7dda4a15c3807f`  
		Last Modified: Thu, 30 Jul 2026 19:42:19 GMT  
		Size: 467.7 KB (467671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e237c80e2d80f17dec096134f90d7a3425ed7a6d020dcbaf4b66fe2c46a0c4a0`  
		Last Modified: Thu, 30 Jul 2026 19:42:19 GMT  
		Size: 30.9 KB (30948 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:9bfcbdfb344c1ff58c5d6e835ef70c690f1c5e73fcc669d133d010a929332001
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (17989943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e6ba56db09f3ac9bb7ae7a1735252e62e81747a6b24f975c5aa1fe8cbaef45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:32:06 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 30 Jul 2026 19:32:07 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 30 Jul 2026 19:33:31 GMT
ENV REDIS_VERSION=8.10.0
# Thu, 30 Jul 2026 19:33:31 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz
# Thu, 30 Jul 2026 19:33:31 GMT
ARG REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
# Thu, 30 Jul 2026 19:33:31 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 30 Jul 2026 19:33:31 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 30 Jul 2026 19:33:31 GMT
WORKDIR /data
# Thu, 30 Jul 2026 19:33:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 19:33:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:33:31 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 30 Jul 2026 19:33:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3995b5d7da4364196f8339ea6bc3c0b01ddde8925ad318550257bc65127c0fa6`  
		Last Modified: Thu, 30 Jul 2026 19:33:36 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9fc8a6e6a9e93723cdf3dcdb1accbd376bebeab71c897a3353615b1b30df6e`  
		Last Modified: Thu, 30 Jul 2026 19:33:36 GMT  
		Size: 197.2 KB (197186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04eb03ab19f6953416d21577e55b63fd53548cc2883edc395236d23940ab870`  
		Last Modified: Thu, 30 Jul 2026 19:33:36 GMT  
		Size: 14.2 MB (14236973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7acfd8524be36ace3d8ec9e824b9ba499714dac7ad7ba269dde6747c99c4ccd8`  
		Last Modified: Thu, 30 Jul 2026 19:33:36 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cb9b50f88a78afc44cc1c48adbef04de20473e7744bfbafc09a89d060b9645`  
		Last Modified: Thu, 30 Jul 2026 19:33:37 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine` - unknown; unknown

```console
$ docker pull redis@sha256:51e83cd3befc4e0883a12917e9ef1ee5436b3f536e6e2cf3a8b5518b88523829
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 KB (30883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc5f93fcc833ae44cab1a85f4ec143260b2a8ab391ea289fa5512f22ef12d33`

```dockerfile
```

-	Layers:
	-	`sha256:aca5a77b20871ed2a31156840689b01e25a355ef6eea0407b828ca11c68cde14`  
		Last Modified: Thu, 30 Jul 2026 19:33:36 GMT  
		Size: 30.9 KB (30883 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine` - linux; arm variant v7

```console
$ docker pull redis@sha256:ef310f9c3608873cf1d8c4e2a4ec70de2e665a015cedf38ffef3f72c9cc49184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17520851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce2e1cc6b4378778e70c5838d93e0fd8eec2f99e0850bbff5ea5ad644a6a88a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:33:59 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 30 Jul 2026 19:34:00 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 30 Jul 2026 19:35:24 GMT
ENV REDIS_VERSION=8.10.0
# Thu, 30 Jul 2026 19:35:24 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz
# Thu, 30 Jul 2026 19:35:24 GMT
ARG REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
# Thu, 30 Jul 2026 19:35:24 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 30 Jul 2026 19:35:24 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 30 Jul 2026 19:35:24 GMT
WORKDIR /data
# Thu, 30 Jul 2026 19:35:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 19:35:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:35:24 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 30 Jul 2026 19:35:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be80c520e48fe033ca3db71a4cb7bf9e613c959ee71d7c5b3faa78812f6b4a1`  
		Last Modified: Thu, 30 Jul 2026 19:35:30 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a17efeb92753f3ebec1aab359fdba17b27fabb28175b8d85bc840a8ddaf74c`  
		Last Modified: Thu, 30 Jul 2026 19:35:30 GMT  
		Size: 195.5 KB (195524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d5125cbc8adf60978930afa255e0864cdecbae7dfc25702fd2cba04f118543`  
		Last Modified: Thu, 30 Jul 2026 19:35:31 GMT  
		Size: 14.1 MB (14060284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c809abcac537b0f860149691b37527bdd40ec4d7b39f831c762ebb6121903ba9`  
		Last Modified: Thu, 30 Jul 2026 19:35:30 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d955c60c6831a0ca7cc9540901aacfae08c3e86be78b9e5b098a2d64c1beb881`  
		Last Modified: Thu, 30 Jul 2026 19:35:32 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine` - unknown; unknown

```console
$ docker pull redis@sha256:1075cc0d854436e9745129377bbdd6d9abb0b1eca6fa7354aa713d091c6b7f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.2 KB (496198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c1fcf849b42a68c0bd229bb0a725e816a5f5fde1b0788644cad5ec3cd64b55`

```dockerfile
```

-	Layers:
	-	`sha256:8530ffeb592893080f9ac11b43f2fe62acb3780a174a93c37022c13c86703c8f`  
		Last Modified: Thu, 30 Jul 2026 19:35:30 GMT  
		Size: 465.1 KB (465099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fb19aa929956fa2105c1db076a62a4ff47d1434630833da25a00cb98cd65741`  
		Last Modified: Thu, 30 Jul 2026 19:35:30 GMT  
		Size: 31.1 KB (31099 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:0f8941c253cc39d98439a608dcb4f0a840b54421cc5109a68c72b2d2d223cea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38667183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe100e8c73fa3ceb2cb5c357c390d5b8c898591fc693590aa68dac219ae8ae1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:28 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 30 Jul 2026 19:54:29 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 30 Jul 2026 20:03:49 GMT
ENV REDIS_VERSION=8.10.0
# Thu, 30 Jul 2026 20:03:49 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz
# Thu, 30 Jul 2026 20:03:49 GMT
ARG REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
# Thu, 30 Jul 2026 20:03:49 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 30 Jul 2026 20:03:49 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 30 Jul 2026 20:03:49 GMT
WORKDIR /data
# Thu, 30 Jul 2026 20:03:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 20:03:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:03:49 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 30 Jul 2026 20:03:49 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000ccf2311c83aeb1796f7836767502145ed74135780369eba212b97ca9d2957`  
		Last Modified: Thu, 30 Jul 2026 20:03:58 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2a3d735d345fb568ef00d765c7d7a65833247706b29916dfb693b0723c64ea`  
		Last Modified: Thu, 30 Jul 2026 20:03:58 GMT  
		Size: 198.9 KB (198949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d428e62d37e293b4d39d0e524e6574accea20eec2ace33b695bd3ea36797ae`  
		Last Modified: Thu, 30 Jul 2026 20:03:59 GMT  
		Size: 34.3 MB (34283184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549b263105bbbec2ab1e717808e32a7c92f0ad7a54e6f7affea4e40aac93e655`  
		Last Modified: Thu, 30 Jul 2026 20:03:58 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd953e45675e8e0139ec122760ac9f3a9941f5295119d95e87b17bfc781d0ef`  
		Last Modified: Thu, 30 Jul 2026 20:03:59 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine` - unknown; unknown

```console
$ docker pull redis@sha256:cf13591f561807533484c14e7bd7cad200623a0b0b901a13274751834bac78a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.3 KB (498270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f638da799532fc92e692c2a637f51b86614441aad37de04f0579888f3d2121d`

```dockerfile
```

-	Layers:
	-	`sha256:89cd301568d1b85945ab3a54da483becafa3074efb84dee5d91ff5a8cdb0a7f6`  
		Last Modified: Thu, 30 Jul 2026 20:03:58 GMT  
		Size: 467.1 KB (467125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce8ea907b2ebcfd73079b79feaa649fd5092388f235592fe682f50134860f9c7`  
		Last Modified: Thu, 30 Jul 2026 20:03:58 GMT  
		Size: 31.1 KB (31145 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine` - linux; 386

```console
$ docker pull redis@sha256:e7884fd72ee3d17966ed3c2673308ee8b124361b67a90c705a641a26bf6b1af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17828824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0de51c693f62e96f0c1b8ff2e47537492269fc1b90a4e61314366ed6f3ca9a1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:33:38 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 30 Jul 2026 19:33:39 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 30 Jul 2026 19:35:18 GMT
ENV REDIS_VERSION=8.10.0
# Thu, 30 Jul 2026 19:35:18 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz
# Thu, 30 Jul 2026 19:35:18 GMT
ARG REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
# Thu, 30 Jul 2026 19:35:18 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 30 Jul 2026 19:35:18 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 30 Jul 2026 19:35:18 GMT
WORKDIR /data
# Thu, 30 Jul 2026 19:35:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 19:35:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:35:18 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 30 Jul 2026 19:35:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61acca3172112a863e90af1a0d2f700b1bd9292bb9076208a43709d64be27d81`  
		Last Modified: Thu, 30 Jul 2026 19:35:24 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4e20df908384f9f49e1f0643220ca65b619f32fc76b91e174792ec51775f7d`  
		Last Modified: Thu, 30 Jul 2026 19:35:24 GMT  
		Size: 197.5 KB (197537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ae3b7d5a49a2c7666c97dc67125fd40c1f46fa13406d16fac1be89164ae8a3e`  
		Last Modified: Thu, 30 Jul 2026 19:35:25 GMT  
		Size: 14.0 MB (13960107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4c67ee21656731a2bf066a686c9398a34def9666ee40109638520a32a6dcb2`  
		Last Modified: Thu, 30 Jul 2026 19:35:24 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0294286cdc73d329eb0e7470d41d5fde6394728b24032fbc1fa62663e8b986`  
		Last Modified: Thu, 30 Jul 2026 19:35:26 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine` - unknown; unknown

```console
$ docker pull redis@sha256:55657226808f5c1275e48919b84c652334a8f7538ba28d352d56cc04fdcf4ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.5 KB (493536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e854fb4410071efd418ee56cbcaef37cfc150987ae71534dc06e069154e4408`

```dockerfile
```

-	Layers:
	-	`sha256:551bde5847a48e429ef4bc1f07470ef241bc8975d51fbd3c74e1f3b7f02180e5`  
		Last Modified: Thu, 30 Jul 2026 19:35:24 GMT  
		Size: 462.6 KB (462646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5115428c697b15318bfdc57bd27597d376ae81e5bd2c53698fed20f286765064`  
		Last Modified: Thu, 30 Jul 2026 19:35:24 GMT  
		Size: 30.9 KB (30890 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:a22053eafefe1fc586b9c8bef8c11e058033a661660882d3a56b630ed9023d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19389700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49504e4b16cf7970589225566991906f44c98d272533c7edca04615745e20f85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Fri, 24 Jul 2026 17:07:50 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Fri, 24 Jul 2026 17:07:52 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 30 Jul 2026 19:33:20 GMT
ENV REDIS_VERSION=8.10.0
# Thu, 30 Jul 2026 19:33:20 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz
# Thu, 30 Jul 2026 19:33:20 GMT
ARG REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
# Thu, 30 Jul 2026 19:33:20 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 30 Jul 2026 19:33:20 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 30 Jul 2026 19:33:21 GMT
WORKDIR /data
# Thu, 30 Jul 2026 19:33:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 19:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:33:21 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 30 Jul 2026 19:33:21 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a691b904fb01bcf467f089f6d1b0fccdfc499ca36018d7ddc25e9d897144223`  
		Last Modified: Fri, 24 Jul 2026 17:10:10 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fb10537f584d891c4da9de0f7e5357287bd650ffff36e3b3d2e3e641d8636b`  
		Last Modified: Fri, 24 Jul 2026 17:10:10 GMT  
		Size: 200.1 KB (200067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d77317683de4b58f2c7a02d0a5259f84584957aaaf17e666e299c404eb2080`  
		Last Modified: Thu, 30 Jul 2026 19:33:37 GMT  
		Size: 15.4 MB (15374143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62458be5ecadac072770e957cc67d02bdea4fe24b8c4a0a457a27ed778436184`  
		Last Modified: Thu, 30 Jul 2026 19:33:36 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1fe903b66865b36425941fa95e119d20b7be4c20aa4d8f3ac0e8b18c8f6c48`  
		Last Modified: Thu, 30 Jul 2026 19:33:37 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine` - unknown; unknown

```console
$ docker pull redis@sha256:3d0c8916f0605a1cdeba92ca3998f2f0052239a594d7c80fceef69c2abaf2aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.1 KB (493120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2ce706878fdacf5e953f6f558d697cde18509874ab2e294f3eee4892ea7379`

```dockerfile
```

-	Layers:
	-	`sha256:4709f2602b1048f908bb9a9cb1ef1563db2f9a6f3239fd760bad2b98b3b705f7`  
		Last Modified: Thu, 30 Jul 2026 19:33:36 GMT  
		Size: 462.1 KB (462098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9badf7f633dca60590eae1e6786f11c4f2bfacf69b67302216058654410a079`  
		Last Modified: Thu, 30 Jul 2026 19:33:36 GMT  
		Size: 31.0 KB (31022 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine` - linux; riscv64

```console
$ docker pull redis@sha256:ebb4ee6c1741ba32e14c47b3000d3564df8231d4da2ee026601aa51f7772a9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19298605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8f77dc6faca7bcb4bc614d78a62cb6f85719841d4c7810e11bc8c33b8e7d7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 21 Jul 2026 18:06:43 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Wed, 22 Jul 2026 14:01:55 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Fri, 24 Jul 2026 17:37:02 GMT
ENV REDIS_VERSION=8.8.1
# Fri, 24 Jul 2026 17:37:02 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz
# Fri, 24 Jul 2026 17:37:02 GMT
ARG REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
# Fri, 24 Jul 2026 17:37:02 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		'arm64') export BUILD_WITH_MODULES=yes; export INSTALL_RUST_TOOLCHAIN=yes; export DISABLE_WERRORS=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; export BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules/redisjson get_source; 		sed -i 's/^RUST_FLAGS=$/RUST_FLAGS += -C target-feature=-crt-static/' /usr/src/redis/modules/redisjson/src/Makefile ; 		grep -E 'RUST_FLAGS' /usr/src/redis/modules/redisjson/src/Makefile; 	fi; 	make -C /usr/src/redis -j "$(nproc)" all; 	make -C /usr/src/redis install; 	make -C /usr/src/redis distclean; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Fri, 24 Jul 2026 17:37:03 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/archive/refs/tags/8.8.1.tar.gz REDIS_DOWNLOAD_SHA=56008a7e9c87ed4ec5ce13032ff8a685ffff944276c2a993024ce805df8338e2
RUN mkdir /data && chown redis:redis /data # buildkit
# Fri, 24 Jul 2026 17:37:03 GMT
WORKDIR /data
# Fri, 24 Jul 2026 17:37:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 24 Jul 2026 17:37:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Jul 2026 17:37:03 GMT
EXPOSE map[6379/tcp:{}]
# Fri, 24 Jul 2026 17:37:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498c3c4332b4f72a28bd39a6589fc9347891d25f2dd4cb13b3835b48244015fe`  
		Last Modified: Wed, 22 Jul 2026 14:32:15 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59a3ef5d9d0e30c668360a624c5c6ba6503f4598dd0c631fafaffc738f32767`  
		Last Modified: Wed, 22 Jul 2026 14:32:15 GMT  
		Size: 197.1 KB (197128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b4d4f123ecc7838e1093bd8797a61361838b74b9989052c9354575bcb89b2c`  
		Last Modified: Fri, 24 Jul 2026 17:38:26 GMT  
		Size: 15.5 MB (15525047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0493914ccc1622c6c5c4cc59bb94e3b935fd370bdf5ca74fe5bc47e6814875`  
		Last Modified: Fri, 24 Jul 2026 17:38:24 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60db18460efc96d8d3456cd94d3aa1f8eb9a3f7a2078a00b676382d842f192e`  
		Last Modified: Fri, 24 Jul 2026 17:38:24 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine` - unknown; unknown

```console
$ docker pull redis@sha256:2bdad6803ed6d3bea757f931e66fde8bdb2ae47e2a2690cf6126108ad2f97535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.4 KB (493442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4cb0d5c1730e23a2b17b4956f3b477c9a97090093a8cd4d61fb232dbb54dbe4`

```dockerfile
```

-	Layers:
	-	`sha256:2a38e27dc0c06f31e7d76c148fecff587ebbfbd9c0fa492146ca92aec463af5b`  
		Last Modified: Fri, 24 Jul 2026 17:38:24 GMT  
		Size: 462.1 KB (462084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a531243e473e78560637f260bd891af5535447b5cb952f7458ab96e84f42561f`  
		Last Modified: Fri, 24 Jul 2026 17:38:24 GMT  
		Size: 31.4 KB (31358 bytes)  
		MIME: application/vnd.in-toto+json

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:14d1a6b86779f306d7fc20384f531a54afbf3e0ebdfe637c3771c401a8619314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18672212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336cbfb61d9bd18b306eacba339ffe96e07d4708eaf2751636275f0fae2b771e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:21 GMT
RUN set -eux; 	addgroup -S -g 1000 redis; 	adduser -S -G redis -u 999 redis # buildkit
# Thu, 30 Jul 2026 20:00:23 GMT
RUN set -eux; 	apk add --no-cache 		tzdata 		setpriv 	; # buildkit
# Thu, 30 Jul 2026 20:02:28 GMT
ENV REDIS_VERSION=8.10.0
# Thu, 30 Jul 2026 20:02:28 GMT
ARG REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz
# Thu, 30 Jul 2026 20:02:28 GMT
ARG REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
# Thu, 30 Jul 2026 20:02:28 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		dpkg-dev dpkg 		gcc 		linux-headers 		make 		musl-dev 		openssl-dev 		g++; 		arch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	case "$arch" in 		'amd64' | 'arm64') BUILD_WITH_MODULES=yes ;; 		*) echo >&2 "Modules are NOT supported! unsupported architecture: '$arch'"; BUILD_WITH_MODULES=no ;; 	esac; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 	apk add --no-cache --virtual .module-build-deps 		autoconf 		automake 		bash 		bsd-compat-headers 		build-base 		cargo 		clang21 		clang21-static 		clang21-libclang 		cmake 		curl 		g++ 		git 		libffi-dev 		libgcc 		libtool 		llvm21-dev 		lld21 		ncurses-dev 		openssh 		openssl  		py-virtualenv 		py3-cryptography 		py3-pip 		py3-virtualenv 		python3 		python3-dev 		rsync 		tar 		unzip 		which 		xsimd 		xz; 	fi; 		pip install -q --upgrade setuptools &&  pip install -q --upgrade pip && PIP_BREAK_SYSTEM_PACKAGES=1 pip install -q addict toml jinja2 ramp-packer ;	wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -E '^ *createBoolConfig[(]"protected-mode",.*, *1 *,.*[)],$' /usr/src/redis/src/config.c; 	sed -ri 's!^( *createBoolConfig[(]"protected-mode",.*, *)1( *,.*[)],)$!\10\2!' /usr/src/redis/src/config.c; 	grep -E '^ *createBoolConfig[(]"protected-mode",.*, *0 *,.*[)],$' /usr/src/redis/src/config.c; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	extraJemallocConfigureFlags="--build=$gnuArch"; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64 | i386 | x32) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=12" ;; 		*) extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-page=16" ;; 	esac; 	extraJemallocConfigureFlags="$extraJemallocConfigureFlags --with-lg-hugepage=21"; 	grep -F 'cd jemalloc && ./configure ' /usr/src/redis/deps/Makefile; 	sed -ri 's!cd jemalloc && ./configure !&'"$extraJemallocConfigureFlags"' !' /usr/src/redis/deps/Makefile; 	grep -F "cd jemalloc && ./configure $extraJemallocConfigureFlags " /usr/src/redis/deps/Makefile; 		export RUST_DYN_CRT=1; 	export PATH="/usr/lib/llvm21/bin:$PATH"; 	export BUILD_TLS=yes; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		export LTO=1; 		make -C /usr/src/redis/modules install-rust INSTALL_RUST_TOOLCHAIN=yes; 		make -C /usr/src/redis -j "$(nproc)" deploy; 		make -C /usr/src/redis/modules uninstall-rust INSTALL_RUST_TOOLCHAIN=yes; 	else 		make -C /usr/src/redis -j "$(nproc)" deploy redis; 	fi; 	rm -r /usr/src/redis; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redis-rundeps $runDeps; 	if [ "$BUILD_WITH_MODULES" = "yes" ]; then 		apk del --no-network .module-build-deps; 	fi; 	apk del --no-network .build-deps; 	rm -rf ~/.cache ~/.gitconfig; 		redis-cli --version; 	redis-server --version; # buildkit
# Thu, 30 Jul 2026 20:02:29 GMT
# ARGS: REDIS_DOWNLOAD_URL=https://github.com/redis/redis/releases/download/8.10.0/redis-full.tar.gz REDIS_DOWNLOAD_SHA=021973d690498682372505c8c0da934e010eb5ae7db9438dcf5a6d78a9e6a5b8
RUN mkdir /data && chown redis:redis /data # buildkit
# Thu, 30 Jul 2026 20:02:30 GMT
WORKDIR /data
# Thu, 30 Jul 2026 20:02:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 20:02:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:02:31 GMT
EXPOSE map[6379/tcp:{}]
# Thu, 30 Jul 2026 20:02:31 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af93f77622b3c5226e0e3f884e465b94bbce26634b2bca2981f206b119f847a`  
		Last Modified: Thu, 30 Jul 2026 20:02:59 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77811a535bf19e65a7e313f3d9336f904e23064c1e04bf34e0f501e82afb0215`  
		Last Modified: Thu, 30 Jul 2026 20:02:59 GMT  
		Size: 199.2 KB (199166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcea2cadd06cc3f64aa14b6b91d5bd7a0809646edbfc80ddce42b1f04e7b9289`  
		Last Modified: Thu, 30 Jul 2026 20:03:01 GMT  
		Size: 14.8 MB (14762606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64bbe90d2151a4b0fae000a7c850242af086691bca39255045854f21a1dfb1dc`  
		Last Modified: Thu, 30 Jul 2026 20:02:59 GMT  
		Size: 100.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d92ff8b3a817bf9bac165be626be2b7498f8e70525642e4af3bb6ba995bdcf`  
		Last Modified: Thu, 30 Jul 2026 20:03:01 GMT  
		Size: 2.1 KB (2110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redis:alpine` - unknown; unknown

```console
$ docker pull redis@sha256:1208382c1df849f3689903046edaa28ec7c97aa2ce5b49ba7f877f9735e25140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.0 KB (492988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bc4514d26adbccfcd8828b821b5922e61c9d2f4abd338d8eb8bb9471fa8f60d`

```dockerfile
```

-	Layers:
	-	`sha256:c013643c677ff6a6b786026c33cff931acc299ae345ebc4dbd7c7ff71888d8af`  
		Last Modified: Thu, 30 Jul 2026 20:03:00 GMT  
		Size: 462.0 KB (462040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb0c7823b49fdcd0f347964811e022800549220e684f1e67bd2f9c36b15c87f9`  
		Last Modified: Thu, 30 Jul 2026 20:02:59 GMT  
		Size: 30.9 KB (30948 bytes)  
		MIME: application/vnd.in-toto+json
