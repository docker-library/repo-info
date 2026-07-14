## `ruby:4-slim-trixie`

```console
$ docker pull ruby@sha256:48ce72ef6c8bb7836a2ef1df76dc15d4dda3b9ff417f8f8678ddb9ae2a4afca6
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

### `ruby:4-slim-trixie` - linux; amd64

```console
$ docker pull ruby@sha256:1736dcdb97ab9bbeb4cab662d65da919de6a684681d035d17a30af8876f7674e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80763420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caadc9552c93ca170ccd6a0e0f5d05a74bc9e800fa50d9a99af178b7058eebe3`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 16:51:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 16:51:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:53:57 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:53:57 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:53:57 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:53:57 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:53:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:53:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:53:57 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:53:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:53:58 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:53:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63baaeea20edafa6fa763820e38da07b2dba1297a3d0684489de9df80f15fcf2`  
		Last Modified: Tue, 14 Jul 2026 16:54:08 GMT  
		Size: 1.3 MB (1278935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08aa4bc8ea244e7e1255ce52994fee716268653ee8ab044d816e5af0ce6fdcad`  
		Last Modified: Tue, 14 Jul 2026 16:54:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079acb54454d3b346827879e1a5c8fae3dd03c2e7c10585be53d856033b7afde`  
		Last Modified: Tue, 14 Jul 2026 16:54:09 GMT  
		Size: 49.7 MB (49703249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c56283e4d0c45fa3e41a18f72163fb69e7f3e9adf9cdc0f76e1ffd24085bc4f`  
		Last Modified: Tue, 14 Jul 2026 16:54:08 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:c0096d3484f32c05182fda7f5e52258f95eea22d8b3e63dd9044fc1953b97444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2240447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c54fe7669e4bf0ce2d377468571e4e3324abc4ed220a10e77242e9a8088c98f8`

```dockerfile
```

-	Layers:
	-	`sha256:6f185f39c7403a9b6130a036a9e3e2b70f06fa493984b97b31fbbb3a4fb2d6ee`  
		Last Modified: Tue, 14 Jul 2026 16:54:08 GMT  
		Size: 2.2 MB (2216127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2d1f63a11a58aee6e50d1c52811bfcc31b1db3783f74980b8e08f74d777a1a0`  
		Last Modified: Tue, 14 Jul 2026 16:54:08 GMT  
		Size: 24.3 KB (24320 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; arm variant v5

```console
$ docker pull ruby@sha256:3abdfd708cc7bdd09ff9ea08b156adb39df7dd319bc588a15003a90e97d5ca29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71940161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb05ad5d3c95d85dc1ee56d92a658b50d015d8a63ca5dd3f8788d8558214131a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 16:53:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 16:53:00 GMT
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
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
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
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ceba1c7fb2414ff4dd4716ea0707dd2eab11bb2a2a3afb832cdddc1726e649`  
		Last Modified: Tue, 14 Jul 2026 16:56:18 GMT  
		Size: 1.3 MB (1262843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42af475fa178c5515fc6765fc4552bb714f36813360ab872d8b4f229100bfc5`  
		Last Modified: Tue, 14 Jul 2026 16:56:18 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b861b21d67a89553613f3436036f556c1fb456f0b439d4b94a4dbc5b3047700`  
		Last Modified: Tue, 14 Jul 2026 16:56:20 GMT  
		Size: 42.7 MB (42722168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cdc454cc80fff91149f68d176a34a2fc3c73b77554bbde391e8fce8e25e6dfd`  
		Last Modified: Tue, 14 Jul 2026 16:56:19 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:70141a36cd547d7a58a33ad463549f973d8e48b71962d8a1f21109e81235cf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2243593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1b6f240923cd47e6cfff113ee9b6ce5f6f19672134fdd72fb2c1356135bc18`

```dockerfile
```

-	Layers:
	-	`sha256:c3ff63e1393d9c0ddce59b947fae1700667a377ee2359f7551b47da39cfd1ffd`  
		Last Modified: Tue, 14 Jul 2026 16:56:18 GMT  
		Size: 2.2 MB (2219122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56ccca6e408b60cb47824d41b5394e6b1d94352d5351f409131dfb7880d8b07f`  
		Last Modified: Tue, 14 Jul 2026 16:56:18 GMT  
		Size: 24.5 KB (24471 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; arm variant v7

```console
$ docker pull ruby@sha256:1dc76bf1129d74ff12bbb327513df9a6f9ddb98de81a0b2e785a86bdcc8090b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70006361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d83ef836e728fb4550f92bb0641aa8688db40d8aaa03947e10c616f299446b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 16:50:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 16:50:46 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:53:31 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:53:31 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:53:31 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:53:31 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:53:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:53:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:53:31 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:53:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:53:31 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:53:31 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282f3b694960962481acaf296059ce54ca007765c0568edd778fb622a0257395`  
		Last Modified: Tue, 14 Jul 2026 16:53:41 GMT  
		Size: 1.2 MB (1236033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b2f103fbcc5190363ffdc848208616f80879611cc461fca4c978a6fa039d49`  
		Last Modified: Tue, 14 Jul 2026 16:53:41 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af1d9dd602f60316e2898dcac3d8deabf5a44adbfd5ad35840fdf1182f4e54c`  
		Last Modified: Tue, 14 Jul 2026 16:53:42 GMT  
		Size: 42.6 MB (42563528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb14db8c488b95e598e8e98b8e45e4ca637c47ca5fa2ff0715cada369d7ed492`  
		Last Modified: Tue, 14 Jul 2026 16:53:41 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:6349cd84ec6715f1df7e18b1bb00395baff359bfa285a520e05cf537fc572b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2242034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3ffddac1c65991df60c1c1c98ff3cc47501052cf5a623ba3066f9010feee93`

```dockerfile
```

-	Layers:
	-	`sha256:88a2fbb6adde8b99c93967820ab03c3cf638d22370496db8e374b60bb189a9c2`  
		Last Modified: Tue, 14 Jul 2026 16:53:41 GMT  
		Size: 2.2 MB (2217563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cb402edebe55fab5a8c09ec67988a007ff36778dff03aacc45341cb28aad01c`  
		Last Modified: Tue, 14 Jul 2026 16:53:41 GMT  
		Size: 24.5 KB (24471 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:2221a7f8711579994463aef68b24d5397e8d815ea3637d077262da2c8d7c785d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.9 MB (80943197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2dfeb8ee9b8164886f564a789f8d1986c362bfd38cdfc5f63924273fccdf94`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 16:51:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 16:51:13 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:53:45 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:53:45 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:53:45 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:53:45 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:53:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:53:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:53:45 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:53:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:53:45 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:53:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1502e55a866bd17189d1bb8a0b882f5861efc48c20ee100dcc8edabbf107b40c`  
		Last Modified: Tue, 14 Jul 2026 16:53:55 GMT  
		Size: 1.3 MB (1260864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fee6591e9d4fa0bad9cdeb2c1ee3867472c44088cb6eb2bbaac8d2cac0149e`  
		Last Modified: Tue, 14 Jul 2026 16:53:55 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe101dd4b4dcce34dca53ace82400c6c78eccda76e1bcca7d4a6b175d226e7d6`  
		Last Modified: Tue, 14 Jul 2026 16:53:57 GMT  
		Size: 49.5 MB (49538296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc1162889c5475c5f3a38669811c762d4aaebf8a7eca266afa8fa76b9f9b892`  
		Last Modified: Tue, 14 Jul 2026 16:53:55 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:388cb7ba5f979aa715458d2a54ae604eb2fec2774a67cdefb527208032c17ccb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2240944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e6e976457d829b1e2bba9a0e4bda47b2021d13ab098e99c2d2295602627ff6`

```dockerfile
```

-	Layers:
	-	`sha256:4cb188f833db857ccaebd7560c96d1a78063eec94c54ac649741fb4a662c01e8`  
		Last Modified: Tue, 14 Jul 2026 16:53:55 GMT  
		Size: 2.2 MB (2216427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73c7af62ae547d21e32b449b421528d8ce1069c91d545289a0d2ea73200433a0`  
		Last Modified: Tue, 14 Jul 2026 16:53:55 GMT  
		Size: 24.5 KB (24517 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; 386

```console
$ docker pull ruby@sha256:20415300916f4ef0e3b0ccba45984cd4e188f512c7bfc3dae13469a03a232d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75056514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:339382b8a86f7f6811e2b8099d955eb71e0483aab4588bbd8bb25264442a34ee`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 16:51:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 16:51:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:53:55 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:53:55 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:53:55 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:53:55 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:53:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:53:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:53:55 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:53:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:53:55 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:53:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f902016ae30dbae5dec199e74e688eae1469dbac1026a160d75ce8ea43dadf`  
		Last Modified: Tue, 14 Jul 2026 16:54:05 GMT  
		Size: 1.3 MB (1286690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08aa4bc8ea244e7e1255ce52994fee716268653ee8ab044d816e5af0ce6fdcad`  
		Last Modified: Tue, 14 Jul 2026 16:54:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f99d8861b3555579c36cc652f145fb43fc8ebd73d95ab97a453459761ba8b237`  
		Last Modified: Tue, 14 Jul 2026 16:54:06 GMT  
		Size: 42.5 MB (42473191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b2d5a8d085b93e6cf964fda305e86e8c3d5a36e840658b48b0f184e3ebf8df`  
		Last Modified: Tue, 14 Jul 2026 16:54:05 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:d224f0a18a64acec9078f6540e6711892168f9ecc3f9b25c8ebc6984e8cf229a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2237561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8426db87cd7a909c7a24aa5a4c06db37404b9ccaa8862938dd9c692962f11e15`

```dockerfile
```

-	Layers:
	-	`sha256:d876b1bc28ee640677f53b1f632cb81fde7e968226a8bf9b54a01f5b84239bb9`  
		Last Modified: Tue, 14 Jul 2026 16:54:05 GMT  
		Size: 2.2 MB (2213300 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3619cabc6ac85132aef634157b784da87f0e2550039b949a8aeafb200a169b1`  
		Last Modified: Tue, 14 Jul 2026 16:54:05 GMT  
		Size: 24.3 KB (24261 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; ppc64le

```console
$ docker pull ruby@sha256:f0f4b12275f83487678e913c08fcb414499ba2aadc9cb5143aa177d31455e71a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79365852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d51fe16f9e544c23abbfc45bc264ddb771e1575bbb82d28dca1ac9765b2396`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 07:43:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 07:43:18 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 07:47:17 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 07:47:17 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 07:47:17 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 07:47:17 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 07:47:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 07:47:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 07:47:17 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 07:47:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 07:47:18 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 07:47:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccc549fd67a92339deb2d7ad3ad867c54987a757e3e948aa9b79b90540747c4`  
		Last Modified: Tue, 14 Jul 2026 07:47:36 GMT  
		Size: 1.3 MB (1310393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c28522ea002d3c1890f49d184e770ad6b9e6cfae71f99c302e98d4aff3ccb9`  
		Last Modified: Tue, 14 Jul 2026 07:47:36 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae06beec5965826e870f312f9fb1ad69d1e0749d6301ea76941ed068c1ba60eb`  
		Last Modified: Tue, 14 Jul 2026 07:47:38 GMT  
		Size: 44.5 MB (44453648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36af73c2039d5610a0069e68427c9f35527018afc7f941d17d3832d2c07393c`  
		Last Modified: Tue, 14 Jul 2026 07:47:36 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:85477e3b0d79db71c6b9da9d27ec3a2c89ad55c87c3fc78b6129347eefec9568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2244067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e740cde54f6957a50c3df4488d861dc73f9c2dcc05b7991f026b59308771be1`

```dockerfile
```

-	Layers:
	-	`sha256:8f43a4a3b7beadc21fe446d2f020299b4aca6ae5fbd6a5642fad14031242fb65`  
		Last Modified: Tue, 14 Jul 2026 07:47:36 GMT  
		Size: 2.2 MB (2219674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56da99a8ec6b437cee99f2150c6938b44a1c03484ded08cdb049244d168cab0c`  
		Last Modified: Tue, 14 Jul 2026 07:47:36 GMT  
		Size: 24.4 KB (24393 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; riscv64

```console
$ docker pull ruby@sha256:6f51549d29bbb3d724e96e4b89ca0519befc791287ce67ae6855d3f181024e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73675022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a171708bc1b16811b2f09928f7172dd4e7c43b858cec1b9e66c96b31c970cbd5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Mon, 29 Jun 2026 02:28:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 02:28:59 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Mon, 29 Jun 2026 04:28:37 GMT
ENV LANG=C.UTF-8
# Mon, 29 Jun 2026 04:28:37 GMT
ENV RUBY_VERSION=4.0.5
# Mon, 29 Jun 2026 04:28:37 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Mon, 29 Jun 2026 04:28:37 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Mon, 29 Jun 2026 04:28:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Mon, 29 Jun 2026 04:28:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 29 Jun 2026 04:28:37 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 29 Jun 2026 04:28:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 29 Jun 2026 04:28:37 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Mon, 29 Jun 2026 04:28:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbab6f9abf2dfbcb7cab3efaf0ab037302d2bac1d45f763bfd1104bb1bbb8630`  
		Last Modified: Mon, 29 Jun 2026 04:30:22 GMT  
		Size: 1.2 MB (1249147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6775faf75dc8fd3ae819cfb4e5d2f45696f53c9c094c4b90e7465cd4157795ba`  
		Last Modified: Mon, 29 Jun 2026 04:30:21 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff285054cb26dce9ca5b426b1aac2620c2d58426caa49c500aa7ea47548c859`  
		Last Modified: Mon, 29 Jun 2026 04:30:28 GMT  
		Size: 44.1 MB (44143162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c22a631f6bfe949dc171bd7a760d88c2189e5cf4438a2a4f59151a42fd0bf2`  
		Last Modified: Mon, 29 Jun 2026 04:30:21 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:8a2020bec79b846d03d76bdd5e9042a45553097a393333df2aa7a340ed39f858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2234427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c919876e647a5c45261992fa0ad0f4ef7de7b0e060d325581a9f7db79b54117`

```dockerfile
```

-	Layers:
	-	`sha256:ddfa8d78e0d6942140461d88f921143dc2a46411784f15e6a6710e9f9aa4f70f`  
		Last Modified: Mon, 29 Jun 2026 04:30:22 GMT  
		Size: 2.2 MB (2210033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5de1951055ae3e825c3c879d280172e6d6da74ce1442aa583711aac830b1d4c9`  
		Last Modified: Mon, 29 Jun 2026 04:30:21 GMT  
		Size: 24.4 KB (24394 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; s390x

```console
$ docker pull ruby@sha256:942d41fc73fe093391f24259bd00e239c0a0dd9e489bf6146422ac7bcf36a62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75516112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7e341db6e0ebf0d388eef8904bdde848f257f01ff1830dcf3b951d7340bbd9`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:18:07 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:52:57 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:52:57 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:52:57 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:52:57 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:52:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:52:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:52:57 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:52:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:52:57 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:52:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba77fb74c0f7aada8821a0c705ccc781b1e8baa876315ad7a7a8bb878a6b002f`  
		Last Modified: Tue, 14 Jul 2026 04:21:05 GMT  
		Size: 1.3 MB (1294942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5092f43c60dc80d7689b1d56c057044b3befa4b34eeb59f79364a140699e2e`  
		Last Modified: Tue, 14 Jul 2026 04:21:05 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a09ccb21535b4d20d28c267f989bc0230ff5a9bcf33a9489e78422739480d5`  
		Last Modified: Tue, 14 Jul 2026 16:53:12 GMT  
		Size: 44.4 MB (44374204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e033f46d25ade114d0baac5095cbc0eda7eb1e34c0812b3e0213f76bb06b0fef`  
		Last Modified: Tue, 14 Jul 2026 16:53:12 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:915dd59c74375c3a4c87314174e873081fbf8a34764621bf961d95fff6337183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2241892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8d5b429d00a71ed428e17d6bf1ff0cfb07236238b0abe32137faa91a27bcab`

```dockerfile
```

-	Layers:
	-	`sha256:90439c9d485f176a385dac68c0a28404d0f34e4c1f70d4971b107a65d6fbcea8`  
		Last Modified: Tue, 14 Jul 2026 16:53:12 GMT  
		Size: 2.2 MB (2217572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6eaaf181031250758e6eed062f7d452ade2533a8f2af14f3441eacbf71640b40`  
		Last Modified: Tue, 14 Jul 2026 16:53:12 GMT  
		Size: 24.3 KB (24320 bytes)  
		MIME: application/vnd.in-toto+json
