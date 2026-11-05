## `ruby:4-slim`

```console
$ docker pull ruby@sha256:9e93d3bcd4541b6826e9bd63f7c5ad027d4689baa1f1cc45b613c5abd7d7e455
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

### `ruby:4-slim` - linux; amd64

```console
$ docker pull ruby@sha256:243a066707bcb16e214840d374ae01a886a7fba374bde795834efee4a752b479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80821811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a3a099672f38fcbd650ec808e53902d82a5ff3990d228e5ac7ee8616eb8afb`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:00:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:00:26 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:02:40 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:02:40 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 08:02:40 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 08:02:40 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 08:02:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:02:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:02:40 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:02:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:02:40 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:02:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3474eb3d144b8d78bf12b5f8e2a73d8e79d898e05ea95d6413f671b786c0c96e`  
		Last Modified: Thu, 05 Nov 2026 08:02:49 GMT  
		Size: 1.3 MB (1277423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8e5d6bd132003d19ad6f25af9892562d8fb88a0af619d7a10a44bd9bec55da`  
		Last Modified: Thu, 05 Nov 2026 08:02:49 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b43c748dfc2a3054531c4df7812072fd6fb7391cd6d8c7f0e3298b65eb9240`  
		Last Modified: Thu, 05 Nov 2026 08:02:50 GMT  
		Size: 49.7 MB (49687923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de091b1e0a23e0b511d7bb1d9ac8acd7ac92bc2014fde980fbe75fb3cc0f778f`  
		Last Modified: Thu, 05 Nov 2026 08:02:49 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim` - unknown; unknown

```console
$ docker pull ruby@sha256:59b863043809c9e7fec9f046458a778f1090c0e1ac8ca4af0e8ebc7ff2b9bb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2245760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37942634dce050f265fe7c5d316f65666ab8f330e6f7c1ac5a5c55d8b95a5f26`

```dockerfile
```

-	Layers:
	-	`sha256:7c23a597f61ae801b8326cba6b5bfeb263dba58f3eca684e1e0f9d1705b79010`  
		Last Modified: Thu, 05 Nov 2026 08:02:49 GMT  
		Size: 2.2 MB (2220752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5090c54357df056742c216ea91c6d4fd6842cb4477568628add4522bf09cd685`  
		Last Modified: Thu, 05 Nov 2026 08:02:49 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim` - linux; arm variant v5

```console
$ docker pull ruby@sha256:b5a55f09e40d70cf949112a5e872487f81052c3b457bfaa63c5f8ea4a224d751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72019771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1229ff6b4adeb34fb2fbb88edba1f9b4ad1fc91539a3d8cba4a784fc713e87`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:58:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:58:11 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:01:16 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:01:16 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 08:01:16 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 08:01:16 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 08:01:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:01:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:01:16 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:01:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:01:16 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:01:16 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7503404c66bf881928a6392705e65859242d4a49333439f9b093fcbd8018b1b0`  
		Last Modified: Thu, 05 Nov 2026 08:01:26 GMT  
		Size: 1.3 MB (1261693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e509dbb5d3e3ec5bad2a8d912f11e1550a2ea27e55f956e0becfd397703e71`  
		Last Modified: Thu, 05 Nov 2026 08:01:26 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d092d36cd532a89fa4a92ffa9a1afdb6062ce8bf31f7a0695f2f46f69207cf`  
		Last Modified: Thu, 05 Nov 2026 08:01:27 GMT  
		Size: 42.7 MB (42738134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4c1530979dbc2645190b9ccf5436e1102dcbedb2dc9b160cff2105be018a55`  
		Last Modified: Thu, 05 Nov 2026 08:01:26 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim` - unknown; unknown

```console
$ docker pull ruby@sha256:3e51ac2535f3c9b5424425e75f79fd1dcd43fcc2d571dfc825f1f2b7dc6203a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2248906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03824caf4f8566248f28ff91410cbffe6ef0c2dd057ec936a9f95b6927fc7e04`

```dockerfile
```

-	Layers:
	-	`sha256:0513e61b536fda98f6a3f0f1ea699efdae7e01b47cdd53f150e8e7969a4bd223`  
		Last Modified: Thu, 05 Nov 2026 08:01:26 GMT  
		Size: 2.2 MB (2223747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31e801ceeae093e2171d656d77b17a6291f616993252c6f22359f592e373e680`  
		Last Modified: Thu, 05 Nov 2026 08:01:26 GMT  
		Size: 25.2 KB (25159 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim` - linux; arm variant v7

```console
$ docker pull ruby@sha256:4acdad6188aac5c5e04a2473578510719b8eed0dcef8c0720902d6c687b57568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.1 MB (70084526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878b98a30c0cfe914ce9ce43d29d83c94aab97702795f80bda8202360fc82a9a`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:49:56 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:49:56 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 08:49:56 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 08:49:56 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 08:49:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:49:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:49:56 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:49:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:49:57 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:49:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58257e10d1216b73dcd87db3239b027dc9ee27a2f77e0664c004b599059d65f3`  
		Last Modified: Thu, 05 Nov 2026 08:46:55 GMT  
		Size: 1.2 MB (1235408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94dc57fcf27404d1c3eea67c88876cadd336fa1104ab84607e5e03675ee61d0`  
		Last Modified: Thu, 05 Nov 2026 08:46:55 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7824b0ad79dc9456a4fcc4df9b4e3e5e93ce1875ec3dd1fd5811deeea1ec93`  
		Last Modified: Thu, 05 Nov 2026 08:50:07 GMT  
		Size: 42.6 MB (42575870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453b8de16617b15a2d22aeb47da16e1e4010ee8805593bb051851f26153da1ee`  
		Last Modified: Thu, 05 Nov 2026 08:50:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim` - unknown; unknown

```console
$ docker pull ruby@sha256:d5224a959a9bfdee846c27f73f1f35f9971bc2130220cef15547f2389d3cf76e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2247347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73757ffa64553dfe2d68ac0bcc192bbdbbe1e0d2cde5cd616da56313cd19f11`

```dockerfile
```

-	Layers:
	-	`sha256:779ddd040b764141b2c2e57f608674bdae85462d031e6cf2dd3fcd02b23d2a4f`  
		Last Modified: Thu, 05 Nov 2026 08:50:06 GMT  
		Size: 2.2 MB (2222188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d7d636dc1bedbe5de03d09c506bd5bfdeab74daf052286e2d8410ace7554a31`  
		Last Modified: Thu, 05 Nov 2026 08:50:06 GMT  
		Size: 25.2 KB (25159 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:33ce98471f0cf48d9de731cd551419de34eee1d0c726af3b77ab729f8808b01b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (80991016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22565c2baf1ee472f923752dc372b8a83e80592669e7133e5307a8f396e04f72`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:04:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:04:04 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:10:23 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:10:23 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 08:10:23 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 08:10:23 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 08:10:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:10:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:10:23 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:10:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:10:23 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:10:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea79b3f747844da6dbd00f24979641bd748a6c34537d5e17df31978926ff056`  
		Last Modified: Thu, 05 Nov 2026 08:07:27 GMT  
		Size: 1.3 MB (1259404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1941b0a3c077288cd5a299e43c7cc71dcae5d5d8e4b4715d89ee929db1df5fbc`  
		Last Modified: Thu, 05 Nov 2026 08:07:27 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cea88083d21fc4877f4ff092d9278d2f4ad8de39fa9692ff018250cc2cc08b3`  
		Last Modified: Thu, 05 Nov 2026 08:10:35 GMT  
		Size: 49.5 MB (49517242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d865888bbc22a77a8377dd46af6b7bd16ee0ffd2dc6b4e85a74a51dd8eefaf5`  
		Last Modified: Thu, 05 Nov 2026 08:10:34 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim` - unknown; unknown

```console
$ docker pull ruby@sha256:5c620923a8cbc4836f2de8ff8613c7574b3d9b8bef73ba176626f9135026ac26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2246257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9898c148218dea41b6611c9e757cc9acc3f6b1d6e64579be58c9701a0f1d59fc`

```dockerfile
```

-	Layers:
	-	`sha256:0ed154136c1df474e33bb57201c8fe7eaff54f8b2edf99acf27e5d8c65260af6`  
		Last Modified: Thu, 05 Nov 2026 08:10:34 GMT  
		Size: 2.2 MB (2221052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8efcee92ca58cf66276cc3d4995c305095a2e151b4515b46818f25982a879a8`  
		Last Modified: Thu, 05 Nov 2026 08:10:34 GMT  
		Size: 25.2 KB (25205 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim` - linux; 386

```console
$ docker pull ruby@sha256:eb548b4f2b3bdd4934be9dd3e9fdfe9970d83f59168045fe1f9a9245cf401430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75128551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7d154390d4f2dfa6e26b460a5a3b47c43138f4f4bbedfc39dfa67a7400b18c`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:03:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:03:38 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:06:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:06:20 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 08:06:20 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 08:06:20 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 08:06:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:06:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:06:20 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:06:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:06:20 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:06:20 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaeaba4b833c9022c543b9caf1b7c5cf9588f71703ba4b744ff1e445a0e82f79`  
		Last Modified: Thu, 05 Nov 2026 08:06:29 GMT  
		Size: 1.3 MB (1285922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc166b697043db3859ebd089ec98f68daaba090c13532b52e1732aa6d3eaec4`  
		Last Modified: Thu, 05 Nov 2026 08:06:29 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be51c1193c90d2beef70e39537ab2c58e16b72f5a5323a0e48b7c0e71a8c6d2`  
		Last Modified: Thu, 05 Nov 2026 08:06:30 GMT  
		Size: 42.5 MB (42471537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd37d9637fb38ad93172618052b88041b69c6e9c55b3e10078d4eb48e4dc782`  
		Last Modified: Thu, 05 Nov 2026 08:06:29 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim` - unknown; unknown

```console
$ docker pull ruby@sha256:1d152baf47bba0e3368a4c7c22376c97df97166c2e9bea79f673a01a4ee44a50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2242875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2730c039be24f181e92a371a1d85131889e7528a84a1e6bf1819481ef5f509`

```dockerfile
```

-	Layers:
	-	`sha256:ea68cc3a3584e3d5b92e746e30c26182103d0c4a64b8002df004bde2c78a3d75`  
		Last Modified: Thu, 05 Nov 2026 08:06:29 GMT  
		Size: 2.2 MB (2217925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:876085814085d0102b2e846f013cc070ba4b71b4ca0be011fca49c0e81fd1806`  
		Last Modified: Thu, 05 Nov 2026 08:06:29 GMT  
		Size: 24.9 KB (24950 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim` - linux; ppc64le

```console
$ docker pull ruby@sha256:a735c5cbd1806f1b8bbdcb8f3923f46909d3f61ab8ca7f0bb3102009b1162179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79503519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7dd930ba58ed24e5e9f70c2fe81b1078e146b50abab8c1ae1a84619b7ce21e`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 08:45:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 08:45:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 09:03:38 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 09:03:38 GMT
ENV RUBY_VERSION=4.0.9
# Wed, 28 Oct 2026 09:03:38 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Wed, 28 Oct 2026 09:03:38 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Wed, 28 Oct 2026 09:03:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 09:03:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 09:03:38 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 09:03:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:03:39 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 09:03:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1903b39329bb3326eef9943ede10fbbfec5612607829ef7d77df62bacfabfd6d`  
		Last Modified: Wed, 28 Oct 2026 08:51:38 GMT  
		Size: 1.3 MB (1306828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99b99330b4ccf03c46529a4aa02e00c3017985e36d974d62fdcbdf1d3bf66d8`  
		Last Modified: Wed, 28 Oct 2026 08:51:37 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183a91543f672528cacb3c0cf4f262435ab0d67a1c6be43f84ea1126631ebb72`  
		Last Modified: Wed, 28 Oct 2026 09:03:57 GMT  
		Size: 44.5 MB (44530095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba00ca57b7b6911ed77f2d94e939ca08c5380ed8370cf0351a682ca84c05630`  
		Last Modified: Wed, 28 Oct 2026 09:03:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim` - unknown; unknown

```console
$ docker pull ruby@sha256:50c6608bf7f8418665c75d7f55243ea4ecf658a9b50a8665f5eaef8044096be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2249387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e58f8fb3c4416f2228ce25fb628a5d509257ea1bcb7b502fcc3af68abfba898`

```dockerfile
```

-	Layers:
	-	`sha256:4c6deecee2bc94ee255e2dfc1424ec816e81e68636616ca8652d50365718179b`  
		Last Modified: Wed, 28 Oct 2026 09:03:56 GMT  
		Size: 2.2 MB (2224305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca2ccdad1407242f25bd51877e40106798d5cca0cf56153d9ffa1cbeacd6338e`  
		Last Modified: Wed, 28 Oct 2026 09:03:56 GMT  
		Size: 25.1 KB (25082 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim` - linux; riscv64

```console
$ docker pull ruby@sha256:1d64ead3e233dc7045d14e7fa5473a23cd987bea7721811d7dade009a9fd78a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73815525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c175fcb88b7895f16cad47b671fc1aa997bffe07e96f67d15688af486bb7fddd`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Mon, 02 Nov 2026 12:59:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Mon, 02 Nov 2026 12:59:46 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Mon, 02 Nov 2026 16:25:30 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 16:25:30 GMT
ENV RUBY_VERSION=4.0.9
# Mon, 02 Nov 2026 16:25:30 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Mon, 02 Nov 2026 16:25:30 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Mon, 02 Nov 2026 16:25:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Mon, 02 Nov 2026 16:25:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Nov 2026 16:25:30 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Nov 2026 16:25:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 16:25:30 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Mon, 02 Nov 2026 16:25:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a9813cfac66ec7d605f7871a488d2fab124c1e49585498ba53bd40d1315531`  
		Last Modified: Mon, 02 Nov 2026 14:14:48 GMT  
		Size: 1.2 MB (1245319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41781d0d0ea59227d3efcc783ef926e11b3b22c2b71a4d0964d21a6896e9a8c8`  
		Last Modified: Mon, 02 Nov 2026 14:14:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c628e7470d8891bd1c41ba9221fcece8f051ca5efc28a3180d75a18b55dfc8b`  
		Last Modified: Mon, 02 Nov 2026 16:27:24 GMT  
		Size: 44.2 MB (44224201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f7926018974a99aba5275875edf8e044d5b59372abe9250f2477c0f05951eb`  
		Last Modified: Mon, 02 Nov 2026 16:27:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim` - unknown; unknown

```console
$ docker pull ruby@sha256:92ef9b3eec1af5e161d3b462a762f40307c590dc3da4f31679392b2ec9b41e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2239782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a1ef511ddf94a78e60eb3e21acfc2e2966d4615afbcbd7f35e376f332af8ec`

```dockerfile
```

-	Layers:
	-	`sha256:769358d59e9db1c515384f8562e57407c9be0d0f47db2188de07830ac87d4769`  
		Last Modified: Mon, 02 Nov 2026 16:27:17 GMT  
		Size: 2.2 MB (2214700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c0c714d21af2ed09235f879d26d2720e4006ba0777d67ef37d39025aa19e4f4`  
		Last Modified: Mon, 02 Nov 2026 16:27:17 GMT  
		Size: 25.1 KB (25082 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim` - linux; s390x

```console
$ docker pull ruby@sha256:562c6db68871cdc1c535c253f93262123143dc231f7719ce8fe320fce94dc9fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75568362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c72f112c685c3f6ff07b23433a36323a9840be3f9651cef9b044bd5198d250d7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:30:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:30:57 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:36:41 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:36:41 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 08:36:41 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 08:36:41 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 08:36:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:36:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:36:41 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:36:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:36:41 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:36:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056aaa51c9ccf3f7650bee94b879216bc7ff9a5b3590a0a97085d3df0a81a942`  
		Last Modified: Thu, 05 Nov 2026 08:33:57 GMT  
		Size: 1.3 MB (1292062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04a5443c62fb499db40460d005dd3ae33e76548d8957dfed38c04a6c3155532`  
		Last Modified: Thu, 05 Nov 2026 08:33:56 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b280cdeda64965f3d96cd8e9465232f9586c7f924c07eaf1dcff8a223fddee`  
		Last Modified: Thu, 05 Nov 2026 08:36:56 GMT  
		Size: 44.4 MB (44351849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da5643e40de89d55dcaaaf33f39a52803769e2e387bc8b2c2820bb9201a87a2d`  
		Last Modified: Thu, 05 Nov 2026 08:36:55 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim` - unknown; unknown

```console
$ docker pull ruby@sha256:666cf3a1d6b852a6a9532ff51889ea7d9a40f7e58529367693a90aa81132a917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2247205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682e1e73a29fb056cf566d86b8d7b53e77761ce3da0728f4e67ffb8e129ddf83`

```dockerfile
```

-	Layers:
	-	`sha256:c3e8a07cca60f16fb18452d23b386dcec220bf1a546834144428e4e812c4ddea`  
		Last Modified: Thu, 05 Nov 2026 08:36:55 GMT  
		Size: 2.2 MB (2222197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eecda423f9746afc90166b6287c6e811a956b3079a7fd8fe9f6c69f92af0e78b`  
		Last Modified: Thu, 05 Nov 2026 08:36:55 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json
