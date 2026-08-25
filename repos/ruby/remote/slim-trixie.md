## `ruby:slim-trixie`

```console
$ docker pull ruby@sha256:005363a3f028ee2b4c7fdc6a7b3ebeed1ed2cf69b3e964d20b5690549aa23cdd
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ruby:slim-trixie` - linux; amd64

```console
$ docker pull ruby@sha256:75a93fb37a4d2b1bb72939f5d67c270cf7e531ae9c9144d3c5173c16c8d6bbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80777513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1157257440a449ec80aa1d0ec38b6a6998b1e73a3dd7c5fbce36185466cc32d4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:19:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:19:57 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 25 Aug 2026 01:22:19 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:22:19 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 25 Aug 2026 01:22:19 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 25 Aug 2026 01:22:19 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 25 Aug 2026 01:22:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 25 Aug 2026 01:22:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Aug 2026 01:22:19 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Aug 2026 01:22:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:22:19 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 25 Aug 2026 01:22:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e965c385f24ea9edf51f7dd821048c5487dcd030778ce11417d2650ebf461d7d`  
		Last Modified: Tue, 25 Aug 2026 01:22:28 GMT  
		Size: 1.3 MB (1280690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a4fdeff9ec8d636ea7d5fa26fe5b7e15ac07d99386c7285a732381158160d1`  
		Last Modified: Tue, 25 Aug 2026 01:22:28 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0624055d55f54fc351b73b44b0d04c7fc4569cfba82e85e03e8e0991858b470d`  
		Last Modified: Tue, 25 Aug 2026 01:22:30 GMT  
		Size: 49.7 MB (49703832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8468ca12879eb5a800382116c8b98f34521eaa7a10f37a6d90eafdb661ab1dd7`  
		Last Modified: Tue, 25 Aug 2026 01:22:28 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:87e3888143ce0fd01a5dcf3cdbb47da2772b8bf2184b02359a4aea76fdead005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2240644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a9195ea12b6ff786a20c154ab03e92c261201c0d7242598f8383401d86de2a`

```dockerfile
```

-	Layers:
	-	`sha256:e055666d1df9f8433c5a3796a5d436f34a41b91fba8ef67f8a2d48332980e980`  
		Last Modified: Tue, 25 Aug 2026 01:22:28 GMT  
		Size: 2.2 MB (2216325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:889fd48c846254ed90e0003706ed1c4167240e4fbbed29535bd6e4163494f05d`  
		Last Modified: Tue, 25 Aug 2026 01:22:28 GMT  
		Size: 24.3 KB (24319 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-trixie` - linux; arm variant v5

```console
$ docker pull ruby@sha256:4045d6d45692a51c4c593daf1719ec2cecc7c797a36b9aed9fbbbfa9784eedb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71943017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d65766565daf71e152fa85aada414d974b37392d57091b2842d7efa8cb9e694`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:55:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:55:30 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 00:58:39 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:58:39 GMT
ENV RUBY_VERSION=4.0.6
# Wed, 05 Aug 2026 00:58:39 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Wed, 05 Aug 2026 00:58:39 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Wed, 05 Aug 2026 00:58:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 00:58:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 00:58:39 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 00:58:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:58:40 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 00:58:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f7b979c369ea5ebfe0a2600ae8d88b918b3cf0228053473a176d74f5f203cd`  
		Last Modified: Wed, 05 Aug 2026 00:58:49 GMT  
		Size: 1.3 MB (1263771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694fa013df879b4484991ca212fd21546e1960b571e8b029a8e1ad86bdee7529`  
		Last Modified: Wed, 05 Aug 2026 00:58:49 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd9b67ffaad2119800cb0187bca6d6c6d544684bcd933982b1b27a179fde1b8`  
		Last Modified: Wed, 05 Aug 2026 00:58:50 GMT  
		Size: 42.7 MB (42724201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2827489c57d73d31deaf55ae7571ccd184b85de98145ccced819de14a5081028`  
		Last Modified: Wed, 05 Aug 2026 00:58:49 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:9d9beb315f2aff076905489192cc77e9da1307ec29144d31d42f263c9a0e4a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2243593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb919fcf16ee96e1045ebaead85b2518840ae0133ca0880267102472c1b2d0da`

```dockerfile
```

-	Layers:
	-	`sha256:6e0e8c3594c283cdcd80846bf2c78944eefe544bb10baedba871d7d003631119`  
		Last Modified: Wed, 05 Aug 2026 00:58:49 GMT  
		Size: 2.2 MB (2219122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b08c68de82bad7b6f7361cb79a79a9cecbac2e53fb72763f4ff2ee2a00ca7204`  
		Last Modified: Wed, 05 Aug 2026 00:58:48 GMT  
		Size: 24.5 KB (24471 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-trixie` - linux; arm variant v7

```console
$ docker pull ruby@sha256:c3c49d273a68198ffef9631f3efc72b643240ff80c219f49bb0a9a3c647b2d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70023958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5a93c48ddaac772192cef38640ec9ecf40c8f4ad2be3e6ea095b453054f7bc`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:11:06 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 25 Aug 2026 02:13:55 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:13:55 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 25 Aug 2026 02:13:55 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 25 Aug 2026 02:13:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 25 Aug 2026 02:13:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 25 Aug 2026 02:13:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Aug 2026 02:13:55 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Aug 2026 02:13:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:13:55 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 25 Aug 2026 02:13:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6502fe8fbc49a617fa5702a72d57419d96264a60d1cf8f118cb253c0b06cbda`  
		Last Modified: Tue, 25 Aug 2026 02:14:04 GMT  
		Size: 1.2 MB (1238815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad79ea9adcdfa6754e90cb42e25fa3251d53814cc29e9d1805b0d3347163798`  
		Last Modified: Tue, 25 Aug 2026 02:14:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0cfa2dc92257264bdd434aaaf853b706b9e57f8a31c959da8b082fa9b2118a`  
		Last Modified: Tue, 25 Aug 2026 02:14:06 GMT  
		Size: 42.6 MB (42565667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81af89ae5b662f6e09c90b663963c2e48a6d5e8d30601fe5ace816749368f40b`  
		Last Modified: Tue, 25 Aug 2026 02:14:04 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:455bf62e8a02e0d6e507b3dbf0757adb6b1ffcc73e77f282c51589992590af77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2242232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a5478b841182d206c81f53be0f5a7c9f942fd6de7c838f3f9b3702331e8370`

```dockerfile
```

-	Layers:
	-	`sha256:aa5434df352f8760cc09f7a4c0536fc822c616ae6013f1e47b954f558ee4d0d5`  
		Last Modified: Tue, 25 Aug 2026 02:14:04 GMT  
		Size: 2.2 MB (2217761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd55367eafa1b7d534c5b3968f7dfaa3fa981309c028923286d7912160cde83c`  
		Last Modified: Tue, 25 Aug 2026 02:14:04 GMT  
		Size: 24.5 KB (24471 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-trixie` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:f1bffe1d92f8103f24744adff3a099cdeec1ebd26983fa0bf0b2a2b094e8a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (80961126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3dd4b3cd69c484d134cbe783bd10d854770182d933772d47b644a5a149c6330`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:24:15 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 25 Aug 2026 01:26:42 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:26:42 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 25 Aug 2026 01:26:42 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 25 Aug 2026 01:26:42 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 25 Aug 2026 01:26:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 25 Aug 2026 01:26:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Aug 2026 01:26:42 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Aug 2026 01:26:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:26:42 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 25 Aug 2026 01:26:42 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48bd67db0c9fe27bcce67acd4432ab72390669a1176cd7317788b9ca115ea54d`  
		Last Modified: Tue, 25 Aug 2026 01:26:53 GMT  
		Size: 1.3 MB (1262854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7669f032aded21f15ae6463259a5331f7ea6a0ea0448edfa5ae138502a38110`  
		Last Modified: Tue, 25 Aug 2026 01:26:52 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5834d541d3fbaebe9b43998dfa0124ed8f9b9137400b9c86b155f5f5739f044a`  
		Last Modified: Tue, 25 Aug 2026 01:26:54 GMT  
		Size: 49.5 MB (49538356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6674ece4dec848e3d3543d824ebb7b0775e3497364bc445eed219ec2b3de20f`  
		Last Modified: Tue, 25 Aug 2026 01:26:53 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:2f910fe4557bc80efd1f01eb1d8d311d9e5295850d677fd7502ba092ad016d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2241142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09b81956edcf818ba13baeee0122ec239d623e4765e347b286604544a906bf7`

```dockerfile
```

-	Layers:
	-	`sha256:d2907fbd3e991a3581951d237ec5834dd7918735917b512bbaf915fbd7027297`  
		Last Modified: Tue, 25 Aug 2026 01:26:52 GMT  
		Size: 2.2 MB (2216625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f51e5acfc34dce84e87f6fbd5692236b8ff6becb1abad635b104ce6dad4e0b67`  
		Last Modified: Tue, 25 Aug 2026 01:26:52 GMT  
		Size: 24.5 KB (24517 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-trixie` - linux; 386

```console
$ docker pull ruby@sha256:c8eb2b8091203d6615c3817caff72e82c11a57a13fbb06b49d6d5bdeed5089a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75065685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5edc556d8cd58ef0e5c45e855e7143a5ebc764ba66a57e1aba29da50b304165`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:17:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:17:31 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 25 Aug 2026 01:20:16 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:20:16 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 25 Aug 2026 01:20:16 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 25 Aug 2026 01:20:16 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 25 Aug 2026 01:20:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 25 Aug 2026 01:20:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Aug 2026 01:20:16 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Aug 2026 01:20:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:20:16 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 25 Aug 2026 01:20:16 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd51286f3f001b230616bfd644e7542b286de3917fe77cc94ebe76fa65a4e47e`  
		Last Modified: Tue, 25 Aug 2026 01:20:25 GMT  
		Size: 1.3 MB (1288519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801d6ce62ba505c04872237d1b8551dda9aae649b92facf11f0c0ccc0e120e8f`  
		Last Modified: Tue, 25 Aug 2026 01:20:24 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8a20287c7611a561f5119cf9394b99fb90d6c84a2ce037a5cf6e453633271b`  
		Last Modified: Tue, 25 Aug 2026 01:20:26 GMT  
		Size: 42.5 MB (42473437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f172cca3a184b8a14f9edf9248fa8f7fa0802017e37a7e75b6bc306bccecec66`  
		Last Modified: Tue, 25 Aug 2026 01:20:25 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:e4b2577041ecf25c00edeca6b8d94c17b6506c82c3edd3f585c97600a2a00c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2237760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07154ba1999d06b556451a4a4da2beb1f135a407edc3ea6739ff4282bf68caf6`

```dockerfile
```

-	Layers:
	-	`sha256:cee926d86100fbf49371101597a256f6562ef669e5e6afa2ad97cb8f14f00e1a`  
		Last Modified: Tue, 25 Aug 2026 01:20:25 GMT  
		Size: 2.2 MB (2213498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:313707636ea732a6d8f7ee85b7bf3c4c989d67c19a71002806f39174f547a0f5`  
		Last Modified: Tue, 25 Aug 2026 01:20:25 GMT  
		Size: 24.3 KB (24262 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-trixie` - linux; ppc64le

```console
$ docker pull ruby@sha256:16b3ed8c211ca833b707d284682fa9c74f167ee49f5cf700489e1565dc9dee3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79436442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94836c62f15b8ec238a7f6963c88eec3ec788742a9f238a4bc62aa6f413cc8d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 07:23:59 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 07:28:09 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 07:28:09 GMT
ENV RUBY_VERSION=4.0.6
# Wed, 05 Aug 2026 07:28:09 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Wed, 05 Aug 2026 07:28:09 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Wed, 05 Aug 2026 07:28:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 07:28:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 07:28:09 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 07:28:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:28:10 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 07:28:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f2fe78f05a559fbeefa400f23cad9d0f1b594753078b9bbdaf4d04b7693481`  
		Last Modified: Wed, 05 Aug 2026 07:28:29 GMT  
		Size: 1.3 MB (1310306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136a63c40e4eab203c9d7ed84e515b31970afacdb8aa00fbb714c0e341a9ef5b`  
		Last Modified: Wed, 05 Aug 2026 07:28:29 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c714e68942c1ab78351aaa3a9d6353533f0888f1a6fcf2f2935a8ae50835bbd3`  
		Last Modified: Wed, 05 Aug 2026 07:28:31 GMT  
		Size: 44.5 MB (44524460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa037b3c83766e84c8043e8f5f49c224292fd95282af86143398dd52b5f9297f`  
		Last Modified: Wed, 05 Aug 2026 07:28:29 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:92ee348dfc631968fa1a9dd0900de994ca987a1cd31b72b0cc5d3e42973f09db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2244073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45459f887d2f6dfaeeb9c1bbe187d4c53974d68586dbe4d924efade18e7ec193`

```dockerfile
```

-	Layers:
	-	`sha256:522d9da3ead03728d06b2938fe58752cb4645f72c63fd911119297c314c00363`  
		Last Modified: Wed, 05 Aug 2026 07:28:29 GMT  
		Size: 2.2 MB (2219680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:342c11954d7733610d38ca772b1ec8c6100318cdd931445a07292a9b6d8f6456`  
		Last Modified: Wed, 05 Aug 2026 07:28:29 GMT  
		Size: 24.4 KB (24393 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-trixie` - linux; riscv64

```console
$ docker pull ruby@sha256:44f6b2511776da4fe5eb419caeea75c189fc9f1bcfbab5e883c9468b9f85fb3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73752979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27df1086807eff376d773c441ae8958b0639fe4d1334d1f04079ddecad4656db`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Fri, 07 Aug 2026 12:07:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Fri, 07 Aug 2026 12:07:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 07 Aug 2026 14:07:09 GMT
ENV LANG=C.UTF-8
# Fri, 07 Aug 2026 14:07:09 GMT
ENV RUBY_VERSION=4.0.6
# Fri, 07 Aug 2026 14:07:09 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Fri, 07 Aug 2026 14:07:09 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Fri, 07 Aug 2026 14:07:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 07 Aug 2026 14:07:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 07 Aug 2026 14:07:09 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 07 Aug 2026 14:07:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Aug 2026 14:07:09 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 07 Aug 2026 14:07:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d031d37188d36af011a82e7fc3571954c80638cfa749de14607efa383cddc49`  
		Last Modified: Fri, 07 Aug 2026 14:08:54 GMT  
		Size: 1.2 MB (1249111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8ef6e954b8a0476a6a18509fde86c5e2efd00c122c475be0483793b522487e`  
		Last Modified: Fri, 07 Aug 2026 14:08:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ad0bda01775d3914cbe7d2de0034d86e984a534221817b22906b05472cea85`  
		Last Modified: Fri, 07 Aug 2026 14:09:01 GMT  
		Size: 44.2 MB (44225420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a4fd2d0975367fd9f9ef6912f3db9023d8af435306897ad4c359dc6dda768a`  
		Last Modified: Fri, 07 Aug 2026 14:08:54 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:4b11d252f0e23714e5837eb0cf4454070a339598d4d20f16109d48c66abcfa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2234469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22fbfbbb7bcfb82b4ff07d4f2bf6648b62763bb8ee076e0d7d30022444eec684`

```dockerfile
```

-	Layers:
	-	`sha256:69b21017dde4d46da4a365214c584b78eb5b7152c92069d9c71302442b88f986`  
		Last Modified: Fri, 07 Aug 2026 14:08:54 GMT  
		Size: 2.2 MB (2210075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:013c0e3b86744bc8d0108e5e944b46275be1a2e6ec658b1ccc66247b10e21534`  
		Last Modified: Fri, 07 Aug 2026 14:08:54 GMT  
		Size: 24.4 KB (24394 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-trixie` - linux; s390x

```console
$ docker pull ruby@sha256:20d9f57a1db7d6debfd12d7c388aca59ada90d5657b2098afb06d4c0360890cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75523072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1d15d042c45d21356af25216e0fd7003bec561dcc9a217c1b3c9f09b0ea8fe`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:59:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:59:42 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 25 Aug 2026 02:02:13 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 02:02:13 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 25 Aug 2026 02:02:13 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 25 Aug 2026 02:02:13 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 25 Aug 2026 02:02:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 25 Aug 2026 02:02:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Aug 2026 02:02:13 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Aug 2026 02:02:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:02:13 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 25 Aug 2026 02:02:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518397503bbb95324011fe65e8442da6078697582cec9b8c8cc97989cf694437`  
		Last Modified: Tue, 25 Aug 2026 02:02:27 GMT  
		Size: 1.3 MB (1295648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52ad1e876eb8a8726385d3f86e27ae67ea99819c32f79de50cd967716a0a5ea`  
		Last Modified: Tue, 25 Aug 2026 02:02:27 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a743fb66a58cf3bfd025dffbb8023c2456d9241e95237aa09105d36d1e324c5e`  
		Last Modified: Tue, 25 Aug 2026 02:02:28 GMT  
		Size: 44.4 MB (44359371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027632b53f5c3a7b816fa9bdc2c8b17c61ffe34bf38bb13bf8a414a767edd5fe`  
		Last Modified: Tue, 25 Aug 2026 02:02:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:99a3ea67edab770c0d3a1daed0c0980c2b34b834f3f1d46f3eec1bbbdf0d37cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2242090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0ade0e97fb1d9f305a8273cc3be8f798084d3cc2662b7abc9126ff8f841d93`

```dockerfile
```

-	Layers:
	-	`sha256:d5ce314abdda6f6fb91cec7e845a2d7616672ea05f6c7a4305cccb33aa8f9f95`  
		Last Modified: Tue, 25 Aug 2026 02:02:27 GMT  
		Size: 2.2 MB (2217770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bd3694a2cd9bc082986845181548bb91685ad310db2b4da74fb615e5444ce79`  
		Last Modified: Tue, 25 Aug 2026 02:02:27 GMT  
		Size: 24.3 KB (24320 bytes)  
		MIME: application/vnd.in-toto+json
