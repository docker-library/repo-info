## `ruby:3-trixie`

```console
$ docker pull ruby@sha256:58a176e5a7cc96218294ae08085ddf73d2d635af571ef9ba058b111f84ff5f3f
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

### `ruby:3-trixie` - linux; amd64

```console
$ docker pull ruby@sha256:821b9f9045f838103b7e10d98dce630c63d94d98efdbba6d6802a7c59c2e9558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.3 MB (421258917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b682c6270181374199f0fc1d24d33439a31c382410c91811019a75c29ab0e18`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:59:04 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:00:53 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:00:53 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:00:53 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:00:53 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:00:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:00:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:00:53 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:00:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:00:53 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:00:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0252e6abaf0ff12562710faa97dc617e372a424bf144947f39dcb38700423e9f`  
		Last Modified: Wed, 24 Jun 2026 03:18:31 GMT  
		Size: 236.2 MB (236248824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2696f52492f95e550aa97999ab55d56c12857eea5cd018fdae4abb940d65040e`  
		Last Modified: Wed, 01 Jul 2026 00:01:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86074efe20cad1be7257a28afbc04326002c12132d75abcf66488dcfdf2f09e9`  
		Last Modified: Wed, 01 Jul 2026 00:01:18 GMT  
		Size: 42.3 MB (42279433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f8102d83fa87fe15f920dd035266630172f950a4d177aa8dc7d31ec45e0a55`  
		Last Modified: Wed, 01 Jul 2026 00:01:16 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:1eb762c5d626388bdc015e4b41af162c97395ff6e9f46079bb337ad1e4aecb55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17344026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94653cbdccd96b3d7e547330cdd2f7256423de28b96358376505e3c9a26ab941`

```dockerfile
```

-	Layers:
	-	`sha256:93ce2dce4453e35c0f57b863318dfea99d9f3548619fb1b58a7b9a51e89bef73`  
		Last Modified: Wed, 01 Jul 2026 00:01:17 GMT  
		Size: 17.3 MB (17321686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31306958ab1960c2ed6e1d6ce042de0b1ed2ab0a7eada1a5b101840b4b85d39`  
		Last Modified: Wed, 01 Jul 2026 00:01:16 GMT  
		Size: 22.3 KB (22340 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-trixie` - linux; arm variant v5

```console
$ docker pull ruby@sha256:7907450b769d8bbbc113ff1f987bb25c02675c787712d495fa4f2683a237553d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.2 MB (381232709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41d5bd4975ec9ec13e5c801f87727ee4eef8e4b10b2e3d3819564a2aec652c22`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:19:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:14:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 05:14:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 01 Jul 2026 00:05:00 GMT
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
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
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
	-	`sha256:0904cce1afe0c8a47ab4491cfda145d253ca2ea73dc133ce8c90a1475215fe54`  
		Last Modified: Wed, 24 Jun 2026 00:28:15 GMT  
		Size: 47.5 MB (47494964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eaea8159712ba25c96ef93db0fc4f7d8dc3d1df2aeb2cfbb90861e303446027`  
		Last Modified: Wed, 24 Jun 2026 02:19:32 GMT  
		Size: 24.4 MB (24364369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c82bb154bf1af2632a5a06f0f63d1baac50d2d24017c549445ae08089fe49e`  
		Last Modified: Wed, 24 Jun 2026 04:14:22 GMT  
		Size: 65.3 MB (65344167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7082a3a6b1a2255fc3bdbb3556abedce1a16b86ac8c3f8f5060095a93cfba2ee`  
		Last Modified: Wed, 24 Jun 2026 05:15:05 GMT  
		Size: 206.0 MB (205962438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3f6968392e2a3d4954346f9cffc04f52639e0f6d5a65dfa5c48788bc0dc028`  
		Last Modified: Wed, 01 Jul 2026 00:07:53 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3dfd8c747608cc53a9361d1e81b2f56ec900f63f45a7635dbe56200e846c208`  
		Last Modified: Wed, 01 Jul 2026 00:07:54 GMT  
		Size: 38.1 MB (38066437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479a3e6c694c6508a5cb4c503893d14149a642414d47ff414e621baf0d16d8c3`  
		Last Modified: Wed, 01 Jul 2026 00:07:52 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:7377736e0b1ed4f3a05e20920d79127ac6ed6de0fbf2aeb20cc47be0065a07b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17106370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6787334e2ca099182bfe4c0f55bd93e6a4d82cd539ef4b1f84b67ae35b0b39a2`

```dockerfile
```

-	Layers:
	-	`sha256:3dc5f5210f6921c44fc7d1f1bb8b02f0e02b4340484a3ba4fddf298a58778235`  
		Last Modified: Wed, 01 Jul 2026 00:07:53 GMT  
		Size: 17.1 MB (17083908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb39a3c3fd283e1dee2d6f1701665e8ecc9bec7ce87592fa0dbd5e57214e9347`  
		Last Modified: Wed, 01 Jul 2026 00:07:52 GMT  
		Size: 22.5 KB (22462 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-trixie` - linux; arm variant v7

```console
$ docker pull ruby@sha256:6c9be4e52440183dc99fce22961636d199b374f6b8c182ca8f7825bb77359c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 MB (363582392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9afb16193b7a0f2fffc7f61dd1cf3de4b9a2778f7d912d468627f3048212bbd2`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:25:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:55:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:18:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 01 Jul 2026 00:03:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:05:47 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:05:47 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:05:47 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:05:47 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:05:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:05:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:05:47 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:05:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:05:48 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:05:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6ec13525e08787ad79558c5631e8f1a1fa24a87872974d31cec094e902b73822`  
		Last Modified: Wed, 24 Jun 2026 00:28:39 GMT  
		Size: 45.7 MB (45748717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5391dda58327007b323e3f3d892147e59e5e36215f08b370a235cf10aaf0a`  
		Last Modified: Wed, 24 Jun 2026 02:25:20 GMT  
		Size: 23.6 MB (23635872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb0beb5aedec8fb711aa9d2285593f5263bc56957c577c835eda5256d1d6cc6`  
		Last Modified: Wed, 24 Jun 2026 03:55:30 GMT  
		Size: 62.7 MB (62746374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81014ff6d39652608f3ee3bca486e5b5f5c50c1757e0aafe38294d09eda10abd`  
		Last Modified: Wed, 24 Jun 2026 04:18:44 GMT  
		Size: 193.5 MB (193514005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d4978aa9fca5d67df390a70e7f7e5e4b0c20489013f05a0adc940940fdad5c`  
		Last Modified: Wed, 01 Jul 2026 00:06:10 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e00419972de234e2ca9180131f3b447ccc451b14baa571e69df7a481c223484`  
		Last Modified: Wed, 01 Jul 2026 00:06:11 GMT  
		Size: 37.9 MB (37937088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db3d31687add980abc0a603aaedc26aab3d7aaea62cd3f333efe97f01e69bda`  
		Last Modified: Wed, 01 Jul 2026 00:06:10 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:fc7fd9e9dc6a38111e7e1691f02bf386ab25014c2b0a8c0594507a2115e41e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17112160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcbca1db3beb291bbc29b70b4dd05bc2ecc258fa630851b46c64f14a77a4fb4`

```dockerfile
```

-	Layers:
	-	`sha256:6aad4b69c5ec450e1c13bafa5fab6422bb720faf008e7574637a508f8d263c00`  
		Last Modified: Wed, 01 Jul 2026 00:06:10 GMT  
		Size: 17.1 MB (17089698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fed444cff1fe63c71847706bc220c495460be69256fe597f77cd7cac2bbcf14`  
		Last Modified: Wed, 01 Jul 2026 00:06:09 GMT  
		Size: 22.5 KB (22462 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-trixie` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:d61449917a822bd86f75530fa62fb3f4a50ba254f0de6e04da99978f3f4bdc31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.9 MB (410900333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd19a1e90f5eaeee787f7cbf300aa3cab47d9e5c68bd3c44bd936ba2f63265c`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 01 Jul 2026 00:01:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:03:41 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:03:41 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:03:41 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:03:41 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:03:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:03:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:41 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:03:41 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:03:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646ad84cb24eb29e047f2b410af92e39c7ab4bd62a2d2ab0a6ff6a0ef84ba33`  
		Last Modified: Wed, 24 Jun 2026 03:18:10 GMT  
		Size: 226.4 MB (226363204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a826f26f612f9167f5b17a0673969996f7fad1c53ed2c08d9fc39a00f25004`  
		Last Modified: Wed, 01 Jul 2026 00:04:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c207ffb9ccd55bce8e6dad52c58aad23d59d32338955c3038eb52f4a3f1870a`  
		Last Modified: Wed, 01 Jul 2026 00:04:06 GMT  
		Size: 42.2 MB (42238890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e56948db2c0d4c42fa05dd84649b1ca5eb801de15ae6056c173353e6238bf3`  
		Last Modified: Wed, 01 Jul 2026 00:04:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:a066f83fb8c4102e2f9417bd603566f412d740e3b83912c12770c64a559cd4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17427876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6627a44ab47904d3b344d1d03ce19360b835ae3b214137a60eb6a57a02d4bda6`

```dockerfile
```

-	Layers:
	-	`sha256:35beb679272645a62f46c83327ec179c11a0d38acacffe42ec74c8afc135f7cf`  
		Last Modified: Wed, 01 Jul 2026 00:04:05 GMT  
		Size: 17.4 MB (17405379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:799d786d9a9fe5a502a3596b34597399ea10740eaa5cc061961d38f4133b9d63`  
		Last Modified: Wed, 01 Jul 2026 00:04:04 GMT  
		Size: 22.5 KB (22497 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-trixie` - linux; 386

```console
$ docker pull ruby@sha256:515ef8c1a470e31ec76c0839328e477b809c97a1ddac9e97ba603f3b698a14b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.6 MB (425621000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686b134c5d6ebcad019d600919617b2d7aebf8c002108b6696cf49c954073e1`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:44:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 01 Jul 2026 00:01:38 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:03:41 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:03:41 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:03:41 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:03:41 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:03:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:03:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:41 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:03:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:03:41 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:03:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429f3d50e84943497f0eadc90e14107210f6f5e2fba29257d54a1c7858400bdf`  
		Last Modified: Wed, 24 Jun 2026 01:44:16 GMT  
		Size: 26.8 MB (26797404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296cd1d205c61c3d8ebf0c638f588eaec576bb036a91f5b50f8b6183fc3010e8`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 69.8 MB (69817498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6e82ba1179651cb39d5405dee0f1cffd2cdb6f76d07dbb5eec6979464f01c0`  
		Last Modified: Wed, 24 Jun 2026 03:18:40 GMT  
		Size: 240.4 MB (240351717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8b37f784d0ca8b5621b67bf2a8619a2e99d7b35484234fe5d0924d0fb5794b`  
		Last Modified: Wed, 01 Jul 2026 00:04:04 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1dfa26e6b456258ec2ebb5a3fe03eaa5598febc078ee4985f15dc86f78f181`  
		Last Modified: Wed, 01 Jul 2026 00:04:05 GMT  
		Size: 37.8 MB (37818391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e56948db2c0d4c42fa05dd84649b1ca5eb801de15ae6056c173353e6238bf3`  
		Last Modified: Wed, 01 Jul 2026 00:04:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:b89133eb50ef1680db6fe9e5fede92c08f6ea7b71d30ef71dfc16c252b323703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17313564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0b2fac2d4351f8a67e01c1db60766d8073016f7e7f860c6d9b1c669f75eb45`

```dockerfile
```

-	Layers:
	-	`sha256:8bede9fdf9bee46b6de2ca600ba2a266197a87c5483e4e3ec57ecb3c6c47ae15`  
		Last Modified: Wed, 01 Jul 2026 00:04:04 GMT  
		Size: 17.3 MB (17291270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c718a2f4ac4e9dbc0682b7e1aa567a4f9252dd5abd4996ac295b1697871e150`  
		Last Modified: Wed, 01 Jul 2026 00:04:04 GMT  
		Size: 22.3 KB (22294 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-trixie` - linux; ppc64le

```console
$ docker pull ruby@sha256:0cb574cb66146cc89fdbdf95051e289000b2bde4a54e0b27f78e2bf209367622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.3 MB (424258971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd81947f89e9589a3682f0d77ac87d8bf827c32395077963cb4906043c9407`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:26:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 09:11:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 11:42:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 01 Jul 2026 00:45:00 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:48:38 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:48:38 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:48:38 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:48:38 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:48:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:48:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:48:38 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:48:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:48:43 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:48:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823f80d2a3204cde8ea1e7cf5156c0b0e385216cbdcc894bd75c3d81ec51271e`  
		Last Modified: Wed, 24 Jun 2026 03:26:58 GMT  
		Size: 27.0 MB (27022027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d839bd23ba3483deaa2fe15c35bcf5914f88e1187bd81dc630463eccbfa83ab`  
		Last Modified: Wed, 24 Jun 2026 09:11:50 GMT  
		Size: 73.0 MB (73042732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6b290a040690185dcb63185c594c9a890b9bb513b83a709420a3abd8f7b678`  
		Last Modified: Wed, 24 Jun 2026 11:43:40 GMT  
		Size: 231.4 MB (231374483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c51151a658d894a9dd68eb7fc96ede4e3658b2b61b4892111ee1850f0143ef`  
		Last Modified: Wed, 01 Jul 2026 00:49:50 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9a8117ebbd08a78f86d4318ce666f0a2c5731f3cb3960dcaaab18f11d4310f`  
		Last Modified: Wed, 01 Jul 2026 00:49:52 GMT  
		Size: 39.7 MB (39681326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa764efc547a9dcbc6ac946c176d95a45aef22f5cadee3c95625b39eb69b46f`  
		Last Modified: Wed, 01 Jul 2026 00:49:50 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:bc9e2a4d719ebc8f786a9e3bd6be0a8be52ebe1d3ef9dc5bf421fbcd44d75530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17329641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e629cb304f6d1b8d7fa3ea5540e8c5e07805cae7089614dfd99d7251dae2bd2e`

```dockerfile
```

-	Layers:
	-	`sha256:add35eae9bdad91de00fb8f5df5bfb6949b0986a5076410d5ccec9ecc2ce971d`  
		Last Modified: Wed, 01 Jul 2026 00:49:51 GMT  
		Size: 17.3 MB (17307241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32c0b7043b79263bec591a09c691b82e388e9714bee5e199f4957de01367cd43`  
		Last Modified: Wed, 01 Jul 2026 00:49:50 GMT  
		Size: 22.4 KB (22400 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-trixie` - linux; riscv64

```console
$ docker pull ruby@sha256:7a85ad28f390a156567739f9f2b999cf5a0255a95c74057206d582b5cf548c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.7 MB (500709144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65efdcc1cb83c312faffd936dc1460117fdb1db74e22fca8b65f9882d64ab7cd`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 16:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:51:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 16:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 13:25:46 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 30 Jun 2026 22:27:38 GMT
ENV LANG=C.UTF-8
# Tue, 30 Jun 2026 22:27:38 GMT
ENV RUBY_VERSION=3.4.9
# Tue, 30 Jun 2026 22:27:38 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.9.tar.xz
# Tue, 30 Jun 2026 22:27:38 GMT
ENV RUBY_DOWNLOAD_SHA256=4231c54072601a171faed1699f105985e9971c94cd382b78feb4eb44eec2dd1a
# Tue, 30 Jun 2026 22:27:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 30 Jun 2026 22:27:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Jun 2026 22:27:38 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Jun 2026 22:27:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Jun 2026 22:27:39 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 30 Jun 2026 22:27:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:68b05b25f9ac1e0d14e55abeddcd8bd010c0b74e64761b736e55e1ae65501399`  
		Last Modified: Wed, 24 Jun 2026 03:40:06 GMT  
		Size: 47.8 MB (47802658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38215cc1fb71b3f12158a195db4a3a178efcb8a54e7878031484fca1958c3ed9`  
		Last Modified: Sat, 27 Jun 2026 16:21:47 GMT  
		Size: 25.0 MB (24969049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc26c4707aa7e37dac76a9ca3be6f5412a1003e8e441b094b8a7df4fdd77940`  
		Last Modified: Mon, 29 Jun 2026 10:54:42 GMT  
		Size: 66.7 MB (66673152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8297be2994f3c17113807c9b0aaadf1cd94ee74872bd4fcbcef79f2a21f4fd9`  
		Last Modified: Mon, 29 Jun 2026 16:36:45 GMT  
		Size: 323.2 MB (323188888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e59fd1fa65d277baaf575a7e6aa7dce1930fdc24d5b3ec756a8b9b4ede46516`  
		Last Modified: Tue, 30 Jun 2026 15:31:17 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612500a5c699ce75f68b024188f145561fe2d56e973b6cf90090a73c1a538e9c`  
		Last Modified: Tue, 30 Jun 2026 22:35:47 GMT  
		Size: 38.1 MB (38075061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2668b15b0ae77dccca2417b9f94286fc725dc6f2b4babc0c6bf93c7e70af6593`  
		Last Modified: Tue, 30 Jun 2026 22:35:39 GMT  
		Size: 145.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:d99fd69de3d3a17ca011e9f524b3c74dd848c0d24770021e07b199adf4c34d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17400256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49463ac10412529cff5ca4fe8f8e17aa11a4268a7580d6893ee11142f89bd3d`

```dockerfile
```

-	Layers:
	-	`sha256:efc34500d735a67996da3c4f326e5d386276573b599e9f6d88d9a0ba08ffb005`  
		Last Modified: Tue, 30 Jun 2026 22:35:44 GMT  
		Size: 17.4 MB (17377868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:914df8af192fb423bb6735eabb947566f9fc6d310ac31710a490fec0e0541f37`  
		Last Modified: Tue, 30 Jun 2026 22:35:39 GMT  
		Size: 22.4 KB (22388 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:3-trixie` - linux; s390x

```console
$ docker pull ruby@sha256:d3a6ce91bca2a58f222c3a0c189a3530f7cef13304d1fdb525e1b6ed1b82967e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.0 MB (390956105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de15f6842c70719452a900c816ca25ae937806b7955a1f48c029bd5e2372181e`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:46:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 05:17:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 01 Jul 2026 00:03:59 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 01 Jul 2026 00:06:39 GMT
ENV LANG=C.UTF-8
# Wed, 01 Jul 2026 00:06:39 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 01 Jul 2026 00:06:39 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 01 Jul 2026 00:06:39 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 01 Jul 2026 00:06:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 01 Jul 2026 00:06:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 01 Jul 2026 00:06:39 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 01 Jul 2026 00:06:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:06:39 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 01 Jul 2026 00:06:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26ad8b668881e5b88baa7f13010c93f1bce4021cd7e873db608fc3d64c83f78`  
		Last Modified: Wed, 24 Jun 2026 02:46:45 GMT  
		Size: 26.8 MB (26803945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2467c361ab8894fdba8935a4c045eb8f691562f8d8866636ae12b0e066b40329`  
		Last Modified: Wed, 24 Jun 2026 04:30:46 GMT  
		Size: 68.6 MB (68645672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fffb153b40577970ef862743ac9f3be7998a409d21a818e83c91335b8440e1`  
		Last Modified: Wed, 24 Jun 2026 05:18:51 GMT  
		Size: 206.7 MB (206745343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ace50eb8bde56472bd87e027675e217945b88b9fe47a0f87d0f90f1d4b9fc6f`  
		Last Modified: Wed, 01 Jul 2026 00:07:23 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b18f9a3970eb0a376f3d19014881eac5576e3ac81ce246c5bef1ca68e8984d6`  
		Last Modified: Wed, 01 Jul 2026 00:07:24 GMT  
		Size: 39.4 MB (39374751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470811cfcf3347e3c1823be081513d5a6a45e7a78c2b8294140ea0401ec35bfe`  
		Last Modified: Wed, 01 Jul 2026 00:07:23 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:3-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:d6454cd92b06c756fa15b3e839d6dea79577c7ccaa8acb51836d91cb52592293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17121259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91886ff71385c8eef1f6cc765fdba8fa33aa8f5891b46a94fa3dfddae052d8b6`

```dockerfile
```

-	Layers:
	-	`sha256:9847e13bf8b9a69f575113e76aeb502b161f7e0dd32cd8984ad0839a62735b3a`  
		Last Modified: Wed, 01 Jul 2026 00:07:23 GMT  
		Size: 17.1 MB (17098919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ede902ea649749106c557e57c9286e2316ed61bccb4a2cdf30ede61337c5cb9b`  
		Last Modified: Wed, 01 Jul 2026 00:07:23 GMT  
		Size: 22.3 KB (22340 bytes)  
		MIME: application/vnd.in-toto+json
