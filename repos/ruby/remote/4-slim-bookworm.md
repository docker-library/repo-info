## `ruby:4-slim-bookworm`

```console
$ docker pull ruby@sha256:707ef4cbfc3d990664996e5ef154abd6a41539aa774b8467f55126697e03d58f
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ruby:4-slim-bookworm` - linux; amd64

```console
$ docker pull ruby@sha256:223071f834c2ad6d9f817c240095b0d3e7fb1920db03482d4180095c0dcfda8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80730581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5c3ddd928c59f521ced43ab29d6b186bf14340f2d02f1d4f3552fcebe79be7`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:11:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:11:05 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 02:13:24 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:13:24 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 02:13:24 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 02:13:24 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 02:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 02:13:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 02:13:24 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 02:13:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:13:24 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 02:13:24 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69e61678b6262ad4d14e6bc794cc188065b01e1874333b7bf9a988171a0dc11`  
		Last Modified: Tue, 14 Jul 2026 02:13:34 GMT  
		Size: 3.5 MB (3511578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b13e314280de73ca396921f9525d14438e1c0b9c171f06a6fee60d81e1a85c81`  
		Last Modified: Tue, 14 Jul 2026 02:13:34 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433366340f8224d63cc34fc128c48533eaea7b6ecfb9a2b5abe6197ca4b2815d`  
		Last Modified: Tue, 14 Jul 2026 02:13:35 GMT  
		Size: 49.0 MB (48986029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24335bd37c6a29fe496e1d864c37d83eabb0d749f2e1c6c4e064408a5bb9d3b5`  
		Last Modified: Tue, 14 Jul 2026 02:13:34 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:ba88e020cab6edea73d6d2113a31bed6842b04bef50047494dbc0b3c57f66aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513732e9ca197a22063217ad988ed4ac391ac59d2dcde14f94e43331208d9d42`

```dockerfile
```

-	Layers:
	-	`sha256:0daf7512b95d9108870267e2c3d3f4d77777ed8ccd77a63c1d93a1ce29443963`  
		Last Modified: Tue, 14 Jul 2026 02:13:34 GMT  
		Size: 2.6 MB (2597743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4381caa9396f8ce265ba1d979af3c65ab68a2adcc7fa5331f8d95b71a7ea978`  
		Last Modified: Tue, 14 Jul 2026 02:13:34 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-bookworm` - linux; arm variant v5

```console
$ docker pull ruby@sha256:31aaa6bc65c8832ff2af850c6b7d7a073f867e9e8fce7fdb48633c436388f349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70818959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fddddbc57df075e84f386b0e8648e7490004694c43c0515931996eb916eca891`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:07:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:07:26 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 03:10:07 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:10:07 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 03:10:07 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 03:10:07 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 03:10:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 03:10:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 03:10:07 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 03:10:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:10:07 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 03:10:07 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1c9b9cc9660939ca6a733102f55ee8694e0218bfc63bcd2cf72f4093124edc5f`  
		Last Modified: Tue, 14 Jul 2026 00:13:52 GMT  
		Size: 25.8 MB (25767982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611c0da61129599177f51d162102d911c2a2589efb58badaeebaac0c470594fd`  
		Last Modified: Tue, 14 Jul 2026 03:10:16 GMT  
		Size: 3.1 MB (3083713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a1f1ceba935b6dd9b214e16a8b93ce8cf4c059292d5509f1089fbed402b539`  
		Last Modified: Tue, 14 Jul 2026 03:10:16 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c6ca85808e5ac04d2206a511fa43302688a6af4d1b95f1fb3a72f6efde9f77`  
		Last Modified: Tue, 14 Jul 2026 03:10:17 GMT  
		Size: 42.0 MB (41966931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d424a735d7b9714b3c3a52ac20f01f6a595297ca00dd7adc461d223ae893ba8`  
		Last Modified: Tue, 14 Jul 2026 03:10:16 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:8c9486922914ed1cae5b55e8aeccdb5f68b4636954ff01e210adf685a025f107
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2624871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205f55869f3cd7b6aea8dea3ad7e512c2c0b10c345d290287a45834b7c585915`

```dockerfile
```

-	Layers:
	-	`sha256:a1caed639503c14cf454d1193b136214881403bd5bf7e09b695c8e80b07eb6e9`  
		Last Modified: Tue, 14 Jul 2026 03:10:16 GMT  
		Size: 2.6 MB (2601548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31b3ed890c3630caed282c1598ee69e8f582662daf270f118af7e52e1f767260`  
		Last Modified: Tue, 14 Jul 2026 03:10:16 GMT  
		Size: 23.3 KB (23323 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-bookworm` - linux; arm variant v7

```console
$ docker pull ruby@sha256:359256efe779e1df6afc92277b0e9e58f75d4dce991fd82b8d8421c8be9401be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68634461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b26918b68b5936259dd81e7375adc56ca4761b31a459ee4934f211c38930447`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:38:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:38:47 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 03:41:25 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:41:25 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 03:41:25 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 03:41:25 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 03:41:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 03:41:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 03:41:25 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 03:41:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:41:25 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 03:41:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac293e8122d59caa9c9abe53dc5096f4e3b8cdb31c12b139c37b59f93f4feab`  
		Last Modified: Tue, 14 Jul 2026 03:41:34 GMT  
		Size: 2.9 MB (2916052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b226ec988381261a8a5586cc896f17675bde72d6f8c83dd2dc766ae5175d050`  
		Last Modified: Tue, 14 Jul 2026 03:41:34 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0381721183ec183028247ce9f4c8c4ff046f4bb6df4009c52d7419792e5b40da`  
		Last Modified: Tue, 14 Jul 2026 03:41:35 GMT  
		Size: 41.8 MB (41778298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b375011142e3191018b56637deda0df4dd9941132470694f4f45f78c4a9d6fbf`  
		Last Modified: Tue, 14 Jul 2026 03:41:34 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:00d427ea7a459a0522371701b7667256064753445af006734c9368abeb658490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2623290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35194e5e8d85f627975c3932e61d5f167363374e720a194c19d257132c6109c3`

```dockerfile
```

-	Layers:
	-	`sha256:0ef35281b7b28f33a452e7fd27840aa587c08bfcbfab12246dd10cae2fecc29c`  
		Last Modified: Tue, 14 Jul 2026 03:41:34 GMT  
		Size: 2.6 MB (2599967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04d6631f9478c85c3fa43b726e5552a99adf9eb38c1c903db9c7c5183e6b695e`  
		Last Modified: Tue, 14 Jul 2026 03:41:34 GMT  
		Size: 23.3 KB (23323 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:a9f3b96b013f67eabc042e405f41761ed2ed1dd076d4e8b15cbdc9aac7ea1be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80182543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f3b28ec31ddbb396279cfae5dda65997e4a93120d37bf58f4fe0c097f9c07f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:18:07 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 02:20:34 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:20:34 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 02:20:34 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 02:20:34 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 02:20:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 02:20:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 02:20:34 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 02:20:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:20:35 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 02:20:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f42aa27fa8c20da915c09643bb95328e6bd7094988b4ec35f0ce6504b00f24`  
		Last Modified: Tue, 14 Jul 2026 02:20:45 GMT  
		Size: 3.3 MB (3344938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7589b3a4cc0d6032db3d4067c49a4721baaee845e11736934cf64dbc3608ac`  
		Last Modified: Tue, 14 Jul 2026 02:20:45 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6adc124a0c015230c2dc0945df383030c80f732e2a3e77c3230dbb318c6f64b`  
		Last Modified: Tue, 14 Jul 2026 02:20:46 GMT  
		Size: 48.7 MB (48720016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638681693c7962a2ebae3ba59405b932ef82e049c364d294d64596ade139e4bb`  
		Last Modified: Tue, 14 Jul 2026 02:20:45 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:651a57be115bf4d6b95db4bb6d9ad112b603d85c0496f3c3044cc64ceb277952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e090e048058e11abed39bd653188ee700d05e48f4b9865b1a59a6b327f1893`

```dockerfile
```

-	Layers:
	-	`sha256:ff564f37601e8734df4666ae554fc9e04d37c46f5bf29853ea8bd03519121541`  
		Last Modified: Tue, 14 Jul 2026 02:20:45 GMT  
		Size: 2.6 MB (2598001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80bcb85fcdd38e3276070e9f24fd58be39f5f9148231354f74d8836c5786892b`  
		Last Modified: Tue, 14 Jul 2026 02:20:45 GMT  
		Size: 23.4 KB (23353 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-bookworm` - linux; 386

```console
$ docker pull ruby@sha256:e5d925926eb90606be7453a883189ed6b86c358111dbd4226b9ce99c586e0878
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74499716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ea4595d3d3112e11405c48933965e3f55cd046ff0783228b65cb84d79916cd0`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:13:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:13:19 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 02:15:52 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:15:52 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 02:15:52 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 02:15:52 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 02:15:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 02:15:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 02:15:52 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 02:15:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:15:52 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 02:15:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993810dcf02e2bfc860daed213c565393d5e93c95f8c988860ac20ecbaac2e4f`  
		Last Modified: Tue, 14 Jul 2026 02:16:01 GMT  
		Size: 3.5 MB (3515759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5910a5870eacfdc6a4cc8ccaff54dc6be672b5308652fc9f623c85a019ea711c`  
		Last Modified: Tue, 14 Jul 2026 02:16:01 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1252a2440e5b8719a6a3bf2cf7a45947ac3466b2fe90cf23d18f540e4fba80eb`  
		Last Modified: Tue, 14 Jul 2026 02:16:03 GMT  
		Size: 41.8 MB (41762573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9993227aedc0bd1988fde0620438628d7ce21d4824d67b945ebc84ba26c5d3e8`  
		Last Modified: Tue, 14 Jul 2026 02:16:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:ddc5991a839d468afc4964f1972fbf6827ff4c21d5f41689ee05dc16b31efed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c46e1dd8ec346e75dcf138b4189ccb2cccb2e16b7fd1d09dea7e4b6461b8b7`

```dockerfile
```

-	Layers:
	-	`sha256:fb8f3a79b9553243a632577a8ae74c05731e1e426f0f95578d7b17144b89ccb0`  
		Last Modified: Tue, 14 Jul 2026 02:16:01 GMT  
		Size: 2.6 MB (2594924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e17887dffa7fc338c6379588d71569fa90ca99cfb25ba202fe213bdfaaed7518`  
		Last Modified: Tue, 14 Jul 2026 02:16:01 GMT  
		Size: 23.2 KB (23166 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-bookworm` - linux; mips64le

```console
$ docker pull ruby@sha256:9982236b1b32cf7b39287ee1b32551fcf21fdf0c62077c216c08c513f2ac31e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74772146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86707a5ffa0eab1d78095ffc141fbf67b24dcc89695d57fd179bd7144c6b0efe`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 18:33:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 18:33:47 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 24 Jun 2026 18:50:23 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 18:50:23 GMT
ENV RUBY_VERSION=4.0.5
# Wed, 24 Jun 2026 18:50:23 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Wed, 24 Jun 2026 18:50:23 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Wed, 24 Jun 2026 18:50:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 24 Jun 2026 18:50:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jun 2026 18:50:23 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jun 2026 18:50:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 18:50:25 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 24 Jun 2026 18:50:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e3e59e5d9fba86ba9cccde17de0c09e1a6250f5fd1ae881c8b925031848b7a5d`  
		Last Modified: Wed, 24 Jun 2026 00:27:28 GMT  
		Size: 28.5 MB (28528885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a621ef0bebcb2477f75ed6df3494409173eef665b66fb3787e5055d45446733`  
		Last Modified: Wed, 24 Jun 2026 18:51:07 GMT  
		Size: 2.9 MB (2903969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e108e84e8de954fdb05dc697db3953334d86b4867658379d12a700318d39ee9e`  
		Last Modified: Wed, 24 Jun 2026 18:51:07 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518b1343bfbb5a31ae4fc3d204d0b98b5b54dce8b3a296694ae9147c76e16ad9`  
		Last Modified: Wed, 24 Jun 2026 18:51:12 GMT  
		Size: 43.3 MB (43338959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:073e6b24f333e44b6e07638a0698f2fceaeac70453704e4198ae6f720dcc70a0`  
		Last Modified: Wed, 24 Jun 2026 18:51:07 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:66608c8028e381be724477e99f8402c091f2b7498d01fc895935f582cb65f25c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac1a1340e2357aff643e2ef2aa239e930986d1b3756191cfdb9a9251033004b`

```dockerfile
```

-	Layers:
	-	`sha256:a583c89f9e3344f47fe83436b060cca276bdce32b47244a424875b3098348817`  
		Last Modified: Wed, 24 Jun 2026 18:51:07 GMT  
		Size: 23.1 KB (23063 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-bookworm` - linux; ppc64le

```console
$ docker pull ruby@sha256:d67192faa19506f83276246771c6cf80aa209917b896f66d4526afc8a5c1fbe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79654322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff48fb986e7808934455915d6c7dda821e77e82d4bf54012c748d89130ef8f69`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 07:47:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 07:47:56 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 07:51:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 07:51:53 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 07:51:53 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 07:51:53 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 07:51:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 07:51:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 07:51:53 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 07:51:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 07:51:53 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 07:51:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c080e158c9206384f7d542160f9a2515d2a60d3db873a193a9009cef3caf86`  
		Last Modified: Tue, 14 Jul 2026 07:52:14 GMT  
		Size: 3.7 MB (3714714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adef329c7479abd5c306dfc00d6494e7758ce5fb52f9eff18c454b2741046579`  
		Last Modified: Tue, 14 Jul 2026 07:52:13 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370f210f1cad44652bf829fb70de10f2dd4bdaf45a574e809505c0c2635538a5`  
		Last Modified: Tue, 14 Jul 2026 07:52:15 GMT  
		Size: 43.9 MB (43862861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ea80e74ef7adf16cc870bf40c73bebe298398a91d1c0455e3c8a4f5c53f273`  
		Last Modified: Tue, 14 Jul 2026 07:52:14 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:45907307f3dfa91d6378c90ea25e723845f438ce6bd8e7cbf5e1b9c06d774de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2625386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7ec8c10838736dad4bb14c19bbe8a4f0c2720505a3612e464ef4d3fd05fc44`

```dockerfile
```

-	Layers:
	-	`sha256:6969bfc3d63ce194e512de5a6574cb29542316f3e2d252a8eab1b8100c3b17c8`  
		Last Modified: Tue, 14 Jul 2026 07:52:14 GMT  
		Size: 2.6 MB (2602134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0913bc68dfd1b82fb5eff7d1e4386a7568fd8ea800fcc45ae11f2d8c8febb6ad`  
		Last Modified: Tue, 14 Jul 2026 07:52:14 GMT  
		Size: 23.3 KB (23252 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-bookworm` - linux; s390x

```console
$ docker pull ruby@sha256:6ca7b1fc2b947f87bbdf921c78c75d4605672e123e91133a9015566fdea56a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73154871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1d19ee7387768076240c6e49c7ccb13afd3bbddb6c16b766c0762b41dd1284`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:17:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:17:12 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 04:19:52 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:19:52 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 04:19:52 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 04:19:52 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 04:19:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 04:19:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 04:19:52 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 04:19:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:19:53 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 04:19:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b83598583ceb4c2be778e987ea97fc8c97a78692500e88da33f0d46b835230aa`  
		Last Modified: Tue, 14 Jul 2026 04:20:09 GMT  
		Size: 3.2 MB (3173428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8cb82c15d7b970b92b27150d1712cb3859ef0ddb42c5ec882b9da2b15c04bd`  
		Last Modified: Tue, 14 Jul 2026 04:20:09 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e634e0e6e1072edd194547957bfd65cec998af3dfbaf9522b47bd0c3b3deb9`  
		Last Modified: Tue, 14 Jul 2026 04:20:10 GMT  
		Size: 43.1 MB (43092844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75dcbc79dc504a3d47c392a7a140806c155e4c1a4e5a595aabebfcb31ee49cff`  
		Last Modified: Tue, 14 Jul 2026 04:20:09 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:82a52a3b6a0f2b1b625b47baf90d1af26d0b6e93a7448434015edb587d4c3c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc83908207ae2cfc64bb39682bd8aed42aa3d1c97d9c113168667bb4e4f41c28`

```dockerfile
```

-	Layers:
	-	`sha256:8dace9cf95731056d71a5851e7f93d7ef17abf65da6cca02fc13407600022ec1`  
		Last Modified: Tue, 14 Jul 2026 04:20:09 GMT  
		Size: 2.6 MB (2594574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cd4f5d1cb543e3a91cb1d9408c3127c30b8c923553a0b4680de13a0bb2fc6a0`  
		Last Modified: Tue, 14 Jul 2026 04:20:09 GMT  
		Size: 23.2 KB (23204 bytes)  
		MIME: application/vnd.in-toto+json
