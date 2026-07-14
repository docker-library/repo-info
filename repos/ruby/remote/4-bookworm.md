## `ruby:4-bookworm`

```console
$ docker pull ruby@sha256:b746e1921e90dfb75ac936c47662f63cbdaac9ef7d6ca922152821ef3941a01d
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

### `ruby:4-bookworm` - linux; amd64

```console
$ docker pull ruby@sha256:3d69b3e5266101c0ca8936472f584e96f94e05ae6c7905fddfc4592e8a88bbdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.7 MB (397658172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a901103a6aa6f868ded4969fb66bbd336862a33fa737ca1012ec703b736e5916`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:49:46 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 04:51:43 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:51:43 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 04:51:43 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 04:51:43 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 04:51:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 04:51:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 04:51:43 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 04:51:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:51:43 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 04:51:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e7f1cb7a296e8a2f35401d96a0c2fc030894e200451ae74437bdb7a4b2cb43`  
		Last Modified: Tue, 14 Jul 2026 03:18:35 GMT  
		Size: 211.6 MB (211626576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d090791db645b373e6d52414822e9719cd7cc71295485ccfa17a9ced8481cf14`  
		Last Modified: Tue, 14 Jul 2026 04:52:00 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f65f3a39e62a6102450f919212d57b2915f17dbeff022ee27a4fa7906024d6`  
		Last Modified: Tue, 14 Jul 2026 04:52:01 GMT  
		Size: 49.1 MB (49081306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822b9f50d4e29e7172e7a4616fc764ad7a5c8bb290ddd0985fd709b2f887f8cc`  
		Last Modified: Tue, 14 Jul 2026 04:52:00 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:4bd09579111e32e4445d78e51f4354a2b04d617893f5bc0bac684d1a6f873c22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16002004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1910c33abb0817f54883a029c0d16ce0f3f8430b467fde009d165015b8f6e497`

```dockerfile
```

-	Layers:
	-	`sha256:1cef4f76c00a6ee3992c7131c1c0f39cced191a8082f1a86dd9c6e9a5fc4e9dc`  
		Last Modified: Tue, 14 Jul 2026 04:52:00 GMT  
		Size: 16.0 MB (15980088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:877ec4da6bbd0bf867d8bebc85ee048c754c59623cf7cda2c910707c01a149eb`  
		Last Modified: Tue, 14 Jul 2026 04:52:00 GMT  
		Size: 21.9 KB (21916 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; arm variant v5

```console
$ docker pull ruby@sha256:90ecccf2db74e03ec8c7135fa68f9e19f1f9659b26f74d995aeb1bbe0c7e3562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.7 MB (357732439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16523e35d25439aa21e8f8e799e62e8ab2a13ccdb2d5ba3237651ae2efca6c3e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:24:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:57:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:33:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 06:17:14 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 06:19:25 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 06:19:25 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 06:19:25 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 06:19:25 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 06:19:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 06:19:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 06:19:25 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 06:19:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 06:19:25 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 06:19:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:f99a0c6c2573399952c2c4cea64053957ffa423850eeb55a72c61f7e0b4f7c8f`  
		Last Modified: Tue, 14 Jul 2026 00:13:39 GMT  
		Size: 46.0 MB (46033816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec7f2bf827ae68b8180a893dd1bd8360ef00bb8731e9fd6f8e3ba50146ca801`  
		Last Modified: Tue, 14 Jul 2026 02:24:49 GMT  
		Size: 22.7 MB (22718439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d96b3670aff78faa8d106bef60a8fdb91bfec8a0a6015d0f0f4cb341ec4f556`  
		Last Modified: Tue, 14 Jul 2026 03:57:42 GMT  
		Size: 62.0 MB (62026649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f10f606a84840832b2a02b7c4d976c761b1b92ef11d7f0bb6ccf76312a4ebf`  
		Last Modified: Tue, 14 Jul 2026 04:33:58 GMT  
		Size: 184.9 MB (184881733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822d1e87f04163cade7c58fb64acd8a50a02ae2b0d4e187c180a3cb9b4e12290`  
		Last Modified: Tue, 14 Jul 2026 06:19:43 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3cb5f45a28743c0a79ad2312f7d368b9ba67cb847fc6872f4568715a930e097`  
		Last Modified: Tue, 14 Jul 2026 06:19:45 GMT  
		Size: 42.1 MB (42071471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c0cacbaeb0408ed8a563967409e8078b13e9ffe8cd68b3a833d5817985afb6`  
		Last Modified: Tue, 14 Jul 2026 06:19:43 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:02a57778cfb2073e1757f20f8013c744ea56477b75030d2e275527d8e36de45d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15799110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc950c1824c25eab4576035b193e363bd837d0aeb7a52c051602e79743a3d22`

```dockerfile
```

-	Layers:
	-	`sha256:4c0b6be3fc05d4848be88cd2930852b411e6f4f87cb432025d7462facdca16d4`  
		Last Modified: Tue, 14 Jul 2026 06:19:44 GMT  
		Size: 15.8 MB (15777088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1e54c1d6c493ac8bc7200ece0a65b5d5dd4be597c5b79d005015e2bd0ca49d0`  
		Last Modified: Tue, 14 Jul 2026 06:19:43 GMT  
		Size: 22.0 KB (22022 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; arm variant v7

```console
$ docker pull ruby@sha256:1333951487b14b9e8e57782451d0a8c5e4d3cbe46fdb49f55ceed6b7bf9a85e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343224186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2f40d87ac9de68b9dde87f27273de68bb7df8aded6defb01683a5471e7505e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:13:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 07:30:37 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 07:32:48 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 07:32:48 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 07:32:48 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 07:32:48 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 07:32:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 07:32:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 07:32:48 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 07:32:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 07:32:48 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 07:32:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:f08ce4a309195cc7b461516684fc0628d56fd465c538e7c129a9eecab47df45a`  
		Last Modified: Tue, 14 Jul 2026 00:13:47 GMT  
		Size: 44.2 MB (44203181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1132f9cb1292797584a716d4e35906092ffde6a92ac73ad7e53bf2011c37fd7c`  
		Last Modified: Tue, 14 Jul 2026 02:29:25 GMT  
		Size: 22.0 MB (21950005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0890883874051ebbc97c0f302949cefff32c87f2ad60cc2477409b9c7da643b4`  
		Last Modified: Tue, 14 Jul 2026 04:15:26 GMT  
		Size: 59.7 MB (59662246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f356fbfec768d91a9776e0104b8526c9d271f7ecf6e3d64032e5f19bf84adaaf`  
		Last Modified: Tue, 14 Jul 2026 05:14:31 GMT  
		Size: 175.5 MB (175527314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0e557b120c116c9a564e1503a4c7c5d903dbc20da0f6896dcebdfac257f9f9`  
		Last Modified: Tue, 14 Jul 2026 07:33:08 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf504d5442c6f1ed8e37ce397ef8694fabc94b06d29d2f86e40be798222d161`  
		Last Modified: Tue, 14 Jul 2026 07:33:09 GMT  
		Size: 41.9 MB (41881107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbcede326652541c24890d7e8fa7cda73caf19c9f2ecad95633028915774039`  
		Last Modified: Tue, 14 Jul 2026 07:33:08 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:f57ad01139add0e867050a6ab81c90a39fb90238867c088f11eda85333d70290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15804586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ea8347fab9ed4f834313d5e51be099930785172f5c5f6444d8fdbcb601443f`

```dockerfile
```

-	Layers:
	-	`sha256:ad04d71781206e9ab4b6b0b26be3441128e7b99f146d6cc4542e5891343908a2`  
		Last Modified: Tue, 14 Jul 2026 07:33:08 GMT  
		Size: 15.8 MB (15782564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e03cf808cbde43b6344ed4a043d9bcaeae25536613a74eb5a8819bf72b136727`  
		Last Modified: Tue, 14 Jul 2026 07:33:07 GMT  
		Size: 22.0 KB (22022 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:1f6c14bc9cd28df84e9c3a3c3ee748dc8c29217875781a78c1bd00414f6d52c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.5 MB (388470478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eea7a7f37e247443a2c61a3455630e43d728f8ec3192c978665e14573644029`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:05:21 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 05:07:25 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 05:07:25 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 05:07:25 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 05:07:25 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 05:07:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 05:07:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 05:07:25 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 05:07:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 05:07:25 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 05:07:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af2d47cd8540f7af1f8ba488289fa82e9a2258d051477163651baf22fc99ea6`  
		Last Modified: Tue, 14 Jul 2026 02:37:00 GMT  
		Size: 64.5 MB (64498147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09cafdc051b9826ce9f47360fd9501131e7c28c94021b769e4e6d91204cdf8a`  
		Last Modified: Tue, 14 Jul 2026 03:18:39 GMT  
		Size: 203.2 MB (203150933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924d853943cdfd3639ffde1678b91843ce41652e19effa77e1f9151a714be49b`  
		Last Modified: Tue, 14 Jul 2026 05:07:45 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322fd08fbc641082820f7434f042cd0d292bf69d4bf7b4a6fa068d88e5fdab2c`  
		Last Modified: Tue, 14 Jul 2026 05:07:47 GMT  
		Size: 48.8 MB (48824675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8ff4b38137318d2fd54d2624a6ce6fa98f7650e72645223d2f9b470b4e5546`  
		Last Modified: Tue, 14 Jul 2026 05:07:45 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:dba8fa8b6ffcb8595583e24338e65c6ae6788344826347eb3d94b9695724a7a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16030664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8654b2a3f4447ee2a7bbeb8ee5ef147547ec410d6031ee22c84d15a42504e50f`

```dockerfile
```

-	Layers:
	-	`sha256:7b3793b71526259618d1a4d6eed23ae8a533b15336f436b16fa0a8d7ea11b6da`  
		Last Modified: Tue, 14 Jul 2026 05:07:45 GMT  
		Size: 16.0 MB (16008614 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ad77a7fb191f8f0b4e10a8c5551302ebdbec917acffe706b71e05376a069032`  
		Last Modified: Tue, 14 Jul 2026 05:07:45 GMT  
		Size: 22.1 KB (22050 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; 386

```console
$ docker pull ruby@sha256:098b2ecf71f7489d3e99a5314cfd79dc1920dc08d59efe1f226114462a345ad6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (393005368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a37c223e32d4b413233d4ce8a0e8d7df8bbde3f4f9bf257c8729c070005e0641`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:40:50 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 04:42:55 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:42:55 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 04:42:55 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 04:42:55 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 04:42:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 04:42:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 04:42:55 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 04:42:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:42:55 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 04:42:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57925bd1ff28d8c7df42e8e4386b1a8e5104548196adaa28c62e0c7b26b5f2b9`  
		Last Modified: Tue, 14 Jul 2026 01:46:55 GMT  
		Size: 24.9 MB (24879833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a17209efcdd987645a47d85b886216acc5254a2a0c1aef2364b9a70bdfd8b2`  
		Last Modified: Tue, 14 Jul 2026 02:38:33 GMT  
		Size: 66.2 MB (66249184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec007785d4fac623d5aa32d96b975990b9fe16223670ebbd4ee22ed9e61c330`  
		Last Modified: Tue, 14 Jul 2026 03:18:47 GMT  
		Size: 210.5 MB (210540155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb945174df605e316058d792e3275f53794a5d1401b3d19be3ed3c3331efe88f`  
		Last Modified: Tue, 14 Jul 2026 04:43:13 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9b39840607e5538632992f8a5003db79a67f97b37d5fec75eb03f63a10a547`  
		Last Modified: Tue, 14 Jul 2026 04:43:14 GMT  
		Size: 41.9 MB (41850424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57ef6859b6fb099b03fd6dbabd76c1a8cf437fa41b4a6b501069a924fd5d994`  
		Last Modified: Tue, 14 Jul 2026 04:43:13 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:decbcc59e01a10da49da1c80e7e04e83b505877f23cc2db0df7ebf158b21f1df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15980186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a274a9b4dfb5994030d37c25e763259f9d89d3e8cbb3eabc0ecf0907e70df3`

```dockerfile
```

-	Layers:
	-	`sha256:c11f947017c64a542147204f7c3c4983b503761562f6a54696892ec6c0674218`  
		Last Modified: Tue, 14 Jul 2026 04:43:13 GMT  
		Size: 16.0 MB (15958306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f540f51dc90eb9ebda06630c35af199aa853adeab5961156d3a8a12e29aaee54`  
		Last Modified: Tue, 14 Jul 2026 04:43:12 GMT  
		Size: 21.9 KB (21880 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; mips64le

```console
$ docker pull ruby@sha256:79028048cc2e372af6a81d2b183637c933a197786fc5de2a6f5183fa6ffde2eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.5 MB (369544232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512c3f29e27ce928fdac6fa82c9d737a667001088da2914f447ccd58fa9a1ccc`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 14:04:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 19:26:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 20:14:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 02:08:11 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 25 Jun 2026 02:21:40 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jun 2026 02:21:40 GMT
ENV RUBY_VERSION=4.0.5
# Thu, 25 Jun 2026 02:21:40 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Thu, 25 Jun 2026 02:21:40 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Thu, 25 Jun 2026 02:21:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 25 Jun 2026 02:21:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 25 Jun 2026 02:21:40 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 25 Jun 2026 02:21:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Jun 2026 02:21:42 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 25 Jun 2026 02:21:42 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d06e8744a62761c63cdcacfb2a61022e2f4c0aa854b6cede18fced28342dc1b2`  
		Last Modified: Wed, 24 Jun 2026 00:26:53 GMT  
		Size: 48.8 MB (48792819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a2f466b887b6a2a52424171128948207dccef13979fc60f50cb7beb67f123f`  
		Last Modified: Wed, 24 Jun 2026 14:05:16 GMT  
		Size: 23.6 MB (23623971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911f76b03057793439aa57a4c1f92b3f5d8467508369f84d1b616a44d437f66f`  
		Last Modified: Wed, 24 Jun 2026 19:28:16 GMT  
		Size: 63.3 MB (63315803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ba656eaa0ec82f59f691caf3e23100e075f2bb1dcb718cefa1a8f90df5f5a6`  
		Last Modified: Wed, 24 Jun 2026 20:17:16 GMT  
		Size: 190.4 MB (190366918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c65a882179323e2db92b57aca1e0fdea1a744a378a89ecd5ccb6d57dcf7ee1bb`  
		Last Modified: Thu, 25 Jun 2026 02:22:52 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32362f4e2152ba89fb907eabe989b39be8f37d5befcdc7da6fdcb3fefdef24af`  
		Last Modified: Thu, 25 Jun 2026 02:22:56 GMT  
		Size: 43.4 MB (43444387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bb377a7234990c838c81c2eecf26f0335043b6ee9c9f1ff529b83f2f62a76a`  
		Last Modified: Thu, 25 Jun 2026 02:22:52 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:64ac581ebf39197641d7608ca0e6c4d36d03a4be573bbfb80e8b66a3bc9e6254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 KB (21772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8971d9e66279063a29ff79a5914585d38fb4092ae0f6cd328cfb682d31a66f8`

```dockerfile
```

-	Layers:
	-	`sha256:15c327a9c834ace8e1a344f61c6cddea01d20b02e059e9e59ca0f47f375cfe8b`  
		Last Modified: Thu, 25 Jun 2026 02:22:52 GMT  
		Size: 21.8 KB (21772 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; ppc64le

```console
$ docker pull ruby@sha256:6a13db3ab76b42c06f02c3a0ce436d2c0c87c3e27c566752df7a56e2c5816667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.5 MB (406482558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c0e40094c96eadd6a44518fe9d6f72aa0fdb4bf54de3e89f794c73aa18ec25`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 03:25:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 09:09:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 11:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 19:49:47 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 24 Jun 2026 19:52:44 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 19:52:44 GMT
ENV RUBY_VERSION=4.0.5
# Wed, 24 Jun 2026 19:52:44 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Wed, 24 Jun 2026 19:52:44 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Wed, 24 Jun 2026 19:52:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 24 Jun 2026 19:52:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jun 2026 19:52:44 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jun 2026 19:52:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 19:52:44 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 24 Jun 2026 19:52:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a217268ac6656bd05839d5770fe7b3c0c976d29750b0c5635d099e473a789a10`  
		Last Modified: Wed, 24 Jun 2026 03:25:44 GMT  
		Size: 25.7 MB (25687048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6542f967f29885e49bf508e83dceee1eda4fdb044dcd68c1237588f15b795e2b`  
		Last Modified: Wed, 24 Jun 2026 09:10:08 GMT  
		Size: 69.9 MB (69853519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2d0228e0a63503bc4fc587e09e362154291abcffaef8e63e71bd8a6dbcd861`  
		Last Modified: Wed, 24 Jun 2026 11:39:56 GMT  
		Size: 214.6 MB (214646362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a1873b55f3baa2733b37a13c1f5a5e1036babc8ad3ed568faf19e6b93e43df`  
		Last Modified: Wed, 24 Jun 2026 19:53:23 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad478dda1e34c28fb23305e1f952b37fc5179d2dd62ab63b2f1d344578d532b`  
		Last Modified: Wed, 24 Jun 2026 19:53:25 GMT  
		Size: 43.9 MB (43948448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bf802ddbe050ba1d59dcc6ff06a2e85fbf02b5b6d94d6c45dfb45aaff64a18`  
		Last Modified: Wed, 24 Jun 2026 19:53:23 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:89fd70fe8826129fc8da91f23cbc78ca386bc2572a929d4fe3aa43019bd49e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15978477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6311862a94830821a48a4fbeb1b02f71970ae5f2032a47811af82e2917e1c525`

```dockerfile
```

-	Layers:
	-	`sha256:0506943c361218c10f04071bcf696726a15db41f06d382cdc85ae5edd94fbb27`  
		Last Modified: Wed, 24 Jun 2026 19:53:24 GMT  
		Size: 16.0 MB (15956513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb6bcfb134a181b3e6b23a2cebda8240580ccd19fae4aa915f48eaa40ff4aa4c`  
		Last Modified: Wed, 24 Jun 2026 19:53:23 GMT  
		Size: 22.0 KB (21964 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; s390x

```console
$ docker pull ruby@sha256:b96e8ce6265426f2a375de78d5e05419581bcde70a39e41ec0d6b86bb7e5348b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.5 MB (361517537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6596a781a195e0ced1ed3aa45ea9b5226e85716447b43d979072a7e63bbd81ea`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:45:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:29:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 05:17:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 11:11:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 24 Jun 2026 11:14:38 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 11:14:38 GMT
ENV RUBY_VERSION=4.0.5
# Wed, 24 Jun 2026 11:14:38 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Wed, 24 Jun 2026 11:14:38 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Wed, 24 Jun 2026 11:14:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 24 Jun 2026 11:14:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jun 2026 11:14:38 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jun 2026 11:14:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 11:14:38 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 24 Jun 2026 11:14:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075239c7f31ef6bc9923503289fbabd4a216a0cc1314ab546cdb22b3aa178273`  
		Last Modified: Wed, 24 Jun 2026 02:46:07 GMT  
		Size: 24.0 MB (24038997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98bfd0e5e3c41d5610549c351f2a214a1057c70f21ae763c153398d8481275e`  
		Last Modified: Wed, 24 Jun 2026 04:29:51 GMT  
		Size: 63.5 MB (63498267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99167449a185592a85feb187a60fc4d1a3ea3909348ca45a213cf5735904d1d5`  
		Last Modified: Wed, 24 Jun 2026 05:18:36 GMT  
		Size: 183.6 MB (183624001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f734bb2a4b0c90751ea814c42454af284376641bde5e880ec56e8aa7658d772e`  
		Last Modified: Wed, 24 Jun 2026 11:15:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68246620b8c620aa3825e13ffd6e719feb0b4d7f6aa8daa4eee02c934c2d50c`  
		Last Modified: Wed, 24 Jun 2026 11:15:11 GMT  
		Size: 43.2 MB (43194265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd8047b9eb67dcc9f98b5088ed71927e9332278752a83bd8946ba3f89a05a7a`  
		Last Modified: Wed, 24 Jun 2026 11:15:10 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:092e69a2b27be12b4d8ecc7ebb2301a4c2ced6fa998719b48080a00949e41884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15809512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c59b7b551db4b48e772ae55177d781348634b9e7043505065f3651ed8fd4d590`

```dockerfile
```

-	Layers:
	-	`sha256:0e42a0af7a53735f6aeac6328f0a2b023e298e085afbb556981f2e7c07c8abed`  
		Last Modified: Wed, 24 Jun 2026 11:15:10 GMT  
		Size: 15.8 MB (15787596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a499e44f2eecf06820cb103479d0a2e0a818005379f288a6215575a07f46d18`  
		Last Modified: Wed, 24 Jun 2026 11:15:10 GMT  
		Size: 21.9 KB (21916 bytes)  
		MIME: application/vnd.in-toto+json
