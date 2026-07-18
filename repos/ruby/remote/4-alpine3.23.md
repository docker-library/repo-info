## `ruby:4-alpine3.23`

```console
$ docker pull ruby@sha256:4d337707818921564ac698572b92b3ca178960bcd7f6c876e589d46afc057843
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

### `ruby:4-alpine3.23` - linux; amd64

```console
$ docker pull ruby@sha256:c1b27a6f6e302e09503647bac7e9a872acd503d4be89da030575a1da072f2cbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50024949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c30062cad772ea8defc96ac00eeeedc5d119332dca2b08986c6fcc502d292b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 16:53:39 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:56:09 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:56:09 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:56:09 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:56:09 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:56:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:56:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:56:09 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:56:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:56:09 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:56:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38dfe9d40ecfc781f9c511f48a3e3660413bec120fe977f659f9300c7373b459`  
		Last Modified: Tue, 14 Jul 2026 16:56:17 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74684e0886474e1302d88d828aba4b43875aedde102413ca2f71824d1763dc8e`  
		Last Modified: Tue, 14 Jul 2026 16:56:19 GMT  
		Size: 46.2 MB (46180199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3c450cd4b1623b048ce0dae65ae4287631292c72711a3c1d206ffee0c2c251`  
		Last Modified: Tue, 14 Jul 2026 16:56:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:2bc7154f5ba1be542076888829cc5b1718315a43a6a2248f856aab525752073f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.2 KB (224150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c623306f39a66783af025df6c05cbee31f8762a4686ec7f9960ac85e307b63`

```dockerfile
```

-	Layers:
	-	`sha256:8471ef71fbfcf296a07109a87ee493f00656ed3aeb81b825ebc576052538cf39`  
		Last Modified: Tue, 14 Jul 2026 16:56:17 GMT  
		Size: 201.6 KB (201582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c02f42f788fd8944239c7388dd939eed63f178b806f61b3075543aca086ef0a`  
		Last Modified: Tue, 14 Jul 2026 16:56:17 GMT  
		Size: 22.6 KB (22568 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; arm variant v6

```console
$ docker pull ruby@sha256:06fbe6c89297567a3879507b7afb89e8b1b9c890ecc9b48fa06e0fd1beaf5f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42634118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:708cb38ba3532e2a0355ac3ceb18e2d0488f917dd4332917a65f802572401bb7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 16:51:39 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:54:17 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:54:17 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:54:17 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:54:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:54:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:54:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:54:17 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:54:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:54:17 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:54:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff38b3200fcd0c38b8a01dca3d1a2c3f97a7d6f3a6a0f588da9fad7ced1fa369`  
		Last Modified: Tue, 14 Jul 2026 16:54:23 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d097702d0b3cfef0e6f0457b1c7314ed76da9f940eb2a6ea2e5e2a9cd46d86b`  
		Last Modified: Tue, 14 Jul 2026 16:54:24 GMT  
		Size: 39.1 MB (39081193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592d616bc74d40a3433f9dacb250f337c8d6b7b0f901532d10dd8c56f2a1b8fc`  
		Last Modified: Tue, 14 Jul 2026 16:54:23 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:62e50b98381a06cfeded68ed849a4e336334490ede2a0a88fa946a7c6144425f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 KB (22459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b79cc0ed07b0029586b088666738203bc12540c00d3aa5cc0b8ff3f935ab4c`

```dockerfile
```

-	Layers:
	-	`sha256:466cc731e6443200dc0809dada72bef7b48789b980fa1245ff96db85d88b07a2`  
		Last Modified: Tue, 14 Jul 2026 16:54:23 GMT  
		Size: 22.5 KB (22459 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; arm variant v7

```console
$ docker pull ruby@sha256:0f6a21dabc8a0b98069d8f23c724ff922e9f4874d4e76943b78c20e8c9aaa156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42178321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9900dfa2a41bd0c76459db1d78e987e3fe7d97ed542d0f7216a872297b633951`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 16:52:48 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:55:17 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:55:17 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:55:17 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:55:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:55:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:55:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:55:17 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:55:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:55:17 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:55:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167f3923fcfbb80c0e10b341ffdc025c2bd7c20c590dca0657edd4c2662b3e8a`  
		Last Modified: Tue, 14 Jul 2026 16:55:25 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d236d88fe46102f1c63f8a7821367de00a336b7476619c14f4996e4165b08a2`  
		Last Modified: Tue, 14 Jul 2026 16:55:27 GMT  
		Size: 38.9 MB (38916139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca12b9c473998a4911571e41d23825d34731d7a65cb51fd6ce240a98278f4a0`  
		Last Modified: Tue, 14 Jul 2026 16:55:25 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:1e31a76662c43517ad5e7cca1c4ee5336c7a1f1297076c32afa929d812d356f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 KB (223642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2f1f399bb4a1d22afb12ec4294d552b05b72351aeee166a84982eb663daadf`

```dockerfile
```

-	Layers:
	-	`sha256:0042f9f4dc8d3a07c6f83825c51bd17ab0ededc257cb4340513b84bace2d1806`  
		Last Modified: Tue, 14 Jul 2026 16:55:25 GMT  
		Size: 201.0 KB (200968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:421f7915d878005dbb13ca125dfb35653550be39c0a1d977627f06bebaddb338`  
		Last Modified: Tue, 14 Jul 2026 16:55:25 GMT  
		Size: 22.7 KB (22674 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:79d709a43554d6af23278425d61c31da17d2076e0e2691bbd0cd823cc35b3343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50362533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4ec6dfc8f8417784a3b37d1df892f17ffef6475a33914207fd52371dd3fd5d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 16:53:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:56:07 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:56:07 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:56:07 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:56:07 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:56:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:56:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:56:07 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:56:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:56:07 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:56:07 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b69c3fb140b628afbe7f98b210dc067e7eabc66bf486e5619310688acaaf0e`  
		Last Modified: Tue, 14 Jul 2026 16:56:16 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6253f03af699ae116305fc0c056d775c6e6d8053d5b38f911c9194c35890437`  
		Last Modified: Tue, 14 Jul 2026 16:56:17 GMT  
		Size: 46.2 MB (46180343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766f723d3f71db23143e6282fde069be8fc00da4fc45e12ba5dd6ffb96a242d8`  
		Last Modified: Tue, 14 Jul 2026 16:56:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:cb6996b509c5f8aff0c523cdb96f352d1a16735baae37a6e1872d066d8357de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 KB (223690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b872bee9b2d47bf7a85fb50d742a4b43aa8513efd6d0c7d147881a77392c2291`

```dockerfile
```

-	Layers:
	-	`sha256:a4aef673694f05337e5de821be393a209605ad492b899221e4b2165e12b2bc21`  
		Last Modified: Tue, 14 Jul 2026 16:56:16 GMT  
		Size: 201.0 KB (200988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ad5d4308ce4b215241e712399e1e03b18443086f8f470c0b9f141f8f6557f54`  
		Last Modified: Tue, 14 Jul 2026 16:56:16 GMT  
		Size: 22.7 KB (22702 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; 386

```console
$ docker pull ruby@sha256:9b8574e1a40af47fcd44cee75b31fe0878e7705dfca0d56a6bef2331efc72db4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42605752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4476f5c9a83e11e41a9fbc6541fb6b83d6ce55d2271e17fff6eeb985784d348`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Tue, 14 Jul 2026 16:53:41 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:55:58 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:55:58 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:55:58 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:55:58 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:55:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:55:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:55:58 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:55:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:55:58 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:55:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73356925c717db5b62dad38216c5544c9464039afcac8b43b17b071f3d7ad24c`  
		Last Modified: Tue, 14 Jul 2026 16:56:06 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3adfd3e21c8c685d326b70e5e509b5499ede9401dee5baa76e69fa317a88e25`  
		Last Modified: Tue, 14 Jul 2026 16:56:07 GMT  
		Size: 38.9 MB (38937433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ac5aeb7d8622463ad79c2a0f55b42c7a1c3459c6d0b7672f13dc6a2a8cbcbf`  
		Last Modified: Tue, 14 Jul 2026 16:56:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:2c6e5aa6cfb68178f7dc92dbd479800c1f030418dd201bf05681cf90aeb4a3d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 KB (221098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e481a69fae847941e1d96b1c288cfab3aaaf35c4eea1c582ea3e3659f0bab40`

```dockerfile
```

-	Layers:
	-	`sha256:660e18e5c880289b5b6390d3fef6222954e4ed92be0c0a58dd18f6da924df57a`  
		Last Modified: Tue, 14 Jul 2026 16:56:06 GMT  
		Size: 198.6 KB (198567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8216afcc852be466655b212afc28961af6cd3413015d9a85f8b2318f439a0bce`  
		Last Modified: Tue, 14 Jul 2026 16:56:06 GMT  
		Size: 22.5 KB (22531 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; ppc64le

```console
$ docker pull ruby@sha256:366ac3cb0a164f393ce712367cec540855cfb305bda3711c08b6d30eef1b2105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44780390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a648f86452f3bb18843423db23025526aa3d577cff20316aca9d99ffead629`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 15 Jul 2026 00:35:13 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 15 Jul 2026 00:38:32 GMT
ENV LANG=C.UTF-8
# Wed, 15 Jul 2026 00:38:32 GMT
ENV RUBY_VERSION=4.0.6
# Wed, 15 Jul 2026 00:38:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Wed, 15 Jul 2026 00:38:32 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Wed, 15 Jul 2026 00:38:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 15 Jul 2026 00:38:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 15 Jul 2026 00:38:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 15 Jul 2026 00:38:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 00:38:32 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 15 Jul 2026 00:38:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a5fbc1d96a79f05f990701c7bf04b24b8cb872fed1462cc72f450844b412f0`  
		Last Modified: Wed, 15 Jul 2026 00:38:52 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84d928c32e3da9fc75030d71c31d0f27ac92d74955e45d2082e0e8ccd36a3fc`  
		Last Modified: Wed, 15 Jul 2026 00:38:53 GMT  
		Size: 41.0 MB (40967761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5983c6942d6291eebbe764b4b7cd878f7fe8ccf02228a3d555563f1bcd24f3f`  
		Last Modified: Wed, 15 Jul 2026 00:38:52 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:a659cd8ddea50cfafc0aa6b80d83ab8fd383c631df451bf650f10b4d7d963563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.6 KB (220589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4791b262b5aa9d5d30c345a2f679fe79efa4392580fd30777454ef94213872`

```dockerfile
```

-	Layers:
	-	`sha256:6cb7bcbe48651d4b172538f162e32dda6ccb4c926f45c3b5074a1510858ca716`  
		Last Modified: Wed, 15 Jul 2026 00:38:52 GMT  
		Size: 198.0 KB (197975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b63335cabcb031fdba586a0d626c3d2047868648a042620156d4e99ee65b9793`  
		Last Modified: Wed, 15 Jul 2026 00:38:52 GMT  
		Size: 22.6 KB (22614 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; riscv64

```console
$ docker pull ruby@sha256:e0a60f728cd2f4157cc6ebdbcb03ff7b27e67e2f1feea6303b76e09ef99ed340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48067041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb112cd3fe59b79e3cbb89ddd27eb2d09f58c862839353644f57ff40c83b51f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Fri, 17 Jul 2026 18:10:15 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 17 Jul 2026 20:29:42 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 20:29:42 GMT
ENV RUBY_VERSION=4.0.6
# Fri, 17 Jul 2026 20:29:42 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Fri, 17 Jul 2026 20:29:42 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Fri, 17 Jul 2026 20:29:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 17 Jul 2026 20:29:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 17 Jul 2026 20:29:42 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 17 Jul 2026 20:29:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 20:29:43 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 17 Jul 2026 20:29:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63111e2fc11edfbc88c7f6d6429b0577169a1cc68244b5bc6416ffc0e3750d13`  
		Last Modified: Fri, 17 Jul 2026 20:31:08 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f071f5981faafd333eb4ca14d7f7de6ecc6c1b29ac86dcc8528591b686dfb3b7`  
		Last Modified: Fri, 17 Jul 2026 20:31:14 GMT  
		Size: 44.5 MB (44493471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe2fd758541a3d6639cefe979b6c24b3b561f9918aa94b9f81a7158bac0da0d`  
		Last Modified: Fri, 17 Jul 2026 20:31:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:5c96d4bf7ec15abeb8f25283a6944160130813016329f3d991bc3bc2dc7487a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.6 KB (220587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cede81ea110009fc5f8d8e84e5aaf759aefbfec960af461326ade2a036a52a9`

```dockerfile
```

-	Layers:
	-	`sha256:4184989389955533800eada9347f94a10a1e30b1918cea22abc8930d1f24adc7`  
		Last Modified: Fri, 17 Jul 2026 20:31:08 GMT  
		Size: 198.0 KB (197971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75866f1e70c61156498e3a8015b46046b9242f1d2275163c42d85f33b614d9b9`  
		Last Modified: Fri, 17 Jul 2026 20:31:08 GMT  
		Size: 22.6 KB (22616 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; s390x

```console
$ docker pull ruby@sha256:e0ec44dfa5f470a090f71fe68cec08f671851de09545f59ccadb421af2450deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44282470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfac0e73019097c0ef889917aa59553bb6de6cd2d40c987f93ae92119262d150`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Wed, 01 Jul 2026 00:07:41 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:56:37 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:56:37 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:56:37 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:56:37 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:56:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:56:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:56:37 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:56:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:56:37 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:56:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc3463036a052e3730a9615b2515cc324812a0abd4128a11870eed3784520e5`  
		Last Modified: Wed, 01 Jul 2026 00:10:20 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53eb5b94373dfded9521b90209193eac21f122178baf48fea6e9f4b18cf56804`  
		Last Modified: Tue, 14 Jul 2026 16:56:50 GMT  
		Size: 40.6 MB (40574892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8e1693d0b81b543caa35bdff00a0446cd20f39c6bbef13b5553cb782330386`  
		Last Modified: Tue, 14 Jul 2026 16:56:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:38797bb3235d91df806bcefb3cbc0951e29209aea3f24121f79f78901d7f6027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 KB (220509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3337bb26a114b54396c188c7280007e854dd9a443b2d9317872a544cca29fac2`

```dockerfile
```

-	Layers:
	-	`sha256:16a4f54e2ceceb7fa2731ea3e925bfef0e5fc7d3c768e027c6536f1e0a497052`  
		Last Modified: Tue, 14 Jul 2026 16:56:50 GMT  
		Size: 197.9 KB (197941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e98a868b3305c12b3a3d8abc3fb2c367fb81dbe0290ca20e5324b2f9610e37d5`  
		Last Modified: Tue, 14 Jul 2026 16:56:50 GMT  
		Size: 22.6 KB (22568 bytes)  
		MIME: application/vnd.in-toto+json
