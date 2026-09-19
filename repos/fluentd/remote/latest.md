## `fluentd:latest`

```console
$ docker pull fluentd@sha256:c9f555fd1923e80ff4ae750864db1302b6883e35a6c204803e9be842f7c60cec
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
$ docker pull fluentd@sha256:9fa4ae6d017ed4edcb8ca920802a02d8fc63a219760c69a4306609db654259ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79394584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45afbe0a2e33295e9892540c4e21f261762f04eb4e972ade2698945507e82c9`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:08:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:08:03 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Sat, 19 Sep 2026 01:10:13 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:10:13 GMT
ENV RUBY_VERSION=3.4.10
# Sat, 19 Sep 2026 01:10:13 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Sat, 19 Sep 2026 01:10:13 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Sat, 19 Sep 2026 01:10:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Sat, 19 Sep 2026 01:10:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 19 Sep 2026 01:10:13 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 19 Sep 2026 01:10:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:10:13 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Sat, 19 Sep 2026 01:10:13 GMT
CMD ["irb"]
# Sat, 19 Sep 2026 01:43:09 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 19 Sep 2026 01:43:09 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Sat, 19 Sep 2026 01:43:09 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Sat, 19 Sep 2026 01:43:09 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Sat, 19 Sep 2026 01:43:09 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Sat, 19 Sep 2026 01:43:09 GMT
COPY entrypoint.sh /bin/ # buildkit
# Sat, 19 Sep 2026 01:43:09 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 19 Sep 2026 01:43:09 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 19 Sep 2026 01:43:09 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Sat, 19 Sep 2026 01:43:09 GMT
USER fluent
# Sat, 19 Sep 2026 01:43:09 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 19 Sep 2026 01:43:09 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d056276a8ddda594c12a00c59f402ac56cdb02d334f3ff60ae2e0630e09ac0fb`  
		Last Modified: Sat, 19 Sep 2026 01:10:21 GMT  
		Size: 1.3 MB (1280871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c69855049b0e60ae314c1552716d8ffb9ed6bd82c388a831ce924d1cfa54635`  
		Last Modified: Sat, 19 Sep 2026 01:10:21 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3906e1de0ba8935db212a03e44085181f1b0bd6518d36c3b21ed40633ac43de3`  
		Last Modified: Sat, 19 Sep 2026 01:10:22 GMT  
		Size: 42.2 MB (42163780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e652de9281783fd75733e192a2d1491ec8e937891fa6cc88f822c91e0b355a9`  
		Last Modified: Sat, 19 Sep 2026 01:10:21 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cedef35b8d3cb4840a74f71f1c6a11e8760637bc81b80d0f6f994bf1ee6a6bd`  
		Last Modified: Sat, 19 Sep 2026 01:43:18 GMT  
		Size: 6.1 MB (6117126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c97caa57910aa09db5a8b36f0ee255329227bb07d7476f3f5472e2eb6c2704`  
		Last Modified: Sat, 19 Sep 2026 01:43:18 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f009b2146c6989c4ffce9d7540cd60b287599de2d1a80a1476b623b559acf3e5`  
		Last Modified: Sat, 19 Sep 2026 01:43:18 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860a391b0432daba5c4df846d3a83f0501063f95c02da8b7d7af4f1c3294f5ed`  
		Last Modified: Sat, 19 Sep 2026 01:43:18 GMT  
		Size: 477.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:f4d9f2768a53f83d0ece2b212a3953d53bdc732d8ed5703ff8a6e488c0960e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def99ae9163a051d8b91de6d892dfca992776797c740154f89bceff6740831d6`

```dockerfile
```

-	Layers:
	-	`sha256:eb78b06cd582908733b93d9a6c54f79ab6ab95897252545e137e751013b221aa`  
		Last Modified: Sat, 19 Sep 2026 01:43:18 GMT  
		Size: 2.3 MB (2287872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:944ec52981edf1bbe86f2fbfb189c3f77500b2fa0aa5479cd6c6d625cc704466`  
		Last Modified: Sat, 19 Sep 2026 01:43:18 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:2a0900af412584446530fead4edd2e1e368feb8a13e847df5d24f664fecfa857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84147257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe68a0d5dca6051188398734e903ed4c559e8ac32cb5309b08529e040c6fc94c`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Thu, 17 Sep 2026 18:49:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 17 Sep 2026 18:49:09 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 17 Sep 2026 18:52:18 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 18:52:18 GMT
ENV RUBY_VERSION=3.4.10
# Thu, 17 Sep 2026 18:52:18 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Thu, 17 Sep 2026 18:52:18 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Thu, 17 Sep 2026 18:52:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 17 Sep 2026 18:52:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Sep 2026 18:52:18 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Sep 2026 18:52:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:52:18 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 17 Sep 2026 18:52:18 GMT
CMD ["irb"]
# Thu, 17 Sep 2026 19:14:47 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 17 Sep 2026 19:14:47 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Thu, 17 Sep 2026 19:14:47 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 17 Sep 2026 19:14:47 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 17 Sep 2026 19:14:47 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 17 Sep 2026 19:14:47 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 17 Sep 2026 19:14:47 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 17 Sep 2026 19:14:47 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 17 Sep 2026 19:14:47 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 17 Sep 2026 19:14:47 GMT
USER fluent
# Thu, 17 Sep 2026 19:14:47 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 17 Sep 2026 19:14:47 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db9d96747a08d16ff49617b40f9aa41d999adf734e70b59f4e31bf15399fd88`  
		Last Modified: Thu, 17 Sep 2026 18:52:28 GMT  
		Size: 3.6 MB (3645989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0819d9ab4a1fbfacb48e9007d785c09dc1cb81acf2cbd80966374c57a2846dc8`  
		Last Modified: Thu, 17 Sep 2026 18:51:59 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f56b5fa7ee1927cb823a236d1a89bd861aeb955942708e02dde53934fddaa9b`  
		Last Modified: Thu, 17 Sep 2026 18:52:29 GMT  
		Size: 46.5 MB (46522099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb88d7620946752691ff9c38815e99d8050ace7edeffa997aefbc16b5d44a74`  
		Last Modified: Thu, 17 Sep 2026 18:52:28 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8863d414236fe1e707f972f44255448405c8861462507856ca7eaab62fa229`  
		Last Modified: Thu, 17 Sep 2026 19:14:56 GMT  
		Size: 6.0 MB (6007826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe17426b0ce21ab21190cbd23fe62e74fd2775e99c9c63109e664ffe016f3317`  
		Last Modified: Thu, 17 Sep 2026 19:14:55 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d78299d8041ac683279cb04b8d611f89cb21349f7f331de78cf7b9051a44f05`  
		Last Modified: Thu, 17 Sep 2026 19:14:55 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcde55def928c02c03ecbfb79aa0bae705654821a4479b4e40bdb8f4d0008548`  
		Last Modified: Thu, 17 Sep 2026 19:14:56 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:c49278096f10fa551c67d0e4dac46b5f2088be84154bac9364546ab89e39eaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eec1e03ef1c2b784f6e1962a132324cdb315f73f9383da384853c6dfd7fac52`

```dockerfile
```

-	Layers:
	-	`sha256:3398e8be9cd59e1389008ed280f97101c4b9f1d30f3df88b728fa441610cf9a5`  
		Last Modified: Thu, 17 Sep 2026 19:14:56 GMT  
		Size: 2.3 MB (2285169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a093963cc0c6cc2294d4dfabd1e671ad8893f398f319fdc557686e520ca83dc3`  
		Last Modified: Thu, 17 Sep 2026 19:14:55 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:7910c0414d1b63a3373fb45d6c059fd8325313c1af0f301a9db3473e4f83ff23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81389974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10f0cd8121546b452e8dec9afceae75e42113d97fc473c25165b56f52bf10e0`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Thu, 17 Sep 2026 19:30:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 17 Sep 2026 19:30:44 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 17 Sep 2026 19:33:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 19:33:34 GMT
ENV RUBY_VERSION=3.4.10
# Thu, 17 Sep 2026 19:33:34 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Thu, 17 Sep 2026 19:33:34 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Thu, 17 Sep 2026 19:33:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 17 Sep 2026 19:33:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Sep 2026 19:33:34 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Sep 2026 19:33:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 19:33:34 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 17 Sep 2026 19:33:34 GMT
CMD ["irb"]
# Thu, 17 Sep 2026 20:12:43 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 17 Sep 2026 20:12:43 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Thu, 17 Sep 2026 20:12:43 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 17 Sep 2026 20:12:43 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 17 Sep 2026 20:12:43 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 17 Sep 2026 20:12:43 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 17 Sep 2026 20:12:43 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 17 Sep 2026 20:12:43 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 17 Sep 2026 20:12:43 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 17 Sep 2026 20:12:43 GMT
USER fluent
# Thu, 17 Sep 2026 20:12:43 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 17 Sep 2026 20:12:43 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659b5cfcedd04717a6adadc2d8f25e82650618f0248e1beff6d0ee7f1d7f9b4a`  
		Last Modified: Thu, 17 Sep 2026 19:33:44 GMT  
		Size: 3.4 MB (3448869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d29e4c98fcafb7840114daa899bb68d4d0c923a16a9ed24f0452096954d03f`  
		Last Modified: Thu, 17 Sep 2026 19:33:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c70546706793a6a20037d8c9a31f30f57bf03751bca71758e903b2a7d28eda`  
		Last Modified: Thu, 17 Sep 2026 19:33:45 GMT  
		Size: 45.9 MB (45946967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb23e6a241a9b2b7d95ebeda7dd4e74cea4d718703c2f3df2cef744b340a70c3`  
		Last Modified: Thu, 17 Sep 2026 19:33:44 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47545448eb7a8852ef42bd3508242e1ad5390a49280bc62c331aa06414eba4ae`  
		Last Modified: Thu, 17 Sep 2026 20:12:51 GMT  
		Size: 5.8 MB (5772597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80694f6fb5f9df9aaa8beee22770bd029cd412367042fcb2ebea7b92ecab2c2`  
		Last Modified: Thu, 17 Sep 2026 20:12:51 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b625dfb68ed8c411091bb54e54bb86156d09ce424787fcc5fea77d8ff6160574`  
		Last Modified: Thu, 17 Sep 2026 20:12:51 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03678c5b895824ac711f1523f372c09b33aba0b682380a655d868f47fbfafa0e`  
		Last Modified: Thu, 17 Sep 2026 20:12:51 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:7dbc4ed4b81834647b266d05167e5510c2d9c8126757f5cfa9111aa3ead026dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69abc31d26731f3319c361b3f44f8efba644670b2bbbb711d2582a9d9d370e85`

```dockerfile
```

-	Layers:
	-	`sha256:e19d116ae59c95914c354da2f7ca153fddfbd2a22d54b87baab48cd58858ef98`  
		Last Modified: Thu, 17 Sep 2026 20:12:51 GMT  
		Size: 2.3 MB (2283610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c6659e6640b9868c3a916b02843ad09f6ce00e333b2d20c11e171badff060fa`  
		Last Modified: Thu, 17 Sep 2026 20:12:51 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:a3a7b8657b826163e1fb753269ee45d9595ffa6ed9e8f269e95f77a78588953f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79678292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fa3f9754aa6eea987cf5510f40cd1b88b4e9fb3acc2b21c2429c985a254c1c`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:14:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:14:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Sat, 19 Sep 2026 01:17:05 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:17:05 GMT
ENV RUBY_VERSION=3.4.10
# Sat, 19 Sep 2026 01:17:05 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Sat, 19 Sep 2026 01:17:05 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Sat, 19 Sep 2026 01:17:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Sat, 19 Sep 2026 01:17:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 19 Sep 2026 01:17:05 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 19 Sep 2026 01:17:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:17:05 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Sat, 19 Sep 2026 01:17:05 GMT
CMD ["irb"]
# Sat, 19 Sep 2026 02:20:39 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 19 Sep 2026 02:20:39 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Sat, 19 Sep 2026 02:20:39 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Sat, 19 Sep 2026 02:20:39 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Sat, 19 Sep 2026 02:20:39 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Sat, 19 Sep 2026 02:20:39 GMT
COPY entrypoint.sh /bin/ # buildkit
# Sat, 19 Sep 2026 02:20:39 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 19 Sep 2026 02:20:39 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 19 Sep 2026 02:20:39 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Sat, 19 Sep 2026 02:20:39 GMT
USER fluent
# Sat, 19 Sep 2026 02:20:39 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 19 Sep 2026 02:20:39 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5c57f747ffb83675a154cedf25970fddcb9eea5572e1641028f06c83473c0c`  
		Last Modified: Sat, 19 Sep 2026 01:17:14 GMT  
		Size: 1.3 MB (1263097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bfd831353badccd720c84f3a25e3de6e4fb05eb05683e7210f437f173c3c12`  
		Last Modified: Sat, 19 Sep 2026 01:17:14 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d967ba697db344c0d648a8c9532ef360697da5c15e51583b42120ad5e844e22`  
		Last Modified: Sat, 19 Sep 2026 01:17:15 GMT  
		Size: 42.1 MB (42132173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32cd95ff9895494ee177619f01ab34c90245c6c4abc290a9a83d67369303b3bc`  
		Last Modified: Sat, 19 Sep 2026 01:17:14 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0d2102a74de820903576c19b84a68974ad9763e4e1482c807f0b6e69c9a022`  
		Last Modified: Sat, 19 Sep 2026 02:20:48 GMT  
		Size: 6.1 MB (6090938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db13b6b6b8020ac3326060f60f5cfc240694e3a1c324f26ffb99f60ba597e9d`  
		Last Modified: Sat, 19 Sep 2026 02:20:48 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38be7e0725be70731fc7ca8a3f96721174bd4304decd1d040c78a8510b33bbc6`  
		Last Modified: Sat, 19 Sep 2026 02:20:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5252d59b1cfdb586a952fc09579ede30a599c8d846644e95bc2ba162af3d9206`  
		Last Modified: Sat, 19 Sep 2026 02:20:48 GMT  
		Size: 477.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:757e6e966dfe7ce50dd7e507044971fa9a45ce02c3ca0895e21bed49d04874a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bf96dfd434ab47f9ba343a358c3dbd9c565aa62c7a1423e97df31568a4cc15`

```dockerfile
```

-	Layers:
	-	`sha256:ebb0c7e616ccf2157b75ab60c3c3d9e2061c64a39c6b96de005a5a1257ceeece`  
		Last Modified: Sat, 19 Sep 2026 02:20:48 GMT  
		Size: 2.3 MB (2288136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea935b827238a8f9a91dc4ff1a7eba85ea0526ae3864955ba2ee3b21846a364f`  
		Last Modified: Sat, 19 Sep 2026 02:20:48 GMT  
		Size: 21.5 KB (21459 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; 386

```console
$ docker pull fluentd@sha256:5819237962f872878227ad1041703b1a68c635a02ace019b327260bc9d98b683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76415501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9136a6511b542d63a15dcff877f70cd80ebf0017f746c156c144b42914e37ae9`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:11:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:11:31 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Sat, 19 Sep 2026 01:14:00 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:14:00 GMT
ENV RUBY_VERSION=3.4.10
# Sat, 19 Sep 2026 01:14:00 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Sat, 19 Sep 2026 01:14:00 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Sat, 19 Sep 2026 01:14:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Sat, 19 Sep 2026 01:14:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 19 Sep 2026 01:14:00 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 19 Sep 2026 01:14:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:00 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Sat, 19 Sep 2026 01:14:00 GMT
CMD ["irb"]
# Sat, 19 Sep 2026 01:53:24 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 19 Sep 2026 01:53:24 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Sat, 19 Sep 2026 01:53:24 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Sat, 19 Sep 2026 01:53:24 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Sat, 19 Sep 2026 01:53:24 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Sat, 19 Sep 2026 01:53:24 GMT
COPY entrypoint.sh /bin/ # buildkit
# Sat, 19 Sep 2026 01:53:24 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 19 Sep 2026 01:53:24 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 19 Sep 2026 01:53:24 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Sat, 19 Sep 2026 01:53:24 GMT
USER fluent
# Sat, 19 Sep 2026 01:53:24 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 19 Sep 2026 01:53:24 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe29b69c7a1179e240fc4273202eb8cf7a5d8dbd39d85b05ad5c923dd60bb95`  
		Last Modified: Sat, 19 Sep 2026 01:14:08 GMT  
		Size: 1.3 MB (1288568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bea444ebf0079e253fe24e4132557549428863ac488c69d88d4d9bbb387b601c`  
		Last Modified: Sat, 19 Sep 2026 01:14:08 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df27d831bee8a8aa73e29709ed0fb95097351cb578a887a6e5b660069f59162`  
		Last Modified: Sat, 19 Sep 2026 01:14:09 GMT  
		Size: 37.7 MB (37691979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdccb0cf580ae2f11a5b897e02c09d3ac8b8b082e594a9fc6c3864a66bf44e4`  
		Last Modified: Sat, 19 Sep 2026 01:14:08 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3dceab72f7e7e0969d8068105a14be0d5810ce4c09d30f93c13e13e3bf0189e`  
		Last Modified: Sat, 19 Sep 2026 01:53:32 GMT  
		Size: 6.1 MB (6092164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1644f6f3c6950c24602cbf2606f4a115e4fc8cdac996cd265af4ddb3f6bd9e42`  
		Last Modified: Sat, 19 Sep 2026 01:53:31 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874ac4dbf7d5aa268b1fc6a91b22d572db425ed356b74f2feb85fb2d35392b26`  
		Last Modified: Sat, 19 Sep 2026 01:53:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078543dc70f106fcf5580e65bf84f8f25f17bfd0378aca9080b4f12cce79227c`  
		Last Modified: Sat, 19 Sep 2026 01:53:32 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:4445b156cc610e8d42ef8dcd7726e87ecae848a7ad85d4211442b0b5a4359eaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d47e915ef3067e6ab2dd1a112cec47f9aac81f5409e4f5d54ce716aa915cfc`

```dockerfile
```

-	Layers:
	-	`sha256:c7d0f5fbf1a42cb7a8b3404df91eb65afe3cca55e121bb737e053dbe9f29c031`  
		Last Modified: Sat, 19 Sep 2026 01:53:32 GMT  
		Size: 2.3 MB (2285060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c7cca3ecbd34346d17e5861128a49c3ea87c7cfc5e0b24bbbbb8b2a8167f274`  
		Last Modified: Sat, 19 Sep 2026 01:53:31 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; ppc64le

```console
$ docker pull fluentd@sha256:7da40eec43c6c8b6bc0aee2c7f6e345c16af7ebc319c3b5b41945f501031ce5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94332523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b46b981b56a301aea9f4d1d0ab6ea9e7cbcedb7b6c2dd828086f410929c101`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 16 Sep 2026 04:32:28 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 17 Sep 2026 19:07:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 19:07:45 GMT
ENV RUBY_VERSION=3.4.10
# Thu, 17 Sep 2026 19:07:45 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Thu, 17 Sep 2026 19:07:45 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Thu, 17 Sep 2026 19:07:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 17 Sep 2026 19:07:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Sep 2026 19:07:45 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Sep 2026 19:07:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 19:07:45 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 17 Sep 2026 19:07:45 GMT
CMD ["irb"]
# Thu, 17 Sep 2026 19:41:04 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 17 Sep 2026 19:41:04 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Thu, 17 Sep 2026 19:41:04 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 17 Sep 2026 19:41:04 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 17 Sep 2026 19:41:04 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 17 Sep 2026 19:41:04 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 17 Sep 2026 19:41:04 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 17 Sep 2026 19:41:04 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 17 Sep 2026 19:41:04 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 17 Sep 2026 19:41:04 GMT
USER fluent
# Thu, 17 Sep 2026 19:41:04 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 17 Sep 2026 19:41:04 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629e638e9dce6471f35133ca388b1a75ae0a8534e7739093186aae8b69893a83`  
		Last Modified: Wed, 16 Sep 2026 04:38:15 GMT  
		Size: 4.5 MB (4516453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ec7d8e972b556a61559aa1d115d6975c5e7c5ac9d4b3ed84ae877cea4e0cc8`  
		Last Modified: Wed, 16 Sep 2026 04:38:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed35fa2c6b7ff3a483ed95ed39e9eba9c722c4fb0ae36b5c8073084085849e03`  
		Last Modified: Thu, 17 Sep 2026 19:08:05 GMT  
		Size: 49.6 MB (49569861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fa42af76bb980a8cd74362a7a0fdc49c19bf022faadae5aad4e563b586612c`  
		Last Modified: Thu, 17 Sep 2026 19:08:03 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458573eff3c264f087a0c7a8802b7ea1c80739fa438bad9b74c7e62054c01fbb`  
		Last Modified: Thu, 17 Sep 2026 19:41:26 GMT  
		Size: 6.6 MB (6628350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624911e301d262140643829498592314ef016dbc70aafdc7b07ced6b131c5357`  
		Last Modified: Thu, 17 Sep 2026 19:41:26 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff12046cf9461dc1ce2709ed3857fceeb77f2acc51aa501bf7df7dd75e7658b`  
		Last Modified: Thu, 17 Sep 2026 19:41:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8801449e4dffc73fa8043c8eee5d4e795a1eab38eecf2e028c60f769582d6bcc`  
		Last Modified: Thu, 17 Sep 2026 19:41:26 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:acf5e894626d6bd3f895325b1d9279bf33132603784f1ad46968f75400bbef06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2307114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3394e9d1d0754410db7aaed61725e0e1a7b8533ec5abd3ebcc78b1a938eafe6d`

```dockerfile
```

-	Layers:
	-	`sha256:6e840634294f61f906431fea8baa86d3aa89edf339bd559aec0815f594d3db0d`  
		Last Modified: Thu, 17 Sep 2026 19:41:26 GMT  
		Size: 2.3 MB (2285733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:224225e7ea96ebeafe37842a568d7f5cde13656d85906b71c74b9e935ee4e817`  
		Last Modified: Thu, 17 Sep 2026 19:41:26 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; s390x

```console
$ docker pull fluentd@sha256:df27cbd076a2035b3f81cde580d877e6b545651816ae7398f99abd1c82a0e9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87987478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278e3538a2867b29e468f223b5d651baa9b128815ce6f5ad087d5a68639a56c7`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Thu, 17 Sep 2026 21:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 17 Sep 2026 21:41:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 17 Sep 2026 21:44:29 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:44:29 GMT
ENV RUBY_VERSION=3.4.10
# Thu, 17 Sep 2026 21:44:29 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Thu, 17 Sep 2026 21:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Thu, 17 Sep 2026 21:44:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 17 Sep 2026 21:44:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 17 Sep 2026 21:44:29 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 17 Sep 2026 21:44:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:44:29 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 17 Sep 2026 21:44:29 GMT
CMD ["irb"]
# Fri, 18 Sep 2026 01:49:29 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Fri, 18 Sep 2026 01:49:29 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Fri, 18 Sep 2026 01:49:29 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 18 Sep 2026 01:49:29 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Fri, 18 Sep 2026 01:49:29 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Fri, 18 Sep 2026 01:49:29 GMT
COPY entrypoint.sh /bin/ # buildkit
# Fri, 18 Sep 2026 01:49:29 GMT
ENV FLUENTD_CONF=fluent.conf
# Fri, 18 Sep 2026 01:49:29 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Fri, 18 Sep 2026 01:49:29 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Fri, 18 Sep 2026 01:49:29 GMT
USER fluent
# Fri, 18 Sep 2026 01:49:29 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Fri, 18 Sep 2026 01:49:29 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d6d20d2a7b62244faaecf4c82c868171db96c4f5478d3769be334920b0bc0e`  
		Last Modified: Thu, 17 Sep 2026 21:44:41 GMT  
		Size: 3.9 MB (3908213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6ecf09d66c4c32f71ee52cc3938772e6784cb9ee04ad564499532894f4d9dd`  
		Last Modified: Thu, 17 Sep 2026 21:44:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d35563d9f015f6bc9e4513895a68b20168f16b1eca77ddbc8156eece886f657`  
		Last Modified: Thu, 17 Sep 2026 21:44:44 GMT  
		Size: 47.7 MB (47728303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b34e1e1512f0b3d296318317c95879725a961e289389af9bb918d77c292cdf71`  
		Last Modified: Thu, 17 Sep 2026 21:44:43 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f199ec593cdd3d71d1de528e6219d24650265ada6e41d7dc1fa7ee9f44b0833`  
		Last Modified: Fri, 18 Sep 2026 01:49:42 GMT  
		Size: 6.5 MB (6480851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c90c029ce82831962d63673945ea9505d8977efc2bde9911e3357335a64ca2`  
		Last Modified: Fri, 18 Sep 2026 01:49:42 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117710926e8a21c0d547fa7c03f70b68885a863145590fe5ffbbb238d2327f12`  
		Last Modified: Fri, 18 Sep 2026 01:49:42 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c57b41edf645066c1b8d6ad5bc2c0565044c3d238f8d225f593d9f8cffe9287`  
		Last Modified: Fri, 18 Sep 2026 01:49:42 GMT  
		Size: 477.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:eac2d4326aae545bf84246956e3ec1b87328c29e3e68afeb64b8f009403c80b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2304972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbb2e83dbdb280f26cf9f368594aa0922e3939736e44b61700685bba7ed13802`

```dockerfile
```

-	Layers:
	-	`sha256:f14edbdae070615869e183228faa4f183da917a8c6c7c4ea7e6a172888cd4414`  
		Last Modified: Fri, 18 Sep 2026 01:49:42 GMT  
		Size: 2.3 MB (2283643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de0fb6de58345b97a47fb9bf26c7d87a385ceb8616b1ec7dc6fa0523e6b537c7`  
		Last Modified: Fri, 18 Sep 2026 01:49:42 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json
