## `ruby:3-bookworm`

```console
$ docker pull ruby@sha256:e46ac468c9e87ff9209709c5b73ac689688ee82839e2a18af33d14d3577d1340
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

### `ruby:3-bookworm` - linux; amd64

```console
$ docker pull ruby@sha256:1618cda6f55570ed6b546de483f938695f5a7785a9056e83dfc1afb4cd5cf9e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.1 MB (390145167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a073c23c61883de055e452cd0a50e17839585dcf805a1a2370e5c10486da99`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:17:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:59:06 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:01:10 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:01:10 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:01:10 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:01:10 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:01:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:01:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:01:10 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:01:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:01:10 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:01:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fd7bf6f6036613e20f62549df75ed694b99118002358bea5a81baf3929d1ff`  
		Last Modified: Wed, 24 Jun 2026 01:41:33 GMT  
		Size: 24.0 MB (24044046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791c68bc2063683c3d15907b8ed1b777cf14ca153c6f8e5b12db0868dfa7e38a`  
		Last Modified: Wed, 24 Jun 2026 02:28:33 GMT  
		Size: 64.4 MB (64404017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb598f63f1e9867f81313f86224109c84b2af9646d8fca29113217b94315956`  
		Last Modified: Wed, 24 Jun 2026 03:18:16 GMT  
		Size: 211.6 MB (211602331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1204542033fae128eccfe9717b21cdf447c0caa1c028e514558b208533ff655d`  
		Last Modified: Wed, 01 Jul 2026 00:01:31 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876560c8d816962148ca58b145a2edde9ab2de220cdda1aa15ddd7e0d3fef714`  
		Last Modified: Wed, 01 Jul 2026 00:01:32 GMT  
		Size: 41.6 MB (41592227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551fabfe68663908e95f0443d200acfe6d46dc7e77461c0c4bee5c6eeeeceb47`  
		Last Modified: Wed, 01 Jul 2026 00:01:31 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:4c373432488ce20366d0496e31d84c29de98add25b2ec936bf05b9390dfad14e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16005207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:557f6a50d603823ebd6820986d61de9158ad0c991c14cf93387ff8210b22bfbb`

```dockerfile
```

-	Layers:
	-	`sha256:a29625b21dc6eaa7179970933dad40463a33366611864410479445f1ec8936fc`  
		Last Modified: Wed, 01 Jul 2026 00:01:32 GMT  
		Size: 16.0 MB (15983694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80ed0ee6943a9c4ccf70ff9d3cf0d66f7071420834df18cf491b4f97bd5a54d7`  
		Last Modified: Wed, 01 Jul 2026 00:01:30 GMT  
		Size: 21.5 KB (21513 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-bookworm` - linux; arm variant v5

```console
$ docker pull ruby@sha256:a2c03239e2acd4e7841f209e33b1635f52dbf2dad17f00dbf787b8ef7c674475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (352978623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:184e60dee642e650bfde24b02eca04ef2b014a5f0ccc7cbdb90feb34ff4f9649`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:19:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:13:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 05:13:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 01 Jul 2026 00:05:09 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:07:31 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:07:31 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:07:31 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:07:31 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:07:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:07:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:07:31 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:07:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:07:31 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:07:31 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9b6f26285ba03744a306577b3de61c2f71cba83b0beff1d4a59aef5f7dab736b`  
		Last Modified: Wed, 24 Jun 2026 00:27:23 GMT  
		Size: 46.0 MB (46038207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2576c00204f880be8e3a137f521b0b0f1c2054ec6a7e9d73dd6d20fdf1707cd9`  
		Last Modified: Wed, 24 Jun 2026 02:19:23 GMT  
		Size: 22.7 MB (22718190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81160f0df179da45da421db0ce97a5d8701f99ba34b208c1f3b395a79afd440c`  
		Last Modified: Wed, 24 Jun 2026 04:14:15 GMT  
		Size: 62.0 MB (62022636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051e255ff76a6a247d3a1e0e9f9ecb076f20cd5ca66898aa1798502072e084fa`  
		Last Modified: Wed, 24 Jun 2026 05:14:27 GMT  
		Size: 184.9 MB (184854196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df63761d5bf495aec09437bc43860775c0ea720559175063b968cc3511095e33`  
		Last Modified: Wed, 01 Jul 2026 00:07:51 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a7b19547d4e2a69ed5d13731cf060d1e8fc16e99dbd0bda3022629cf99cb1c`  
		Last Modified: Wed, 01 Jul 2026 00:07:53 GMT  
		Size: 37.3 MB (37345059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479a3e6c694c6508a5cb4c503893d14149a642414d47ff414e621baf0d16d8c3`  
		Last Modified: Wed, 01 Jul 2026 00:07:52 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:00ff003648f411a681ccc45c5b1df0c470ab77701f731624cc0f008646d0a77b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15802297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d129cd2deedc599c1cbb154793fde9827130875ee77a822e97a440db8c3fe45e`

```dockerfile
```

-	Layers:
	-	`sha256:43a7215b6f048a66feaf6faaefc3902962fba5a64a3ded90614711e85481a778`  
		Last Modified: Wed, 01 Jul 2026 00:07:52 GMT  
		Size: 15.8 MB (15780686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:291dc9e34e07063107ed9d16e15872fbd8b74553384878474844321fd61ca1af`  
		Last Modified: Wed, 01 Jul 2026 00:07:51 GMT  
		Size: 21.6 KB (21611 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-bookworm` - linux; arm variant v7

```console
$ docker pull ruby@sha256:9b87b9be1dd47bb49f62028d0ad1a0f32a68843c9ef699f48b8a7d68fe89e90b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338499271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5ede5a8f2196d9d2fcfe6c38ad551794b09355b8a0dead6543ed814f483604`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:54:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:17:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 01 Jul 2026 00:03:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:05:43 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:05:43 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:05:43 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:05:43 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:05:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:05:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:05:43 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:05:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:05:43 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:05:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3622debffba3838b917703fb6dd9c161a4d93d9fd97c61d3e8400a2245f93c67`  
		Last Modified: Wed, 24 Jun 2026 00:27:30 GMT  
		Size: 44.2 MB (44208145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0df8de55f365d832099cabf27409104999d59b26292d91202ca6e160c4b513`  
		Last Modified: Wed, 24 Jun 2026 02:22:52 GMT  
		Size: 21.9 MB (21949935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16c85bf5ff1b42ae66f83fdb64a6cd05a854ea2289dfe1b0ae9e4ee6a806d0a`  
		Last Modified: Wed, 24 Jun 2026 03:54:41 GMT  
		Size: 59.7 MB (59661949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8aeb3259226bf05c8cdeb78f528aef9d5e19adf28e71540d132fb654168072`  
		Last Modified: Wed, 24 Jun 2026 04:18:20 GMT  
		Size: 175.5 MB (175502691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a0c72192b9e62ea6557b39fc0f6fba7736a3b55e084a4adbb742f2e8ffd14b`  
		Last Modified: Wed, 01 Jul 2026 00:06:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd63e06648420e98e555c6c5033e1afb7050cb352e529665d59a317755f07273`  
		Last Modified: Wed, 01 Jul 2026 00:06:05 GMT  
		Size: 37.2 MB (37176216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97448371faa490ccb7c8e1b9766ab5f42571586576f0f8447e0b75291fab4b79`  
		Last Modified: Wed, 01 Jul 2026 00:06:04 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:c3e28dd744e8694d7ba5280f7a2648e9fa97e18ec74331cfea1ff36d8012e54e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15807772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7640db335fc8a80b4fb0ae3ccd7c1d50de8d19f855231f5776b9fdddb8a60d17`

```dockerfile
```

-	Layers:
	-	`sha256:abbbca6920135cc6b4c237fc47b0e575c6ba87bedaf3d544383ac8930fc6cbad`  
		Last Modified: Wed, 01 Jul 2026 00:06:05 GMT  
		Size: 15.8 MB (15786162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8c5d4d48b5ede6e42eb1b768f5ca55c8f92c308e1666851bbec39d0d1162148`  
		Last Modified: Wed, 01 Jul 2026 00:06:04 GMT  
		Size: 21.6 KB (21610 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-bookworm` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:8d4195fb57856a5e1936ea0598fe88e86b0b1f118e0a76378b52f243c781e106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.1 MB (381100170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891568b60238d8e8c263e7724cc1c8b380636795a5cc8848ea7fbbd5c8407537`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:16:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 01 Jul 2026 00:01:43 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:03:46 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:03:46 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:03:46 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:03:46 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:03:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:03:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:46 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:03:46 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:03:46 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebca214f1a4b66acfdb0bd20aa3ee139d1747885ef4b0f3d07aa2a68459230`  
		Last Modified: Wed, 24 Jun 2026 01:44:48 GMT  
		Size: 23.6 MB (23613316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533bb0e918720911be6cb7a1a5ba9ad0e1a308fcbf24961a23aba0cd220df6cf`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 64.5 MB (64487706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cae401c24fa4bb4f22bb94674a5eb530bff1cfd2e063ec20053ecb9a5509556`  
		Last Modified: Wed, 24 Jun 2026 03:17:13 GMT  
		Size: 203.1 MB (203132913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41db8ff3bcfb0d0cc6a7ba837963651ec7799bc96db737c9382dfe58ea9c0636`  
		Last Modified: Wed, 01 Jul 2026 00:04:03 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c684a942df2d1d9bf0565ad6a8706aa6f51c9f1438e491b587c74a5170309837`  
		Last Modified: Wed, 01 Jul 2026 00:04:09 GMT  
		Size: 41.5 MB (41476699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f47df52181720e7695d3358c3e6e2142ac26b4f205639dbaa154b8479c52adc`  
		Last Modified: Wed, 01 Jul 2026 00:04:08 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:cf857a224cd9367fe9fd333c4b49243a70fd9b0392f6920fa45708908e2bd97f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16033842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8bc0574bed02da8e1f15fb1aaf570ab42b09dca7b3df510bf8f4f93615fea0`

```dockerfile
```

-	Layers:
	-	`sha256:e271c7784ada1fefb199a9feb2ffab32ba4b9eac907ec83b446d4a734d295514`  
		Last Modified: Wed, 01 Jul 2026 00:04:08 GMT  
		Size: 16.0 MB (16012208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:300faaff0778a03c95ba069d0290741f6e1613977590b19ae2210fba624dfc32`  
		Last Modified: Wed, 01 Jul 2026 00:04:07 GMT  
		Size: 21.6 KB (21634 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-bookworm` - linux; 386

```console
$ docker pull ruby@sha256:84ef6618e559581bf520172be6ead27070f33116efa7221c183deda87be43611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.3 MB (388283845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1052a94e6e8dcb121935045b040575d468f36f68496d6547f0f79ef9844d96bb`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:43:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 01 Jul 2026 00:01:46 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:03:42 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:03:42 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:03:42 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:03:42 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:03:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:03:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:42 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:03:42 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:03:42 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b45c9ce5ae5ea6ab37787312be8b0a9732642c1221f97d5689baacac874b4cd`  
		Last Modified: Wed, 24 Jun 2026 01:43:48 GMT  
		Size: 24.9 MB (24879740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db0110899c29fd647e62f912bfb740fc8af5310cdc227454d8f086f16cba33e`  
		Last Modified: Wed, 24 Jun 2026 02:35:05 GMT  
		Size: 66.2 MB (66244204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d35d0ef7b0d342bb15591580b2f53dedb16d47cf8b5adeb9bc453fd0b71b9b`  
		Last Modified: Wed, 24 Jun 2026 03:18:51 GMT  
		Size: 210.5 MB (210534885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e27758e0587496ef4c7373ed1fb27ab5d7d0096214b7bd13a0abb611ec67ac`  
		Last Modified: Wed, 01 Jul 2026 00:04:03 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c27fcbcd981f53a2562e633eba16f1af4f09306437b1b2dacfa878d25994bcb`  
		Last Modified: Wed, 01 Jul 2026 00:04:04 GMT  
		Size: 37.1 MB (37133303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675d9056f9ed2eeb8eca1e7bd643d1f169679c434c5cf222cc026b0de17a52ea`  
		Last Modified: Wed, 01 Jul 2026 00:04:03 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:27f068a3802c4c69a838b14368f8be959660ebc4b5a5a631e2de791fd0c7b2a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15983399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:380f5a2b77e23029d33b6428aac80cdccabf06fe9d0c63c98026f023d5600e2d`

```dockerfile
```

-	Layers:
	-	`sha256:10f2d832df58ea515c2e0f227b87935d164fcd6bcda247cb2f6e7bd6db8a23ff`  
		Last Modified: Wed, 01 Jul 2026 00:04:04 GMT  
		Size: 16.0 MB (15961917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:609fa2c39e8bbfe702fc0dd02b837f331a744ca214611bba6dc2face70d28136`  
		Last Modified: Wed, 01 Jul 2026 00:04:03 GMT  
		Size: 21.5 KB (21482 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-bookworm` - linux; mips64le

```console
$ docker pull ruby@sha256:465a6fc68cf753fdba792bc38a402c436baa0a3ae3fa0ff49ae8202795c6da0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.6 MB (364624510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7211eae0e531cbb780ac6c212e13fbe5d3703a3e67a67acc2eaf287986281a3d`
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
# Wed, 01 Jul 2026 00:10:55 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:10:55 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:10:55 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:10:55 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:10:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:10:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:10:55 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:10:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:10:57 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:10:57 GMT
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
	-	`sha256:df9386281504aa23c9b86106437db69cae36e007f6a80cc0848db290b720f43d`  
		Last Modified: Wed, 01 Jul 2026 00:12:10 GMT  
		Size: 38.5 MB (38524665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524fa4bba673b938ae292b8b61fb0b7494a0181b1bddab98683f073c30c51a45`  
		Last Modified: Wed, 01 Jul 2026 00:12:06 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:d1e37fd2b9f444fefbe301f6e99a1499d466b8af71c967c6e011d00565d4bcab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 KB (21361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34dc135722f387492f1d6ee604911bb73f858461068d812a1ca8b6e7fb66aa3`

```dockerfile
```

-	Layers:
	-	`sha256:c118a77b83547f24b294e16fd3c0e1706fdf0e3cdfcfbcd88dbc2bf3265f6d90`  
		Last Modified: Wed, 01 Jul 2026 00:12:06 GMT  
		Size: 21.4 KB (21361 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-bookworm` - linux; ppc64le

```console
$ docker pull ruby@sha256:d0ba96cfe04bb31ac3f57f5190d59de0a9eb6608d5f9b7dbd0fc6575b9f859ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.5 MB (401549741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb448584f720342ad8df2cf157019fb541928def1c46dffdfcd41515b9e1986`
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
# Wed, 01 Jul 2026 00:50:05 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:53:31 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:53:31 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:53:31 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:53:31 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:53:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:53:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:53:31 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:53:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:53:32 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:53:32 GMT
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
	-	`sha256:06789980b967de2d3819d81f7409531de8ae2fea99ff6a3f652368f28700dcee`  
		Last Modified: Wed, 01 Jul 2026 00:54:34 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237df509c04759352c684febb1a25b3807e269990ab29d2f713782048c385b2c`  
		Last Modified: Wed, 01 Jul 2026 00:54:36 GMT  
		Size: 39.0 MB (39015630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8153b182d11eb781829f5b4053c7799f13b9de1f281e1d4d26a99d0c2c2acfb7`  
		Last Modified: Wed, 01 Jul 2026 00:54:34 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:8c9824dada370c466137befb40de38c3293d95637d4ca1eb4366bccedc697079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15981758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f86392d9f9b1e7d692b06e6a0ce0157e13dbc392861f9f00d07419e82873ea6`

```dockerfile
```

-	Layers:
	-	`sha256:afa37598d9afb1cb708ccd351f058ab1b6f5bb5668dd9012ffae5d28f941f7c8`  
		Last Modified: Wed, 01 Jul 2026 00:54:35 GMT  
		Size: 16.0 MB (15960203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:416c718c9d52c926e13696c016fead0b1f4f47786a5a46ce448ec773a9fe7587`  
		Last Modified: Wed, 01 Jul 2026 00:54:34 GMT  
		Size: 21.6 KB (21555 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-bookworm` - linux; s390x

```console
$ docker pull ruby@sha256:78d5e4f6bb53b2fd4cdd712cb51a25f9babdeb55b0fe4149cc9582137eb6bf41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.5 MB (356509437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebaf84816717bd38dbbcdbc0055f68c50a5a109d7ebc50efc79dd6ad85d6d149`
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
# Wed, 01 Jul 2026 00:04:03 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:06:44 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:06:44 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:06:44 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:06:44 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:06:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:06:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:06:44 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:06:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:06:44 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:06:44 GMT
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
	-	`sha256:05611e13e16189a44205f21fc3fc364ff7f1c3cbf036a3bdd160ea97e3766d8d`  
		Last Modified: Wed, 01 Jul 2026 00:07:22 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c368e8660479c35daf9b332dfd8f3b6be77df24ebd3b9fe8edd8eefb680625ae`  
		Last Modified: Wed, 01 Jul 2026 00:07:23 GMT  
		Size: 38.2 MB (38186162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38dde7ba2f9e2fa2dd2f50f6cb4eb49877392fee79c20cc44e0f43c78eababf0`  
		Last Modified: Wed, 01 Jul 2026 00:07:21 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-bookworm` - unknown; unknown

```console
$ docker pull ruby@sha256:aa3cc849761eb39cbb8c1c50a1282feeb8629039b8a7865f45258947830ee60a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15812805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8975220d04e3112099393998944343b7f57689a461ae573e0ea126a6447fc92c`

```dockerfile
```

-	Layers:
	-	`sha256:e8857e72cc813a11c6f6c56f78eed44f6306a3c2f02d01371fe739c7fda1949b`  
		Last Modified: Wed, 01 Jul 2026 00:07:22 GMT  
		Size: 15.8 MB (15791292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f44b86534b2a70b5426c75ad4fd0ac32812149669dd49a345bc0815dec088bea`  
		Last Modified: Wed, 01 Jul 2026 00:07:21 GMT  
		Size: 21.5 KB (21513 bytes)  
		MIME: application/vnd.in-toto+json
