## `ruby:4-alpine3.23`

```console
$ docker pull ruby@sha256:f243adcdb7619b28b77f7c5bb4e57e51c09855d71bd260f8e24b41de7a7555a0
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
$ docker pull ruby@sha256:919c612112b753a759610d6f040ecc147e535214d7486d8eab86db0b0740c1d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50032571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01ed89ac7759604ae56d5af3ec32b4249aafafec7b3a45a0eda4e7d1b2091aa`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:28:34 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 21:31:03 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:31:03 GMT
ENV RUBY_VERSION=4.0.7
# Wed, 21 Oct 2026 21:31:03 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Wed, 21 Oct 2026 21:31:03 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Wed, 21 Oct 2026 21:31:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 21:31:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 21:31:03 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 21:31:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:31:03 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 21:31:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1543913b71dd4e3f070492b17bb336a9ecf466114ae44a59328ff29fd3494c3`  
		Last Modified: Wed, 21 Oct 2026 21:31:11 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8f27c2b0f6f5dbc2618e0884f590ff4da177885078e422b3a85681beadc446`  
		Last Modified: Wed, 21 Oct 2026 21:31:13 GMT  
		Size: 46.2 MB (46180016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b639c5c528b2d4b3361205e1ccc729edf644d625ad0b4c49fbf2350e1968bbcc`  
		Last Modified: Wed, 21 Oct 2026 21:31:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:9c31b34f5573f36cde409fc0fd2d5ef483c23c09dcc1fdc1682ab17e141c8231
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 KB (224832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9447cd9994b8fad7264dd6f21d783585d66ca0e4c59a36653b7acf79f23e723`

```dockerfile
```

-	Layers:
	-	`sha256:fc2adf5ec1ca2e4c0f0aba29db86638bfcb574a25302f69c4e54eaf1da6b7a5e`  
		Last Modified: Wed, 21 Oct 2026 21:31:11 GMT  
		Size: 201.6 KB (201576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d61e4baf445c005f13f4999da287b2fa4f6c0c5444222a7972cca986bab4842a`  
		Last Modified: Wed, 21 Oct 2026 21:31:11 GMT  
		Size: 23.3 KB (23256 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; arm variant v6

```console
$ docker pull ruby@sha256:68c9b8a1fa82c365515392011ca951f8ab3150f44492344c7f6386a4b47d7b54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.7 MB (42653271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185123981ba8f4d1983a4327274fce19b85a65c2d6b06af98ca068319bc4f624`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:08:04 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 21:10:44 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:10:44 GMT
ENV RUBY_VERSION=4.0.7
# Wed, 21 Oct 2026 21:10:44 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Wed, 21 Oct 2026 21:10:44 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Wed, 21 Oct 2026 21:10:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 21:10:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 21:10:44 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 21:10:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:10:44 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 21:10:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502aed995ce515934a780e6641f29017458721025709923f86322a8188ac896a`  
		Last Modified: Wed, 21 Oct 2026 21:10:51 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d8d9bfecb79afdaccb32cff0a11b660d860478401014c9a45993bdbd06e287`  
		Last Modified: Wed, 21 Oct 2026 21:10:52 GMT  
		Size: 39.1 MB (39094755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3606a04071a8b51f4a53dfe13d961b206e8e816566e4ee3eb3c5ede9be85bc1f`  
		Last Modified: Wed, 21 Oct 2026 21:10:50 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:eec7713172539426ca61f5dc719bec3036a7ae5ecd8870e2149ddf7b04dd306b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7c5bd8994fe0caf8df168c2cc87981e314be4d3219eff616fc3b2ec7cca13a`

```dockerfile
```

-	Layers:
	-	`sha256:dc829282c9234e2faa0a57a2d05b5d71b0f75f54a68b2e956472ead0e1426f1d`  
		Last Modified: Wed, 21 Oct 2026 21:10:51 GMT  
		Size: 23.1 KB (23147 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; arm variant v7

```console
$ docker pull ruby@sha256:39cbe21f0c061692a88c3330bce86282d0155ecc38253f19aaaebaac64c48909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42189716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b981be880f38f8917cfa7d79e44f0b0714b0352c0f4bc9426f0726e7c142670`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:31:44 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 21:34:15 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:34:15 GMT
ENV RUBY_VERSION=4.0.7
# Wed, 21 Oct 2026 21:34:15 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Wed, 21 Oct 2026 21:34:15 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Wed, 21 Oct 2026 21:34:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 21:34:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 21:34:15 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 21:34:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:34:15 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 21:34:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a508f52f67f5e545cb800c6777ee504bb4fea2bbe48b45c83753ae75dc52fe`  
		Last Modified: Wed, 21 Oct 2026 21:34:22 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4142489ce91020c5009f98cc7c2f982e3b53a543f41b431abc4aae52837e758e`  
		Last Modified: Wed, 21 Oct 2026 21:34:23 GMT  
		Size: 38.9 MB (38922350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4cb35ee6c04f90ced8f7b27e5763739a76dfa2f66300b13b8acdd6f677f371`  
		Last Modified: Wed, 21 Oct 2026 21:34:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:5e62ada9476855902941702e7068dd2e29fc89ccac3d0ded251fed09463affb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.3 KB (224324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f050addf82e49c960c01a2ef03c86a8a20322147bec05629f4b32497cc1f5d1a`

```dockerfile
```

-	Layers:
	-	`sha256:8ad69f932b8fec95c8f4ab08557212695e2ebbe352d3575ca187013eedbcbd91`  
		Last Modified: Wed, 21 Oct 2026 21:34:22 GMT  
		Size: 201.0 KB (200962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a0b02bc823f3fb2929fb794559c19ed50848f50199dc8b0df15e4d3ffe41ee`  
		Last Modified: Wed, 21 Oct 2026 21:34:22 GMT  
		Size: 23.4 KB (23362 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:5572173e56f21c73032094b816e24730e4a643a703864cfd8ef5a55f99bcc459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50349060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d56ea6135a850ffc067bbba01b35b86e1645f31f2e3c09d5a122838b9f6cdb9`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:55 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 21:35:25 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:35:25 GMT
ENV RUBY_VERSION=4.0.7
# Wed, 21 Oct 2026 21:35:25 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Wed, 21 Oct 2026 21:35:25 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Wed, 21 Oct 2026 21:35:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 21:35:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 21:35:25 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 21:35:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:35:25 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 21:35:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d47af07119250ec556b91f17d7831b408f7bac2a8b9c41ef1db05b0c3d1c874`  
		Last Modified: Wed, 21 Oct 2026 21:35:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24063614be801b751b42b746b821be028aa3426362be28faf82a252a549cedab`  
		Last Modified: Wed, 21 Oct 2026 21:35:35 GMT  
		Size: 46.2 MB (46159239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2015af36f6d18a4b49034bc702a520d1297722ec48ae639cd64eaceaff5eeb26`  
		Last Modified: Wed, 21 Oct 2026 21:35:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:a6d89d5ed85c664a9645ec24923acf0806d2a56df5fc86c63e32025c3cc54043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 KB (224372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28be752044f328726df1cb52bf3bb124144560aedd3a281063d13118bd8de07d`

```dockerfile
```

-	Layers:
	-	`sha256:b1c93a95de83eaec43b49e2513648af21714f46b966e90c247ba6dd611daddf3`  
		Last Modified: Wed, 21 Oct 2026 21:35:33 GMT  
		Size: 201.0 KB (200982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c1f9f9ce74b733c4c44d7beea7155dd12fb1876059a35a5ec12b4d659ccd45c`  
		Last Modified: Wed, 21 Oct 2026 21:35:33 GMT  
		Size: 23.4 KB (23390 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; 386

```console
$ docker pull ruby@sha256:ab6d21149eb3ec6710195d4e9b60b75afc74dfcebf7f18483e694f65d359d497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42618060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a17ecfe08e0e7b58af75e22af0823ab713adb3db00c8bde0f2fd3776ef0ee7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:03 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 21:20:22 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:20:22 GMT
ENV RUBY_VERSION=4.0.7
# Wed, 21 Oct 2026 21:20:22 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Wed, 21 Oct 2026 21:20:22 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Wed, 21 Oct 2026 21:20:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 21:20:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 21:20:22 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 21:20:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:20:22 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 21:20:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe033181e73a154d513ef94398e9a17ece370fadc8a22a1228cf84898b3f9d8`  
		Last Modified: Wed, 21 Oct 2026 21:20:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa3590866c641f8eff4aa952c59bb61e8f09e0156f80943d776c767ef8f66b9`  
		Last Modified: Wed, 21 Oct 2026 21:20:31 GMT  
		Size: 38.9 MB (38940426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99fcb5dbfdf8eaf202af8c4380e7ffc8044bd9d8ddfdab95043306cbfee81c1`  
		Last Modified: Wed, 21 Oct 2026 21:20:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:24f77800feeb6b30139a829c1a0af0a1ffb0bef5f56718d571b9cace592cec54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.8 KB (221781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830cab54a48cc76493cd5c7c61438829d71d005357ba1b19a2ad2440185a52dc`

```dockerfile
```

-	Layers:
	-	`sha256:bcb55a2277762f1a6663426627632cc225aa3c7cc94859b2ed41a924e4b9988f`  
		Last Modified: Wed, 21 Oct 2026 21:20:30 GMT  
		Size: 198.6 KB (198561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faa427d93bce1f05126605a615265bac1646b197051613398091c6654121d77b`  
		Last Modified: Wed, 21 Oct 2026 21:20:30 GMT  
		Size: 23.2 KB (23220 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; ppc64le

```console
$ docker pull ruby@sha256:c8199a1ae31ea64dd5abe15db4929f3c4a26c17278fc99808adac041b2674d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44805394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334e35383db97975f3ae6b9b40a9a6ee63f4f173558313b431eee099689220ff`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 00:50:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 18 Sep 2026 00:54:41 GMT
ENV LANG=C.UTF-8
# Fri, 18 Sep 2026 00:54:41 GMT
ENV RUBY_VERSION=4.0.7
# Fri, 18 Sep 2026 00:54:41 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Fri, 18 Sep 2026 00:54:41 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Fri, 18 Sep 2026 00:54:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 18 Sep 2026 00:54:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 18 Sep 2026 00:54:41 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 18 Sep 2026 00:54:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 00:54:42 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 18 Sep 2026 00:54:42 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3620e9f0f896668ac4bd3f321d8882bb87016d3f0a6b4ca3ab9a2fe068c5dd1`  
		Last Modified: Fri, 18 Sep 2026 00:54:58 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c8bafe1b5c9043c06992776c9e21ca6b1f11c5506a9c355eb06023d9afae8a`  
		Last Modified: Fri, 18 Sep 2026 00:54:59 GMT  
		Size: 41.0 MB (40990299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6f5ce18352c94e6f4a7d32de6df31e1868b3595975bad9daaa8b5f301d2237`  
		Last Modified: Fri, 18 Sep 2026 00:54:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:e5fa8cfb4164db1733335445458534b6d8df77b9a7b82e5bfba9f972cf0f2ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 KB (221273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a04f15c4db747c38ae9b8095eb43729760c1ed532c18c04991f4f2e194f1ae9`

```dockerfile
```

-	Layers:
	-	`sha256:e87b7c4cd6c2f9eced4df5f4efcbf659fab8608a8ee37aaedb3ff15866439185`  
		Last Modified: Fri, 18 Sep 2026 00:54:58 GMT  
		Size: 198.0 KB (197969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4b2d6055ff133f25246bba414e2aaeac5c334de697aa256374b6243c73cee2a`  
		Last Modified: Fri, 18 Sep 2026 00:54:58 GMT  
		Size: 23.3 KB (23304 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; riscv64

```console
$ docker pull ruby@sha256:443d4e3a92dfcebc473aa7058d572285e253ed0572ed98594f8ebce03b125d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48094923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1278aa94b045d4372c86e3402cb6c4df3727a68c1a1b83a4fe9c01fe621ed3`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 15:13:31 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 22 Sep 2026 17:44:34 GMT
ENV LANG=C.UTF-8
# Tue, 22 Sep 2026 17:44:34 GMT
ENV RUBY_VERSION=4.0.7
# Tue, 22 Sep 2026 17:44:34 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Tue, 22 Sep 2026 17:44:34 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Tue, 22 Sep 2026 17:44:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 22 Sep 2026 17:44:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Sep 2026 17:44:34 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Sep 2026 17:44:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 17:44:34 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 22 Sep 2026 17:44:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4a55fbd28d2dbce7be86eb7bff5bd6f6ce100bc666cb6c02ec498595025cfd`  
		Last Modified: Tue, 22 Sep 2026 17:45:59 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62049e9c6570f5f51f88bfa710b65fdda46265f6d0767c69f0ffab6d10d1938`  
		Last Modified: Tue, 22 Sep 2026 17:46:06 GMT  
		Size: 44.5 MB (44518272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995702262f740b72e51d955c2447481b2533eb761ca7851718b80eee68b8dc60`  
		Last Modified: Tue, 22 Sep 2026 17:45:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:06ae540b9be755dc79360c72a454e3116a40cd1e9dc462aa59dbad33112bb627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 KB (221269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46875b109dad7e1169f2531114ede65beec3a0810459fd3e54b7afb9a7b08ba`

```dockerfile
```

-	Layers:
	-	`sha256:090ffaf823e1087a4d13317ddcae955d0c26b2eb5082fb213916c308c2fa5bec`  
		Last Modified: Tue, 22 Sep 2026 17:45:58 GMT  
		Size: 198.0 KB (197965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e0b4214dfc643e8c17b28a1fe3f9e3a35fc636d2f7166354163e69ffbc3d562`  
		Last Modified: Tue, 22 Sep 2026 17:45:59 GMT  
		Size: 23.3 KB (23304 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-alpine3.23` - linux; s390x

```console
$ docker pull ruby@sha256:69550a4048f0c7cbee1a79cbfbff9036603307c2706da92db1b786964d3c8b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44305323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041e792b555bd929185552bd05b053d196615adba9dd40b995eed6caaf05e764`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:07:39 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 21 Oct 2026 22:11:17 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:11:17 GMT
ENV RUBY_VERSION=4.0.7
# Wed, 21 Oct 2026 22:11:17 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.7.tar.xz
# Wed, 21 Oct 2026 22:11:17 GMT
ENV RUBY_DOWNLOAD_SHA256=47ef59413f7a4587ba6a6b78b14036eb5e36eec2ec0b90964801e88d56a3d375
# Wed, 21 Oct 2026 22:11:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 21 Oct 2026 22:11:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Oct 2026 22:11:17 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Oct 2026 22:11:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:11:17 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 21 Oct 2026 22:11:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b88f5fe42472096b65df464f2c69306b4488c70f76af8b8cf4b22cd5c037efc`  
		Last Modified: Wed, 21 Oct 2026 22:11:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e55e696f234c243589c28edcf2a750e5b73ec423c9d197620b90ec311a3a4793`  
		Last Modified: Wed, 21 Oct 2026 22:11:31 GMT  
		Size: 40.6 MB (40587877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369548940427c70c6236a2414452ed1cb27fb7a5d580656147832aac685c64fd`  
		Last Modified: Wed, 21 Oct 2026 22:11:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-alpine3.23` - unknown; unknown

```console
$ docker pull ruby@sha256:a3deaa55240d50d6166fa893bd2cc99b779394c7851e5e462bfa7875cf2270b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 KB (221191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f314eac4f8c517bf2b26e24e8a3265f4ba4676692879d758c281dbd224408c9d`

```dockerfile
```

-	Layers:
	-	`sha256:e8f0795b45d9e26d283fd8757e8696d419c6f07b81ebf9ee0d760b1733c82b1c`  
		Last Modified: Wed, 21 Oct 2026 22:11:30 GMT  
		Size: 197.9 KB (197935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36c4962633528bffa7ba734fe7eb822a35e5c4d4ec0f7184e8f289e152dab0d8`  
		Last Modified: Wed, 21 Oct 2026 22:11:30 GMT  
		Size: 23.3 KB (23256 bytes)  
		MIME: application/vnd.in-toto+json
