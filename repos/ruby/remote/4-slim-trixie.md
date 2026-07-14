## `ruby:4-slim-trixie`

```console
$ docker pull ruby@sha256:42ad5227a4b2758f32563b34b5967e1055e75c80243eef04e6d2572887d1dec4
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
$ docker pull ruby@sha256:9d82f35b4359de623074cc9441e89b9bd5812688502e8a3edc1653a5121db44d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80698373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07555a8bdb1fe04cede868bfbda71db4c8396c7ac892a8804e09bd8c9d6dde1`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:10:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:10:58 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 02:13:15 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:13:15 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 02:13:15 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 02:13:15 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 02:13:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 02:13:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 02:13:15 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 02:13:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:13:15 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 02:13:15 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098afc983373d173f4f29b96047bca2ee1a19242b4de4fb5e98eddde514b7357`  
		Last Modified: Tue, 14 Jul 2026 02:13:25 GMT  
		Size: 1.3 MB (1279971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb04896983a82fb688a813ab824bf4755a8f3717d025cb2af3ab549523002b4`  
		Last Modified: Tue, 14 Jul 2026 02:13:25 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9c718ad808552a7350cedf7763075c2ca8db808e307aa2057567ba6830a638`  
		Last Modified: Tue, 14 Jul 2026 02:13:26 GMT  
		Size: 49.6 MB (49637165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84b475a1172910d418355648d5dbcd9bfe5f009afac9388c98eae8ef4a347e6`  
		Last Modified: Tue, 14 Jul 2026 02:13:25 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:8c12d3f71dcfa0f55c50c715e725e97ae07f28412e6249f89e7cca6d062d0c3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2240441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f792bae54cae1eca3fdf5ec6c4016904f646c05dc037ced6e6c7e1f802a14941`

```dockerfile
```

-	Layers:
	-	`sha256:9b9065ef70b42a9cf5ee9b0d35e088b142b64279decd5452226a020f62b800f2`  
		Last Modified: Tue, 14 Jul 2026 02:13:25 GMT  
		Size: 2.2 MB (2216121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec471e9bf035cb2076eeb6cef6adf1ce9eab1395ceebabac5ce145e1584ff071`  
		Last Modified: Tue, 14 Jul 2026 02:13:25 GMT  
		Size: 24.3 KB (24320 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; arm variant v5

```console
$ docker pull ruby@sha256:1de23303de9df50ea1ff82101e1f1849c0e5bf050043991f3c6c8a57c05c7f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71866113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e8d85bdfaff77fdd4eccca953a71e1ffaa5d136b64efb2aae27547674f0348`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:04:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:04:26 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 03:07:37 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:07:37 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 03:07:37 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 03:07:37 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 03:07:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 03:07:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 03:07:37 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 03:07:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:07:37 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 03:07:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1a51fbc25b082001c06a82ef7fc4ccba54eb58608156a23888d588357b7b14`  
		Last Modified: Tue, 14 Jul 2026 03:07:46 GMT  
		Size: 1.3 MB (1263791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d5977d6eccd52709dc80d8ea9240a76fb3b22f02fc593ac76afffcbb3d7a93`  
		Last Modified: Tue, 14 Jul 2026 03:07:46 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57d62391bc17d14b72696b630861fd34a46863540bf55c644a9708abc58769e`  
		Last Modified: Tue, 14 Jul 2026 03:07:47 GMT  
		Size: 42.6 MB (42647173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9706a540d7aa4bb1ef472ba338b1b82c4cd9e9ab8d9a455ff9a71724753926f9`  
		Last Modified: Tue, 14 Jul 2026 03:07:46 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:f2727f81dfb17504a051b668d2c943192edae3c97601c9f154bb8e637f9e5fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2243587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e29751dd904ca0ec599a78abe4e7601bc25b6552609e351744e44df42c8d300`

```dockerfile
```

-	Layers:
	-	`sha256:79926e646468118c4c55d9b3f04e17ed16b9ded2ea9967889302022f2795e92f`  
		Last Modified: Tue, 14 Jul 2026 03:07:46 GMT  
		Size: 2.2 MB (2219116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ab90ff34c71367b3b7b5bba7eac1b93cac3195c0280ff7aeca88aa26814d55`  
		Last Modified: Tue, 14 Jul 2026 03:07:46 GMT  
		Size: 24.5 KB (24471 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; arm variant v7

```console
$ docker pull ruby@sha256:ab4dd53a0f6beed1cba4b848a477b36b9f5be570afae55723a2edbc0ac3f9074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69934899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe7037ecb44589f26f86ae17356e14afa6681d8f635aec6ba9de82cc04c7d37`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:38:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:38:17 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 03:41:05 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 03:41:05 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 03:41:05 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 03:41:05 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 03:41:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 03:41:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 03:41:05 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 03:41:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:41:06 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 03:41:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4694a9063e7fa67be858c436b5a6b908cf7c008b4200fbee7588d21354254ba7`  
		Last Modified: Tue, 14 Jul 2026 03:41:15 GMT  
		Size: 1.2 MB (1237659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a929095bbcbba79c68b2aa6d384699ff37cb267d78bff0fbaa13fce180dc6b9c`  
		Last Modified: Tue, 14 Jul 2026 03:41:14 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de38bc9ed5067204f2625042986ec4c34b01dea9a95e2b022e247276d63e22c5`  
		Last Modified: Tue, 14 Jul 2026 03:41:16 GMT  
		Size: 42.5 MB (42490441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24db2dbab57ea3ad1d0544a8b64909038b0df22765bd388636a337bf04ab42c`  
		Last Modified: Tue, 14 Jul 2026 03:41:14 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:adc8a7b0c6be500d62be47f2f0d888f3aa7b9f2c0561fe58ea055e45abb47aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2242027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9eaf2e3a156ff8a7c0b5241246732ab17f5c793fa6f096a6ba2cfb93cc8035f`

```dockerfile
```

-	Layers:
	-	`sha256:86932f041faac9c0febad01c43d674de1056286edaf97ed16fbc8daef30ac97f`  
		Last Modified: Tue, 14 Jul 2026 03:41:14 GMT  
		Size: 2.2 MB (2217557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1db4479358217a477db07abbfa43e9cec5323daa7a742dbfb19014c68b374c8b`  
		Last Modified: Tue, 14 Jul 2026 03:41:14 GMT  
		Size: 24.5 KB (24470 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:819d5730d383153dd1a95847da0fe27b08a1189c3dfa98f8aef0bed63a4891cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.9 MB (80885378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8f02a976d7da34578762de3905b2ff730238c51e3f2d61ec08d161d9b8c68b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:18:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:18:04 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 02:20:39 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:20:39 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 02:20:39 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 02:20:39 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 02:20:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 02:20:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 02:20:39 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 02:20:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:20:39 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 02:20:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2522293a194c90bc50e61a10b7f902197c9db467ce4fb2642942b30ac442015b`  
		Last Modified: Tue, 14 Jul 2026 02:20:50 GMT  
		Size: 1.3 MB (1261983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e06b3bfff59b491cc09fde042b8c290f2c92c2b61de9dd9a8a2f9e4415b24a`  
		Last Modified: Tue, 14 Jul 2026 02:20:50 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05574273c33b20d47e777e4a5601394ba78089dfb723ed1dd7844b02d5d9aef1`  
		Last Modified: Tue, 14 Jul 2026 02:20:51 GMT  
		Size: 49.5 MB (49479356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c446a6da595741667124c954105d8f05b2bcba8f07cc5e85ad60b79fcf2ab1b`  
		Last Modified: Tue, 14 Jul 2026 02:20:50 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:f012aee55c0ca8897015f70317b100fb2491a303028eadbbcc75669d42d61736
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2240938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9057018c930426b2ec821495e5a0ebaf68da6ddf225fc242e09245b7edc01088`

```dockerfile
```

-	Layers:
	-	`sha256:05f9d093316b3864def147df0c16466a7ec75bb906ad7914c74d11b9e1d06b9a`  
		Last Modified: Tue, 14 Jul 2026 02:20:50 GMT  
		Size: 2.2 MB (2216421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f29e01f19b3d3481a94bebd201d5033f058ff650a96e869caa850c0d35e442d`  
		Last Modified: Tue, 14 Jul 2026 02:20:49 GMT  
		Size: 24.5 KB (24517 bytes)  
		MIME: application/vnd.in-toto+json

### `ruby:4-slim-trixie` - linux; 386

```console
$ docker pull ruby@sha256:99262b3be2174796b6f3540d40a27785a64b3129f264fb56e94e3f5fcd380958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (74987476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb10edf2a5540eeeb2431b4e9d6272f6414a7b93ec679ea89617c700081ca213`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:12:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:12:43 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 02:15:18 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 02:15:18 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 02:15:18 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 02:15:18 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 02:15:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 02:15:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 02:15:18 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 02:15:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:15:18 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 02:15:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4ef274ea5c9f7883c7500e3865834212e2eebddf677c1dcd72a5c6ee5f7932`  
		Last Modified: Tue, 14 Jul 2026 02:15:27 GMT  
		Size: 1.3 MB (1287823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c635ee7c3ba18d5acf9ebd7ed26b025353e9c92b8e91a3568cc57fe60d6e4d3`  
		Last Modified: Tue, 14 Jul 2026 02:15:27 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154ef22facd0af947f6809fd6d02ab4f6f68b757cd3b0dacc98cd64f3565d778`  
		Last Modified: Tue, 14 Jul 2026 02:15:28 GMT  
		Size: 42.4 MB (42403019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98e755400609616073b77ab89c415c495d61314c4522061754fd498dcf0edfc`  
		Last Modified: Tue, 14 Jul 2026 02:15:27 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:42d80fb312b8b99bd29087a8fd700d1802c31c368e2a71e34adc006d6440e670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2237556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f282bb8d831d554f52de554157686948ea95f6e7a11900549d097a734ac15c23`

```dockerfile
```

-	Layers:
	-	`sha256:31bc60ad7c97eea1b10a96ee9b493e2fe13052d25e85c4e4036cfbcea3d6a6fa`  
		Last Modified: Tue, 14 Jul 2026 02:15:26 GMT  
		Size: 2.2 MB (2213294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be6758b99ddb4dc8ab88359a1c302b720f0c65246feefa0da24cb2c7ef8435d9`  
		Last Modified: Tue, 14 Jul 2026 02:15:27 GMT  
		Size: 24.3 KB (24262 bytes)  
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
$ docker pull ruby@sha256:fcafeab497055b77b1154ce6e3073ef8772f27af34080435395bb135c4051c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75428098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef69eb8042b0f1285c9ccae81a7cb6622e8d9d10d021882182a26c6945427cf4`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:15:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:15:02 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 14 Jul 2026 04:17:39 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 04:17:39 GMT
ENV RUBY_VERSION=4.0.5
# Tue, 14 Jul 2026 04:17:39 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.5.tar.xz
# Tue, 14 Jul 2026 04:17:39 GMT
ENV RUBY_DOWNLOAD_SHA256=5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
# Tue, 14 Jul 2026 04:17:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 14 Jul 2026 04:17:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 14 Jul 2026 04:17:39 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 14 Jul 2026 04:17:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:17:39 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 14 Jul 2026 04:17:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85854fadcba55301de4dd5c22411a579d949833cba9d4eb68e6514e9c605cdc4`  
		Last Modified: Tue, 14 Jul 2026 04:17:54 GMT  
		Size: 1.3 MB (1294931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b784174f7caaddba13f5f00b53c9f7f9c43cf5c78c176f548a842f507d9e4c8`  
		Last Modified: Tue, 14 Jul 2026 04:17:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f813f8cc45dab97f787c18d2bdd8177be74efbfd498f4bb9a8c7bf8c60ca9c5`  
		Last Modified: Tue, 14 Jul 2026 04:17:55 GMT  
		Size: 44.3 MB (44286202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836c390cc65b5ea1cfcf56212c611b41ac828f8c84c728c0da4da201dfe8be6b`  
		Last Modified: Tue, 14 Jul 2026 04:17:54 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ruby:4-slim-trixie` - unknown; unknown

```console
$ docker pull ruby@sha256:8d8bb50a366a75f9a8eba2cf0c51cfd251623de6f884b4ef4a0b2441bfe3c41e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2241886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae1aeade2d3eb6925183886a8d0a76a4144b12835c06d251d72d5a00e3c5c82`

```dockerfile
```

-	Layers:
	-	`sha256:879dd7f542d3ff076a15ce163ed21c72891734352bc295226ac1720a4e686fb4`  
		Last Modified: Tue, 14 Jul 2026 04:17:54 GMT  
		Size: 2.2 MB (2217566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e218d905ead49e9b8aa47b227eb4261bba1d6fcd5e8cbdd5ec1cf87096c8444`  
		Last Modified: Tue, 14 Jul 2026 04:17:54 GMT  
		Size: 24.3 KB (24320 bytes)  
		MIME: application/vnd.in-toto+json
