## `ruby:3-alpine`

```console
$ docker pull ruby@sha256:aa205a3ebbf558c304cd135c197af8e80cf6c26193ec4b5862763562f1c38426
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

### `ruby:3-alpine` - linux; amd64

```console
$ docker pull ruby@sha256:06e9821f8b9412a0a6ca9967596bcd6cba539ad661b02bf1758ffa8383b7ba93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43120545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddfc31e0fb2ed824ccfbc801e6f5cb4d1a3f122d4f7f2a685dff5c336a85b33`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:01:51 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 23:04:14 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:04:14 GMT
ENV RUBY_VERSION=3.4.11
# Wed, 21 Oct 2026 23:04:14 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.11.tar.xz
# Wed, 21 Oct 2026 23:04:14 GMT
ENV RUBY_DOWNLOAD_SHA256=f79c6e789ce4f30f77c88a40b23b93e2547c512a843dc17db27ab1f5cc66f4e4
# Wed, 21 Oct 2026 23:04:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 23:04:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 23:04:14 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 23:04:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:04:14 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 23:04:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3002d7a3ecb2eb3fbe6816b76de3ad9a0f52b6c162322d9218f6b893ac7719d`  
		Last Modified: Wed, 21 Oct 2026 23:04:21 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed08ad8bd4f8fd2438b6ea0bb73775d65ab86a69ec9ae2ba19663154ea4337bf`  
		Last Modified: Wed, 21 Oct 2026 23:04:22 GMT  
		Size: 39.3 MB (39267108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95c24f231393a7c597fded4615b2a67010f49524b796ae24264ceb32169055c`  
		Last Modified: Wed, 21 Oct 2026 23:04:21 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-alpine` - unknown; unknown

```console
$ docker pull ruby@sha256:eb088a80d7d4a8995400c8804fb3f5b37776127e753ca8966eb848d493ffd57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 KB (229927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b955c8d68ce116250702a5aafbce8d074997302d522320d01507ceaafadd1ec`

```dockerfile
```

-	Layers:
	-	`sha256:96f6b09772aeb2aacbfe5a2d16180290093e19a54fe9964cfff1a1c966a76b84`  
		Last Modified: Wed, 21 Oct 2026 23:04:21 GMT  
		Size: 206.2 KB (206172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7175447988dc4cc0f715a72671ab612c2265317fca1a14200287478053095311`  
		Last Modified: Wed, 21 Oct 2026 23:04:21 GMT  
		Size: 23.8 KB (23755 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-alpine` - linux; arm variant v6

```console
$ docker pull ruby@sha256:8f03e1dc3ad43a24b39ae28c1cef0d1c5125c81080fe517ee4c4fae7e09431eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38454011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a87a349fb9d2e37b943dde1642613152143c08a87b0d2911e7bb73e537f0f4a`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:35:30 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 23:37:58 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:37:58 GMT
ENV RUBY_VERSION=3.4.11
# Wed, 21 Oct 2026 23:37:58 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.11.tar.xz
# Wed, 21 Oct 2026 23:37:58 GMT
ENV RUBY_DOWNLOAD_SHA256=f79c6e789ce4f30f77c88a40b23b93e2547c512a843dc17db27ab1f5cc66f4e4
# Wed, 21 Oct 2026 23:37:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 23:37:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 23:37:58 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 23:37:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:37:58 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 23:37:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4946244fe8980a3337c81a46861c226173b3456a9b4790c6716fba1613e5c76c`  
		Last Modified: Wed, 21 Oct 2026 23:38:04 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0896c7c0d7e72789178131b5630bc80575e6fcbe675900b62905b5dae45eb61c`  
		Last Modified: Wed, 21 Oct 2026 23:38:05 GMT  
		Size: 34.9 MB (34895391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48be2de1a2c69881f04803c696d9558e530588b72d5bae2fcbbd815ce0f6155e`  
		Last Modified: Wed, 21 Oct 2026 23:38:04 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-alpine` - unknown; unknown

```console
$ docker pull ruby@sha256:b1a80999638716bdb2aec5b3f9f154e4c95f4cca1beca6f8a34d9050ef026c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 KB (23662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a6823958c6e3710f51fb714505ffb6a4237e6b61b722be7da7c92ca1df14f3`

```dockerfile
```

-	Layers:
	-	`sha256:fe32a9a50a2efc08a142077048133b4551732d75c6eb4337b6c1639c897ad77c`  
		Last Modified: Wed, 21 Oct 2026 23:38:04 GMT  
		Size: 23.7 KB (23662 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-alpine` - linux; arm variant v7

```console
$ docker pull ruby@sha256:1f703391492f5372e317208e825803a8bb843aae2aea1996b98026f2f1f61835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (38019836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d223b0df1d045ee7565658180a2cd74680fa529479b9fac45cdba0bd8a917ceb`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:40:23 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 23:42:53 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:42:53 GMT
ENV RUBY_VERSION=3.4.11
# Wed, 21 Oct 2026 23:42:53 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.11.tar.xz
# Wed, 21 Oct 2026 23:42:53 GMT
ENV RUBY_DOWNLOAD_SHA256=f79c6e789ce4f30f77c88a40b23b93e2547c512a843dc17db27ab1f5cc66f4e4
# Wed, 21 Oct 2026 23:42:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 23:42:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 23:42:53 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 23:42:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:42:53 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 23:42:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145679b30abd8792ac2372a02a4e1a015fbf838de782b5e6636327e0addb6ad0`  
		Last Modified: Wed, 21 Oct 2026 23:43:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0019a8e83011bbafea679acc4a89ad973e7e36b4b45ab3a77cdc17a9e082901b`  
		Last Modified: Wed, 21 Oct 2026 23:43:02 GMT  
		Size: 34.8 MB (34752851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7772a5f85a489498811616f8925de326862b70183cfc5a733b31c8e9b30f30`  
		Last Modified: Wed, 21 Oct 2026 23:43:01 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-alpine` - unknown; unknown

```console
$ docker pull ruby@sha256:2358b9f57f9c8f42630098edc1712c7b4903e0da51852f14b251ec3a7cc3a040
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 KB (229451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20ac2b8821b356562d8a9356bb2fae12d79f6caa3ff3ceccdfbabe9eabba007`

```dockerfile
```

-	Layers:
	-	`sha256:11744b8e110219a2c7ae8120e1b00e81b1091bd390f698992875ac58e8b0edf1`  
		Last Modified: Wed, 21 Oct 2026 23:43:01 GMT  
		Size: 205.6 KB (205574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:326654bb35e19b3964af1310c2a2adcbe86f3b0c86f4fe4c8303c629ed8628e4`  
		Last Modified: Wed, 21 Oct 2026 23:43:01 GMT  
		Size: 23.9 KB (23877 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-alpine` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:7de8bf5c9d6f962231839ad4d38b79216961f42e9d4cb705b314407e0314e6f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43517556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13b45452393b5a01171d2f807076ce1081d418cec4cd8f6a8f90a0086a98625`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:25:39 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 23:31:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:31:01 GMT
ENV RUBY_VERSION=3.4.11
# Wed, 21 Oct 2026 23:31:01 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.11.tar.xz
# Wed, 21 Oct 2026 23:31:01 GMT
ENV RUBY_DOWNLOAD_SHA256=f79c6e789ce4f30f77c88a40b23b93e2547c512a843dc17db27ab1f5cc66f4e4
# Wed, 21 Oct 2026 23:31:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 23:31:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 23:31:01 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 23:31:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:31:01 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 23:31:01 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a7808f2d98044357cb2b174b95fa5977f2e271906282b308795a8bd371b293`  
		Last Modified: Wed, 21 Oct 2026 23:28:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aaa7380342685764bd7e56e6b65a1194963daacdde0872e6ff0206fce138495`  
		Last Modified: Wed, 21 Oct 2026 23:31:10 GMT  
		Size: 39.3 MB (39326740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eadfc0bfe2480b210df4356fcf1abb33ea4b3a9871d229fb1e4348f80e10aaf6`  
		Last Modified: Wed, 21 Oct 2026 23:31:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-alpine` - unknown; unknown

```console
$ docker pull ruby@sha256:8701205ef68e273b28036f2abe63014dd68c4dcb9d038c49857d71ec8dbd14ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 KB (229515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038597866ebc3b33394b0a0a02daa1603b37710d3ec8f7e997c6b56af85f9df4`

```dockerfile
```

-	Layers:
	-	`sha256:957d6a600d391f878adec1fba7a238ad64437599d0f4ffedfc1f2eeb825b0c8b`  
		Last Modified: Wed, 21 Oct 2026 23:31:09 GMT  
		Size: 205.6 KB (205602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1135471158c7e95bcc7844cf450e28bf765a8285e03e76a117e8440e97b55492`  
		Last Modified: Wed, 21 Oct 2026 23:31:09 GMT  
		Size: 23.9 KB (23913 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-alpine` - linux; 386

```console
$ docker pull ruby@sha256:c8e07ca07e182d2835551cb24b24b74268ddf6f605c9f6a82cec99c7ea2392c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38413660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e648b8e95b75e60175bfec5d7da2ab277cccea2d38a846fd8d686ca1cdfc239`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:22:38 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 23:24:56 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:24:56 GMT
ENV RUBY_VERSION=3.4.11
# Wed, 21 Oct 2026 23:24:56 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.11.tar.xz
# Wed, 21 Oct 2026 23:24:56 GMT
ENV RUBY_DOWNLOAD_SHA256=f79c6e789ce4f30f77c88a40b23b93e2547c512a843dc17db27ab1f5cc66f4e4
# Wed, 21 Oct 2026 23:24:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 23:24:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 23:24:56 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 23:24:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:24:56 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 23:24:56 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1428b253a42c5c3d9b7a79e521e5bd72ae249d6334e7accdd432c018d072ab9`  
		Last Modified: Wed, 21 Oct 2026 23:25:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1eff524a40248f6458c49c5da87e271c7a1408e616fefcde4dcac7924beb03`  
		Last Modified: Wed, 21 Oct 2026 23:25:04 GMT  
		Size: 34.7 MB (34734335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a8fd85f08160a8e18f8a784a0f2344303d5f51dcd8ef32e27879ddc609a30b`  
		Last Modified: Wed, 21 Oct 2026 23:25:03 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-alpine` - unknown; unknown

```console
$ docker pull ruby@sha256:ce5730e137c359299ded55982e57c5951062e711e8ba73859c1b3c17dbc99b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 KB (226856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af2dab945b87664a384db1f456f9fec91e3c38787192c3df8052a20c74c25b40`

```dockerfile
```

-	Layers:
	-	`sha256:cafac22e09b1fd477cfa2aac564d7db17a57680e25422add95d4c7f68a02f8d1`  
		Last Modified: Wed, 21 Oct 2026 23:25:03 GMT  
		Size: 203.1 KB (203147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bd5e27baac9e8ec7e37fc52f2f7219342604edf76ee1b284d69f82caa86735e`  
		Last Modified: Wed, 21 Oct 2026 23:25:03 GMT  
		Size: 23.7 KB (23709 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-alpine` - linux; ppc64le

```console
$ docker pull ruby@sha256:bea96e7c17ea1dc3f0909f57c6fe8f155257ec4fcc494b82f9a0f5dbb2860022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40463559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb963ffa5dfdf7064d8b24e1e68a5a2a48440994cffb1e2562565961a97b1a4`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 14:59:04 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 22 Oct 2026 15:17:39 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 15:17:39 GMT
ENV RUBY_VERSION=3.4.11
# Thu, 22 Oct 2026 15:17:39 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.11.tar.xz
# Thu, 22 Oct 2026 15:17:39 GMT
ENV RUBY_DOWNLOAD_SHA256=f79c6e789ce4f30f77c88a40b23b93e2547c512a843dc17db27ab1f5cc66f4e4
# Thu, 22 Oct 2026 15:17:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 22 Oct 2026 15:17:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Oct 2026 15:17:39 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Oct 2026 15:17:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 15:17:40 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 22 Oct 2026 15:17:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585b527e6e2c71e9cf435b648fa95a37e4d23d52f2a12cd841010a730d4001b3`  
		Last Modified: Thu, 22 Oct 2026 15:07:51 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377be354207fc958d56fb48d05f085b83ae2a1989bfd2f90f53b38930d48a633`  
		Last Modified: Thu, 22 Oct 2026 15:18:00 GMT  
		Size: 36.6 MB (36642408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3df9c9aed7ecfd6dc3091de8bd75f4dfa8f558fa2cf43ae1f3c65a3d94fea87`  
		Last Modified: Thu, 22 Oct 2026 15:17:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-alpine` - unknown; unknown

```console
$ docker pull ruby@sha256:e71aaf83339ecb1154fb74cf54c2ab5a0d599a8b5bcd1f8f35ce9b14da1f07a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 KB (226392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a495549531c436312d4c7fc06a9230a7e8529406943d42f7777b80bc2c50a6`

```dockerfile
```

-	Layers:
	-	`sha256:6c6482f19eecfa6ad38e2256fea4f92fad606106d0731485c8fbc591f86c7763`  
		Last Modified: Thu, 22 Oct 2026 15:17:59 GMT  
		Size: 202.6 KB (202577 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c27bd42d15a57e43d57ea2cdf7ab4ed698fd0cc7518cf2c12f585b9a7ad5b25a`  
		Last Modified: Thu, 22 Oct 2026 15:17:59 GMT  
		Size: 23.8 KB (23815 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-alpine` - linux; riscv64

```console
$ docker pull ruby@sha256:0d5e4d0aca1bd70ed59675f7c449e7f5f2f9aeb8cc6b1ad8fb8fd5fe91852112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43930046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0417258606ed78ac44f9de98b7b3ef8f51093c03e4eb26ae5f278b140e9e15d5`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 12:41:16 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 01 Oct 2026 05:42:16 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 05:42:16 GMT
ENV RUBY_VERSION=3.4.11
# Thu, 01 Oct 2026 05:42:16 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.11.tar.xz
# Thu, 01 Oct 2026 05:42:16 GMT
ENV RUBY_DOWNLOAD_SHA256=f79c6e789ce4f30f77c88a40b23b93e2547c512a843dc17db27ab1f5cc66f4e4
# Thu, 01 Oct 2026 05:42:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 01 Oct 2026 05:42:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 01 Oct 2026 05:42:16 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 01 Oct 2026 05:42:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 05:42:17 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 01 Oct 2026 05:42:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0741f3af4bee38e038948770767557acb9075c6b4301c41c7d0e72a85a8a902`  
		Last Modified: Tue, 22 Sep 2026 15:12:43 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb16747c996fc67094cdcf532eb43589230e536d266e17c74a030f7212dcbe92`  
		Last Modified: Thu, 01 Oct 2026 05:43:50 GMT  
		Size: 40.4 MB (40354347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0ef7f4d5e00e082ec20daf8838d82741543f13d86136b9b41e847f7bcb8d26`  
		Last Modified: Thu, 01 Oct 2026 05:43:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-alpine` - unknown; unknown

```console
$ docker pull ruby@sha256:e43f32b8640315d92996528c2413b1d49c1afdcef2fd4f8058249723e860ae75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 KB (226388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a8491f81b94c1ddee822dc5d4738f71b911b320fa4919969f5bb66f2be0563`

```dockerfile
```

-	Layers:
	-	`sha256:01dd26f423bad6bb3e203a08dbf4584f862cbe1a288aa8d7d7dbce0fc3c0150f`  
		Last Modified: Thu, 01 Oct 2026 05:43:44 GMT  
		Size: 202.6 KB (202573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8da5c384d7f0c51cf62cb4108a720d16dc6a4c2cce56074d08b74edd263cf80`  
		Last Modified: Thu, 01 Oct 2026 05:43:43 GMT  
		Size: 23.8 KB (23815 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-alpine` - linux; s390x

```console
$ docker pull ruby@sha256:b2bd750c0e735807c023c8cb9a71b690ba8a87a337e321369afa516a2f8fc047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39858662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784fc8e6d83b3d874b20fc8448dff044f7580adfad707eb212ec722e570ac1a3`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 00:05:22 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 22 Oct 2026 00:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:11:29 GMT
ENV RUBY_VERSION=3.4.11
# Thu, 22 Oct 2026 00:11:29 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.11.tar.xz
# Thu, 22 Oct 2026 00:11:29 GMT
ENV RUBY_DOWNLOAD_SHA256=f79c6e789ce4f30f77c88a40b23b93e2547c512a843dc17db27ab1f5cc66f4e4
# Thu, 22 Oct 2026 00:11:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 22 Oct 2026 00:11:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Oct 2026 00:11:29 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Oct 2026 00:11:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 00:11:30 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 22 Oct 2026 00:11:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01586546076f36cadfad0996c62e08255a6e1d3d2ec838d399d765084374b53c`  
		Last Modified: Thu, 22 Oct 2026 00:08:41 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1001529b49110d377aeaf56bf537c144831e09a6589bcb804536a53120536f58`  
		Last Modified: Thu, 22 Oct 2026 00:11:42 GMT  
		Size: 36.1 MB (36138624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45f64d1f27f85d87caaf9f0ce314c3019d5bee1e4bb06b9217e16a8da0811db`  
		Last Modified: Thu, 22 Oct 2026 00:11:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-alpine` - unknown; unknown

```console
$ docker pull ruby@sha256:c6c9be88931725ea566af2f3c74fee84796d38b59edf14a8325e7605d201734e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 KB (226286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7cdef5163cb3ff7cf584fbe79903f7497273908d7fc4f54596bdabf74bea1f1`

```dockerfile
```

-	Layers:
	-	`sha256:335036e8dbbb0f5259749fe786758f71dfa99c2de2fbdeb5207e8f2efd54b94f`  
		Last Modified: Thu, 22 Oct 2026 00:11:41 GMT  
		Size: 202.5 KB (202531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f41bcc3413a03730a2adc254f6bf2a4bfe8aa2adfdd5354f0bf36c835a9a77b`  
		Last Modified: Thu, 22 Oct 2026 00:11:41 GMT  
		Size: 23.8 KB (23755 bytes)  
		MIME: application/vnd.in-toto+json
