## `ruby:4-bookworm`

```console
$ docker pull ruby@sha256:fbdd99f9ccd67f2353029fc976ad06a53227856496c3d1937ac52b45f07b17c5
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

### `ruby:4-bookworm` - linux; amd64

```console
$ docker pull ruby@sha256:929a2363c907f2034eb4cffaf308a468d2d310072051cc064ff281829e50e5c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.8 MB (397782910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0cd1e28927fe52df0e91056897489f6c634a5e9d8fd3829322bd7825e2f9d72`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:53:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:39:55 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 09:41:46 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 09:41:46 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 09:41:46 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 09:41:46 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 09:41:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 09:41:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 09:41:46 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 09:41:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 09:41:46 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 09:41:46 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bab93d346cda15207e5a5000093cee7256ec1092fb689ec3d2997faf31b9a16`  
		Last Modified: Thu, 05 Nov 2026 08:54:13 GMT  
		Size: 211.8 MB (211826577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb76d79cf014baf8a0987818ca91d6e5aa1864f8677a1f4b6dd6b72cbd9f143`  
		Last Modified: Thu, 05 Nov 2026 09:42:02 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c451b4232ca2999979ab28a587a7dc247ed0b1254a5e40f49a479fbbdf2a2f84`  
		Last Modified: Thu, 05 Nov 2026 09:42:04 GMT  
		Size: 49.1 MB (49123679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a6414c0b9fbbcab474c98fb31e0bc5651d0c8c450c783106a4de9d0d3316a`  
		Last Modified: Thu, 05 Nov 2026 09:42:02 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:b31fa664aba365fa6155d8cfe685f8cf00cda3f6dfaf413ae3f3bb8c0d1689db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16004591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c750669aa5eaea2635c6c6343c44d985e1b975444317d6d64897dbd5be2f05b`

```dockerfile
```

-	Layers:
	-	`sha256:46d1c245579306cee75c78accbb3c15f9a1a8a80943bf8d94c26b9fe8214d0b4`  
		Last Modified: Thu, 05 Nov 2026 09:42:03 GMT  
		Size: 16.0 MB (15981987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07a4c09d430e62cce8c36317e27d2e2f7a407b76d39a076ec0c90baf5879bfc8`  
		Last Modified: Thu, 05 Nov 2026 09:42:02 GMT  
		Size: 22.6 KB (22604 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; arm variant v7

```console
$ docker pull ruby@sha256:b9c3777b4f415a285674e05cec8c6af5fe98fd6454e8987679bc4d76c6d5e07d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.4 MB (343379766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106fe1973c92641b32c4c6dfc7370148bf1ad562e2b6788910f337b4655a0d80`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:23:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 10:12:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:39:56 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 11:45:28 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 11:45:28 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 11:45:28 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 11:45:28 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 11:45:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 11:45:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 11:45:28 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 11:45:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 11:45:28 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 11:45:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50deba4733467d14fa01e8bfb1524dd99d6586f87bd64d8d193d5c9fae44d49e`  
		Last Modified: Thu, 05 Nov 2026 09:23:44 GMT  
		Size: 59.7 MB (59697462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4148b2d8427321c3b41911ad3117638dab74567bdcee89faf176d29bf95430`  
		Last Modified: Thu, 05 Nov 2026 10:12:39 GMT  
		Size: 175.7 MB (175729352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4240e524284f3b03ec07827f84ae33b49ffce9a84214653f95b25446a7da6e65`  
		Last Modified: Thu, 05 Nov 2026 11:43:07 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce9e7be28f58da83565628e37120aec80862617c55c98b491f03e4e680d76a9`  
		Last Modified: Thu, 05 Nov 2026 11:45:49 GMT  
		Size: 42.0 MB (41959530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335995909a2719961bc54371adfd09b6d687d992c23d7e6e69fa28dd11778274`  
		Last Modified: Thu, 05 Nov 2026 11:45:47 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:710a62aa5827b6c40aaf9e070528bf96e1f339fc5c40c5f59c6e6c3d450e6b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15807173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b9706b214101ff6cd3cb51e92f9f23e32686a61c70f0ef6bab1b4aa10048de`

```dockerfile
```

-	Layers:
	-	`sha256:65cfc3eef6d5bd52655c30ab9fca775e79634ac549447789e7d8ca7bdd8dc083`  
		Last Modified: Thu, 05 Nov 2026 11:45:48 GMT  
		Size: 15.8 MB (15784463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4243a5dd97ffcf8644af7fdc70b36b26b6a947dadbe9ebcd98f23c07fcf2ad4d`  
		Last Modified: Thu, 05 Nov 2026 11:45:47 GMT  
		Size: 22.7 KB (22710 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:06ad353909e245d7eafcc24366025d096b470ba348cd3f8c9415dbd076907b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.6 MB (388623380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f11fc2602ff528939b84af01e77d8ca90e8bf7ec3a58ffcf4176acd9301bc0`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:52:16 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 09:54:16 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 09:54:16 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 09:54:16 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 09:54:16 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 09:54:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 09:54:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 09:54:16 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 09:54:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 09:54:16 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 09:54:16 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31a98848e2c91197f0512a8b453bba957a8398f45a1b8d832754f360bb188ac`  
		Last Modified: Thu, 05 Nov 2026 08:54:47 GMT  
		Size: 203.4 MB (203371836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b0485e5bdd6e1f3713c3a058559c9840c71dbad385fb7dc56b1d3207079aab`  
		Last Modified: Thu, 05 Nov 2026 09:54:35 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e03e4775ae678b311a69379ec32d457c61a01cd6b2ed1f11dea4fd44fd303c`  
		Last Modified: Thu, 05 Nov 2026 09:54:37 GMT  
		Size: 48.9 MB (48869634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfcb371056f918a72c33fd0a9a654c31e7a71c49a44be0aaf6decbc3f5e292f`  
		Last Modified: Thu, 05 Nov 2026 09:54:35 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:9949d74c777d6dacd4bdd4ed4b36e96cf61c0c516422a14349f68dbdd6e0a53c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16033251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c434479e8ca0926c4245eda914d0bc0bc576f1635e4458c96e6679973b83dbb`

```dockerfile
```

-	Layers:
	-	`sha256:d65141b59d1a7344d560a24905e1828c08f73b4a0597dee5afdba78efc80d172`  
		Last Modified: Thu, 05 Nov 2026 09:54:36 GMT  
		Size: 16.0 MB (16010513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d0d62d9471e1e7628a15451aadfe345d4c1734d8c9bc9791722d102876fb74`  
		Last Modified: Thu, 05 Nov 2026 09:54:35 GMT  
		Size: 22.7 KB (22738 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; 386

```console
$ docker pull ruby@sha256:f7b5eeb8cc0a4d24241f5cc0c305919fdf611dcc9a1ae70303ee72ec618d64f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.2 MB (393168731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f082338bd79a37f24e0dfcbd222826c363fbb59dc9c7d89b1d4068f0c93331`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:24:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:36:22 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 09:38:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 09:38:20 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 09:38:20 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 09:38:20 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 09:38:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 09:38:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 09:38:20 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 09:38:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 09:38:20 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 09:38:20 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be98d36659ede814751c7330e91612ca4d73d055912e94b9a90e6adfc1eb30b`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 24.7 MB (24703903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2dca7ecb6f0d6c1c3297d7e97569ff07eaf0a74e8949b12aa33e39b2fee126`  
		Last Modified: Thu, 05 Nov 2026 08:24:39 GMT  
		Size: 66.3 MB (66277351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d280152d20eeef07be2c9e1e6a073b220a4e1a7b72fd4ef55c1656bf28a5f2c`  
		Last Modified: Thu, 05 Nov 2026 08:48:20 GMT  
		Size: 210.7 MB (210744423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b49d86edf5ab5ceaf9666de9087077505d009779c6dcda04b439eea45350a`  
		Last Modified: Thu, 05 Nov 2026 09:38:37 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5c04dcf5f8f0967fd6c4efd63c077849705555ef1da59ceb329921b07440f2`  
		Last Modified: Thu, 05 Nov 2026 09:38:39 GMT  
		Size: 41.9 MB (41927028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd87eb8e94db0b84a9ea2961753c5c50862fcf4e21b8988be30f042fbf70188`  
		Last Modified: Thu, 05 Nov 2026 09:38:37 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:a45dd28a7f292c52773c9c2e380c6e564d351b38a361f00774017c57cc512c9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15982776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f3df47592393061a8c44feb8fd76eca0299642324568271d7a0c6095eb86d9`

```dockerfile
```

-	Layers:
	-	`sha256:b2f1c98f9274308d47d78896bbcf135d0b56d6c818a2ee5bd9076052439c616e`  
		Last Modified: Thu, 05 Nov 2026 09:38:38 GMT  
		Size: 16.0 MB (15960208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f4cca9fd952fb7d2edd0c39d855d5cf5ff601ddedfa54c703dfc39622eed09f`  
		Last Modified: Thu, 05 Nov 2026 09:38:37 GMT  
		Size: 22.6 KB (22568 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-bookworm` - linux; ppc64le

```console
$ docker pull ruby@sha256:aec1a1814d5a2e83d86847d5185b1031ff3dc42ec407d920571520a77a647ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.7 MB (406684727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80353bf86ff166713e67cfe0c4e2e2025750f838270b7cbac0251fb3648e9d5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 04:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 11:54:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 14:59:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 19:47:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 20:02:16 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 20:02:16 GMT
ENV RUBY_VERSION=4.0.9
# Wed, 28 Oct 2026 20:02:16 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Wed, 28 Oct 2026 20:02:16 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Wed, 28 Oct 2026 20:02:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 20:02:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 20:02:16 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 20:02:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 20:02:17 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 20:02:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7339b62b6463010208cd0f9bd95fca3c60b698cdfeeda413d511e883ce2f291`  
		Last Modified: Wed, 28 Oct 2026 04:19:13 GMT  
		Size: 25.5 MB (25514966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac3a369b48a110414ca84367074180b8af9539eba053b90f33f4b4032884eaa`  
		Last Modified: Wed, 28 Oct 2026 11:55:23 GMT  
		Size: 69.9 MB (69899322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70cc9612fbabcfa10dcc17cfc988e09f4ebea197256ec111fd6d09a49ad40e4e`  
		Last Modified: Wed, 28 Oct 2026 15:01:34 GMT  
		Size: 214.9 MB (214867713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7c9ca710fdc03861f96aac76f9abc6ea01d3614e96b2eaaa4129431683df16`  
		Last Modified: Wed, 28 Oct 2026 19:53:07 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6de82bbec481d18d2b502856b050629c95e62ad7b45ac0761f98199392cf79f`  
		Last Modified: Wed, 28 Oct 2026 20:03:05 GMT  
		Size: 44.0 MB (44036084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f40d53db80e3def29ab4a327c78e2212037a952fb902b47957faa9994115f0`  
		Last Modified: Wed, 28 Oct 2026 20:03:03 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:0c708e8fa75643bcf57c15e96266cb20967c6767b830902a6c95a1e81b369b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15981093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:170e082b185fc6585eebdb2daf0b5282c1d85ec26b7fe718db82ccdf190d9e1c`

```dockerfile
```

-	Layers:
	-	`sha256:7e71dbb5e53e9c7d008d90a9b2c560660c97de9d10ceb17c2aaae4f5305206e5`  
		Last Modified: Wed, 28 Oct 2026 20:03:04 GMT  
		Size: 16.0 MB (15958442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:caa4fb0d4437c7157cb4d4589996cf79c35cec681554339c8d51b4a2d5fb378d`  
		Last Modified: Wed, 28 Oct 2026 20:03:03 GMT  
		Size: 22.7 KB (22651 bytes)  
		MIME: application/vnd.in-toto+json
