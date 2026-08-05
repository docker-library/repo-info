## `ruby:slim-bookworm`

```console
$ docker pull ruby@sha256:64a8174029b3ae75ff48ed2b239e7e1cfbe9071398e701b5f05c2fa53f9ab4c2
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

### `ruby:slim-bookworm` - linux; amd64

```console
$ docker pull ruby@sha256:4443b9c8c50b55943d7f74929fe951eca4d320f8e73f7203f231308f3037f686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80763499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff921961e381ca18622b33b83555ff2aab7f5eeab92bf61153ac9bec45a35234`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:12:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:12:55 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 01:15:06 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:15:06 GMT
ENV RUBY_VERSION=4.0.6
# Wed, 05 Aug 2026 01:15:06 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Wed, 05 Aug 2026 01:15:06 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Wed, 05 Aug 2026 01:15:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 01:15:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 01:15:06 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 01:15:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:15:07 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 01:15:07 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d3bdb898302273b7893ee5b2d60b3638fdf052478e80175b120a000bd62009`  
		Last Modified: Wed, 05 Aug 2026 01:15:16 GMT  
		Size: 3.5 MB (3511551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9201de66611c567290c97e124fc6757c71d29f7902795c702761fbee54a6abfb`  
		Last Modified: Wed, 05 Aug 2026 01:15:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f0ceaf5ec057ad797822ecc928b59ee0f859abe7700ba80aba1d4de523331d`  
		Last Modified: Wed, 05 Aug 2026 01:15:17 GMT  
		Size: 49.0 MB (49019029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a74955ba64857f13d9fd72e0859512482b75fa21294657eb492c01931961117`  
		Last Modified: Wed, 05 Aug 2026 01:15:16 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:a65d3eadddb513a55a536343bec18ca5923648f8f889e066d7da73531c1b2e6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffbbffc4b6c629dd8afacd40e1c94d6948cf6382ac0e2c5746ba15e5ed8d1e5`

```dockerfile
```

-	Layers:
	-	`sha256:69fe7070cedc1ca9a7b17d8d99625439d14b2b897b6f941b645d98d1921326c8`  
		Last Modified: Wed, 05 Aug 2026 01:15:16 GMT  
		Size: 2.6 MB (2597749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:986b29c53b9aa095868af6ddcecdad21b4243bda94918fb38a64ca3c45198a8c`  
		Last Modified: Wed, 05 Aug 2026 01:15:16 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-bookworm` - linux; arm variant v7

```console
$ docker pull ruby@sha256:94fce320e09436150705a2fcc8d73037e8961f0f072d4f2c65c47abd23369545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68694971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cc2d38ec2b8bd5d8b159a0e89e7c0f9241c7c944a1c6c84b8881c0df03f3a9`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 16:51:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 16:51:50 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:54:21 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:54:21 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:54:21 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:54:21 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:54:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:54:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:54:21 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:54:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:54:21 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:54:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28e4adec51fae91c6c1c09e067130d6d07aceb4cf4b6e66bcba7754e30ce152`  
		Last Modified: Tue, 14 Jul 2026 16:54:30 GMT  
		Size: 2.9 MB (2916060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9c2916d28e410adbdaad648a2d82d92d81cd43947fefe74dd23a9295ef9de0`  
		Last Modified: Tue, 14 Jul 2026 16:54:30 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8a66abcd0d8823013e684e9f5cb0512ffe09356189bdf43af13530682b56b8`  
		Last Modified: Tue, 14 Jul 2026 16:54:32 GMT  
		Size: 41.8 MB (41838799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcaaba8d429756c40a756442054e05dac99a332f8312c75921139d70a723058`  
		Last Modified: Tue, 14 Jul 2026 16:54:30 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:134fbafdd9e27feef3f222690cc19e3c470a0e9ce017900d1e0e7c5370719073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2623296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4722e561da4c389241544023a9627379369f1f0aa4dff095fc2072dcd7d4f1f1`

```dockerfile
```

-	Layers:
	-	`sha256:1776a453c72288cb4d03480428224efcea311815b116f4f8c6e78d887cf89e97`  
		Last Modified: Tue, 14 Jul 2026 16:54:30 GMT  
		Size: 2.6 MB (2599973 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d82ce32860b098701c348f1d54d1d329e97108af7a6c263f36ef992c323a8af2`  
		Last Modified: Tue, 14 Jul 2026 16:54:30 GMT  
		Size: 23.3 KB (23323 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:cfdd1465929261e7e7679b037f194475f2b1447dcffefbfb4241c3ee4b49c6b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80246161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e220efb14de68ed861bd9d247310e0b3d98052a24c400db977910ed9bceb0b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 16:52:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 16:52:01 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 16:54:28 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 16:54:28 GMT
ENV RUBY_VERSION=4.0.6
# Tue, 14 Jul 2026 16:54:28 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Tue, 14 Jul 2026 16:54:28 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Tue, 14 Jul 2026 16:54:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 16:54:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 16:54:28 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 16:54:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 16:54:28 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 16:54:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1ca0736a324a69b6a9c2538e2ef7a095dab2cf64891f55d87b020d37159264`  
		Last Modified: Tue, 14 Jul 2026 16:54:39 GMT  
		Size: 3.3 MB (3344995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8c715ae2fec5c6084e5b61640d02dedd5258a7c134b386d9e008ccd0a64ac6`  
		Last Modified: Tue, 14 Jul 2026 16:54:39 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0572e8be200ffdbf2a77c2928ef98bb61920d20ea5831e604763afad7eb0a62`  
		Last Modified: Tue, 14 Jul 2026 16:54:40 GMT  
		Size: 48.8 MB (48783577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373567150e9036876e72dede9af729b39d9b3d4d0af645646b26e7eeb19c972d`  
		Last Modified: Tue, 14 Jul 2026 16:54:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:120c0398fb367a20fcaeed402522f2957403712cee865eb59558b9ffd035ca2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab201f4944b10502c2d6594bdf6d6a75c7802687186f32b661ca691d5c2713b`

```dockerfile
```

-	Layers:
	-	`sha256:11141f1d11f428b3fb19f6a504363dda405b764de651ff67a3f7a91dfa8a28b0`  
		Last Modified: Tue, 14 Jul 2026 16:54:39 GMT  
		Size: 2.6 MB (2598007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a27ad04b53d22b8a93bf1745f5bb9b8b27f90beecb26ce066aa1b174cc0d175`  
		Last Modified: Tue, 14 Jul 2026 16:54:39 GMT  
		Size: 23.4 KB (23353 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-bookworm` - linux; 386

```console
$ docker pull ruby@sha256:45d22d1d5484bd162a3d7b4d292c4faff9903dd38a6b1711e92f265446e095ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74554488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad7b9798e1abdf1a6f2c87ae69e67ebaaa9d4ee24a6e5758faa0f68060e22c4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:12:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:12:42 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 01:15:12 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:15:12 GMT
ENV RUBY_VERSION=4.0.6
# Wed, 05 Aug 2026 01:15:12 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Wed, 05 Aug 2026 01:15:12 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Wed, 05 Aug 2026 01:15:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 01:15:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 01:15:12 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 01:15:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:15:12 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 01:15:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd58927a2c83cb3318d24bfec45bbdd9929ecb453a84fd73ce2b097441a7afb`  
		Last Modified: Wed, 05 Aug 2026 01:15:21 GMT  
		Size: 3.5 MB (3515675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b215ed9b71eeeff6f0638b5ec5c7ebef3a3f9d8131c74661a2c85c03e9edfbf`  
		Last Modified: Wed, 05 Aug 2026 01:15:21 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64143998978abaf910061d2d55b7ac6ceb390cc416f4b07b369c4b75f0e308e`  
		Last Modified: Wed, 05 Aug 2026 01:15:22 GMT  
		Size: 41.8 MB (41817505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9442cbca675437f6cbcdec3b69d1e31a30ac5d0946a5a93127128bafd8a848`  
		Last Modified: Wed, 05 Aug 2026 01:15:21 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:8b0085bc25a87589ff6d452038f0c128a8153d2c73fb53d4dc4264ff351f6cd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:165b71b867117f4476014d3f603b29b996869b3f67d6178a5d535a0aa6adfa7b`

```dockerfile
```

-	Layers:
	-	`sha256:ac64ff97613fbfb8208dbe00130730c8f9252c15561d9b2ac91022e84c581a9e`  
		Last Modified: Wed, 05 Aug 2026 01:15:21 GMT  
		Size: 2.6 MB (2594930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a12e054bfa46e9a7ef313196445b6d456f4bdfda0404c21f85bd14afe3f09c5`  
		Last Modified: Wed, 05 Aug 2026 01:15:21 GMT  
		Size: 23.2 KB (23166 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:slim-bookworm` - linux; ppc64le

```console
$ docker pull ruby@sha256:6a71462daf52361fca246ab41127bde4c1e2d782c61ffeb2c8258470a1b47952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79730126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622d53407bad46d239d835f84c9090733a5c067573c3a96d47e61776061027c7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 15 Jul 2026 00:30:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 00:30:04 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 15 Jul 2026 00:34:35 GMT
ENV LANG=C.UTF-8
# Wed, 15 Jul 2026 00:34:35 GMT
ENV RUBY_VERSION=4.0.6
# Wed, 15 Jul 2026 00:34:35 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.6.tar.xz
# Wed, 15 Jul 2026 00:34:35 GMT
ENV RUBY_DOWNLOAD_SHA256=9c9d121fe3314ea7c801e690b9de981d2b9d12d7849db99c27482468a541ba0a
# Wed, 15 Jul 2026 00:34:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 15 Jul 2026 00:34:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 15 Jul 2026 00:34:35 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 15 Jul 2026 00:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Jul 2026 00:34:36 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 15 Jul 2026 00:34:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d30c7ee305f70c537d237bf93c09a72b21b9d390cd635f184b9e20de525a969`  
		Last Modified: Wed, 15 Jul 2026 00:35:00 GMT  
		Size: 3.7 MB (3714757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4854bf37eb9589e7b8b8ebd1b4eacb00dba4630e22389c8034737bed52796370`  
		Last Modified: Wed, 15 Jul 2026 00:34:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785287b9125a858d9da8ba79b59bbf57a5b7806251d5e5b722db31f0ec2d130`  
		Last Modified: Wed, 15 Jul 2026 00:35:01 GMT  
		Size: 43.9 MB (43938622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac97c5dcae0c170d172d0c45cc5e2ac9f259f98d7bc4904143d79c98461dd8a4`  
		Last Modified: Wed, 15 Jul 2026 00:34:59 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:5d59afebe350e6b04ff6d2a3229a70bb60d56b3e835f33db3958ffef0abd3c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2625393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01bdd7f114a0df05d1ad5562618a595c9b33ecf8816d3624df07c4198dcfa2b6`

```dockerfile
```

-	Layers:
	-	`sha256:450c06b2c00530c4aad940254efeec966dd6c2432401a517e4862c6ee407750d`  
		Last Modified: Wed, 15 Jul 2026 00:34:59 GMT  
		Size: 2.6 MB (2602140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86790f9655f448406064749f75436370966327e59643084a0347e53a584aa1e8`  
		Last Modified: Wed, 15 Jul 2026 00:34:59 GMT  
		Size: 23.3 KB (23253 bytes)  
		MIME: application/vnd.in-toto+json
