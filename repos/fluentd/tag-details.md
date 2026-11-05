<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fluentd`

-	[`fluentd:latest`](#fluentdlatest)
-	[`fluentd:v1.19-1`](#fluentdv119-1)
-	[`fluentd:v1.19-debian-1`](#fluentdv119-debian-1)
-	[`fluentd:v1.19.4-1.0`](#fluentdv1194-10)
-	[`fluentd:v1.19.4-debian-1.0`](#fluentdv1194-debian-10)

## `fluentd:latest`

```console
$ docker pull fluentd@sha256:af03bb935324a58aa6ae0fbad42d982e37ae1038f9bf488db8b44c4c81b7cf7a
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
$ docker pull fluentd@sha256:c28cf99c6fecae7039ebecf53d1530a588cdf5ff934899c9aa604f982effd437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79542109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269f08d8785716a7841ac1add17c3f6ff7bb4487394ca0ef04f040bb865da98a`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:57:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:03:32 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:03:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:03:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:03:33 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:03:33 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:51:27 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:51:27 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:51:27 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:51:28 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:51:28 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:51:28 GMT
USER fluent
# Thu, 05 Nov 2026 08:51:28 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:51:28 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bedd00059ddbba35c4c4f5a39c913085c6e8cf94a2fd77582403704d6467ef`  
		Last Modified: Thu, 05 Nov 2026 08:01:00 GMT  
		Size: 1.3 MB (1277425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752a53c943ba108767b2a27bf9b8fc7feab420c757b99e79751eb3e98a613fc5`  
		Last Modified: Thu, 05 Nov 2026 08:00:59 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33c0a7be74774e23b788cea76c54d7b830089b4e9a6128b626be9e842873ec7`  
		Last Modified: Thu, 05 Nov 2026 08:03:42 GMT  
		Size: 42.2 MB (42199517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055ac52f7b1fca34414ef8a14aa759e70c021bee29172c92171e64b9f9d57d80`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339dd4b3fd9d037b0c4912a22d506feead519fe3e320a8366241f02832f76b46`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 6.2 MB (6206631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9793dd762ec8f4bbfbbed9322211de27a2341075aa946347cafc5f04a207722`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33450337d072d351ebae8b5262b4634c279e32de3203a1dd03d1068a5b00b16f`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c080a8baa96080f55f9b78898817302fa1dda83314327c03f19eea88dbe91bd`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:a167f7f4596cb42caa86a52dae04754d18bc6937d94c66bc1bda3eb8c4e9b147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514bc34c1d69f929d6694ab9ca04762812737a020b4a069cb913a929b76b7780`

```dockerfile
```

-	Layers:
	-	`sha256:766159df1a544acce9adda6588e7b8359aa09a45af3f7c5bbb5172857638db09`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 2.3 MB (2287946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0f55338a99171eaae1e6c4b29ed5649901fe02299b7b0df9826a206300496c`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:1018c80802b4416b4b0cff02a3a3a01ece44b3d1a82e47f4e2a526e82919d759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73351784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b69849d1fcabc901a4f386b274794cd2f8132d075d40b6adcf32e7de2a93c2d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:09 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:03:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:03:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:23:54 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:23:54 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:23:54 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:23:54 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:23:54 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:23:54 GMT
USER fluent
# Thu, 05 Nov 2026 09:23:54 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:23:54 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41127e29af6358990975c216da88cdf076392ed51542fa60633fcaf2968d8e0e`  
		Last Modified: Thu, 05 Nov 2026 08:00:09 GMT  
		Size: 1.3 MB (1261662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a560a06dc1c5a37d251be6b6195472b2e98240df528c1832e156304ad270304`  
		Last Modified: Thu, 05 Nov 2026 08:00:09 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce69423b3f8d272c7b07472b1e21c691dfda2e54ad6d34605e4bbabb0df2ca`  
		Last Modified: Thu, 05 Nov 2026 08:03:36 GMT  
		Size: 38.0 MB (37976408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87b34aee006e10f27a99c2905d7b8453f731b7f4625cb58865dda163420b182`  
		Last Modified: Thu, 05 Nov 2026 08:03:35 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61961e24a26e630b453aac39a0b9edaa12386d7acc77f6fc60836e36c3685e6`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 6.1 MB (6091709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eaaa3271aceb798d3c8744d02536e4013946412297501ae842a3af115d282fa`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c49462303f564c867d1ca254a03b2bfa8931a8383b1695336739407df500ce`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6bf7dc4430d961071af6602b1d78201062b12ee25c690fae2821157d288ab8`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:6a553c1c53b39b9fe46698fb724af005bdfd5a3a8fb682a499fe5a4a856d2c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4e40a406f11e7d3d4db9352882b5f36424c1e1318858a8029385ea167297c3`

```dockerfile
```

-	Layers:
	-	`sha256:cafa02b51c95af9b29fd18d78e5acbf9b5cbd17f724710cec6295ee35ea92991`  
		Last Modified: Thu, 05 Nov 2026 09:24:03 GMT  
		Size: 2.3 MB (2290917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78c1387c6b86e42b3d72278fc4ea6ca0f32937eff1e7d99c577dae394e50d283`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 21.4 KB (21428 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:bc27c84beed7008fa4d450ba600d5a7a83fad1edcc3cec6f534ead89621da66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71206367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09eace41e4d4801701f46ee14c42f4ad9990003e3706101a331c9c5986c44931`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:53:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:53:01 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:53:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:53:01 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:50:13 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:50:13 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:50:13 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:50:13 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:50:13 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:50:13 GMT
USER fluent
# Thu, 05 Nov 2026 09:50:13 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:50:13 GMT
CMD ["fluentd"]
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
	-	`sha256:c1bd6860fc965222e6cb46f6334d605e0fe30dda9e1ee64fd3c19219cea26fed`  
		Last Modified: Thu, 05 Nov 2026 08:53:11 GMT  
		Size: 37.8 MB (37838920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ca1bf4447dc89047dfe380057edd11923d8e6adab92090f8b02f94dbfadab5`  
		Last Modified: Thu, 05 Nov 2026 08:53:10 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48f324919f22ee1708dad7fa3ead2a6f3378685302fefbc6fa93541be62ed31`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 5.9 MB (5856728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93cd47a4fed8488fcd78e3a1f03c205434e2b95e8a8319a1f06e1c2ccb685939`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ee2e5bdcfc4399eaad8cc6098e185326afc568cc76c39ad352e0a654844c87`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac324faaa2590e4244dd1b1bcdc55d633c084573e8decf8fdd1db6e3e426397c`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:d8b972fcf2afb30d95177834b610579ef7888a6cd64c8a2a63ace8a5b8e4b529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525dbcfbd07f0585d1563ce2d11e3cd727d794f6cdee31cc5e8bea6a4cda75a2`

```dockerfile
```

-	Layers:
	-	`sha256:29b362bd2db9197d650a499676e03531099883456e3077296da48c11c4d4c665`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 2.3 MB (2289358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc41d07efbff9a104f75aa18f2a6496a481b9e4b38cfe5769a1cde0dcc7acc8a`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 21.4 KB (21429 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:fc3a7572bd481e3cad558e67c5c9dbe9c4d725d4ec536dea9a784ab735d91e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79810958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb22ce2d86a3245f11bdcf2482c7b18c4766bfcec1239febbebd3ae35ca62b0`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:09:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:09:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:12:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:12:02 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:12:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:12:02 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:51:57 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:51:57 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:51:57 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:51:57 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:51:57 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:51:57 GMT
USER fluent
# Thu, 05 Nov 2026 08:51:57 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:51:57 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36925f936f1549639847b1e40b616c59bddf7576788f6da6126c5a4d4d7459de`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 1.3 MB (1259396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b524b66013a1bfed5ea9ebebf86124156655118e9f3d9e75814b92c8fdc3d99a`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0ac0750d551ba170186c35a82b13aa637fe043e7ac78309bec247be631e48a`  
		Last Modified: Thu, 05 Nov 2026 08:12:13 GMT  
		Size: 42.2 MB (42152736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c914b2642bc947d7a406ed94101143750c996ab716c3878ad523a7e730769fbb`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff57a5f7a2b8347ee7422a91b14a7d49be7679178fef6844c5585cbc7db89d7`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 6.2 MB (6182397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67166c68ea6ba66fb484769ffa1f00f13d88235ed12b85c64b8bf4fc5280a6fc`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa05b633c3ae39950b74d71eb4888f013c1218ffb8bee634e24cb48752ad27f`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fb471b83d57ecbf998adaccaac367642120e6490f4a346f27e39c5d9b93aa4`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:1961bdaed72ed8874b3a7e72990975ba546f11a8528586cfb2c247bae5c04989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e4c39005a8f69d8cff97c2dc7528896efc3dba85df8874d80c30a7cbda809a`

```dockerfile
```

-	Layers:
	-	`sha256:5a737f3a9a1699389bfde501405b76573f1cdcaee2e46084264fc64f0e87955b`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 2.3 MB (2288210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56e1faa1f9f6f72a1fb9c8b6589f0562adc68791cf4f5080984b605e1ca90f86`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; 386

```console
$ docker pull fluentd@sha256:21e7b943d1a8f912524f046bab888cb7598c178818104016ac95eb01848d73dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76570056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da628609defff5be660fcba96880679f66de026f200c9d996e908072c0376256`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:01:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:01:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:07:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:07:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:07:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:07:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:44:21 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:44:21 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:44:21 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:44:21 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:44:21 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:44:21 GMT
USER fluent
# Thu, 05 Nov 2026 08:44:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:44:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead7b5b6109c9cce1aed188a6283e4f2d6cfd04a806e107943b68650cd415fc9`  
		Last Modified: Thu, 05 Nov 2026 08:04:57 GMT  
		Size: 1.3 MB (1285918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654ca1aaa967b21998c6cb0325198178979947caa1c71a7bdce286312fa8e3b2`  
		Last Modified: Thu, 05 Nov 2026 08:04:56 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e1a087b100de0126f63acb0c5f537633d78f8069138bbc1655507f8ee32bf1`  
		Last Modified: Thu, 05 Nov 2026 08:07:35 GMT  
		Size: 37.7 MB (37731729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5997fbc0a37fc09105dadd4045a959f6f2861cf7153494001866c4cc43941d`  
		Last Modified: Thu, 05 Nov 2026 08:07:34 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abde3edf5f87e4877b6435ba557878b34a5bcde8a3df81d7eae353cc8f3fbcd`  
		Last Modified: Thu, 05 Nov 2026 08:44:30 GMT  
		Size: 6.2 MB (6179252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd3855deb1b01cd2239378e3bcf2a22d3b408286531e6d695c352dbe592512`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d781fa596634f6d474fe45ff48a457ec9da3fe1acd31cfebebcf59562af58b31`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777db3053ac39c3774369b8acb34b817fa02247e3e1e4e51d97da899bf31d2c8`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:900f94ade22443b63ecf81a039fcfa6477b9e44a090927fbe7b8a658e445ea51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9afc83e3265de6e1e11cb911d86e56bd20a76a6ce283da3be0d03b1604add7fb`

```dockerfile
```

-	Layers:
	-	`sha256:402dffef7c9e06e4216208d06458cc8675ce1a257144b620ff074dd285ff5299`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 2.3 MB (2285134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c163cbac70f929dd5d57cf354710ea0f247002866187eebb95cc9e0afafda7cb`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; ppc64le

```console
$ docker pull fluentd@sha256:f19c714d5d8d9fde0eee50db822b38ab78383c4cae7a1dd15b8aedfc2ce2f897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81309776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaffe3dc86fa3bda51e22d7ca7d824c724a1dcb424bc27e387597b0fbb831d56`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 08:45:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 08:45:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_VERSION=3.4.12
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Wed, 28 Oct 2026 09:09:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 09:09:50 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 09:09:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:09:50 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
CMD ["irb"]
# Wed, 28 Oct 2026 14:30:53 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 28 Oct 2026 14:30:53 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Wed, 28 Oct 2026 14:30:53 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 14:30:53 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 28 Oct 2026 14:30:54 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 28 Oct 2026 14:30:54 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 28 Oct 2026 14:30:54 GMT
USER fluent
# Wed, 28 Oct 2026 14:30:54 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 28 Oct 2026 14:30:54 GMT
CMD ["fluentd"]
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
	-	`sha256:9681cebcd4328202502cc06d9053c2e1e114b2bbdde90f66696e3e3c9998e851`  
		Last Modified: Wed, 28 Oct 2026 09:10:12 GMT  
		Size: 39.6 MB (39615145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bde37c30a0eafef4ea4b910616d0e74ccae5061ad5c2dac9b6b61674e68f103`  
		Last Modified: Wed, 28 Oct 2026 09:10:11 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1785af96da0e41407a2621aaed330f70be453c7b5e099da15175b5f0b060e9d1`  
		Last Modified: Wed, 28 Oct 2026 14:31:13 GMT  
		Size: 6.7 MB (6719139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249af46561f897d3c9238302489474d6aa9206fb732b990e713479fef83a9d29`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d708e01578f2b55e178ec1407456dbcd35937ef89b4e6b37b6ae35569e634`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af7c728cc3244b21c3ef905f114d01a9c873224c8861c089ffad70c6b8601c4`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:df79aa543637bb344cd3f67b4126fe26590d58554e36fee024fd7d930fc5f0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61dcd86b8548da77fdc649c8d9b90a8ad45f14f6fa8981b3bb93616491a0036`

```dockerfile
```

-	Layers:
	-	`sha256:a436b4bb12d50e88f15e24e5ef4684d56e751af75fdb836210f292fa0536cebd`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 2.3 MB (2291481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31f708a0ae5c9a0b3d8beed93a0a163b2434e49c06146135a6c383c92eb4b996`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; s390x

```console
$ docker pull fluentd@sha256:07ff59e0fbb1b8c41fc93d0878edd721048f1a9fda56c3b713921a4198fea9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77076476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e48beb5c36a0f527488edefaf172c78ed08f3b8a13b5bd08f6279de0cd55e26`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:36:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:36:36 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:38:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:38:51 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:38:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:38:51 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:24:12 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:24:12 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:24:12 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:24:12 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:24:12 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:24:12 GMT
USER fluent
# Thu, 05 Nov 2026 09:24:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:24:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031869a525c3b996f4b344abba9f3f3036fd7b6217e3496c5ffad848c0aa0f55`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 1.3 MB (1292073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5cffdd251850be0781eb7c3ce1595af577dbd87041acd46a3ab18997842697`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792ff507f7a43f90ab8aa3a53beb3d51a73a36b72585d439204c61c22e96d975`  
		Last Modified: Thu, 05 Nov 2026 08:39:06 GMT  
		Size: 39.3 MB (39290693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908ea11280661457ae34564c8c6781d17de77a11d6f7c30fa04abe05098288ea`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c5fdf06261d3058e6f472ff4de3ff0e8f6b303b13932fbf5298c4114104ebc`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 6.6 MB (6567202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce7157daacd6c3cc427d786143bebeea967c20f1e0c43cab9ea75dee1de9a73`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea64e5bdf4ccdfa3c4d63576bdb6ba44aa0c67b7c44b9120ce212b2b8083341c`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f38eda913c7a599b132fd48f81f5d36bfc450aa7f7e46884a3b13988a3ddaba`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:b1b60f0b510048fbb47c8bf11765e65cbfb3866b6fdf3947d974f1b35e91bdaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5cb58752556b65a17ec6fa2b43ab6d86080fdb22a070c75b77a20ead53846fd`

```dockerfile
```

-	Layers:
	-	`sha256:11305e3afda8e125a4d2356f573a4edd2f9ac0aa135695403ca0a97c582b44f8`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 2.3 MB (2289391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2adbda358ada24b3e9401fa0a38e4246c0dc5f816456be7b67eade4acf5d177`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

## `fluentd:v1.19-1`

```console
$ docker pull fluentd@sha256:af03bb935324a58aa6ae0fbad42d982e37ae1038f9bf488db8b44c4c81b7cf7a
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
$ docker pull fluentd@sha256:c28cf99c6fecae7039ebecf53d1530a588cdf5ff934899c9aa604f982effd437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79542109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269f08d8785716a7841ac1add17c3f6ff7bb4487394ca0ef04f040bb865da98a`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:57:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:03:32 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:03:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:03:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:03:33 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:03:33 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:51:27 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:51:27 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:51:27 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:51:28 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:51:28 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:51:28 GMT
USER fluent
# Thu, 05 Nov 2026 08:51:28 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:51:28 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bedd00059ddbba35c4c4f5a39c913085c6e8cf94a2fd77582403704d6467ef`  
		Last Modified: Thu, 05 Nov 2026 08:01:00 GMT  
		Size: 1.3 MB (1277425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752a53c943ba108767b2a27bf9b8fc7feab420c757b99e79751eb3e98a613fc5`  
		Last Modified: Thu, 05 Nov 2026 08:00:59 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33c0a7be74774e23b788cea76c54d7b830089b4e9a6128b626be9e842873ec7`  
		Last Modified: Thu, 05 Nov 2026 08:03:42 GMT  
		Size: 42.2 MB (42199517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055ac52f7b1fca34414ef8a14aa759e70c021bee29172c92171e64b9f9d57d80`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339dd4b3fd9d037b0c4912a22d506feead519fe3e320a8366241f02832f76b46`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 6.2 MB (6206631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9793dd762ec8f4bbfbbed9322211de27a2341075aa946347cafc5f04a207722`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33450337d072d351ebae8b5262b4634c279e32de3203a1dd03d1068a5b00b16f`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c080a8baa96080f55f9b78898817302fa1dda83314327c03f19eea88dbe91bd`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:a167f7f4596cb42caa86a52dae04754d18bc6937d94c66bc1bda3eb8c4e9b147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514bc34c1d69f929d6694ab9ca04762812737a020b4a069cb913a929b76b7780`

```dockerfile
```

-	Layers:
	-	`sha256:766159df1a544acce9adda6588e7b8359aa09a45af3f7c5bbb5172857638db09`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 2.3 MB (2287946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0f55338a99171eaae1e6c4b29ed5649901fe02299b7b0df9826a206300496c`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:1018c80802b4416b4b0cff02a3a3a01ece44b3d1a82e47f4e2a526e82919d759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73351784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b69849d1fcabc901a4f386b274794cd2f8132d075d40b6adcf32e7de2a93c2d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:09 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:03:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:03:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:23:54 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:23:54 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:23:54 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:23:54 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:23:54 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:23:54 GMT
USER fluent
# Thu, 05 Nov 2026 09:23:54 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:23:54 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41127e29af6358990975c216da88cdf076392ed51542fa60633fcaf2968d8e0e`  
		Last Modified: Thu, 05 Nov 2026 08:00:09 GMT  
		Size: 1.3 MB (1261662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a560a06dc1c5a37d251be6b6195472b2e98240df528c1832e156304ad270304`  
		Last Modified: Thu, 05 Nov 2026 08:00:09 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce69423b3f8d272c7b07472b1e21c691dfda2e54ad6d34605e4bbabb0df2ca`  
		Last Modified: Thu, 05 Nov 2026 08:03:36 GMT  
		Size: 38.0 MB (37976408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87b34aee006e10f27a99c2905d7b8453f731b7f4625cb58865dda163420b182`  
		Last Modified: Thu, 05 Nov 2026 08:03:35 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61961e24a26e630b453aac39a0b9edaa12386d7acc77f6fc60836e36c3685e6`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 6.1 MB (6091709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eaaa3271aceb798d3c8744d02536e4013946412297501ae842a3af115d282fa`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c49462303f564c867d1ca254a03b2bfa8931a8383b1695336739407df500ce`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6bf7dc4430d961071af6602b1d78201062b12ee25c690fae2821157d288ab8`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:6a553c1c53b39b9fe46698fb724af005bdfd5a3a8fb682a499fe5a4a856d2c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4e40a406f11e7d3d4db9352882b5f36424c1e1318858a8029385ea167297c3`

```dockerfile
```

-	Layers:
	-	`sha256:cafa02b51c95af9b29fd18d78e5acbf9b5cbd17f724710cec6295ee35ea92991`  
		Last Modified: Thu, 05 Nov 2026 09:24:03 GMT  
		Size: 2.3 MB (2290917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78c1387c6b86e42b3d72278fc4ea6ca0f32937eff1e7d99c577dae394e50d283`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 21.4 KB (21428 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:bc27c84beed7008fa4d450ba600d5a7a83fad1edcc3cec6f534ead89621da66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71206367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09eace41e4d4801701f46ee14c42f4ad9990003e3706101a331c9c5986c44931`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:53:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:53:01 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:53:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:53:01 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:50:13 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:50:13 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:50:13 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:50:13 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:50:13 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:50:13 GMT
USER fluent
# Thu, 05 Nov 2026 09:50:13 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:50:13 GMT
CMD ["fluentd"]
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
	-	`sha256:c1bd6860fc965222e6cb46f6334d605e0fe30dda9e1ee64fd3c19219cea26fed`  
		Last Modified: Thu, 05 Nov 2026 08:53:11 GMT  
		Size: 37.8 MB (37838920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ca1bf4447dc89047dfe380057edd11923d8e6adab92090f8b02f94dbfadab5`  
		Last Modified: Thu, 05 Nov 2026 08:53:10 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48f324919f22ee1708dad7fa3ead2a6f3378685302fefbc6fa93541be62ed31`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 5.9 MB (5856728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93cd47a4fed8488fcd78e3a1f03c205434e2b95e8a8319a1f06e1c2ccb685939`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ee2e5bdcfc4399eaad8cc6098e185326afc568cc76c39ad352e0a654844c87`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac324faaa2590e4244dd1b1bcdc55d633c084573e8decf8fdd1db6e3e426397c`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:d8b972fcf2afb30d95177834b610579ef7888a6cd64c8a2a63ace8a5b8e4b529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525dbcfbd07f0585d1563ce2d11e3cd727d794f6cdee31cc5e8bea6a4cda75a2`

```dockerfile
```

-	Layers:
	-	`sha256:29b362bd2db9197d650a499676e03531099883456e3077296da48c11c4d4c665`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 2.3 MB (2289358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc41d07efbff9a104f75aa18f2a6496a481b9e4b38cfe5769a1cde0dcc7acc8a`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 21.4 KB (21429 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:fc3a7572bd481e3cad558e67c5c9dbe9c4d725d4ec536dea9a784ab735d91e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79810958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb22ce2d86a3245f11bdcf2482c7b18c4766bfcec1239febbebd3ae35ca62b0`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:09:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:09:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:12:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:12:02 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:12:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:12:02 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:51:57 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:51:57 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:51:57 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:51:57 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:51:57 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:51:57 GMT
USER fluent
# Thu, 05 Nov 2026 08:51:57 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:51:57 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36925f936f1549639847b1e40b616c59bddf7576788f6da6126c5a4d4d7459de`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 1.3 MB (1259396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b524b66013a1bfed5ea9ebebf86124156655118e9f3d9e75814b92c8fdc3d99a`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0ac0750d551ba170186c35a82b13aa637fe043e7ac78309bec247be631e48a`  
		Last Modified: Thu, 05 Nov 2026 08:12:13 GMT  
		Size: 42.2 MB (42152736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c914b2642bc947d7a406ed94101143750c996ab716c3878ad523a7e730769fbb`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff57a5f7a2b8347ee7422a91b14a7d49be7679178fef6844c5585cbc7db89d7`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 6.2 MB (6182397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67166c68ea6ba66fb484769ffa1f00f13d88235ed12b85c64b8bf4fc5280a6fc`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa05b633c3ae39950b74d71eb4888f013c1218ffb8bee634e24cb48752ad27f`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fb471b83d57ecbf998adaccaac367642120e6490f4a346f27e39c5d9b93aa4`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:1961bdaed72ed8874b3a7e72990975ba546f11a8528586cfb2c247bae5c04989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e4c39005a8f69d8cff97c2dc7528896efc3dba85df8874d80c30a7cbda809a`

```dockerfile
```

-	Layers:
	-	`sha256:5a737f3a9a1699389bfde501405b76573f1cdcaee2e46084264fc64f0e87955b`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 2.3 MB (2288210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56e1faa1f9f6f72a1fb9c8b6589f0562adc68791cf4f5080984b605e1ca90f86`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; 386

```console
$ docker pull fluentd@sha256:21e7b943d1a8f912524f046bab888cb7598c178818104016ac95eb01848d73dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76570056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da628609defff5be660fcba96880679f66de026f200c9d996e908072c0376256`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:01:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:01:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:07:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:07:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:07:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:07:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:44:21 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:44:21 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:44:21 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:44:21 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:44:21 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:44:21 GMT
USER fluent
# Thu, 05 Nov 2026 08:44:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:44:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead7b5b6109c9cce1aed188a6283e4f2d6cfd04a806e107943b68650cd415fc9`  
		Last Modified: Thu, 05 Nov 2026 08:04:57 GMT  
		Size: 1.3 MB (1285918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654ca1aaa967b21998c6cb0325198178979947caa1c71a7bdce286312fa8e3b2`  
		Last Modified: Thu, 05 Nov 2026 08:04:56 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e1a087b100de0126f63acb0c5f537633d78f8069138bbc1655507f8ee32bf1`  
		Last Modified: Thu, 05 Nov 2026 08:07:35 GMT  
		Size: 37.7 MB (37731729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5997fbc0a37fc09105dadd4045a959f6f2861cf7153494001866c4cc43941d`  
		Last Modified: Thu, 05 Nov 2026 08:07:34 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abde3edf5f87e4877b6435ba557878b34a5bcde8a3df81d7eae353cc8f3fbcd`  
		Last Modified: Thu, 05 Nov 2026 08:44:30 GMT  
		Size: 6.2 MB (6179252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd3855deb1b01cd2239378e3bcf2a22d3b408286531e6d695c352dbe592512`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d781fa596634f6d474fe45ff48a457ec9da3fe1acd31cfebebcf59562af58b31`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777db3053ac39c3774369b8acb34b817fa02247e3e1e4e51d97da899bf31d2c8`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:900f94ade22443b63ecf81a039fcfa6477b9e44a090927fbe7b8a658e445ea51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9afc83e3265de6e1e11cb911d86e56bd20a76a6ce283da3be0d03b1604add7fb`

```dockerfile
```

-	Layers:
	-	`sha256:402dffef7c9e06e4216208d06458cc8675ce1a257144b620ff074dd285ff5299`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 2.3 MB (2285134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c163cbac70f929dd5d57cf354710ea0f247002866187eebb95cc9e0afafda7cb`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; ppc64le

```console
$ docker pull fluentd@sha256:f19c714d5d8d9fde0eee50db822b38ab78383c4cae7a1dd15b8aedfc2ce2f897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81309776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaffe3dc86fa3bda51e22d7ca7d824c724a1dcb424bc27e387597b0fbb831d56`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 08:45:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 08:45:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_VERSION=3.4.12
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Wed, 28 Oct 2026 09:09:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 09:09:50 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 09:09:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:09:50 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
CMD ["irb"]
# Wed, 28 Oct 2026 14:30:53 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 28 Oct 2026 14:30:53 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Wed, 28 Oct 2026 14:30:53 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 14:30:53 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 28 Oct 2026 14:30:54 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 28 Oct 2026 14:30:54 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 28 Oct 2026 14:30:54 GMT
USER fluent
# Wed, 28 Oct 2026 14:30:54 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 28 Oct 2026 14:30:54 GMT
CMD ["fluentd"]
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
	-	`sha256:9681cebcd4328202502cc06d9053c2e1e114b2bbdde90f66696e3e3c9998e851`  
		Last Modified: Wed, 28 Oct 2026 09:10:12 GMT  
		Size: 39.6 MB (39615145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bde37c30a0eafef4ea4b910616d0e74ccae5061ad5c2dac9b6b61674e68f103`  
		Last Modified: Wed, 28 Oct 2026 09:10:11 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1785af96da0e41407a2621aaed330f70be453c7b5e099da15175b5f0b060e9d1`  
		Last Modified: Wed, 28 Oct 2026 14:31:13 GMT  
		Size: 6.7 MB (6719139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249af46561f897d3c9238302489474d6aa9206fb732b990e713479fef83a9d29`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d708e01578f2b55e178ec1407456dbcd35937ef89b4e6b37b6ae35569e634`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af7c728cc3244b21c3ef905f114d01a9c873224c8861c089ffad70c6b8601c4`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:df79aa543637bb344cd3f67b4126fe26590d58554e36fee024fd7d930fc5f0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61dcd86b8548da77fdc649c8d9b90a8ad45f14f6fa8981b3bb93616491a0036`

```dockerfile
```

-	Layers:
	-	`sha256:a436b4bb12d50e88f15e24e5ef4684d56e751af75fdb836210f292fa0536cebd`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 2.3 MB (2291481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31f708a0ae5c9a0b3d8beed93a0a163b2434e49c06146135a6c383c92eb4b996`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-1` - linux; s390x

```console
$ docker pull fluentd@sha256:07ff59e0fbb1b8c41fc93d0878edd721048f1a9fda56c3b713921a4198fea9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77076476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e48beb5c36a0f527488edefaf172c78ed08f3b8a13b5bd08f6279de0cd55e26`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:36:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:36:36 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:38:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:38:51 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:38:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:38:51 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:24:12 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:24:12 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:24:12 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:24:12 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:24:12 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:24:12 GMT
USER fluent
# Thu, 05 Nov 2026 09:24:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:24:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031869a525c3b996f4b344abba9f3f3036fd7b6217e3496c5ffad848c0aa0f55`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 1.3 MB (1292073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5cffdd251850be0781eb7c3ce1595af577dbd87041acd46a3ab18997842697`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792ff507f7a43f90ab8aa3a53beb3d51a73a36b72585d439204c61c22e96d975`  
		Last Modified: Thu, 05 Nov 2026 08:39:06 GMT  
		Size: 39.3 MB (39290693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908ea11280661457ae34564c8c6781d17de77a11d6f7c30fa04abe05098288ea`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c5fdf06261d3058e6f472ff4de3ff0e8f6b303b13932fbf5298c4114104ebc`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 6.6 MB (6567202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce7157daacd6c3cc427d786143bebeea967c20f1e0c43cab9ea75dee1de9a73`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea64e5bdf4ccdfa3c4d63576bdb6ba44aa0c67b7c44b9120ce212b2b8083341c`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f38eda913c7a599b132fd48f81f5d36bfc450aa7f7e46884a3b13988a3ddaba`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:b1b60f0b510048fbb47c8bf11765e65cbfb3866b6fdf3947d974f1b35e91bdaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5cb58752556b65a17ec6fa2b43ab6d86080fdb22a070c75b77a20ead53846fd`

```dockerfile
```

-	Layers:
	-	`sha256:11305e3afda8e125a4d2356f573a4edd2f9ac0aa135695403ca0a97c582b44f8`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 2.3 MB (2289391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2adbda358ada24b3e9401fa0a38e4246c0dc5f816456be7b67eade4acf5d177`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

## `fluentd:v1.19-debian-1`

```console
$ docker pull fluentd@sha256:af03bb935324a58aa6ae0fbad42d982e37ae1038f9bf488db8b44c4c81b7cf7a
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
$ docker pull fluentd@sha256:c28cf99c6fecae7039ebecf53d1530a588cdf5ff934899c9aa604f982effd437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79542109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269f08d8785716a7841ac1add17c3f6ff7bb4487394ca0ef04f040bb865da98a`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:57:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:03:32 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:03:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:03:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:03:33 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:03:33 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:51:27 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:51:27 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:51:27 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:51:28 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:51:28 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:51:28 GMT
USER fluent
# Thu, 05 Nov 2026 08:51:28 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:51:28 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bedd00059ddbba35c4c4f5a39c913085c6e8cf94a2fd77582403704d6467ef`  
		Last Modified: Thu, 05 Nov 2026 08:01:00 GMT  
		Size: 1.3 MB (1277425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752a53c943ba108767b2a27bf9b8fc7feab420c757b99e79751eb3e98a613fc5`  
		Last Modified: Thu, 05 Nov 2026 08:00:59 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33c0a7be74774e23b788cea76c54d7b830089b4e9a6128b626be9e842873ec7`  
		Last Modified: Thu, 05 Nov 2026 08:03:42 GMT  
		Size: 42.2 MB (42199517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055ac52f7b1fca34414ef8a14aa759e70c021bee29172c92171e64b9f9d57d80`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339dd4b3fd9d037b0c4912a22d506feead519fe3e320a8366241f02832f76b46`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 6.2 MB (6206631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9793dd762ec8f4bbfbbed9322211de27a2341075aa946347cafc5f04a207722`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33450337d072d351ebae8b5262b4634c279e32de3203a1dd03d1068a5b00b16f`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c080a8baa96080f55f9b78898817302fa1dda83314327c03f19eea88dbe91bd`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:a167f7f4596cb42caa86a52dae04754d18bc6937d94c66bc1bda3eb8c4e9b147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514bc34c1d69f929d6694ab9ca04762812737a020b4a069cb913a929b76b7780`

```dockerfile
```

-	Layers:
	-	`sha256:766159df1a544acce9adda6588e7b8359aa09a45af3f7c5bbb5172857638db09`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 2.3 MB (2287946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0f55338a99171eaae1e6c4b29ed5649901fe02299b7b0df9826a206300496c`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:1018c80802b4416b4b0cff02a3a3a01ece44b3d1a82e47f4e2a526e82919d759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73351784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b69849d1fcabc901a4f386b274794cd2f8132d075d40b6adcf32e7de2a93c2d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:09 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:03:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:03:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:23:54 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:23:54 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:23:54 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:23:54 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:23:54 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:23:54 GMT
USER fluent
# Thu, 05 Nov 2026 09:23:54 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:23:54 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41127e29af6358990975c216da88cdf076392ed51542fa60633fcaf2968d8e0e`  
		Last Modified: Thu, 05 Nov 2026 08:00:09 GMT  
		Size: 1.3 MB (1261662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a560a06dc1c5a37d251be6b6195472b2e98240df528c1832e156304ad270304`  
		Last Modified: Thu, 05 Nov 2026 08:00:09 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce69423b3f8d272c7b07472b1e21c691dfda2e54ad6d34605e4bbabb0df2ca`  
		Last Modified: Thu, 05 Nov 2026 08:03:36 GMT  
		Size: 38.0 MB (37976408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87b34aee006e10f27a99c2905d7b8453f731b7f4625cb58865dda163420b182`  
		Last Modified: Thu, 05 Nov 2026 08:03:35 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61961e24a26e630b453aac39a0b9edaa12386d7acc77f6fc60836e36c3685e6`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 6.1 MB (6091709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eaaa3271aceb798d3c8744d02536e4013946412297501ae842a3af115d282fa`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c49462303f564c867d1ca254a03b2bfa8931a8383b1695336739407df500ce`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6bf7dc4430d961071af6602b1d78201062b12ee25c690fae2821157d288ab8`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:6a553c1c53b39b9fe46698fb724af005bdfd5a3a8fb682a499fe5a4a856d2c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4e40a406f11e7d3d4db9352882b5f36424c1e1318858a8029385ea167297c3`

```dockerfile
```

-	Layers:
	-	`sha256:cafa02b51c95af9b29fd18d78e5acbf9b5cbd17f724710cec6295ee35ea92991`  
		Last Modified: Thu, 05 Nov 2026 09:24:03 GMT  
		Size: 2.3 MB (2290917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78c1387c6b86e42b3d72278fc4ea6ca0f32937eff1e7d99c577dae394e50d283`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 21.4 KB (21428 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:bc27c84beed7008fa4d450ba600d5a7a83fad1edcc3cec6f534ead89621da66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71206367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09eace41e4d4801701f46ee14c42f4ad9990003e3706101a331c9c5986c44931`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:53:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:53:01 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:53:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:53:01 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:50:13 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:50:13 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:50:13 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:50:13 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:50:13 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:50:13 GMT
USER fluent
# Thu, 05 Nov 2026 09:50:13 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:50:13 GMT
CMD ["fluentd"]
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
	-	`sha256:c1bd6860fc965222e6cb46f6334d605e0fe30dda9e1ee64fd3c19219cea26fed`  
		Last Modified: Thu, 05 Nov 2026 08:53:11 GMT  
		Size: 37.8 MB (37838920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ca1bf4447dc89047dfe380057edd11923d8e6adab92090f8b02f94dbfadab5`  
		Last Modified: Thu, 05 Nov 2026 08:53:10 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48f324919f22ee1708dad7fa3ead2a6f3378685302fefbc6fa93541be62ed31`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 5.9 MB (5856728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93cd47a4fed8488fcd78e3a1f03c205434e2b95e8a8319a1f06e1c2ccb685939`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ee2e5bdcfc4399eaad8cc6098e185326afc568cc76c39ad352e0a654844c87`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac324faaa2590e4244dd1b1bcdc55d633c084573e8decf8fdd1db6e3e426397c`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:d8b972fcf2afb30d95177834b610579ef7888a6cd64c8a2a63ace8a5b8e4b529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525dbcfbd07f0585d1563ce2d11e3cd727d794f6cdee31cc5e8bea6a4cda75a2`

```dockerfile
```

-	Layers:
	-	`sha256:29b362bd2db9197d650a499676e03531099883456e3077296da48c11c4d4c665`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 2.3 MB (2289358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc41d07efbff9a104f75aa18f2a6496a481b9e4b38cfe5769a1cde0dcc7acc8a`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 21.4 KB (21429 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:fc3a7572bd481e3cad558e67c5c9dbe9c4d725d4ec536dea9a784ab735d91e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79810958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb22ce2d86a3245f11bdcf2482c7b18c4766bfcec1239febbebd3ae35ca62b0`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:09:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:09:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:12:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:12:02 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:12:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:12:02 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:51:57 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:51:57 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:51:57 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:51:57 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:51:57 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:51:57 GMT
USER fluent
# Thu, 05 Nov 2026 08:51:57 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:51:57 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36925f936f1549639847b1e40b616c59bddf7576788f6da6126c5a4d4d7459de`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 1.3 MB (1259396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b524b66013a1bfed5ea9ebebf86124156655118e9f3d9e75814b92c8fdc3d99a`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0ac0750d551ba170186c35a82b13aa637fe043e7ac78309bec247be631e48a`  
		Last Modified: Thu, 05 Nov 2026 08:12:13 GMT  
		Size: 42.2 MB (42152736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c914b2642bc947d7a406ed94101143750c996ab716c3878ad523a7e730769fbb`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff57a5f7a2b8347ee7422a91b14a7d49be7679178fef6844c5585cbc7db89d7`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 6.2 MB (6182397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67166c68ea6ba66fb484769ffa1f00f13d88235ed12b85c64b8bf4fc5280a6fc`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa05b633c3ae39950b74d71eb4888f013c1218ffb8bee634e24cb48752ad27f`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fb471b83d57ecbf998adaccaac367642120e6490f4a346f27e39c5d9b93aa4`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:1961bdaed72ed8874b3a7e72990975ba546f11a8528586cfb2c247bae5c04989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e4c39005a8f69d8cff97c2dc7528896efc3dba85df8874d80c30a7cbda809a`

```dockerfile
```

-	Layers:
	-	`sha256:5a737f3a9a1699389bfde501405b76573f1cdcaee2e46084264fc64f0e87955b`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 2.3 MB (2288210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56e1faa1f9f6f72a1fb9c8b6589f0562adc68791cf4f5080984b605e1ca90f86`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; 386

```console
$ docker pull fluentd@sha256:21e7b943d1a8f912524f046bab888cb7598c178818104016ac95eb01848d73dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76570056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da628609defff5be660fcba96880679f66de026f200c9d996e908072c0376256`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:01:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:01:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:07:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:07:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:07:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:07:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:44:21 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:44:21 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:44:21 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:44:21 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:44:21 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:44:21 GMT
USER fluent
# Thu, 05 Nov 2026 08:44:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:44:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead7b5b6109c9cce1aed188a6283e4f2d6cfd04a806e107943b68650cd415fc9`  
		Last Modified: Thu, 05 Nov 2026 08:04:57 GMT  
		Size: 1.3 MB (1285918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654ca1aaa967b21998c6cb0325198178979947caa1c71a7bdce286312fa8e3b2`  
		Last Modified: Thu, 05 Nov 2026 08:04:56 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e1a087b100de0126f63acb0c5f537633d78f8069138bbc1655507f8ee32bf1`  
		Last Modified: Thu, 05 Nov 2026 08:07:35 GMT  
		Size: 37.7 MB (37731729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5997fbc0a37fc09105dadd4045a959f6f2861cf7153494001866c4cc43941d`  
		Last Modified: Thu, 05 Nov 2026 08:07:34 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abde3edf5f87e4877b6435ba557878b34a5bcde8a3df81d7eae353cc8f3fbcd`  
		Last Modified: Thu, 05 Nov 2026 08:44:30 GMT  
		Size: 6.2 MB (6179252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd3855deb1b01cd2239378e3bcf2a22d3b408286531e6d695c352dbe592512`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d781fa596634f6d474fe45ff48a457ec9da3fe1acd31cfebebcf59562af58b31`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777db3053ac39c3774369b8acb34b817fa02247e3e1e4e51d97da899bf31d2c8`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:900f94ade22443b63ecf81a039fcfa6477b9e44a090927fbe7b8a658e445ea51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9afc83e3265de6e1e11cb911d86e56bd20a76a6ce283da3be0d03b1604add7fb`

```dockerfile
```

-	Layers:
	-	`sha256:402dffef7c9e06e4216208d06458cc8675ce1a257144b620ff074dd285ff5299`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 2.3 MB (2285134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c163cbac70f929dd5d57cf354710ea0f247002866187eebb95cc9e0afafda7cb`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; ppc64le

```console
$ docker pull fluentd@sha256:f19c714d5d8d9fde0eee50db822b38ab78383c4cae7a1dd15b8aedfc2ce2f897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81309776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaffe3dc86fa3bda51e22d7ca7d824c724a1dcb424bc27e387597b0fbb831d56`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 08:45:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 08:45:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_VERSION=3.4.12
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Wed, 28 Oct 2026 09:09:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 09:09:50 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 09:09:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:09:50 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
CMD ["irb"]
# Wed, 28 Oct 2026 14:30:53 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 28 Oct 2026 14:30:53 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Wed, 28 Oct 2026 14:30:53 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 14:30:53 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 28 Oct 2026 14:30:54 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 28 Oct 2026 14:30:54 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 28 Oct 2026 14:30:54 GMT
USER fluent
# Wed, 28 Oct 2026 14:30:54 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 28 Oct 2026 14:30:54 GMT
CMD ["fluentd"]
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
	-	`sha256:9681cebcd4328202502cc06d9053c2e1e114b2bbdde90f66696e3e3c9998e851`  
		Last Modified: Wed, 28 Oct 2026 09:10:12 GMT  
		Size: 39.6 MB (39615145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bde37c30a0eafef4ea4b910616d0e74ccae5061ad5c2dac9b6b61674e68f103`  
		Last Modified: Wed, 28 Oct 2026 09:10:11 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1785af96da0e41407a2621aaed330f70be453c7b5e099da15175b5f0b060e9d1`  
		Last Modified: Wed, 28 Oct 2026 14:31:13 GMT  
		Size: 6.7 MB (6719139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249af46561f897d3c9238302489474d6aa9206fb732b990e713479fef83a9d29`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d708e01578f2b55e178ec1407456dbcd35937ef89b4e6b37b6ae35569e634`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af7c728cc3244b21c3ef905f114d01a9c873224c8861c089ffad70c6b8601c4`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:df79aa543637bb344cd3f67b4126fe26590d58554e36fee024fd7d930fc5f0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61dcd86b8548da77fdc649c8d9b90a8ad45f14f6fa8981b3bb93616491a0036`

```dockerfile
```

-	Layers:
	-	`sha256:a436b4bb12d50e88f15e24e5ef4684d56e751af75fdb836210f292fa0536cebd`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 2.3 MB (2291481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31f708a0ae5c9a0b3d8beed93a0a163b2434e49c06146135a6c383c92eb4b996`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19-debian-1` - linux; s390x

```console
$ docker pull fluentd@sha256:07ff59e0fbb1b8c41fc93d0878edd721048f1a9fda56c3b713921a4198fea9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77076476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e48beb5c36a0f527488edefaf172c78ed08f3b8a13b5bd08f6279de0cd55e26`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:36:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:36:36 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:38:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:38:51 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:38:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:38:51 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:24:12 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:24:12 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:24:12 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:24:12 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:24:12 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:24:12 GMT
USER fluent
# Thu, 05 Nov 2026 09:24:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:24:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031869a525c3b996f4b344abba9f3f3036fd7b6217e3496c5ffad848c0aa0f55`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 1.3 MB (1292073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5cffdd251850be0781eb7c3ce1595af577dbd87041acd46a3ab18997842697`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792ff507f7a43f90ab8aa3a53beb3d51a73a36b72585d439204c61c22e96d975`  
		Last Modified: Thu, 05 Nov 2026 08:39:06 GMT  
		Size: 39.3 MB (39290693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908ea11280661457ae34564c8c6781d17de77a11d6f7c30fa04abe05098288ea`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c5fdf06261d3058e6f472ff4de3ff0e8f6b303b13932fbf5298c4114104ebc`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 6.6 MB (6567202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce7157daacd6c3cc427d786143bebeea967c20f1e0c43cab9ea75dee1de9a73`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea64e5bdf4ccdfa3c4d63576bdb6ba44aa0c67b7c44b9120ce212b2b8083341c`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f38eda913c7a599b132fd48f81f5d36bfc450aa7f7e46884a3b13988a3ddaba`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19-debian-1` - unknown; unknown

```console
$ docker pull fluentd@sha256:b1b60f0b510048fbb47c8bf11765e65cbfb3866b6fdf3947d974f1b35e91bdaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5cb58752556b65a17ec6fa2b43ab6d86080fdb22a070c75b77a20ead53846fd`

```dockerfile
```

-	Layers:
	-	`sha256:11305e3afda8e125a4d2356f573a4edd2f9ac0aa135695403ca0a97c582b44f8`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 2.3 MB (2289391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2adbda358ada24b3e9401fa0a38e4246c0dc5f816456be7b67eade4acf5d177`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

## `fluentd:v1.19.4-1.0`

```console
$ docker pull fluentd@sha256:af03bb935324a58aa6ae0fbad42d982e37ae1038f9bf488db8b44c4c81b7cf7a
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
$ docker pull fluentd@sha256:c28cf99c6fecae7039ebecf53d1530a588cdf5ff934899c9aa604f982effd437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79542109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269f08d8785716a7841ac1add17c3f6ff7bb4487394ca0ef04f040bb865da98a`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:57:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:03:32 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:03:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:03:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:03:33 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:03:33 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:51:27 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:51:27 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:51:27 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:51:28 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:51:28 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:51:28 GMT
USER fluent
# Thu, 05 Nov 2026 08:51:28 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:51:28 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bedd00059ddbba35c4c4f5a39c913085c6e8cf94a2fd77582403704d6467ef`  
		Last Modified: Thu, 05 Nov 2026 08:01:00 GMT  
		Size: 1.3 MB (1277425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752a53c943ba108767b2a27bf9b8fc7feab420c757b99e79751eb3e98a613fc5`  
		Last Modified: Thu, 05 Nov 2026 08:00:59 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33c0a7be74774e23b788cea76c54d7b830089b4e9a6128b626be9e842873ec7`  
		Last Modified: Thu, 05 Nov 2026 08:03:42 GMT  
		Size: 42.2 MB (42199517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055ac52f7b1fca34414ef8a14aa759e70c021bee29172c92171e64b9f9d57d80`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339dd4b3fd9d037b0c4912a22d506feead519fe3e320a8366241f02832f76b46`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 6.2 MB (6206631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9793dd762ec8f4bbfbbed9322211de27a2341075aa946347cafc5f04a207722`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33450337d072d351ebae8b5262b4634c279e32de3203a1dd03d1068a5b00b16f`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c080a8baa96080f55f9b78898817302fa1dda83314327c03f19eea88dbe91bd`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:a167f7f4596cb42caa86a52dae04754d18bc6937d94c66bc1bda3eb8c4e9b147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514bc34c1d69f929d6694ab9ca04762812737a020b4a069cb913a929b76b7780`

```dockerfile
```

-	Layers:
	-	`sha256:766159df1a544acce9adda6588e7b8359aa09a45af3f7c5bbb5172857638db09`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 2.3 MB (2287946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0f55338a99171eaae1e6c4b29ed5649901fe02299b7b0df9826a206300496c`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:1018c80802b4416b4b0cff02a3a3a01ece44b3d1a82e47f4e2a526e82919d759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73351784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b69849d1fcabc901a4f386b274794cd2f8132d075d40b6adcf32e7de2a93c2d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:09 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:03:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:03:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:23:54 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:23:54 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:23:54 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:23:54 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:23:54 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:23:54 GMT
USER fluent
# Thu, 05 Nov 2026 09:23:54 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:23:54 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41127e29af6358990975c216da88cdf076392ed51542fa60633fcaf2968d8e0e`  
		Last Modified: Thu, 05 Nov 2026 08:00:09 GMT  
		Size: 1.3 MB (1261662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a560a06dc1c5a37d251be6b6195472b2e98240df528c1832e156304ad270304`  
		Last Modified: Thu, 05 Nov 2026 08:00:09 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce69423b3f8d272c7b07472b1e21c691dfda2e54ad6d34605e4bbabb0df2ca`  
		Last Modified: Thu, 05 Nov 2026 08:03:36 GMT  
		Size: 38.0 MB (37976408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87b34aee006e10f27a99c2905d7b8453f731b7f4625cb58865dda163420b182`  
		Last Modified: Thu, 05 Nov 2026 08:03:35 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61961e24a26e630b453aac39a0b9edaa12386d7acc77f6fc60836e36c3685e6`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 6.1 MB (6091709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eaaa3271aceb798d3c8744d02536e4013946412297501ae842a3af115d282fa`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c49462303f564c867d1ca254a03b2bfa8931a8383b1695336739407df500ce`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6bf7dc4430d961071af6602b1d78201062b12ee25c690fae2821157d288ab8`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:6a553c1c53b39b9fe46698fb724af005bdfd5a3a8fb682a499fe5a4a856d2c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4e40a406f11e7d3d4db9352882b5f36424c1e1318858a8029385ea167297c3`

```dockerfile
```

-	Layers:
	-	`sha256:cafa02b51c95af9b29fd18d78e5acbf9b5cbd17f724710cec6295ee35ea92991`  
		Last Modified: Thu, 05 Nov 2026 09:24:03 GMT  
		Size: 2.3 MB (2290917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78c1387c6b86e42b3d72278fc4ea6ca0f32937eff1e7d99c577dae394e50d283`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 21.4 KB (21428 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:bc27c84beed7008fa4d450ba600d5a7a83fad1edcc3cec6f534ead89621da66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71206367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09eace41e4d4801701f46ee14c42f4ad9990003e3706101a331c9c5986c44931`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:53:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:53:01 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:53:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:53:01 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:50:13 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:50:13 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:50:13 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:50:13 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:50:13 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:50:13 GMT
USER fluent
# Thu, 05 Nov 2026 09:50:13 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:50:13 GMT
CMD ["fluentd"]
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
	-	`sha256:c1bd6860fc965222e6cb46f6334d605e0fe30dda9e1ee64fd3c19219cea26fed`  
		Last Modified: Thu, 05 Nov 2026 08:53:11 GMT  
		Size: 37.8 MB (37838920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ca1bf4447dc89047dfe380057edd11923d8e6adab92090f8b02f94dbfadab5`  
		Last Modified: Thu, 05 Nov 2026 08:53:10 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48f324919f22ee1708dad7fa3ead2a6f3378685302fefbc6fa93541be62ed31`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 5.9 MB (5856728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93cd47a4fed8488fcd78e3a1f03c205434e2b95e8a8319a1f06e1c2ccb685939`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ee2e5bdcfc4399eaad8cc6098e185326afc568cc76c39ad352e0a654844c87`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac324faaa2590e4244dd1b1bcdc55d633c084573e8decf8fdd1db6e3e426397c`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:d8b972fcf2afb30d95177834b610579ef7888a6cd64c8a2a63ace8a5b8e4b529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525dbcfbd07f0585d1563ce2d11e3cd727d794f6cdee31cc5e8bea6a4cda75a2`

```dockerfile
```

-	Layers:
	-	`sha256:29b362bd2db9197d650a499676e03531099883456e3077296da48c11c4d4c665`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 2.3 MB (2289358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc41d07efbff9a104f75aa18f2a6496a481b9e4b38cfe5769a1cde0dcc7acc8a`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 21.4 KB (21429 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:fc3a7572bd481e3cad558e67c5c9dbe9c4d725d4ec536dea9a784ab735d91e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79810958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb22ce2d86a3245f11bdcf2482c7b18c4766bfcec1239febbebd3ae35ca62b0`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:09:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:09:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:12:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:12:02 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:12:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:12:02 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:51:57 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:51:57 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:51:57 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:51:57 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:51:57 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:51:57 GMT
USER fluent
# Thu, 05 Nov 2026 08:51:57 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:51:57 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36925f936f1549639847b1e40b616c59bddf7576788f6da6126c5a4d4d7459de`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 1.3 MB (1259396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b524b66013a1bfed5ea9ebebf86124156655118e9f3d9e75814b92c8fdc3d99a`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0ac0750d551ba170186c35a82b13aa637fe043e7ac78309bec247be631e48a`  
		Last Modified: Thu, 05 Nov 2026 08:12:13 GMT  
		Size: 42.2 MB (42152736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c914b2642bc947d7a406ed94101143750c996ab716c3878ad523a7e730769fbb`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff57a5f7a2b8347ee7422a91b14a7d49be7679178fef6844c5585cbc7db89d7`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 6.2 MB (6182397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67166c68ea6ba66fb484769ffa1f00f13d88235ed12b85c64b8bf4fc5280a6fc`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa05b633c3ae39950b74d71eb4888f013c1218ffb8bee634e24cb48752ad27f`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fb471b83d57ecbf998adaccaac367642120e6490f4a346f27e39c5d9b93aa4`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:1961bdaed72ed8874b3a7e72990975ba546f11a8528586cfb2c247bae5c04989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e4c39005a8f69d8cff97c2dc7528896efc3dba85df8874d80c30a7cbda809a`

```dockerfile
```

-	Layers:
	-	`sha256:5a737f3a9a1699389bfde501405b76573f1cdcaee2e46084264fc64f0e87955b`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 2.3 MB (2288210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56e1faa1f9f6f72a1fb9c8b6589f0562adc68791cf4f5080984b605e1ca90f86`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; 386

```console
$ docker pull fluentd@sha256:21e7b943d1a8f912524f046bab888cb7598c178818104016ac95eb01848d73dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76570056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da628609defff5be660fcba96880679f66de026f200c9d996e908072c0376256`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:01:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:01:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:07:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:07:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:07:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:07:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:44:21 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:44:21 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:44:21 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:44:21 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:44:21 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:44:21 GMT
USER fluent
# Thu, 05 Nov 2026 08:44:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:44:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead7b5b6109c9cce1aed188a6283e4f2d6cfd04a806e107943b68650cd415fc9`  
		Last Modified: Thu, 05 Nov 2026 08:04:57 GMT  
		Size: 1.3 MB (1285918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654ca1aaa967b21998c6cb0325198178979947caa1c71a7bdce286312fa8e3b2`  
		Last Modified: Thu, 05 Nov 2026 08:04:56 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e1a087b100de0126f63acb0c5f537633d78f8069138bbc1655507f8ee32bf1`  
		Last Modified: Thu, 05 Nov 2026 08:07:35 GMT  
		Size: 37.7 MB (37731729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5997fbc0a37fc09105dadd4045a959f6f2861cf7153494001866c4cc43941d`  
		Last Modified: Thu, 05 Nov 2026 08:07:34 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abde3edf5f87e4877b6435ba557878b34a5bcde8a3df81d7eae353cc8f3fbcd`  
		Last Modified: Thu, 05 Nov 2026 08:44:30 GMT  
		Size: 6.2 MB (6179252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd3855deb1b01cd2239378e3bcf2a22d3b408286531e6d695c352dbe592512`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d781fa596634f6d474fe45ff48a457ec9da3fe1acd31cfebebcf59562af58b31`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777db3053ac39c3774369b8acb34b817fa02247e3e1e4e51d97da899bf31d2c8`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:900f94ade22443b63ecf81a039fcfa6477b9e44a090927fbe7b8a658e445ea51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9afc83e3265de6e1e11cb911d86e56bd20a76a6ce283da3be0d03b1604add7fb`

```dockerfile
```

-	Layers:
	-	`sha256:402dffef7c9e06e4216208d06458cc8675ce1a257144b620ff074dd285ff5299`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 2.3 MB (2285134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c163cbac70f929dd5d57cf354710ea0f247002866187eebb95cc9e0afafda7cb`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; ppc64le

```console
$ docker pull fluentd@sha256:f19c714d5d8d9fde0eee50db822b38ab78383c4cae7a1dd15b8aedfc2ce2f897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81309776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaffe3dc86fa3bda51e22d7ca7d824c724a1dcb424bc27e387597b0fbb831d56`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 08:45:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 08:45:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_VERSION=3.4.12
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Wed, 28 Oct 2026 09:09:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 09:09:50 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 09:09:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:09:50 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
CMD ["irb"]
# Wed, 28 Oct 2026 14:30:53 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 28 Oct 2026 14:30:53 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Wed, 28 Oct 2026 14:30:53 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 14:30:53 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 28 Oct 2026 14:30:54 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 28 Oct 2026 14:30:54 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 28 Oct 2026 14:30:54 GMT
USER fluent
# Wed, 28 Oct 2026 14:30:54 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 28 Oct 2026 14:30:54 GMT
CMD ["fluentd"]
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
	-	`sha256:9681cebcd4328202502cc06d9053c2e1e114b2bbdde90f66696e3e3c9998e851`  
		Last Modified: Wed, 28 Oct 2026 09:10:12 GMT  
		Size: 39.6 MB (39615145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bde37c30a0eafef4ea4b910616d0e74ccae5061ad5c2dac9b6b61674e68f103`  
		Last Modified: Wed, 28 Oct 2026 09:10:11 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1785af96da0e41407a2621aaed330f70be453c7b5e099da15175b5f0b060e9d1`  
		Last Modified: Wed, 28 Oct 2026 14:31:13 GMT  
		Size: 6.7 MB (6719139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249af46561f897d3c9238302489474d6aa9206fb732b990e713479fef83a9d29`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d708e01578f2b55e178ec1407456dbcd35937ef89b4e6b37b6ae35569e634`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af7c728cc3244b21c3ef905f114d01a9c873224c8861c089ffad70c6b8601c4`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:df79aa543637bb344cd3f67b4126fe26590d58554e36fee024fd7d930fc5f0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61dcd86b8548da77fdc649c8d9b90a8ad45f14f6fa8981b3bb93616491a0036`

```dockerfile
```

-	Layers:
	-	`sha256:a436b4bb12d50e88f15e24e5ef4684d56e751af75fdb836210f292fa0536cebd`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 2.3 MB (2291481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31f708a0ae5c9a0b3d8beed93a0a163b2434e49c06146135a6c383c92eb4b996`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-1.0` - linux; s390x

```console
$ docker pull fluentd@sha256:07ff59e0fbb1b8c41fc93d0878edd721048f1a9fda56c3b713921a4198fea9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77076476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e48beb5c36a0f527488edefaf172c78ed08f3b8a13b5bd08f6279de0cd55e26`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:36:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:36:36 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:38:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:38:51 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:38:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:38:51 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:24:12 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:24:12 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:24:12 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:24:12 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:24:12 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:24:12 GMT
USER fluent
# Thu, 05 Nov 2026 09:24:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:24:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031869a525c3b996f4b344abba9f3f3036fd7b6217e3496c5ffad848c0aa0f55`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 1.3 MB (1292073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5cffdd251850be0781eb7c3ce1595af577dbd87041acd46a3ab18997842697`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792ff507f7a43f90ab8aa3a53beb3d51a73a36b72585d439204c61c22e96d975`  
		Last Modified: Thu, 05 Nov 2026 08:39:06 GMT  
		Size: 39.3 MB (39290693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908ea11280661457ae34564c8c6781d17de77a11d6f7c30fa04abe05098288ea`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c5fdf06261d3058e6f472ff4de3ff0e8f6b303b13932fbf5298c4114104ebc`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 6.6 MB (6567202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce7157daacd6c3cc427d786143bebeea967c20f1e0c43cab9ea75dee1de9a73`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea64e5bdf4ccdfa3c4d63576bdb6ba44aa0c67b7c44b9120ce212b2b8083341c`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f38eda913c7a599b132fd48f81f5d36bfc450aa7f7e46884a3b13988a3ddaba`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:b1b60f0b510048fbb47c8bf11765e65cbfb3866b6fdf3947d974f1b35e91bdaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5cb58752556b65a17ec6fa2b43ab6d86080fdb22a070c75b77a20ead53846fd`

```dockerfile
```

-	Layers:
	-	`sha256:11305e3afda8e125a4d2356f573a4edd2f9ac0aa135695403ca0a97c582b44f8`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 2.3 MB (2289391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2adbda358ada24b3e9401fa0a38e4246c0dc5f816456be7b67eade4acf5d177`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

## `fluentd:v1.19.4-debian-1.0`

```console
$ docker pull fluentd@sha256:af03bb935324a58aa6ae0fbad42d982e37ae1038f9bf488db8b44c4c81b7cf7a
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
$ docker pull fluentd@sha256:c28cf99c6fecae7039ebecf53d1530a588cdf5ff934899c9aa604f982effd437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79542109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269f08d8785716a7841ac1add17c3f6ff7bb4487394ca0ef04f040bb865da98a`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:57:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:03:32 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:03:32 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:03:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:03:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:03:33 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:03:33 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:51:27 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:51:27 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:51:27 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:51:28 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:51:28 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:51:28 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:51:28 GMT
USER fluent
# Thu, 05 Nov 2026 08:51:28 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:51:28 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bedd00059ddbba35c4c4f5a39c913085c6e8cf94a2fd77582403704d6467ef`  
		Last Modified: Thu, 05 Nov 2026 08:01:00 GMT  
		Size: 1.3 MB (1277425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752a53c943ba108767b2a27bf9b8fc7feab420c757b99e79751eb3e98a613fc5`  
		Last Modified: Thu, 05 Nov 2026 08:00:59 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33c0a7be74774e23b788cea76c54d7b830089b4e9a6128b626be9e842873ec7`  
		Last Modified: Thu, 05 Nov 2026 08:03:42 GMT  
		Size: 42.2 MB (42199517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055ac52f7b1fca34414ef8a14aa759e70c021bee29172c92171e64b9f9d57d80`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339dd4b3fd9d037b0c4912a22d506feead519fe3e320a8366241f02832f76b46`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 6.2 MB (6206631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9793dd762ec8f4bbfbbed9322211de27a2341075aa946347cafc5f04a207722`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33450337d072d351ebae8b5262b4634c279e32de3203a1dd03d1068a5b00b16f`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c080a8baa96080f55f9b78898817302fa1dda83314327c03f19eea88dbe91bd`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:a167f7f4596cb42caa86a52dae04754d18bc6937d94c66bc1bda3eb8c4e9b147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514bc34c1d69f929d6694ab9ca04762812737a020b4a069cb913a929b76b7780`

```dockerfile
```

-	Layers:
	-	`sha256:766159df1a544acce9adda6588e7b8359aa09a45af3f7c5bbb5172857638db09`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 2.3 MB (2287946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0f55338a99171eaae1e6c4b29ed5649901fe02299b7b0df9826a206300496c`  
		Last Modified: Thu, 05 Nov 2026 08:51:35 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:1018c80802b4416b4b0cff02a3a3a01ece44b3d1a82e47f4e2a526e82919d759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73351784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b69849d1fcabc901a4f386b274794cd2f8132d075d40b6adcf32e7de2a93c2d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:09 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:03:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:03:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:03:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:03:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:03:26 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:23:54 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:23:54 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:23:54 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:23:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:23:54 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:23:54 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:23:54 GMT
USER fluent
# Thu, 05 Nov 2026 09:23:54 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:23:54 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41127e29af6358990975c216da88cdf076392ed51542fa60633fcaf2968d8e0e`  
		Last Modified: Thu, 05 Nov 2026 08:00:09 GMT  
		Size: 1.3 MB (1261662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a560a06dc1c5a37d251be6b6195472b2e98240df528c1832e156304ad270304`  
		Last Modified: Thu, 05 Nov 2026 08:00:09 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bce69423b3f8d272c7b07472b1e21c691dfda2e54ad6d34605e4bbabb0df2ca`  
		Last Modified: Thu, 05 Nov 2026 08:03:36 GMT  
		Size: 38.0 MB (37976408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87b34aee006e10f27a99c2905d7b8453f731b7f4625cb58865dda163420b182`  
		Last Modified: Thu, 05 Nov 2026 08:03:35 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61961e24a26e630b453aac39a0b9edaa12386d7acc77f6fc60836e36c3685e6`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 6.1 MB (6091709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eaaa3271aceb798d3c8744d02536e4013946412297501ae842a3af115d282fa`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c49462303f564c867d1ca254a03b2bfa8931a8383b1695336739407df500ce`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6bf7dc4430d961071af6602b1d78201062b12ee25c690fae2821157d288ab8`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:6a553c1c53b39b9fe46698fb724af005bdfd5a3a8fb682a499fe5a4a856d2c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4e40a406f11e7d3d4db9352882b5f36424c1e1318858a8029385ea167297c3`

```dockerfile
```

-	Layers:
	-	`sha256:cafa02b51c95af9b29fd18d78e5acbf9b5cbd17f724710cec6295ee35ea92991`  
		Last Modified: Thu, 05 Nov 2026 09:24:03 GMT  
		Size: 2.3 MB (2290917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78c1387c6b86e42b3d72278fc4ea6ca0f32937eff1e7d99c577dae394e50d283`  
		Last Modified: Thu, 05 Nov 2026 09:24:02 GMT  
		Size: 21.4 KB (21428 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:bc27c84beed7008fa4d450ba600d5a7a83fad1edcc3cec6f534ead89621da66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71206367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09eace41e4d4801701f46ee14c42f4ad9990003e3706101a331c9c5986c44931`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:43:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:53:01 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:53:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:53:01 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:53:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:53:01 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:53:01 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:50:13 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:50:13 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:50:13 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:50:13 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:50:13 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:50:13 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:50:13 GMT
USER fluent
# Thu, 05 Nov 2026 09:50:13 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:50:13 GMT
CMD ["fluentd"]
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
	-	`sha256:c1bd6860fc965222e6cb46f6334d605e0fe30dda9e1ee64fd3c19219cea26fed`  
		Last Modified: Thu, 05 Nov 2026 08:53:11 GMT  
		Size: 37.8 MB (37838920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ca1bf4447dc89047dfe380057edd11923d8e6adab92090f8b02f94dbfadab5`  
		Last Modified: Thu, 05 Nov 2026 08:53:10 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48f324919f22ee1708dad7fa3ead2a6f3378685302fefbc6fa93541be62ed31`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 5.9 MB (5856728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93cd47a4fed8488fcd78e3a1f03c205434e2b95e8a8319a1f06e1c2ccb685939`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ee2e5bdcfc4399eaad8cc6098e185326afc568cc76c39ad352e0a654844c87`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac324faaa2590e4244dd1b1bcdc55d633c084573e8decf8fdd1db6e3e426397c`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:d8b972fcf2afb30d95177834b610579ef7888a6cd64c8a2a63ace8a5b8e4b529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:525dbcfbd07f0585d1563ce2d11e3cd727d794f6cdee31cc5e8bea6a4cda75a2`

```dockerfile
```

-	Layers:
	-	`sha256:29b362bd2db9197d650a499676e03531099883456e3077296da48c11c4d4c665`  
		Last Modified: Thu, 05 Nov 2026 09:50:21 GMT  
		Size: 2.3 MB (2289358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc41d07efbff9a104f75aa18f2a6496a481b9e4b38cfe5769a1cde0dcc7acc8a`  
		Last Modified: Thu, 05 Nov 2026 09:50:20 GMT  
		Size: 21.4 KB (21429 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:fc3a7572bd481e3cad558e67c5c9dbe9c4d725d4ec536dea9a784ab735d91e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79810958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb22ce2d86a3245f11bdcf2482c7b18c4766bfcec1239febbebd3ae35ca62b0`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:09:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:09:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:12:02 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:12:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:12:02 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:12:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:12:02 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:12:02 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:51:57 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:51:57 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:51:57 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:51:57 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:51:57 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:51:57 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:51:57 GMT
USER fluent
# Thu, 05 Nov 2026 08:51:57 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:51:57 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36925f936f1549639847b1e40b616c59bddf7576788f6da6126c5a4d4d7459de`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 1.3 MB (1259396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b524b66013a1bfed5ea9ebebf86124156655118e9f3d9e75814b92c8fdc3d99a`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0ac0750d551ba170186c35a82b13aa637fe043e7ac78309bec247be631e48a`  
		Last Modified: Thu, 05 Nov 2026 08:12:13 GMT  
		Size: 42.2 MB (42152736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c914b2642bc947d7a406ed94101143750c996ab716c3878ad523a7e730769fbb`  
		Last Modified: Thu, 05 Nov 2026 08:12:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff57a5f7a2b8347ee7422a91b14a7d49be7679178fef6844c5585cbc7db89d7`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 6.2 MB (6182397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67166c68ea6ba66fb484769ffa1f00f13d88235ed12b85c64b8bf4fc5280a6fc`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa05b633c3ae39950b74d71eb4888f013c1218ffb8bee634e24cb48752ad27f`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fb471b83d57ecbf998adaccaac367642120e6490f4a346f27e39c5d9b93aa4`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:1961bdaed72ed8874b3a7e72990975ba546f11a8528586cfb2c247bae5c04989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e4c39005a8f69d8cff97c2dc7528896efc3dba85df8874d80c30a7cbda809a`

```dockerfile
```

-	Layers:
	-	`sha256:5a737f3a9a1699389bfde501405b76573f1cdcaee2e46084264fc64f0e87955b`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 2.3 MB (2288210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56e1faa1f9f6f72a1fb9c8b6589f0562adc68791cf4f5080984b605e1ca90f86`  
		Last Modified: Thu, 05 Nov 2026 08:52:06 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; 386

```console
$ docker pull fluentd@sha256:21e7b943d1a8f912524f046bab888cb7598c178818104016ac95eb01848d73dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76570056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da628609defff5be660fcba96880679f66de026f200c9d996e908072c0376256`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:01:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:01:52 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:07:26 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:07:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:07:26 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:07:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:07:26 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:07:26 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 08:44:21 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 08:44:21 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 08:44:21 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 08:44:21 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 08:44:21 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 08:44:21 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 08:44:21 GMT
USER fluent
# Thu, 05 Nov 2026 08:44:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 08:44:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead7b5b6109c9cce1aed188a6283e4f2d6cfd04a806e107943b68650cd415fc9`  
		Last Modified: Thu, 05 Nov 2026 08:04:57 GMT  
		Size: 1.3 MB (1285918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654ca1aaa967b21998c6cb0325198178979947caa1c71a7bdce286312fa8e3b2`  
		Last Modified: Thu, 05 Nov 2026 08:04:56 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e1a087b100de0126f63acb0c5f537633d78f8069138bbc1655507f8ee32bf1`  
		Last Modified: Thu, 05 Nov 2026 08:07:35 GMT  
		Size: 37.7 MB (37731729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5997fbc0a37fc09105dadd4045a959f6f2861cf7153494001866c4cc43941d`  
		Last Modified: Thu, 05 Nov 2026 08:07:34 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abde3edf5f87e4877b6435ba557878b34a5bcde8a3df81d7eae353cc8f3fbcd`  
		Last Modified: Thu, 05 Nov 2026 08:44:30 GMT  
		Size: 6.2 MB (6179252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd3855deb1b01cd2239378e3bcf2a22d3b408286531e6d695c352dbe592512`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d781fa596634f6d474fe45ff48a457ec9da3fe1acd31cfebebcf59562af58b31`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777db3053ac39c3774369b8acb34b817fa02247e3e1e4e51d97da899bf31d2c8`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:900f94ade22443b63ecf81a039fcfa6477b9e44a090927fbe7b8a658e445ea51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9afc83e3265de6e1e11cb911d86e56bd20a76a6ce283da3be0d03b1604add7fb`

```dockerfile
```

-	Layers:
	-	`sha256:402dffef7c9e06e4216208d06458cc8675ce1a257144b620ff074dd285ff5299`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 2.3 MB (2285134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c163cbac70f929dd5d57cf354710ea0f247002866187eebb95cc9e0afafda7cb`  
		Last Modified: Thu, 05 Nov 2026 08:44:29 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; ppc64le

```console
$ docker pull fluentd@sha256:f19c714d5d8d9fde0eee50db822b38ab78383c4cae7a1dd15b8aedfc2ce2f897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81309776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaffe3dc86fa3bda51e22d7ca7d824c724a1dcb424bc27e387597b0fbb831d56`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 08:45:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 08:45:35 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_VERSION=3.4.12
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Wed, 28 Oct 2026 09:09:50 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Wed, 28 Oct 2026 09:09:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Oct 2026 09:09:50 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Oct 2026 09:09:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:09:50 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 28 Oct 2026 09:09:50 GMT
CMD ["irb"]
# Wed, 28 Oct 2026 14:30:53 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 28 Oct 2026 14:30:53 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Wed, 28 Oct 2026 14:30:53 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 28 Oct 2026 14:30:53 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 28 Oct 2026 14:30:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 28 Oct 2026 14:30:54 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 28 Oct 2026 14:30:54 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 28 Oct 2026 14:30:54 GMT
USER fluent
# Wed, 28 Oct 2026 14:30:54 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 28 Oct 2026 14:30:54 GMT
CMD ["fluentd"]
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
	-	`sha256:9681cebcd4328202502cc06d9053c2e1e114b2bbdde90f66696e3e3c9998e851`  
		Last Modified: Wed, 28 Oct 2026 09:10:12 GMT  
		Size: 39.6 MB (39615145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bde37c30a0eafef4ea4b910616d0e74ccae5061ad5c2dac9b6b61674e68f103`  
		Last Modified: Wed, 28 Oct 2026 09:10:11 GMT  
		Size: 144.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1785af96da0e41407a2621aaed330f70be453c7b5e099da15175b5f0b060e9d1`  
		Last Modified: Wed, 28 Oct 2026 14:31:13 GMT  
		Size: 6.7 MB (6719139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249af46561f897d3c9238302489474d6aa9206fb732b990e713479fef83a9d29`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d708e01578f2b55e178ec1407456dbcd35937ef89b4e6b37b6ae35569e634`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af7c728cc3244b21c3ef905f114d01a9c873224c8861c089ffad70c6b8601c4`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:df79aa543637bb344cd3f67b4126fe26590d58554e36fee024fd7d930fc5f0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61dcd86b8548da77fdc649c8d9b90a8ad45f14f6fa8981b3bb93616491a0036`

```dockerfile
```

-	Layers:
	-	`sha256:a436b4bb12d50e88f15e24e5ef4684d56e751af75fdb836210f292fa0536cebd`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 2.3 MB (2291481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31f708a0ae5c9a0b3d8beed93a0a163b2434e49c06146135a6c383c92eb4b996`  
		Last Modified: Wed, 28 Oct 2026 14:31:12 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:v1.19.4-debian-1.0` - linux; s390x

```console
$ docker pull fluentd@sha256:07ff59e0fbb1b8c41fc93d0878edd721048f1a9fda56c3b713921a4198fea9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77076476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e48beb5c36a0f527488edefaf172c78ed08f3b8a13b5bd08f6279de0cd55e26`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:36:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:36:36 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_VERSION=3.4.12
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.12.tar.xz
# Thu, 05 Nov 2026 08:38:51 GMT
ENV RUBY_DOWNLOAD_SHA256=db6c147940d7ad0b706823d42c8e6713c36dec70a1f83f635f1d3a7f0599ec90
# Thu, 05 Nov 2026 08:38:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 08:38:51 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 08:38:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:38:51 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 08:38:51 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 09:24:12 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 05 Nov 2026 09:24:12 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Thu, 05 Nov 2026 09:24:12 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
COPY entrypoint.sh /bin/ # buildkit
# Thu, 05 Nov 2026 09:24:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 05 Nov 2026 09:24:12 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 05 Nov 2026 09:24:12 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Thu, 05 Nov 2026 09:24:12 GMT
USER fluent
# Thu, 05 Nov 2026 09:24:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 05 Nov 2026 09:24:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031869a525c3b996f4b344abba9f3f3036fd7b6217e3496c5ffad848c0aa0f55`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 1.3 MB (1292073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5cffdd251850be0781eb7c3ce1595af577dbd87041acd46a3ab18997842697`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792ff507f7a43f90ab8aa3a53beb3d51a73a36b72585d439204c61c22e96d975`  
		Last Modified: Thu, 05 Nov 2026 08:39:06 GMT  
		Size: 39.3 MB (39290693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908ea11280661457ae34564c8c6781d17de77a11d6f7c30fa04abe05098288ea`  
		Last Modified: Thu, 05 Nov 2026 08:39:05 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c5fdf06261d3058e6f472ff4de3ff0e8f6b303b13932fbf5298c4114104ebc`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 6.6 MB (6567202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce7157daacd6c3cc427d786143bebeea967c20f1e0c43cab9ea75dee1de9a73`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea64e5bdf4ccdfa3c4d63576bdb6ba44aa0c67b7c44b9120ce212b2b8083341c`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f38eda913c7a599b132fd48f81f5d36bfc450aa7f7e46884a3b13988a3ddaba`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:v1.19.4-debian-1.0` - unknown; unknown

```console
$ docker pull fluentd@sha256:b1b60f0b510048fbb47c8bf11765e65cbfb3866b6fdf3947d974f1b35e91bdaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5cb58752556b65a17ec6fa2b43ab6d86080fdb22a070c75b77a20ead53846fd`

```dockerfile
```

-	Layers:
	-	`sha256:11305e3afda8e125a4d2356f573a4edd2f9ac0aa135695403ca0a97c582b44f8`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 2.3 MB (2289391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2adbda358ada24b3e9401fa0a38e4246c0dc5f816456be7b67eade4acf5d177`  
		Last Modified: Thu, 05 Nov 2026 09:24:24 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json
