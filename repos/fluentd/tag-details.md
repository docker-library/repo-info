<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fluentd`

-	[`fluentd:latest`](#fluentdlatest)
-	[`fluentd:v1.19-1`](#fluentdv119-1)
-	[`fluentd:v1.19-debian-1`](#fluentdv119-debian-1)
-	[`fluentd:v1.19.4-1.0`](#fluentdv1194-10)
-	[`fluentd:v1.19.4-debian-1.0`](#fluentdv1194-debian-10)

## `fluentd:latest`

```console
$ docker pull fluentd@sha256:af10e6840bada3ad158e1bc7dd05859b9a06ed0b89ecfe91877e2c9f9162fefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `fluentd:latest` - linux; amd64

```console
$ docker pull fluentd@sha256:a6ba6118e38516f7795e4da7d46cd51a9e63d362db938372bb6790c8a43980ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79643930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5c0ba5d48fbcb7ad0df27f5b8dfb400c153431ee34cca11400277ebf911711`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:28 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:30:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:52 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:52 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:37:37 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:37:37 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:37:37 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:37:37 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:37:38 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:37:38 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:37:38 GMT
USER fluent
# Thu, 19 Nov 2026 00:37:38 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:38 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c0d233b9c244ecdd2e36ce656146f257b6612a870955d76bd56bc7b860b5b7`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 1.3 MB (1277399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09aa029a9fe5be2e10b482f8ea2575cade80e16e580d318a6964362bf50b9a98`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7643cbcd023c925b8ab563ff994d7ff18fe763311745bbe9070ce693343e8cc8`  
		Last Modified: Thu, 19 Nov 2026 00:31:02 GMT  
		Size: 42.3 MB (42301146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b812d3462408c2f3c0ae675681964304fb66bc6d26b6765b76e666af70d7c7`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cd26d515db0b5c90f5a7fb28d3cb46eadcfe787df99553af15e229bd56a6d6`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 6.2 MB (6206852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af883b8a3961a2ec753df6eb0f993195244088037ff04b79442362df1c72dd74`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b4bad12defa3bef5b17df837453494f7bfce447db029fe81f3f7243077df99`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8267e33ea51c0b3e753aac36b4b0e8cbbf6b22087828d3977d5ecdb40eb34dca`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:f93f55c6cf5ea8c5d739c9d32b7229da61aa1eea36e3c06c1960de0f4e79eeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b1477451fd8a3aa7dc287538f22ef1359ca1bcd624edcfbfc905ac311aa046`

```dockerfile
```

-	Layers:
	-	`sha256:8bf6576119ad660bc662c70f4a74a5aff0e53f46d01ef8c17419eecf66f9e0f7`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 2.3 MB (2287974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b18d8d86a021f1bd20df3c56cdbe1b2fd267f17925b5ca16c8f2cb08575b25`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:c9c65c0e16496f3f892e6d6db78970a4ff920fb38b3d21d8da4eed35c89c3347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73444280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e490247a4e3749bad736f3ba7894567aed82fba0b397d8b82e2f432c5fcc698`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:27 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:32 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:39:44 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:39:44 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:39:44 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:39:44 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:39:44 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:39:45 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:39:45 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:39:45 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:39:45 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:39:45 GMT
USER fluent
# Thu, 19 Nov 2026 00:39:45 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:39:45 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02fff5e3ba7608211f32e71eb5d05a93b8af5759364849a1b425c3b9e356bec`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 1.3 MB (1261657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2dea708836c2096421fa265d899e636cfa791ad715a7982458a5053b75875d`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ea6fdb5870b44b897e98c315a2533f32870360b82a83fc5a6330c50d3e823c`  
		Last Modified: Thu, 19 Nov 2026 00:31:42 GMT  
		Size: 38.1 MB (38068729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac4bf065c390bfcddf3c458e644c42c8970a4041086a39ceebab958f4203934`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24396b3dc47d81be7aa2762e8eaafdf90dd54f0f227980387b304d6af8bb73c0`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 6.1 MB (6091886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ea0220da4b5d61f2bccec0fa7fe1dc1cbbb0fa5601be66ff014278955f6546`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f999a8944bf2ec995a4c648bc5ca86248bb330d970d04995b0ae64e100fd46d`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a67896cb2f4fcaf0a85a1f7daa6e4889482dfbf82c45a343ea37a25118d82a`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:b39fde1c2eba8376313cb26a98c4433e81858437ac6d5dc5b06a4d7078c66443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8faa62d85586baef2f35b3faf4fb39444e6ae74d61aab5868bdaff0c53c9fd1`

```dockerfile
```

-	Layers:
	-	`sha256:263a83ecd3cf98d0dcba829b9ff1a3831379d3f28cb38a137ea3e0639fe0d716`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 2.3 MB (2290945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbe59e71128520d74d7acd37ba10d92ae60ba6c52e1e2bcc4e270ce9f8844ac4`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:ab5eab2053e90c32580e031ec3255746e2df56fd571572c9b74831c4da4d27ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4d765df5a1e8e10753a4bc1780dbf1475061a13fa36a48131ff761f301d88`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:32:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:32:11 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:34:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:34:56 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:34:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:34:56 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:46:39 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:46:39 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:46:39 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:46:39 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:46:39 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:46:39 GMT
USER fluent
# Thu, 19 Nov 2026 00:46:39 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:46:39 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a787333c86e1e8cd852d3ece3be8d049d310937c4fa529dff540c3766347a21c`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 1.2 MB (1235360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f131fb08996179c1ab43b9a8a9817311a6a3fb6f883d3a08075ca689d8d08f59`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5828b596ee2f1b4cd2d0a4d505ac29bc642af9204007dc2755fc9127609d7524`  
		Last Modified: Thu, 19 Nov 2026 00:35:07 GMT  
		Size: 37.9 MB (37923508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e37c662fad6586aabcefb7e5abd99eb35f397aa5530fe65327e7f81c84a3971`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf5701956afbd2b48fce5c8e4ab73584e349ac16048534d25204ae9165ddb43`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 5.9 MB (5856882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b9b761f101dafd73172bfa3ae34110408ccf565f75e038fb8ef7be06097f22`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ead325f3757f9ca29f5646bb43e2f84cedbb0f8ec6dcd01460e68f230125270`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4a76993bb15df734a124732899b5a1a8c0c2509f69344e124487ba78869026`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:44e26e30865bfbc4f9b7fe870e58b8fda49fd0a14ac3692409fdb9594c7b5c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a897a568877c022e281fea659b1675f3a5e56edd28322becc4205f768a6510f5`

```dockerfile
```

-	Layers:
	-	`sha256:46e41167476fb68d1f1ecf6001b9e411b0904fc4e242fe8af5f9787a6ebdcc2c`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 2.3 MB (2289386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a1c35a251b7b6b9e8bdc10ddd5bb9fd7cb272ca2630ea29f3d7da0015b4b548`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:57477ecdfc85aeee10f20959c9a94f965fbbe2ddb2363a95df680b86dd13701e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79918767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2548dcf519c2782e4cb37f0a0dbb5a4e8f39d0687f889cb763d198f46db2bc`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:20 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:53 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:30:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:53 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:54 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:54 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:37:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:37:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:37:59 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:37:59 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:37:59 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:37:59 GMT
USER fluent
# Thu, 19 Nov 2026 00:37:59 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:59 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2485953d1aadda378ffce752f09ad496eeede04ee7c04802f2049376cde7510d`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 1.3 MB (1259377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213d91730434dbf35963f96b70283c8857935eafc7ef3f0ff83444853079d182`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98edea0b89d19e4ce69441239e8d69e1aab426ecc16491530bc42b4ca6296cde`  
		Last Modified: Thu, 19 Nov 2026 00:31:04 GMT  
		Size: 42.3 MB (42260381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e714dab25afcf79840e521518343f1d2411e6446dcf95c0ce65b1562dc46c375`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93c41bfcd156c9e31a4b36475c42c66be6769800971962b019f38af892f34b5`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 6.2 MB (6182573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654480faaa7252fa529c14d505910d33e09bbc5d0baefdfc8276d9dfb6064be0`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49270f4f25075eeaae5f2e7da249e6a4cbddf90fb9245fecb238ad07105f40e`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7881d73911e447ab2fa2085f6124b6aa617cc7df03a4213b889028c6e7da16b`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:0a7dc875060b2f41f52876455d943a8da0326623dcf71ffb61d0f7c1df5cbd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3727833b9c97ac6aed70fb8d9e3e2c41b5e78adec4c32a23ad763f9e05b2643e`

```dockerfile
```

-	Layers:
	-	`sha256:4d7ccba1c9ae34237c96fcb15f24bbd8c719b325ac209b69730cdc0fe055f4e9`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 2.3 MB (2288238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dac8aabe57c3f8c9725a3ad2f05a9aa07bb6f661a387666059e17379fce45ff1`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; 386

```console
$ docker pull fluentd@sha256:1f33305eed5ba907b11578a08ded2d9cb654f89bb45d00b5ac50b023b00a26a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76666151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb4a09b484f19555ea1ebf852077bcaa57748db5bb5859acc25c22ba6c1ee7d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:38:02 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:38:02 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:38:02 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:38:02 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:38:02 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:38:02 GMT
USER fluent
# Thu, 19 Nov 2026 00:38:02 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:38:02 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340efb2a6396cd99dadc68432ea84fbfec58c65cf91c836e9e46d4b6587ecc3b`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 1.3 MB (1285914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9780df7038b71ecd70444fdd9a5c48775eed41603e4002bfdf60599b144e01`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a1ca82c4fd2309974dc11129523974ffb515180e4a2d86ea916225cd949947`  
		Last Modified: Thu, 19 Nov 2026 00:31:21 GMT  
		Size: 37.8 MB (37827851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed68a2d80049cde96b4fc149b49257e58dcc4191efff6836f54c080e487e559`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68bb34a0d61c04436e1ffd81915d921512076a37280e9e63c8d6bc8bd2ca842`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 6.2 MB (6179233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08802132d47eb8e7ba66831876cb64a3088d1a52fe84fa157d98fee16a03ff9f`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cb36061ca966982611aafd357fa667bded5c8c10575df294a2bba58fd63203`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa271f84d010d71a0bcae588a19af499934f1e89c032e75cad998d20accac28`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:d39a69d42b34c4c82af4c08963eca952af9a28c3c4609aea7615bd32eb63906b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa0e99d011d06c4c5c8e1dd3a7cb7fa323882d51a6eb4448d8f1cabeccc73c6`

```dockerfile
```

-	Layers:
	-	`sha256:9ea18a09ade6230bde051608f3cde9db6a5e619078bc954c59257dcd94575423`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 2.3 MB (2285162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d202a239c01be2ccc725086c62bdc8ec2a59c6a19223f9c7fa470855057956`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 21.3 KB (21290 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; ppc64le

```console
$ docker pull fluentd@sha256:eae1ab5ca33272f64be723b24c04fb114a1a65e529998fc23bfa16391017ab5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81440976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c79bcfc416000ee3b0ca6e44947c8a5c78bf440e69f06e3dd33bd1d72ee7c706`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 14:37:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 14:37:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:46:09 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:46:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:46:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:46:09 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:46:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:46:10 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:46:10 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 01:13:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 01:13:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 01:13:59 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 01:14:00 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 01:14:00 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 01:14:00 GMT
USER fluent
# Thu, 19 Nov 2026 01:14:00 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 01:14:00 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ced07f285afeace22294bc40866408a6c9f66e18f0b7a8e176fcd83279ff53`  
		Last Modified: Thu, 05 Nov 2026 14:44:22 GMT  
		Size: 1.3 MB (1306761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd3396a1aa4da8dc5f51d503ad07e8e0391caaa58909d075a77f028fecc8254`  
		Last Modified: Thu, 05 Nov 2026 14:44:22 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6bfb2002b6d8d33396b1b167704222193fdafd9d3e859cb35181c1b283ff03d`  
		Last Modified: Thu, 19 Nov 2026 00:46:28 GMT  
		Size: 39.7 MB (39744761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc304e9e5b35fb22a2534c644f1c27dbf08abaa8965ea7c22d4257d59155c556`  
		Last Modified: Thu, 19 Nov 2026 00:46:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f6276945ae1f60938c0fadba523a99ead6a3246157e6c2e3c48b44a328e130`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 6.7 MB (6719405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5665636c8775fea6400fd001cec43275296749aa7696b367c558852abfd2e1c3`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655ff342685972e528dd8148620fd080eca18f1d21fc52584b49af5631f8a505`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe4615a2122d33138c35b78d08ef16eb9e30596211d5caa2fbfd935b97fedf5`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:7357b7923438bb07d5ac0118a867bee2de62dc6e4e1cf3e5dd0649302925cf08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4870e8371a4eb93384f1838df5361b654110c28374f849de0e3d47361521adb0`

```dockerfile
```

-	Layers:
	-	`sha256:553fe8733dc99d9609111de3fdbd677878b7351e132a40217d0d3d56a18acfe5`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 2.3 MB (2291509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0472e669f9bd1c3609df6391176b9f989093f831278bf797242d9ffe4e2508c8`  
		Last Modified: Thu, 19 Nov 2026 01:14:16 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; s390x

```console
$ docker pull fluentd@sha256:f2c1aa9723070bc565c98a683ed16833b6de337ca1b40dfbc8ee7097e265b0d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77179170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c588b57466cd3e603d7d1034435f88a376cad64af176005d8772e442ca61eb`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:38:17 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:49:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:49:05 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:49:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:49:05 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 01:13:09 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 01:13:09 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 01:13:09 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 01:13:10 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 01:13:10 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 01:13:10 GMT
USER fluent
# Thu, 19 Nov 2026 01:13:10 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 01:13:10 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553503a218f5a1ad161f0ba46cc116563f70551543f50f7d4a27a0156401f1c7`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 1.3 MB (1292087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b76c7b7b2a9fb89893dea3a692ed7b069edfeac2f1df8ce7b4b4ad2a661f38`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f203a3095218dbf8e23be9d884e328a76f45ea43fb5da43aa8916acd204ee73`  
		Last Modified: Thu, 19 Nov 2026 00:49:29 GMT  
		Size: 39.4 MB (39390873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a75ec353e2cf2f7189507b31b49500692cec02675a556c43c1d61c0893486e`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde0805020b2dea64364b03fcdd0668164ed76d2ee2d618747ecbadee69e1df3`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 6.6 MB (6569698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e15dc35e99781c9264b5b49caf637f9253d9b22f3707a95605057e61f091580`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d1295889c7172cc13a05576462dc5ea5766fc14d5dadde4831b3594ed8a92a`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7b11384d2c84aec915a5598cb8893b243a31e20953c919794f6229c06ef2f3`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:1a974dc6eaef1f3ebef359e2b43216d45b08fcc75ec1355edd4953e7f63c9bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6fc5257da902c2f31f277ad0d08bf363bb341b07a17b7e88a29c0e3b55603b`

```dockerfile
```

-	Layers:
	-	`sha256:0bbf733a204dfd6c24a15c3b88c61e413f40b6cf331d39e6a51088765f30752b`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 2.3 MB (2289419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:352aa3c0b7f0c43fe882af4a78df87a55d41854c7838e8cb1a193e1974cad804`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

## `fluentd:v1.19-1`

```console
$ docker pull fluentd@sha256:af10e6840bada3ad158e1bc7dd05859b9a06ed0b89ecfe91877e2c9f9162fefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `fluentd:v1.19-1` - linux; amd64

```console
$ docker pull fluentd@sha256:a6ba6118e38516f7795e4da7d46cd51a9e63d362db938372bb6790c8a43980ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79643930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5c0ba5d48fbcb7ad0df27f5b8dfb400c153431ee34cca11400277ebf911711`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:28 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:30:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:52 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:52 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:37:37 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:37:37 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:37:37 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:37:37 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:37:38 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:37:38 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:37:38 GMT
USER fluent
# Thu, 19 Nov 2026 00:37:38 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:38 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c0d233b9c244ecdd2e36ce656146f257b6612a870955d76bd56bc7b860b5b7`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 1.3 MB (1277399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09aa029a9fe5be2e10b482f8ea2575cade80e16e580d318a6964362bf50b9a98`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7643cbcd023c925b8ab563ff994d7ff18fe763311745bbe9070ce693343e8cc8`  
		Last Modified: Thu, 19 Nov 2026 00:31:02 GMT  
		Size: 42.3 MB (42301146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b812d3462408c2f3c0ae675681964304fb66bc6d26b6765b76e666af70d7c7`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cd26d515db0b5c90f5a7fb28d3cb46eadcfe787df99553af15e229bd56a6d6`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 6.2 MB (6206852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af883b8a3961a2ec753df6eb0f993195244088037ff04b79442362df1c72dd74`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b4bad12defa3bef5b17df837453494f7bfce447db029fe81f3f7243077df99`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8267e33ea51c0b3e753aac36b4b0e8cbbf6b22087828d3977d5ecdb40eb34dca`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:f93f55c6cf5ea8c5d739c9d32b7229da61aa1eea36e3c06c1960de0f4e79eeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b1477451fd8a3aa7dc287538f22ef1359ca1bcd624edcfbfc905ac311aa046`

```dockerfile
```

-	Layers:
	-	`sha256:8bf6576119ad660bc662c70f4a74a5aff0e53f46d01ef8c17419eecf66f9e0f7`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 2.3 MB (2287974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b18d8d86a021f1bd20df3c56cdbe1b2fd267f17925b5ca16c8f2cb08575b25`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:c9c65c0e16496f3f892e6d6db78970a4ff920fb38b3d21d8da4eed35c89c3347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73444280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e490247a4e3749bad736f3ba7894567aed82fba0b397d8b82e2f432c5fcc698`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:27 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:32 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:39:44 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:39:44 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:39:44 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:39:44 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:39:44 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:39:45 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:39:45 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:39:45 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:39:45 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:39:45 GMT
USER fluent
# Thu, 19 Nov 2026 00:39:45 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:39:45 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02fff5e3ba7608211f32e71eb5d05a93b8af5759364849a1b425c3b9e356bec`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 1.3 MB (1261657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2dea708836c2096421fa265d899e636cfa791ad715a7982458a5053b75875d`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ea6fdb5870b44b897e98c315a2533f32870360b82a83fc5a6330c50d3e823c`  
		Last Modified: Thu, 19 Nov 2026 00:31:42 GMT  
		Size: 38.1 MB (38068729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac4bf065c390bfcddf3c458e644c42c8970a4041086a39ceebab958f4203934`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24396b3dc47d81be7aa2762e8eaafdf90dd54f0f227980387b304d6af8bb73c0`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 6.1 MB (6091886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ea0220da4b5d61f2bccec0fa7fe1dc1cbbb0fa5601be66ff014278955f6546`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f999a8944bf2ec995a4c648bc5ca86248bb330d970d04995b0ae64e100fd46d`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a67896cb2f4fcaf0a85a1f7daa6e4889482dfbf82c45a343ea37a25118d82a`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:b39fde1c2eba8376313cb26a98c4433e81858437ac6d5dc5b06a4d7078c66443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8faa62d85586baef2f35b3faf4fb39444e6ae74d61aab5868bdaff0c53c9fd1`

```dockerfile
```

-	Layers:
	-	`sha256:263a83ecd3cf98d0dcba829b9ff1a3831379d3f28cb38a137ea3e0639fe0d716`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 2.3 MB (2290945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbe59e71128520d74d7acd37ba10d92ae60ba6c52e1e2bcc4e270ce9f8844ac4`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:ab5eab2053e90c32580e031ec3255746e2df56fd571572c9b74831c4da4d27ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4d765df5a1e8e10753a4bc1780dbf1475061a13fa36a48131ff761f301d88`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:32:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:32:11 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:34:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:34:56 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:34:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:34:56 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:46:39 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:46:39 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:46:39 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:46:39 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:46:39 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:46:39 GMT
USER fluent
# Thu, 19 Nov 2026 00:46:39 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:46:39 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a787333c86e1e8cd852d3ece3be8d049d310937c4fa529dff540c3766347a21c`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 1.2 MB (1235360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f131fb08996179c1ab43b9a8a9817311a6a3fb6f883d3a08075ca689d8d08f59`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5828b596ee2f1b4cd2d0a4d505ac29bc642af9204007dc2755fc9127609d7524`  
		Last Modified: Thu, 19 Nov 2026 00:35:07 GMT  
		Size: 37.9 MB (37923508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e37c662fad6586aabcefb7e5abd99eb35f397aa5530fe65327e7f81c84a3971`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf5701956afbd2b48fce5c8e4ab73584e349ac16048534d25204ae9165ddb43`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 5.9 MB (5856882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b9b761f101dafd73172bfa3ae34110408ccf565f75e038fb8ef7be06097f22`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ead325f3757f9ca29f5646bb43e2f84cedbb0f8ec6dcd01460e68f230125270`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4a76993bb15df734a124732899b5a1a8c0c2509f69344e124487ba78869026`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:44e26e30865bfbc4f9b7fe870e58b8fda49fd0a14ac3692409fdb9594c7b5c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a897a568877c022e281fea659b1675f3a5e56edd28322becc4205f768a6510f5`

```dockerfile
```

-	Layers:
	-	`sha256:46e41167476fb68d1f1ecf6001b9e411b0904fc4e242fe8af5f9787a6ebdcc2c`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 2.3 MB (2289386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a1c35a251b7b6b9e8bdc10ddd5bb9fd7cb272ca2630ea29f3d7da0015b4b548`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:57477ecdfc85aeee10f20959c9a94f965fbbe2ddb2363a95df680b86dd13701e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79918767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2548dcf519c2782e4cb37f0a0dbb5a4e8f39d0687f889cb763d198f46db2bc`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:20 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:53 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:30:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:53 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:54 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:54 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:37:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:37:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:37:59 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:37:59 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:37:59 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:37:59 GMT
USER fluent
# Thu, 19 Nov 2026 00:37:59 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:59 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2485953d1aadda378ffce752f09ad496eeede04ee7c04802f2049376cde7510d`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 1.3 MB (1259377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213d91730434dbf35963f96b70283c8857935eafc7ef3f0ff83444853079d182`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98edea0b89d19e4ce69441239e8d69e1aab426ecc16491530bc42b4ca6296cde`  
		Last Modified: Thu, 19 Nov 2026 00:31:04 GMT  
		Size: 42.3 MB (42260381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e714dab25afcf79840e521518343f1d2411e6446dcf95c0ce65b1562dc46c375`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93c41bfcd156c9e31a4b36475c42c66be6769800971962b019f38af892f34b5`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 6.2 MB (6182573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654480faaa7252fa529c14d505910d33e09bbc5d0baefdfc8276d9dfb6064be0`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49270f4f25075eeaae5f2e7da249e6a4cbddf90fb9245fecb238ad07105f40e`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7881d73911e447ab2fa2085f6124b6aa617cc7df03a4213b889028c6e7da16b`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:0a7dc875060b2f41f52876455d943a8da0326623dcf71ffb61d0f7c1df5cbd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3727833b9c97ac6aed70fb8d9e3e2c41b5e78adec4c32a23ad763f9e05b2643e`

```dockerfile
```

-	Layers:
	-	`sha256:4d7ccba1c9ae34237c96fcb15f24bbd8c719b325ac209b69730cdc0fe055f4e9`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 2.3 MB (2288238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dac8aabe57c3f8c9725a3ad2f05a9aa07bb6f661a387666059e17379fce45ff1`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; 386

```console
$ docker pull fluentd@sha256:1f33305eed5ba907b11578a08ded2d9cb654f89bb45d00b5ac50b023b00a26a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76666151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb4a09b484f19555ea1ebf852077bcaa57748db5bb5859acc25c22ba6c1ee7d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:38:02 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:38:02 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:38:02 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:38:02 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:38:02 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:38:02 GMT
USER fluent
# Thu, 19 Nov 2026 00:38:02 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:38:02 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340efb2a6396cd99dadc68432ea84fbfec58c65cf91c836e9e46d4b6587ecc3b`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 1.3 MB (1285914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9780df7038b71ecd70444fdd9a5c48775eed41603e4002bfdf60599b144e01`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a1ca82c4fd2309974dc11129523974ffb515180e4a2d86ea916225cd949947`  
		Last Modified: Thu, 19 Nov 2026 00:31:21 GMT  
		Size: 37.8 MB (37827851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed68a2d80049cde96b4fc149b49257e58dcc4191efff6836f54c080e487e559`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68bb34a0d61c04436e1ffd81915d921512076a37280e9e63c8d6bc8bd2ca842`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 6.2 MB (6179233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08802132d47eb8e7ba66831876cb64a3088d1a52fe84fa157d98fee16a03ff9f`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cb36061ca966982611aafd357fa667bded5c8c10575df294a2bba58fd63203`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa271f84d010d71a0bcae588a19af499934f1e89c032e75cad998d20accac28`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:d39a69d42b34c4c82af4c08963eca952af9a28c3c4609aea7615bd32eb63906b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa0e99d011d06c4c5c8e1dd3a7cb7fa323882d51a6eb4448d8f1cabeccc73c6`

```dockerfile
```

-	Layers:
	-	`sha256:9ea18a09ade6230bde051608f3cde9db6a5e619078bc954c59257dcd94575423`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 2.3 MB (2285162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d202a239c01be2ccc725086c62bdc8ec2a59c6a19223f9c7fa470855057956`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 21.3 KB (21290 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; ppc64le

```console
$ docker pull fluentd@sha256:eae1ab5ca33272f64be723b24c04fb114a1a65e529998fc23bfa16391017ab5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81440976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c79bcfc416000ee3b0ca6e44947c8a5c78bf440e69f06e3dd33bd1d72ee7c706`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 14:37:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 14:37:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:46:09 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:46:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:46:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:46:09 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:46:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:46:10 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:46:10 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 01:13:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 01:13:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 01:13:59 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 01:14:00 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 01:14:00 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 01:14:00 GMT
USER fluent
# Thu, 19 Nov 2026 01:14:00 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 01:14:00 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ced07f285afeace22294bc40866408a6c9f66e18f0b7a8e176fcd83279ff53`  
		Last Modified: Thu, 05 Nov 2026 14:44:22 GMT  
		Size: 1.3 MB (1306761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd3396a1aa4da8dc5f51d503ad07e8e0391caaa58909d075a77f028fecc8254`  
		Last Modified: Thu, 05 Nov 2026 14:44:22 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6bfb2002b6d8d33396b1b167704222193fdafd9d3e859cb35181c1b283ff03d`  
		Last Modified: Thu, 19 Nov 2026 00:46:28 GMT  
		Size: 39.7 MB (39744761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc304e9e5b35fb22a2534c644f1c27dbf08abaa8965ea7c22d4257d59155c556`  
		Last Modified: Thu, 19 Nov 2026 00:46:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f6276945ae1f60938c0fadba523a99ead6a3246157e6c2e3c48b44a328e130`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 6.7 MB (6719405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5665636c8775fea6400fd001cec43275296749aa7696b367c558852abfd2e1c3`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655ff342685972e528dd8148620fd080eca18f1d21fc52584b49af5631f8a505`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe4615a2122d33138c35b78d08ef16eb9e30596211d5caa2fbfd935b97fedf5`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:7357b7923438bb07d5ac0118a867bee2de62dc6e4e1cf3e5dd0649302925cf08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4870e8371a4eb93384f1838df5361b654110c28374f849de0e3d47361521adb0`

```dockerfile
```

-	Layers:
	-	`sha256:553fe8733dc99d9609111de3fdbd677878b7351e132a40217d0d3d56a18acfe5`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 2.3 MB (2291509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0472e669f9bd1c3609df6391176b9f989093f831278bf797242d9ffe4e2508c8`  
		Last Modified: Thu, 19 Nov 2026 01:14:16 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; s390x

```console
$ docker pull fluentd@sha256:f2c1aa9723070bc565c98a683ed16833b6de337ca1b40dfbc8ee7097e265b0d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77179170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c588b57466cd3e603d7d1034435f88a376cad64af176005d8772e442ca61eb`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:38:17 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:49:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:49:05 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:49:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:49:05 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 01:13:09 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 01:13:09 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 01:13:09 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 01:13:10 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 01:13:10 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 01:13:10 GMT
USER fluent
# Thu, 19 Nov 2026 01:13:10 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 01:13:10 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553503a218f5a1ad161f0ba46cc116563f70551543f50f7d4a27a0156401f1c7`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 1.3 MB (1292087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b76c7b7b2a9fb89893dea3a692ed7b069edfeac2f1df8ce7b4b4ad2a661f38`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f203a3095218dbf8e23be9d884e328a76f45ea43fb5da43aa8916acd204ee73`  
		Last Modified: Thu, 19 Nov 2026 00:49:29 GMT  
		Size: 39.4 MB (39390873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a75ec353e2cf2f7189507b31b49500692cec02675a556c43c1d61c0893486e`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde0805020b2dea64364b03fcdd0668164ed76d2ee2d618747ecbadee69e1df3`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 6.6 MB (6569698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e15dc35e99781c9264b5b49caf637f9253d9b22f3707a95605057e61f091580`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d1295889c7172cc13a05576462dc5ea5766fc14d5dadde4831b3594ed8a92a`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7b11384d2c84aec915a5598cb8893b243a31e20953c919794f6229c06ef2f3`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:1a974dc6eaef1f3ebef359e2b43216d45b08fcc75ec1355edd4953e7f63c9bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6fc5257da902c2f31f277ad0d08bf363bb341b07a17b7e88a29c0e3b55603b`

```dockerfile
```

-	Layers:
	-	`sha256:0bbf733a204dfd6c24a15c3b88c61e413f40b6cf331d39e6a51088765f30752b`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 2.3 MB (2289419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:352aa3c0b7f0c43fe882af4a78df87a55d41854c7838e8cb1a193e1974cad804`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

## `fluentd:v1.19-debian-1`

```console
$ docker pull fluentd@sha256:af10e6840bada3ad158e1bc7dd05859b9a06ed0b89ecfe91877e2c9f9162fefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `fluentd:v1.19-debian-1` - linux; amd64

```console
$ docker pull fluentd@sha256:a6ba6118e38516f7795e4da7d46cd51a9e63d362db938372bb6790c8a43980ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79643930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5c0ba5d48fbcb7ad0df27f5b8dfb400c153431ee34cca11400277ebf911711`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:28 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:30:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:52 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:52 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:37:37 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:37:37 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:37:37 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:37:37 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:37:38 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:37:38 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:37:38 GMT
USER fluent
# Thu, 19 Nov 2026 00:37:38 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:38 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c0d233b9c244ecdd2e36ce656146f257b6612a870955d76bd56bc7b860b5b7`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 1.3 MB (1277399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09aa029a9fe5be2e10b482f8ea2575cade80e16e580d318a6964362bf50b9a98`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7643cbcd023c925b8ab563ff994d7ff18fe763311745bbe9070ce693343e8cc8`  
		Last Modified: Thu, 19 Nov 2026 00:31:02 GMT  
		Size: 42.3 MB (42301146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b812d3462408c2f3c0ae675681964304fb66bc6d26b6765b76e666af70d7c7`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cd26d515db0b5c90f5a7fb28d3cb46eadcfe787df99553af15e229bd56a6d6`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 6.2 MB (6206852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af883b8a3961a2ec753df6eb0f993195244088037ff04b79442362df1c72dd74`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b4bad12defa3bef5b17df837453494f7bfce447db029fe81f3f7243077df99`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8267e33ea51c0b3e753aac36b4b0e8cbbf6b22087828d3977d5ecdb40eb34dca`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:f93f55c6cf5ea8c5d739c9d32b7229da61aa1eea36e3c06c1960de0f4e79eeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b1477451fd8a3aa7dc287538f22ef1359ca1bcd624edcfbfc905ac311aa046`

```dockerfile
```

-	Layers:
	-	`sha256:8bf6576119ad660bc662c70f4a74a5aff0e53f46d01ef8c17419eecf66f9e0f7`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 2.3 MB (2287974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b18d8d86a021f1bd20df3c56cdbe1b2fd267f17925b5ca16c8f2cb08575b25`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:c9c65c0e16496f3f892e6d6db78970a4ff920fb38b3d21d8da4eed35c89c3347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73444280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e490247a4e3749bad736f3ba7894567aed82fba0b397d8b82e2f432c5fcc698`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:27 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:32 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:39:44 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:39:44 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:39:44 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:39:44 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:39:44 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:39:45 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:39:45 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:39:45 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:39:45 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:39:45 GMT
USER fluent
# Thu, 19 Nov 2026 00:39:45 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:39:45 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02fff5e3ba7608211f32e71eb5d05a93b8af5759364849a1b425c3b9e356bec`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 1.3 MB (1261657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2dea708836c2096421fa265d899e636cfa791ad715a7982458a5053b75875d`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ea6fdb5870b44b897e98c315a2533f32870360b82a83fc5a6330c50d3e823c`  
		Last Modified: Thu, 19 Nov 2026 00:31:42 GMT  
		Size: 38.1 MB (38068729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac4bf065c390bfcddf3c458e644c42c8970a4041086a39ceebab958f4203934`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24396b3dc47d81be7aa2762e8eaafdf90dd54f0f227980387b304d6af8bb73c0`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 6.1 MB (6091886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ea0220da4b5d61f2bccec0fa7fe1dc1cbbb0fa5601be66ff014278955f6546`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f999a8944bf2ec995a4c648bc5ca86248bb330d970d04995b0ae64e100fd46d`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a67896cb2f4fcaf0a85a1f7daa6e4889482dfbf82c45a343ea37a25118d82a`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:b39fde1c2eba8376313cb26a98c4433e81858437ac6d5dc5b06a4d7078c66443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8faa62d85586baef2f35b3faf4fb39444e6ae74d61aab5868bdaff0c53c9fd1`

```dockerfile
```

-	Layers:
	-	`sha256:263a83ecd3cf98d0dcba829b9ff1a3831379d3f28cb38a137ea3e0639fe0d716`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 2.3 MB (2290945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbe59e71128520d74d7acd37ba10d92ae60ba6c52e1e2bcc4e270ce9f8844ac4`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:ab5eab2053e90c32580e031ec3255746e2df56fd571572c9b74831c4da4d27ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4d765df5a1e8e10753a4bc1780dbf1475061a13fa36a48131ff761f301d88`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:32:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:32:11 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:34:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:34:56 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:34:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:34:56 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:46:39 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:46:39 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:46:39 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:46:39 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:46:39 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:46:39 GMT
USER fluent
# Thu, 19 Nov 2026 00:46:39 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:46:39 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a787333c86e1e8cd852d3ece3be8d049d310937c4fa529dff540c3766347a21c`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 1.2 MB (1235360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f131fb08996179c1ab43b9a8a9817311a6a3fb6f883d3a08075ca689d8d08f59`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5828b596ee2f1b4cd2d0a4d505ac29bc642af9204007dc2755fc9127609d7524`  
		Last Modified: Thu, 19 Nov 2026 00:35:07 GMT  
		Size: 37.9 MB (37923508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e37c662fad6586aabcefb7e5abd99eb35f397aa5530fe65327e7f81c84a3971`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf5701956afbd2b48fce5c8e4ab73584e349ac16048534d25204ae9165ddb43`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 5.9 MB (5856882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b9b761f101dafd73172bfa3ae34110408ccf565f75e038fb8ef7be06097f22`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ead325f3757f9ca29f5646bb43e2f84cedbb0f8ec6dcd01460e68f230125270`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4a76993bb15df734a124732899b5a1a8c0c2509f69344e124487ba78869026`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:44e26e30865bfbc4f9b7fe870e58b8fda49fd0a14ac3692409fdb9594c7b5c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a897a568877c022e281fea659b1675f3a5e56edd28322becc4205f768a6510f5`

```dockerfile
```

-	Layers:
	-	`sha256:46e41167476fb68d1f1ecf6001b9e411b0904fc4e242fe8af5f9787a6ebdcc2c`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 2.3 MB (2289386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a1c35a251b7b6b9e8bdc10ddd5bb9fd7cb272ca2630ea29f3d7da0015b4b548`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:57477ecdfc85aeee10f20959c9a94f965fbbe2ddb2363a95df680b86dd13701e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79918767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2548dcf519c2782e4cb37f0a0dbb5a4e8f39d0687f889cb763d198f46db2bc`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:20 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:53 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:30:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:53 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:54 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:54 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:37:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:37:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:37:59 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:37:59 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:37:59 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:37:59 GMT
USER fluent
# Thu, 19 Nov 2026 00:37:59 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:59 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2485953d1aadda378ffce752f09ad496eeede04ee7c04802f2049376cde7510d`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 1.3 MB (1259377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213d91730434dbf35963f96b70283c8857935eafc7ef3f0ff83444853079d182`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98edea0b89d19e4ce69441239e8d69e1aab426ecc16491530bc42b4ca6296cde`  
		Last Modified: Thu, 19 Nov 2026 00:31:04 GMT  
		Size: 42.3 MB (42260381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e714dab25afcf79840e521518343f1d2411e6446dcf95c0ce65b1562dc46c375`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93c41bfcd156c9e31a4b36475c42c66be6769800971962b019f38af892f34b5`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 6.2 MB (6182573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654480faaa7252fa529c14d505910d33e09bbc5d0baefdfc8276d9dfb6064be0`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49270f4f25075eeaae5f2e7da249e6a4cbddf90fb9245fecb238ad07105f40e`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7881d73911e447ab2fa2085f6124b6aa617cc7df03a4213b889028c6e7da16b`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:0a7dc875060b2f41f52876455d943a8da0326623dcf71ffb61d0f7c1df5cbd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3727833b9c97ac6aed70fb8d9e3e2c41b5e78adec4c32a23ad763f9e05b2643e`

```dockerfile
```

-	Layers:
	-	`sha256:4d7ccba1c9ae34237c96fcb15f24bbd8c719b325ac209b69730cdc0fe055f4e9`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 2.3 MB (2288238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dac8aabe57c3f8c9725a3ad2f05a9aa07bb6f661a387666059e17379fce45ff1`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; 386

```console
$ docker pull fluentd@sha256:1f33305eed5ba907b11578a08ded2d9cb654f89bb45d00b5ac50b023b00a26a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76666151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb4a09b484f19555ea1ebf852077bcaa57748db5bb5859acc25c22ba6c1ee7d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:38:02 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:38:02 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:38:02 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:38:02 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:38:02 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:38:02 GMT
USER fluent
# Thu, 19 Nov 2026 00:38:02 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:38:02 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340efb2a6396cd99dadc68432ea84fbfec58c65cf91c836e9e46d4b6587ecc3b`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 1.3 MB (1285914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9780df7038b71ecd70444fdd9a5c48775eed41603e4002bfdf60599b144e01`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a1ca82c4fd2309974dc11129523974ffb515180e4a2d86ea916225cd949947`  
		Last Modified: Thu, 19 Nov 2026 00:31:21 GMT  
		Size: 37.8 MB (37827851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed68a2d80049cde96b4fc149b49257e58dcc4191efff6836f54c080e487e559`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68bb34a0d61c04436e1ffd81915d921512076a37280e9e63c8d6bc8bd2ca842`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 6.2 MB (6179233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08802132d47eb8e7ba66831876cb64a3088d1a52fe84fa157d98fee16a03ff9f`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cb36061ca966982611aafd357fa667bded5c8c10575df294a2bba58fd63203`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa271f84d010d71a0bcae588a19af499934f1e89c032e75cad998d20accac28`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:d39a69d42b34c4c82af4c08963eca952af9a28c3c4609aea7615bd32eb63906b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa0e99d011d06c4c5c8e1dd3a7cb7fa323882d51a6eb4448d8f1cabeccc73c6`

```dockerfile
```

-	Layers:
	-	`sha256:9ea18a09ade6230bde051608f3cde9db6a5e619078bc954c59257dcd94575423`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 2.3 MB (2285162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d202a239c01be2ccc725086c62bdc8ec2a59c6a19223f9c7fa470855057956`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 21.3 KB (21290 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; ppc64le

```console
$ docker pull fluentd@sha256:eae1ab5ca33272f64be723b24c04fb114a1a65e529998fc23bfa16391017ab5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81440976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c79bcfc416000ee3b0ca6e44947c8a5c78bf440e69f06e3dd33bd1d72ee7c706`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 14:37:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 14:37:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:46:09 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:46:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:46:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:46:09 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:46:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:46:10 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:46:10 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 01:13:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 01:13:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 01:13:59 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 01:14:00 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 01:14:00 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 01:14:00 GMT
USER fluent
# Thu, 19 Nov 2026 01:14:00 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 01:14:00 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ced07f285afeace22294bc40866408a6c9f66e18f0b7a8e176fcd83279ff53`  
		Last Modified: Thu, 05 Nov 2026 14:44:22 GMT  
		Size: 1.3 MB (1306761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd3396a1aa4da8dc5f51d503ad07e8e0391caaa58909d075a77f028fecc8254`  
		Last Modified: Thu, 05 Nov 2026 14:44:22 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6bfb2002b6d8d33396b1b167704222193fdafd9d3e859cb35181c1b283ff03d`  
		Last Modified: Thu, 19 Nov 2026 00:46:28 GMT  
		Size: 39.7 MB (39744761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc304e9e5b35fb22a2534c644f1c27dbf08abaa8965ea7c22d4257d59155c556`  
		Last Modified: Thu, 19 Nov 2026 00:46:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f6276945ae1f60938c0fadba523a99ead6a3246157e6c2e3c48b44a328e130`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 6.7 MB (6719405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5665636c8775fea6400fd001cec43275296749aa7696b367c558852abfd2e1c3`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655ff342685972e528dd8148620fd080eca18f1d21fc52584b49af5631f8a505`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe4615a2122d33138c35b78d08ef16eb9e30596211d5caa2fbfd935b97fedf5`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:7357b7923438bb07d5ac0118a867bee2de62dc6e4e1cf3e5dd0649302925cf08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4870e8371a4eb93384f1838df5361b654110c28374f849de0e3d47361521adb0`

```dockerfile
```

-	Layers:
	-	`sha256:553fe8733dc99d9609111de3fdbd677878b7351e132a40217d0d3d56a18acfe5`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 2.3 MB (2291509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0472e669f9bd1c3609df6391176b9f989093f831278bf797242d9ffe4e2508c8`  
		Last Modified: Thu, 19 Nov 2026 01:14:16 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; s390x

```console
$ docker pull fluentd@sha256:f2c1aa9723070bc565c98a683ed16833b6de337ca1b40dfbc8ee7097e265b0d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77179170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c588b57466cd3e603d7d1034435f88a376cad64af176005d8772e442ca61eb`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:38:17 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:49:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:49:05 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:49:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:49:05 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 01:13:09 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 01:13:09 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 01:13:09 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 01:13:10 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 01:13:10 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 01:13:10 GMT
USER fluent
# Thu, 19 Nov 2026 01:13:10 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 01:13:10 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553503a218f5a1ad161f0ba46cc116563f70551543f50f7d4a27a0156401f1c7`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 1.3 MB (1292087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b76c7b7b2a9fb89893dea3a692ed7b069edfeac2f1df8ce7b4b4ad2a661f38`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f203a3095218dbf8e23be9d884e328a76f45ea43fb5da43aa8916acd204ee73`  
		Last Modified: Thu, 19 Nov 2026 00:49:29 GMT  
		Size: 39.4 MB (39390873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a75ec353e2cf2f7189507b31b49500692cec02675a556c43c1d61c0893486e`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde0805020b2dea64364b03fcdd0668164ed76d2ee2d618747ecbadee69e1df3`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 6.6 MB (6569698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e15dc35e99781c9264b5b49caf637f9253d9b22f3707a95605057e61f091580`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d1295889c7172cc13a05576462dc5ea5766fc14d5dadde4831b3594ed8a92a`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7b11384d2c84aec915a5598cb8893b243a31e20953c919794f6229c06ef2f3`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:1a974dc6eaef1f3ebef359e2b43216d45b08fcc75ec1355edd4953e7f63c9bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6fc5257da902c2f31f277ad0d08bf363bb341b07a17b7e88a29c0e3b55603b`

```dockerfile
```

-	Layers:
	-	`sha256:0bbf733a204dfd6c24a15c3b88c61e413f40b6cf331d39e6a51088765f30752b`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 2.3 MB (2289419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:352aa3c0b7f0c43fe882af4a78df87a55d41854c7838e8cb1a193e1974cad804`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

## `fluentd:v1.19.4-1.0`

```console
$ docker pull fluentd@sha256:af10e6840bada3ad158e1bc7dd05859b9a06ed0b89ecfe91877e2c9f9162fefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `fluentd:v1.19.4-1.0` - linux; amd64

```console
$ docker pull fluentd@sha256:a6ba6118e38516f7795e4da7d46cd51a9e63d362db938372bb6790c8a43980ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79643930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5c0ba5d48fbcb7ad0df27f5b8dfb400c153431ee34cca11400277ebf911711`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:28 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:30:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:52 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:52 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:37:37 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:37:37 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:37:37 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:37:37 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:37:38 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:37:38 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:37:38 GMT
USER fluent
# Thu, 19 Nov 2026 00:37:38 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:38 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c0d233b9c244ecdd2e36ce656146f257b6612a870955d76bd56bc7b860b5b7`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 1.3 MB (1277399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09aa029a9fe5be2e10b482f8ea2575cade80e16e580d318a6964362bf50b9a98`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7643cbcd023c925b8ab563ff994d7ff18fe763311745bbe9070ce693343e8cc8`  
		Last Modified: Thu, 19 Nov 2026 00:31:02 GMT  
		Size: 42.3 MB (42301146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b812d3462408c2f3c0ae675681964304fb66bc6d26b6765b76e666af70d7c7`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cd26d515db0b5c90f5a7fb28d3cb46eadcfe787df99553af15e229bd56a6d6`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 6.2 MB (6206852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af883b8a3961a2ec753df6eb0f993195244088037ff04b79442362df1c72dd74`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b4bad12defa3bef5b17df837453494f7bfce447db029fe81f3f7243077df99`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8267e33ea51c0b3e753aac36b4b0e8cbbf6b22087828d3977d5ecdb40eb34dca`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:f93f55c6cf5ea8c5d739c9d32b7229da61aa1eea36e3c06c1960de0f4e79eeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b1477451fd8a3aa7dc287538f22ef1359ca1bcd624edcfbfc905ac311aa046`

```dockerfile
```

-	Layers:
	-	`sha256:8bf6576119ad660bc662c70f4a74a5aff0e53f46d01ef8c17419eecf66f9e0f7`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 2.3 MB (2287974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b18d8d86a021f1bd20df3c56cdbe1b2fd267f17925b5ca16c8f2cb08575b25`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:c9c65c0e16496f3f892e6d6db78970a4ff920fb38b3d21d8da4eed35c89c3347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73444280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e490247a4e3749bad736f3ba7894567aed82fba0b397d8b82e2f432c5fcc698`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:27 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:32 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:39:44 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:39:44 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:39:44 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:39:44 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:39:44 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:39:45 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:39:45 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:39:45 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:39:45 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:39:45 GMT
USER fluent
# Thu, 19 Nov 2026 00:39:45 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:39:45 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02fff5e3ba7608211f32e71eb5d05a93b8af5759364849a1b425c3b9e356bec`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 1.3 MB (1261657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2dea708836c2096421fa265d899e636cfa791ad715a7982458a5053b75875d`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ea6fdb5870b44b897e98c315a2533f32870360b82a83fc5a6330c50d3e823c`  
		Last Modified: Thu, 19 Nov 2026 00:31:42 GMT  
		Size: 38.1 MB (38068729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac4bf065c390bfcddf3c458e644c42c8970a4041086a39ceebab958f4203934`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24396b3dc47d81be7aa2762e8eaafdf90dd54f0f227980387b304d6af8bb73c0`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 6.1 MB (6091886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ea0220da4b5d61f2bccec0fa7fe1dc1cbbb0fa5601be66ff014278955f6546`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f999a8944bf2ec995a4c648bc5ca86248bb330d970d04995b0ae64e100fd46d`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a67896cb2f4fcaf0a85a1f7daa6e4889482dfbf82c45a343ea37a25118d82a`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:b39fde1c2eba8376313cb26a98c4433e81858437ac6d5dc5b06a4d7078c66443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8faa62d85586baef2f35b3faf4fb39444e6ae74d61aab5868bdaff0c53c9fd1`

```dockerfile
```

-	Layers:
	-	`sha256:263a83ecd3cf98d0dcba829b9ff1a3831379d3f28cb38a137ea3e0639fe0d716`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 2.3 MB (2290945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbe59e71128520d74d7acd37ba10d92ae60ba6c52e1e2bcc4e270ce9f8844ac4`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:ab5eab2053e90c32580e031ec3255746e2df56fd571572c9b74831c4da4d27ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4d765df5a1e8e10753a4bc1780dbf1475061a13fa36a48131ff761f301d88`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:32:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:32:11 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:34:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:34:56 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:34:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:34:56 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:46:39 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:46:39 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:46:39 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:46:39 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:46:39 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:46:39 GMT
USER fluent
# Thu, 19 Nov 2026 00:46:39 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:46:39 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a787333c86e1e8cd852d3ece3be8d049d310937c4fa529dff540c3766347a21c`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 1.2 MB (1235360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f131fb08996179c1ab43b9a8a9817311a6a3fb6f883d3a08075ca689d8d08f59`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5828b596ee2f1b4cd2d0a4d505ac29bc642af9204007dc2755fc9127609d7524`  
		Last Modified: Thu, 19 Nov 2026 00:35:07 GMT  
		Size: 37.9 MB (37923508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e37c662fad6586aabcefb7e5abd99eb35f397aa5530fe65327e7f81c84a3971`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf5701956afbd2b48fce5c8e4ab73584e349ac16048534d25204ae9165ddb43`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 5.9 MB (5856882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b9b761f101dafd73172bfa3ae34110408ccf565f75e038fb8ef7be06097f22`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ead325f3757f9ca29f5646bb43e2f84cedbb0f8ec6dcd01460e68f230125270`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4a76993bb15df734a124732899b5a1a8c0c2509f69344e124487ba78869026`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:44e26e30865bfbc4f9b7fe870e58b8fda49fd0a14ac3692409fdb9594c7b5c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a897a568877c022e281fea659b1675f3a5e56edd28322becc4205f768a6510f5`

```dockerfile
```

-	Layers:
	-	`sha256:46e41167476fb68d1f1ecf6001b9e411b0904fc4e242fe8af5f9787a6ebdcc2c`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 2.3 MB (2289386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a1c35a251b7b6b9e8bdc10ddd5bb9fd7cb272ca2630ea29f3d7da0015b4b548`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:57477ecdfc85aeee10f20959c9a94f965fbbe2ddb2363a95df680b86dd13701e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79918767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2548dcf519c2782e4cb37f0a0dbb5a4e8f39d0687f889cb763d198f46db2bc`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:20 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:53 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:30:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:53 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:54 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:54 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:37:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:37:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:37:59 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:37:59 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:37:59 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:37:59 GMT
USER fluent
# Thu, 19 Nov 2026 00:37:59 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:59 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2485953d1aadda378ffce752f09ad496eeede04ee7c04802f2049376cde7510d`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 1.3 MB (1259377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213d91730434dbf35963f96b70283c8857935eafc7ef3f0ff83444853079d182`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98edea0b89d19e4ce69441239e8d69e1aab426ecc16491530bc42b4ca6296cde`  
		Last Modified: Thu, 19 Nov 2026 00:31:04 GMT  
		Size: 42.3 MB (42260381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e714dab25afcf79840e521518343f1d2411e6446dcf95c0ce65b1562dc46c375`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93c41bfcd156c9e31a4b36475c42c66be6769800971962b019f38af892f34b5`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 6.2 MB (6182573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654480faaa7252fa529c14d505910d33e09bbc5d0baefdfc8276d9dfb6064be0`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49270f4f25075eeaae5f2e7da249e6a4cbddf90fb9245fecb238ad07105f40e`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7881d73911e447ab2fa2085f6124b6aa617cc7df03a4213b889028c6e7da16b`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:0a7dc875060b2f41f52876455d943a8da0326623dcf71ffb61d0f7c1df5cbd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3727833b9c97ac6aed70fb8d9e3e2c41b5e78adec4c32a23ad763f9e05b2643e`

```dockerfile
```

-	Layers:
	-	`sha256:4d7ccba1c9ae34237c96fcb15f24bbd8c719b325ac209b69730cdc0fe055f4e9`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 2.3 MB (2288238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dac8aabe57c3f8c9725a3ad2f05a9aa07bb6f661a387666059e17379fce45ff1`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; 386

```console
$ docker pull fluentd@sha256:1f33305eed5ba907b11578a08ded2d9cb654f89bb45d00b5ac50b023b00a26a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76666151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb4a09b484f19555ea1ebf852077bcaa57748db5bb5859acc25c22ba6c1ee7d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:38:02 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:38:02 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:38:02 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:38:02 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:38:02 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:38:02 GMT
USER fluent
# Thu, 19 Nov 2026 00:38:02 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:38:02 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340efb2a6396cd99dadc68432ea84fbfec58c65cf91c836e9e46d4b6587ecc3b`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 1.3 MB (1285914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9780df7038b71ecd70444fdd9a5c48775eed41603e4002bfdf60599b144e01`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a1ca82c4fd2309974dc11129523974ffb515180e4a2d86ea916225cd949947`  
		Last Modified: Thu, 19 Nov 2026 00:31:21 GMT  
		Size: 37.8 MB (37827851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed68a2d80049cde96b4fc149b49257e58dcc4191efff6836f54c080e487e559`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68bb34a0d61c04436e1ffd81915d921512076a37280e9e63c8d6bc8bd2ca842`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 6.2 MB (6179233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08802132d47eb8e7ba66831876cb64a3088d1a52fe84fa157d98fee16a03ff9f`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cb36061ca966982611aafd357fa667bded5c8c10575df294a2bba58fd63203`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa271f84d010d71a0bcae588a19af499934f1e89c032e75cad998d20accac28`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:d39a69d42b34c4c82af4c08963eca952af9a28c3c4609aea7615bd32eb63906b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa0e99d011d06c4c5c8e1dd3a7cb7fa323882d51a6eb4448d8f1cabeccc73c6`

```dockerfile
```

-	Layers:
	-	`sha256:9ea18a09ade6230bde051608f3cde9db6a5e619078bc954c59257dcd94575423`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 2.3 MB (2285162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d202a239c01be2ccc725086c62bdc8ec2a59c6a19223f9c7fa470855057956`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 21.3 KB (21290 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; ppc64le

```console
$ docker pull fluentd@sha256:eae1ab5ca33272f64be723b24c04fb114a1a65e529998fc23bfa16391017ab5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81440976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c79bcfc416000ee3b0ca6e44947c8a5c78bf440e69f06e3dd33bd1d72ee7c706`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 14:37:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 14:37:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:46:09 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:46:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:46:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:46:09 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:46:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:46:10 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:46:10 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 01:13:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 01:13:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 01:13:59 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 01:14:00 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 01:14:00 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 01:14:00 GMT
USER fluent
# Thu, 19 Nov 2026 01:14:00 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 01:14:00 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ced07f285afeace22294bc40866408a6c9f66e18f0b7a8e176fcd83279ff53`  
		Last Modified: Thu, 05 Nov 2026 14:44:22 GMT  
		Size: 1.3 MB (1306761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd3396a1aa4da8dc5f51d503ad07e8e0391caaa58909d075a77f028fecc8254`  
		Last Modified: Thu, 05 Nov 2026 14:44:22 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6bfb2002b6d8d33396b1b167704222193fdafd9d3e859cb35181c1b283ff03d`  
		Last Modified: Thu, 19 Nov 2026 00:46:28 GMT  
		Size: 39.7 MB (39744761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc304e9e5b35fb22a2534c644f1c27dbf08abaa8965ea7c22d4257d59155c556`  
		Last Modified: Thu, 19 Nov 2026 00:46:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f6276945ae1f60938c0fadba523a99ead6a3246157e6c2e3c48b44a328e130`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 6.7 MB (6719405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5665636c8775fea6400fd001cec43275296749aa7696b367c558852abfd2e1c3`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655ff342685972e528dd8148620fd080eca18f1d21fc52584b49af5631f8a505`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe4615a2122d33138c35b78d08ef16eb9e30596211d5caa2fbfd935b97fedf5`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:7357b7923438bb07d5ac0118a867bee2de62dc6e4e1cf3e5dd0649302925cf08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4870e8371a4eb93384f1838df5361b654110c28374f849de0e3d47361521adb0`

```dockerfile
```

-	Layers:
	-	`sha256:553fe8733dc99d9609111de3fdbd677878b7351e132a40217d0d3d56a18acfe5`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 2.3 MB (2291509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0472e669f9bd1c3609df6391176b9f989093f831278bf797242d9ffe4e2508c8`  
		Last Modified: Thu, 19 Nov 2026 01:14:16 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; s390x

```console
$ docker pull fluentd@sha256:f2c1aa9723070bc565c98a683ed16833b6de337ca1b40dfbc8ee7097e265b0d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77179170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c588b57466cd3e603d7d1034435f88a376cad64af176005d8772e442ca61eb`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:38:17 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:49:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:49:05 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:49:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:49:05 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 01:13:09 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 01:13:09 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 01:13:09 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 01:13:10 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 01:13:10 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 01:13:10 GMT
USER fluent
# Thu, 19 Nov 2026 01:13:10 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 01:13:10 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553503a218f5a1ad161f0ba46cc116563f70551543f50f7d4a27a0156401f1c7`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 1.3 MB (1292087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b76c7b7b2a9fb89893dea3a692ed7b069edfeac2f1df8ce7b4b4ad2a661f38`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f203a3095218dbf8e23be9d884e328a76f45ea43fb5da43aa8916acd204ee73`  
		Last Modified: Thu, 19 Nov 2026 00:49:29 GMT  
		Size: 39.4 MB (39390873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a75ec353e2cf2f7189507b31b49500692cec02675a556c43c1d61c0893486e`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde0805020b2dea64364b03fcdd0668164ed76d2ee2d618747ecbadee69e1df3`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 6.6 MB (6569698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e15dc35e99781c9264b5b49caf637f9253d9b22f3707a95605057e61f091580`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d1295889c7172cc13a05576462dc5ea5766fc14d5dadde4831b3594ed8a92a`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7b11384d2c84aec915a5598cb8893b243a31e20953c919794f6229c06ef2f3`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:1a974dc6eaef1f3ebef359e2b43216d45b08fcc75ec1355edd4953e7f63c9bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6fc5257da902c2f31f277ad0d08bf363bb341b07a17b7e88a29c0e3b55603b`

```dockerfile
```

-	Layers:
	-	`sha256:0bbf733a204dfd6c24a15c3b88c61e413f40b6cf331d39e6a51088765f30752b`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 2.3 MB (2289419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:352aa3c0b7f0c43fe882af4a78df87a55d41854c7838e8cb1a193e1974cad804`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

## `fluentd:v1.19.4-debian-1.0`

```console
$ docker pull fluentd@sha256:af10e6840bada3ad158e1bc7dd05859b9a06ed0b89ecfe91877e2c9f9162fefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `fluentd:v1.19.4-debian-1.0` - linux; amd64

```console
$ docker pull fluentd@sha256:a6ba6118e38516f7795e4da7d46cd51a9e63d362db938372bb6790c8a43980ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79643930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5c0ba5d48fbcb7ad0df27f5b8dfb400c153431ee34cca11400277ebf911711`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:28 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:30:52 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:30:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:52 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:52 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:52 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:37:37 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:37:37 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:37:37 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:37:37 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:37:38 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:37:38 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:37:38 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:37:38 GMT
USER fluent
# Thu, 19 Nov 2026 00:37:38 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:38 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c0d233b9c244ecdd2e36ce656146f257b6612a870955d76bd56bc7b860b5b7`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 1.3 MB (1277399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09aa029a9fe5be2e10b482f8ea2575cade80e16e580d318a6964362bf50b9a98`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7643cbcd023c925b8ab563ff994d7ff18fe763311745bbe9070ce693343e8cc8`  
		Last Modified: Thu, 19 Nov 2026 00:31:02 GMT  
		Size: 42.3 MB (42301146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b812d3462408c2f3c0ae675681964304fb66bc6d26b6765b76e666af70d7c7`  
		Last Modified: Thu, 19 Nov 2026 00:31:01 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cd26d515db0b5c90f5a7fb28d3cb46eadcfe787df99553af15e229bd56a6d6`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 6.2 MB (6206852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af883b8a3961a2ec753df6eb0f993195244088037ff04b79442362df1c72dd74`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b4bad12defa3bef5b17df837453494f7bfce447db029fe81f3f7243077df99`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8267e33ea51c0b3e753aac36b4b0e8cbbf6b22087828d3977d5ecdb40eb34dca`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:f93f55c6cf5ea8c5d739c9d32b7229da61aa1eea36e3c06c1960de0f4e79eeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b1477451fd8a3aa7dc287538f22ef1359ca1bcd624edcfbfc905ac311aa046`

```dockerfile
```

-	Layers:
	-	`sha256:8bf6576119ad660bc662c70f4a74a5aff0e53f46d01ef8c17419eecf66f9e0f7`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 2.3 MB (2287974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b18d8d86a021f1bd20df3c56cdbe1b2fd267f17925b5ca16c8f2cb08575b25`  
		Last Modified: Thu, 19 Nov 2026 00:37:46 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:c9c65c0e16496f3f892e6d6db78970a4ff920fb38b3d21d8da4eed35c89c3347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73444280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e490247a4e3749bad736f3ba7894567aed82fba0b397d8b82e2f432c5fcc698`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:27 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:32 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:32 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:32 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:39:44 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:39:44 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:39:44 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:39:44 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:39:44 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:39:45 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:39:45 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:39:45 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:39:45 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:39:45 GMT
USER fluent
# Thu, 19 Nov 2026 00:39:45 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:39:45 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02fff5e3ba7608211f32e71eb5d05a93b8af5759364849a1b425c3b9e356bec`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 1.3 MB (1261657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2dea708836c2096421fa265d899e636cfa791ad715a7982458a5053b75875d`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ea6fdb5870b44b897e98c315a2533f32870360b82a83fc5a6330c50d3e823c`  
		Last Modified: Thu, 19 Nov 2026 00:31:42 GMT  
		Size: 38.1 MB (38068729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac4bf065c390bfcddf3c458e644c42c8970a4041086a39ceebab958f4203934`  
		Last Modified: Thu, 19 Nov 2026 00:31:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24396b3dc47d81be7aa2762e8eaafdf90dd54f0f227980387b304d6af8bb73c0`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 6.1 MB (6091886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ea0220da4b5d61f2bccec0fa7fe1dc1cbbb0fa5601be66ff014278955f6546`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f999a8944bf2ec995a4c648bc5ca86248bb330d970d04995b0ae64e100fd46d`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a67896cb2f4fcaf0a85a1f7daa6e4889482dfbf82c45a343ea37a25118d82a`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:b39fde1c2eba8376313cb26a98c4433e81858437ac6d5dc5b06a4d7078c66443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8faa62d85586baef2f35b3faf4fb39444e6ae74d61aab5868bdaff0c53c9fd1`

```dockerfile
```

-	Layers:
	-	`sha256:263a83ecd3cf98d0dcba829b9ff1a3831379d3f28cb38a137ea3e0639fe0d716`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 2.3 MB (2290945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbe59e71128520d74d7acd37ba10d92ae60ba6c52e1e2bcc4e270ce9f8844ac4`  
		Last Modified: Thu, 19 Nov 2026 00:39:53 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:ab5eab2053e90c32580e031ec3255746e2df56fd571572c9b74831c4da4d27ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4d765df5a1e8e10753a4bc1780dbf1475061a13fa36a48131ff761f301d88`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:32:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:32:11 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:34:56 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:34:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:34:56 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:34:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:34:56 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:34:56 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:46:39 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:46:39 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:46:39 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:46:39 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:46:39 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:46:39 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:46:39 GMT
USER fluent
# Thu, 19 Nov 2026 00:46:39 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:46:39 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a787333c86e1e8cd852d3ece3be8d049d310937c4fa529dff540c3766347a21c`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 1.2 MB (1235360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f131fb08996179c1ab43b9a8a9817311a6a3fb6f883d3a08075ca689d8d08f59`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5828b596ee2f1b4cd2d0a4d505ac29bc642af9204007dc2755fc9127609d7524`  
		Last Modified: Thu, 19 Nov 2026 00:35:07 GMT  
		Size: 37.9 MB (37923508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e37c662fad6586aabcefb7e5abd99eb35f397aa5530fe65327e7f81c84a3971`  
		Last Modified: Thu, 19 Nov 2026 00:35:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf5701956afbd2b48fce5c8e4ab73584e349ac16048534d25204ae9165ddb43`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 5.9 MB (5856882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b9b761f101dafd73172bfa3ae34110408ccf565f75e038fb8ef7be06097f22`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ead325f3757f9ca29f5646bb43e2f84cedbb0f8ec6dcd01460e68f230125270`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4a76993bb15df734a124732899b5a1a8c0c2509f69344e124487ba78869026`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:44e26e30865bfbc4f9b7fe870e58b8fda49fd0a14ac3692409fdb9594c7b5c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a897a568877c022e281fea659b1675f3a5e56edd28322becc4205f768a6510f5`

```dockerfile
```

-	Layers:
	-	`sha256:46e41167476fb68d1f1ecf6001b9e411b0904fc4e242fe8af5f9787a6ebdcc2c`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 2.3 MB (2289386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a1c35a251b7b6b9e8bdc10ddd5bb9fd7cb272ca2630ea29f3d7da0015b4b548`  
		Last Modified: Thu, 19 Nov 2026 00:46:47 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:57477ecdfc85aeee10f20959c9a94f965fbbe2ddb2363a95df680b86dd13701e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79918767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2548dcf519c2782e4cb37f0a0dbb5a4e8f39d0687f889cb763d198f46db2bc`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:20 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:53 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:30:53 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:30:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:53 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:54 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:54 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:37:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:37:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:37:59 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:37:59 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:37:59 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:37:59 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:37:59 GMT
USER fluent
# Thu, 19 Nov 2026 00:37:59 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:37:59 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2485953d1aadda378ffce752f09ad496eeede04ee7c04802f2049376cde7510d`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 1.3 MB (1259377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213d91730434dbf35963f96b70283c8857935eafc7ef3f0ff83444853079d182`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98edea0b89d19e4ce69441239e8d69e1aab426ecc16491530bc42b4ca6296cde`  
		Last Modified: Thu, 19 Nov 2026 00:31:04 GMT  
		Size: 42.3 MB (42260381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e714dab25afcf79840e521518343f1d2411e6446dcf95c0ce65b1562dc46c375`  
		Last Modified: Thu, 19 Nov 2026 00:31:03 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93c41bfcd156c9e31a4b36475c42c66be6769800971962b019f38af892f34b5`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 6.2 MB (6182573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654480faaa7252fa529c14d505910d33e09bbc5d0baefdfc8276d9dfb6064be0`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49270f4f25075eeaae5f2e7da249e6a4cbddf90fb9245fecb238ad07105f40e`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7881d73911e447ab2fa2085f6124b6aa617cc7df03a4213b889028c6e7da16b`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:0a7dc875060b2f41f52876455d943a8da0326623dcf71ffb61d0f7c1df5cbd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3727833b9c97ac6aed70fb8d9e3e2c41b5e78adec4c32a23ad763f9e05b2643e`

```dockerfile
```

-	Layers:
	-	`sha256:4d7ccba1c9ae34237c96fcb15f24bbd8c719b325ac209b69730cdc0fe055f4e9`  
		Last Modified: Thu, 19 Nov 2026 00:38:08 GMT  
		Size: 2.3 MB (2288238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dac8aabe57c3f8c9725a3ad2f05a9aa07bb6f661a387666059e17379fce45ff1`  
		Last Modified: Thu, 19 Nov 2026 00:38:07 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; 386

```console
$ docker pull fluentd@sha256:1f33305eed5ba907b11578a08ded2d9cb654f89bb45d00b5ac50b023b00a26a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76666151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb4a09b484f19555ea1ebf852077bcaa57748db5bb5859acc25c22ba6c1ee7d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:28:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:28:33 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:31:11 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:31:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:31:11 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:31:11 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:38:02 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 00:38:02 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 00:38:02 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 00:38:02 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 00:38:02 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 00:38:02 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 00:38:02 GMT
USER fluent
# Thu, 19 Nov 2026 00:38:02 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 00:38:02 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340efb2a6396cd99dadc68432ea84fbfec58c65cf91c836e9e46d4b6587ecc3b`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 1.3 MB (1285914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9780df7038b71ecd70444fdd9a5c48775eed41603e4002bfdf60599b144e01`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a1ca82c4fd2309974dc11129523974ffb515180e4a2d86ea916225cd949947`  
		Last Modified: Thu, 19 Nov 2026 00:31:21 GMT  
		Size: 37.8 MB (37827851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed68a2d80049cde96b4fc149b49257e58dcc4191efff6836f54c080e487e559`  
		Last Modified: Thu, 19 Nov 2026 00:31:20 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68bb34a0d61c04436e1ffd81915d921512076a37280e9e63c8d6bc8bd2ca842`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 6.2 MB (6179233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08802132d47eb8e7ba66831876cb64a3088d1a52fe84fa157d98fee16a03ff9f`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cb36061ca966982611aafd357fa667bded5c8c10575df294a2bba58fd63203`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa271f84d010d71a0bcae588a19af499934f1e89c032e75cad998d20accac28`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:d39a69d42b34c4c82af4c08963eca952af9a28c3c4609aea7615bd32eb63906b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa0e99d011d06c4c5c8e1dd3a7cb7fa323882d51a6eb4448d8f1cabeccc73c6`

```dockerfile
```

-	Layers:
	-	`sha256:9ea18a09ade6230bde051608f3cde9db6a5e619078bc954c59257dcd94575423`  
		Last Modified: Thu, 19 Nov 2026 00:38:10 GMT  
		Size: 2.3 MB (2285162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d202a239c01be2ccc725086c62bdc8ec2a59c6a19223f9c7fa470855057956`  
		Last Modified: Thu, 19 Nov 2026 00:38:09 GMT  
		Size: 21.3 KB (21290 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; ppc64le

```console
$ docker pull fluentd@sha256:eae1ab5ca33272f64be723b24c04fb114a1a65e529998fc23bfa16391017ab5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81440976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c79bcfc416000ee3b0ca6e44947c8a5c78bf440e69f06e3dd33bd1d72ee7c706`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 14:37:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 14:37:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:46:09 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:46:09 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:46:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:46:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:46:09 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:46:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:46:10 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:46:10 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 01:13:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 01:13:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 01:13:59 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 01:14:00 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 01:14:00 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 01:14:00 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 01:14:00 GMT
USER fluent
# Thu, 19 Nov 2026 01:14:00 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 01:14:00 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ced07f285afeace22294bc40866408a6c9f66e18f0b7a8e176fcd83279ff53`  
		Last Modified: Thu, 05 Nov 2026 14:44:22 GMT  
		Size: 1.3 MB (1306761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd3396a1aa4da8dc5f51d503ad07e8e0391caaa58909d075a77f028fecc8254`  
		Last Modified: Thu, 05 Nov 2026 14:44:22 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6bfb2002b6d8d33396b1b167704222193fdafd9d3e859cb35181c1b283ff03d`  
		Last Modified: Thu, 19 Nov 2026 00:46:28 GMT  
		Size: 39.7 MB (39744761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc304e9e5b35fb22a2534c644f1c27dbf08abaa8965ea7c22d4257d59155c556`  
		Last Modified: Thu, 19 Nov 2026 00:46:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f6276945ae1f60938c0fadba523a99ead6a3246157e6c2e3c48b44a328e130`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 6.7 MB (6719405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5665636c8775fea6400fd001cec43275296749aa7696b367c558852abfd2e1c3`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655ff342685972e528dd8148620fd080eca18f1d21fc52584b49af5631f8a505`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe4615a2122d33138c35b78d08ef16eb9e30596211d5caa2fbfd935b97fedf5`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:7357b7923438bb07d5ac0118a867bee2de62dc6e4e1cf3e5dd0649302925cf08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4870e8371a4eb93384f1838df5361b654110c28374f849de0e3d47361521adb0`

```dockerfile
```

-	Layers:
	-	`sha256:553fe8733dc99d9609111de3fdbd677878b7351e132a40217d0d3d56a18acfe5`  
		Last Modified: Thu, 19 Nov 2026 01:14:17 GMT  
		Size: 2.3 MB (2291509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0472e669f9bd1c3609df6391176b9f989093f831278bf797242d9ffe4e2508c8`  
		Last Modified: Thu, 19 Nov 2026 01:14:16 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; s390x

```console
$ docker pull fluentd@sha256:f2c1aa9723070bc565c98a683ed16833b6de337ca1b40dfbc8ee7097e265b0d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77179170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c588b57466cd3e603d7d1034435f88a376cad64af176005d8772e442ca61eb`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 00:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 00:38:17 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_VERSION=3.4.13
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Thu, 19 Nov 2026 00:49:05 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Thu, 19 Nov 2026 00:49:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:49:05 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:49:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:49:05 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:49:05 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 01:13:09 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 19 Nov 2026 01:13:09 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 19 Nov 2026 01:13:09 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 19 Nov 2026 01:13:10 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 19 Nov 2026 01:13:10 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 19 Nov 2026 01:13:10 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 19 Nov 2026 01:13:10 GMT
USER fluent
# Thu, 19 Nov 2026 01:13:10 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 19 Nov 2026 01:13:10 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553503a218f5a1ad161f0ba46cc116563f70551543f50f7d4a27a0156401f1c7`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 1.3 MB (1292087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b76c7b7b2a9fb89893dea3a692ed7b069edfeac2f1df8ce7b4b4ad2a661f38`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f203a3095218dbf8e23be9d884e328a76f45ea43fb5da43aa8916acd204ee73`  
		Last Modified: Thu, 19 Nov 2026 00:49:29 GMT  
		Size: 39.4 MB (39390873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a75ec353e2cf2f7189507b31b49500692cec02675a556c43c1d61c0893486e`  
		Last Modified: Thu, 19 Nov 2026 00:49:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde0805020b2dea64364b03fcdd0668164ed76d2ee2d618747ecbadee69e1df3`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 6.6 MB (6569698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e15dc35e99781c9264b5b49caf637f9253d9b22f3707a95605057e61f091580`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d1295889c7172cc13a05576462dc5ea5766fc14d5dadde4831b3594ed8a92a`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7b11384d2c84aec915a5598cb8893b243a31e20953c919794f6229c06ef2f3`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:1a974dc6eaef1f3ebef359e2b43216d45b08fcc75ec1355edd4953e7f63c9bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6fc5257da902c2f31f277ad0d08bf363bb341b07a17b7e88a29c0e3b55603b`

```dockerfile
```

-	Layers:
	-	`sha256:0bbf733a204dfd6c24a15c3b88c61e413f40b6cf331d39e6a51088765f30752b`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 2.3 MB (2289419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:352aa3c0b7f0c43fe882af4a78df87a55d41854c7838e8cb1a193e1974cad804`  
		Last Modified: Thu, 19 Nov 2026 01:13:35 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json
