## `fluentd:latest`

```console
$ docker pull fluentd@sha256:fb4e1deac4edad76800a2106a83dedbb36b4b5595062675b8e7076f21ccc26e6
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
$ docker pull fluentd@sha256:2e3494d3cccefb4a76fa3bc362e9e6332161c3cee84e43075da8735c62244033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79562428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc7b6f3e5041a02f62bf4f94e026cb266890185d1ee115a3a4e6fa5cb4c4593`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:02:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:02:58 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:05:29 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:05:29 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:05:29 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:05:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:05:29 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:05:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:05:29 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:05:29 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 05:39:53 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Tue, 24 Nov 2026 05:39:53 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Tue, 24 Nov 2026 05:39:53 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 05:39:53 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Tue, 24 Nov 2026 05:39:53 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Tue, 24 Nov 2026 05:39:53 GMT
COPY entrypoint.sh /bin/ # buildkit
# Tue, 24 Nov 2026 05:39:53 GMT
ENV FLUENTD_CONF=fluent.conf
# Tue, 24 Nov 2026 05:39:53 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Tue, 24 Nov 2026 05:39:53 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Tue, 24 Nov 2026 05:39:53 GMT
USER fluent
# Tue, 24 Nov 2026 05:39:53 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Tue, 24 Nov 2026 05:39:53 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8382dd80dfaea90cbc3ee9d19c23769ee5099a9a7de21f4cd81ff04d561268`  
		Last Modified: Tue, 24 Nov 2026 05:05:37 GMT  
		Size: 1.3 MB (1277565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd5a300b99b9b59ebe48235730c79fd50905993ab93babfc5a1d5ae77758760`  
		Last Modified: Tue, 24 Nov 2026 05:05:37 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629d30999033d40480c1bd661022ccdd92645b92ef8ff4689819d07b975f27d7`  
		Last Modified: Tue, 24 Nov 2026 05:05:38 GMT  
		Size: 42.2 MB (42233583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c370bf2900705162b0913a18e809f4245f1edd31043a49d2148514a535c884`  
		Last Modified: Tue, 24 Nov 2026 05:05:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcbd795a32005bbb1c560ae0c69b43dc4a82c66bb433303d7f6ff9a5fb9cd70`  
		Last Modified: Tue, 24 Nov 2026 05:40:02 GMT  
		Size: 6.2 MB (6206714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0637fc8574247d10d0722c5a3f7f882a6ff81b4dca53dfa2d3b49bacded7148`  
		Last Modified: Tue, 24 Nov 2026 05:40:01 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4027f14150566b7f3c788b1590c19d1eb8c00f52d53abde27eaf482c7727fe7`  
		Last Modified: Tue, 24 Nov 2026 05:40:01 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731d3ec72cc0405d64912f163f1155b71d28e5d8cb3ee43288962941822bc8cb`  
		Last Modified: Tue, 24 Nov 2026 05:40:01 GMT  
		Size: 476.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:11e4e35908833c955677098445d14ac8a58546124a3dedac2f439e387e5f72c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c21f90c173e9ec54ee375b6f63b53119b44a3c3f6c0c3e6d8f996a84b151c50f`

```dockerfile
```

-	Layers:
	-	`sha256:569a2516371ab527a15a892526fab247755638e4227ddcd28976adca8808f6fc`  
		Last Modified: Tue, 24 Nov 2026 05:40:01 GMT  
		Size: 2.3 MB (2287974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f4bc3ad3956445598e15151223d32857db8035d78cef98c3e114b6f60a2e5a4`  
		Last Modified: Tue, 24 Nov 2026 05:40:01 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:8dce6e3f01457d94a3c17e3e202fac86f0150bb38e4380157aeb6c6a0019d2be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73375590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2056f9a26afa76209ce4cb52b1870962bcc0e0a1d9706a5ec076a3463bcb43d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:59:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:59:20 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:02:25 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:02:25 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:02:25 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:02:25 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:02:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:02:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:02:25 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:02:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:02:25 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:02:25 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 06:20:34 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Tue, 24 Nov 2026 06:20:34 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Tue, 24 Nov 2026 06:20:34 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 06:20:35 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Tue, 24 Nov 2026 06:20:35 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Tue, 24 Nov 2026 06:20:35 GMT
COPY entrypoint.sh /bin/ # buildkit
# Tue, 24 Nov 2026 06:20:35 GMT
ENV FLUENTD_CONF=fluent.conf
# Tue, 24 Nov 2026 06:20:35 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Tue, 24 Nov 2026 06:20:35 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Tue, 24 Nov 2026 06:20:35 GMT
USER fluent
# Tue, 24 Nov 2026 06:20:35 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Tue, 24 Nov 2026 06:20:35 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8af4e43b950f9ad22beff2f560a8b07491264d2a269e9260a4b09f5410e5bf`  
		Last Modified: Tue, 24 Nov 2026 05:02:34 GMT  
		Size: 1.3 MB (1261830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67b5ab82407b5b605111d9c49dbf397558968d2380639f7cff3c20fe3dae6f0`  
		Last Modified: Tue, 24 Nov 2026 05:02:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aab5801ee8380a3dd223cbee320a5e43248f1f78589f48095e2b15ea722edfa`  
		Last Modified: Tue, 24 Nov 2026 05:02:35 GMT  
		Size: 38.0 MB (38010844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19763a9caedf18f2fc35e0db5ffbda9136b07c362dbd4d343eeeb8aba2fdd82f`  
		Last Modified: Tue, 24 Nov 2026 05:02:34 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc3e0524995015e0c829c7585ca58c536370434a9e86d780a52986000c9e5f2`  
		Last Modified: Tue, 24 Nov 2026 06:20:43 GMT  
		Size: 6.1 MB (6091740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0131c00e1d6cda04c7445da07ac8f80062f9c391b4696d5e547fffaf745e19b3`  
		Last Modified: Tue, 24 Nov 2026 06:20:42 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434da733660f318e43e8c646e46c5fe03bef2b0844ca027eb1ccdb050fa6fc22`  
		Last Modified: Tue, 24 Nov 2026 06:20:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5f7c00d42cd67f8211df8c7621144920dd36c5ef4add49a2c7e3fbaa0bf5e1`  
		Last Modified: Tue, 24 Nov 2026 06:20:43 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:188f815165df425d7570408a004c9a38a0fbd6cf5e2e83c54b18ff6fdf78f290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272e2f413b98006d4784eebbdccd73c40f0f96cf3d77f95e432849a431226eaf`

```dockerfile
```

-	Layers:
	-	`sha256:455dae97654149126ae7a8ee96f070fa107c5d08b74bd89ee64f6360c4ea629a`  
		Last Modified: Tue, 24 Nov 2026 06:20:42 GMT  
		Size: 2.3 MB (2290945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c219b131eaf0bb124cfc492dfe4f567ec072625d84c9c9fd1a7e6658fec3048c`  
		Last Modified: Tue, 24 Nov 2026 06:20:42 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:15fa4042de8cb24e37357b8cac47f6cd7fcec262ed7f45a6bb51a650c791a180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71234247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b765a2df6bbbe04088758481adb6cab1f9b254c59090c774443c200e7e730b`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:41:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:44 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:50:59 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:50:59 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:50:59 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:50:59 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:50:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:50:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:50:59 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:50:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:50:59 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:50:59 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 06:46:58 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Tue, 24 Nov 2026 06:46:58 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Tue, 24 Nov 2026 06:46:58 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 06:46:59 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Tue, 24 Nov 2026 06:46:59 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Tue, 24 Nov 2026 06:46:59 GMT
COPY entrypoint.sh /bin/ # buildkit
# Tue, 24 Nov 2026 06:46:59 GMT
ENV FLUENTD_CONF=fluent.conf
# Tue, 24 Nov 2026 06:46:59 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Tue, 24 Nov 2026 06:46:59 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Tue, 24 Nov 2026 06:46:59 GMT
USER fluent
# Tue, 24 Nov 2026 06:46:59 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Tue, 24 Nov 2026 06:46:59 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77e53a9284ae85329154c2646c70f93220eb981553d84dc90bf64f6e3583295`  
		Last Modified: Tue, 24 Nov 2026 05:45:09 GMT  
		Size: 1.2 MB (1235221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c93d94e5411f7c0f106af314fb9d69b099798a202c1191330ec3539f10e1dc`  
		Last Modified: Tue, 24 Nov 2026 05:45:08 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f88d7da7675907abbcf7db6ad2108570e500ce6c5f29ce27203f1bb3e096da9`  
		Last Modified: Tue, 24 Nov 2026 05:51:09 GMT  
		Size: 37.9 MB (37877476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74739e500375d434c74daf74606404c9cb781ce680ccef9052a33e270264781`  
		Last Modified: Tue, 24 Nov 2026 05:51:08 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4928ca889b471c6e667a7ec108d882ea74462f2d9303f8540b30d91fed9de585`  
		Last Modified: Tue, 24 Nov 2026 06:47:07 GMT  
		Size: 5.9 MB (5856703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0d0a2adf72a9e5acb827f1861ace1e5389a1f974663539801c9cfea5cd588a`  
		Last Modified: Tue, 24 Nov 2026 06:47:06 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68fb840d215dfc30e521b300054b5c071490ff5b22f20967af19dd16781fae4`  
		Last Modified: Tue, 24 Nov 2026 06:47:06 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5839cb3ef78107edccc6e836b8ecb2ff0c7060929f6735a03f1da842514cbeb3`  
		Last Modified: Tue, 24 Nov 2026 06:47:06 GMT  
		Size: 476.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:6289d4bb6c8e38f8d44bebbf12cc8ce72031bbdc654feadc0282f35f54a3e78b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17080f6567c8542474fb7145e6b3300e604e945495bb28ab944f947459f0caa8`

```dockerfile
```

-	Layers:
	-	`sha256:1a70d4b634144a2235f3d4ee15ba69f0d705117b73b5b2a13166f2d1d3b44295`  
		Last Modified: Tue, 24 Nov 2026 06:47:06 GMT  
		Size: 2.3 MB (2289386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:427745feb31731555c409c9dd911e4a1a783d3f130058f8121b0dd24bbefa8c8`  
		Last Modified: Tue, 24 Nov 2026 06:47:06 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:ba270f956e92a653ac334d2d2e97e2e2a4fe2ac1caeb72037be116ddfce0b8c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79834160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:505103e6d366fa0f6da57a781a38ed5f6261436b7a54a2d4bd20bd1df878c917`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:03:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:03:48 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:12:57 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:12:57 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:12:57 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:12:57 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:12:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:12:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:12:57 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:12:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:12:57 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:12:57 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 05:53:30 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Tue, 24 Nov 2026 05:53:30 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Tue, 24 Nov 2026 05:53:30 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 05:53:30 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Tue, 24 Nov 2026 05:53:30 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Tue, 24 Nov 2026 05:53:30 GMT
COPY entrypoint.sh /bin/ # buildkit
# Tue, 24 Nov 2026 05:53:30 GMT
ENV FLUENTD_CONF=fluent.conf
# Tue, 24 Nov 2026 05:53:30 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Tue, 24 Nov 2026 05:53:30 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Tue, 24 Nov 2026 05:53:30 GMT
USER fluent
# Tue, 24 Nov 2026 05:53:30 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Tue, 24 Nov 2026 05:53:30 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db79e5fc6b62ee349373e117703c59aeaca4cbab608d24100b9f893cb6288fa`  
		Last Modified: Tue, 24 Nov 2026 05:07:11 GMT  
		Size: 1.3 MB (1259878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6952968c8233ab4b7d99f9347f22c23d9dbba5e825c342bdf4a4256ac42c41a5`  
		Last Modified: Tue, 24 Nov 2026 05:07:11 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171a2dc81c494ca339a115d7ffa5a92f9e7ca93e54ec5fa4899c6a8d90c9b8ad`  
		Last Modified: Tue, 24 Nov 2026 05:13:07 GMT  
		Size: 42.2 MB (42191392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c40c3c1df310881eb527bad34aa1e98d1a104ec2f2781459367f2b7cf529b90`  
		Last Modified: Tue, 24 Nov 2026 05:13:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d959d163517e0f854cf61d5bc49ea628f46989b362a07aa2b7cdbeba0905b1`  
		Last Modified: Tue, 24 Nov 2026 05:53:39 GMT  
		Size: 6.2 MB (6182467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87d5d1a2b837a45cb264ebb76fd8be784402e010d8b99e960f4b56c6995c04e`  
		Last Modified: Tue, 24 Nov 2026 05:53:39 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb77d7294143a492de8e2ed86e5107141ff00052cc482f1048e131786489a2a2`  
		Last Modified: Tue, 24 Nov 2026 05:53:38 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d8367163c81424635406ca03edd3f0ee6d443d8161d96a4cb2e7c49566bf77`  
		Last Modified: Tue, 24 Nov 2026 05:53:39 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:6653b43b2ab8829b5d09c57187af3218a3c04ae256c42589a00701e69d60e255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfd01e2653d1f1bb4805ad38a22da78c6c0b120ad2c3cba0eb94cc9bb3a8a4c`

```dockerfile
```

-	Layers:
	-	`sha256:4200e6cac0b627594edc21bf47ef4e70122281a78bc91475a28b07819561d5da`  
		Last Modified: Tue, 24 Nov 2026 05:53:38 GMT  
		Size: 2.3 MB (2288238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2a2a2bafd4a5234bf0f1c749a4e60c58847827033e0235e3772b72b697cf954`  
		Last Modified: Tue, 24 Nov 2026 05:53:38 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; 386

```console
$ docker pull fluentd@sha256:572b575f595faeede02b7e8acb5c7daf57718589b808b3fee29e3cf089625a9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76591999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a16339dedb6d0a1c072ce2456244fccfbfe5749c2e49dcf19192868c1459d5e`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:02:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:02:31 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:07:43 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:07:43 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:07:43 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:07:43 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:07:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:07:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:07:43 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:07:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:07:43 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:07:43 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 05:42:44 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Tue, 24 Nov 2026 05:42:44 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Tue, 24 Nov 2026 05:42:44 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 05:42:44 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Tue, 24 Nov 2026 05:42:44 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Tue, 24 Nov 2026 05:42:44 GMT
COPY entrypoint.sh /bin/ # buildkit
# Tue, 24 Nov 2026 05:42:44 GMT
ENV FLUENTD_CONF=fluent.conf
# Tue, 24 Nov 2026 05:42:44 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Tue, 24 Nov 2026 05:42:44 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Tue, 24 Nov 2026 05:42:44 GMT
USER fluent
# Tue, 24 Nov 2026 05:42:44 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Tue, 24 Nov 2026 05:42:44 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddcd46573827b61367608cfe8bfe964e97697c47fc1cdc7df5a546c9879ab25`  
		Last Modified: Tue, 24 Nov 2026 05:05:04 GMT  
		Size: 1.3 MB (1286012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316ba3f3bca0d14cbb3939ff8d4cb4e5ced60d3cae6f89ffde527eecec735c78`  
		Last Modified: Tue, 24 Nov 2026 05:05:04 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e5cd2b38306edf8125f710d37bf6354cda0587e680fa8d4c25fc592a376834`  
		Last Modified: Tue, 24 Nov 2026 05:07:52 GMT  
		Size: 37.8 MB (37766614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465582615b14179041193f62be84c4720e3b7fdd23a4c22cc8c6e16ddf289f9c`  
		Last Modified: Tue, 24 Nov 2026 05:07:51 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fecf7532a49018d205c93c0d85b2f9a0dde14360ec3d19cd63e63813845d4ad`  
		Last Modified: Tue, 24 Nov 2026 05:42:53 GMT  
		Size: 6.2 MB (6179067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0588b25070783f7bf643ec15ab0f747cb2adcb9c9e678260e418e37a4124e4`  
		Last Modified: Tue, 24 Nov 2026 05:42:52 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:525749d02c1a66bb158813f33b141d08250f507266ae7e1d90fc202f267cd89c`  
		Last Modified: Tue, 24 Nov 2026 05:42:52 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91f1a809c0441274571ff55ebd9df930088a2091304a03eb2aef50d8fc99789`  
		Last Modified: Tue, 24 Nov 2026 05:42:52 GMT  
		Size: 476.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:e953f0b3c789e9dfe07fafc28c8596c80cb44e2fb85c6ec96bc806706fa46778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81663f1b1a0141368dd25a5d5995e29512edf99f3a304a999f355e30ab340a89`

```dockerfile
```

-	Layers:
	-	`sha256:7d503dfe68f485ec36bd3eea46c712677a1b910e3eaa48a1debfb46106a8aff3`  
		Last Modified: Tue, 24 Nov 2026 05:42:52 GMT  
		Size: 2.3 MB (2285162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9ae94293bee1e34e4640b97df68e0c347cdf38c24d20858dd8d403817ead801`  
		Last Modified: Tue, 24 Nov 2026 05:42:52 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; ppc64le

```console
$ docker pull fluentd@sha256:82520d7aaab35a9e4e570860511ad922e5deb5fda0252630bab00a8eaf87e271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81329609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c24eaffaf20dcedd3b8cd08327b6b358f359a5274a12f352eb4145597b0d29`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 11:37:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 11:37:27 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 12:01:04 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 12:01:04 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 12:01:04 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 12:01:04 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 12:01:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 12:01:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 12:01:04 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 12:01:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:01:05 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 12:01:05 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 16:34:10 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Tue, 24 Nov 2026 16:34:10 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Tue, 24 Nov 2026 16:34:10 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 16:34:11 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Tue, 24 Nov 2026 16:34:12 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Tue, 24 Nov 2026 16:34:12 GMT
COPY entrypoint.sh /bin/ # buildkit
# Tue, 24 Nov 2026 16:34:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Tue, 24 Nov 2026 16:34:12 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Tue, 24 Nov 2026 16:34:12 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Tue, 24 Nov 2026 16:34:12 GMT
USER fluent
# Tue, 24 Nov 2026 16:34:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Tue, 24 Nov 2026 16:34:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89727c0728527402d62a3f493cc3b66e9f7b352d6798f72cd61500f417e7bd6`  
		Last Modified: Tue, 24 Nov 2026 11:43:46 GMT  
		Size: 1.3 MB (1306868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be41b6dabb4af2e27fdf8a92b7f7fdcc3c1d6f75caf189db8df28b0584a35a4`  
		Last Modified: Tue, 24 Nov 2026 11:43:45 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744eda886b0b7be3214397c3c6c78452311d22aaa20f0169d2f3b17113c7df33`  
		Last Modified: Tue, 24 Nov 2026 12:01:24 GMT  
		Size: 39.6 MB (39648390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9c3b9921f73a6e47e0f424117ed02f37094a0fd4e4845e0f3ac04af3371c43`  
		Last Modified: Tue, 24 Nov 2026 12:01:23 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0de7c7f08d95592558debff630a6f6f9947bfbbc29cf9c13221f597ce4ff1e4`  
		Last Modified: Tue, 24 Nov 2026 16:34:31 GMT  
		Size: 6.7 MB (6719323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c5dfa8e34b742272dd1c47fc3ce0e7594bcc759b1d1cb40da29e650ab23353`  
		Last Modified: Tue, 24 Nov 2026 16:34:31 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4393c6a20b72c92ed62842be5b3e6996b01d2311fa31a4e27f133aec9458ff2c`  
		Last Modified: Tue, 24 Nov 2026 16:34:31 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf1c380df2ae3731c99fa0f9e3e96d7a6d0838edfba64544a664771b129406c`  
		Last Modified: Tue, 24 Nov 2026 16:34:31 GMT  
		Size: 477.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:b7b137c139c794373f0b4068aa52983019e30a7dd49e6c78dbff5a25bcca503d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c217aec8055d4665f6b0a4082990ac2385ca9607f9de94153372ba5355120a`

```dockerfile
```

-	Layers:
	-	`sha256:d05c419968b7646458c3d52e663354858cc55314933318177b4aa32a2338894d`  
		Last Modified: Tue, 24 Nov 2026 16:34:31 GMT  
		Size: 2.3 MB (2291509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb404dfab00ec480e2dcfb1baa49d9fe1882bd2a2e3cc4d3da4c259c7ea2a847`  
		Last Modified: Tue, 24 Nov 2026 16:34:30 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; s390x

```console
$ docker pull fluentd@sha256:93d42feca53616b70b33fda079a4a9de6a2fdefead019a32b6dda0ab7ee30589
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77093517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8135cee8fe3c7712f73f3441338553453ab3f45fa609b272e5742e325019041`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:27:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:27:26 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Tue, 24 Nov 2026 05:29:53 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:29:53 GMT
ENV RUBY_VERSION=3.4.13
# Tue, 24 Nov 2026 05:29:53 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.13.tar.xz
# Tue, 24 Nov 2026 05:29:53 GMT
ENV RUBY_DOWNLOAD_SHA256=6474dff9c02ea685fc44877a4807a27366bf109b176dad182108bb8c96d09589
# Tue, 24 Nov 2026 05:29:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Tue, 24 Nov 2026 05:29:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Nov 2026 05:29:53 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Nov 2026 05:29:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:29:54 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Tue, 24 Nov 2026 05:29:54 GMT
CMD ["irb"]
# Tue, 24 Nov 2026 06:19:52 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Tue, 24 Nov 2026 06:19:52 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.4
# Tue, 24 Nov 2026 06:19:52 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.19.9  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.4  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 24 Nov 2026 06:19:52 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Tue, 24 Nov 2026 06:19:52 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Tue, 24 Nov 2026 06:19:52 GMT
COPY entrypoint.sh /bin/ # buildkit
# Tue, 24 Nov 2026 06:19:52 GMT
ENV FLUENTD_CONF=fluent.conf
# Tue, 24 Nov 2026 06:19:52 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Tue, 24 Nov 2026 06:19:52 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Tue, 24 Nov 2026 06:19:52 GMT
USER fluent
# Tue, 24 Nov 2026 06:19:52 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Tue, 24 Nov 2026 06:19:52 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8c6fdf124b48a28f9ad4c287a35a811b58010a2a3a63ff3d592c5a47922517`  
		Last Modified: Tue, 24 Nov 2026 05:30:07 GMT  
		Size: 1.3 MB (1291802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870f047d5c1af0411cfa5875061395b5d4427fa7a755cac1b18af49448f6c3ed`  
		Last Modified: Tue, 24 Nov 2026 05:30:07 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593dcdd32f90ccc975d532220255c1f3de8c5417ad24cc9f1290803ba1b916de`  
		Last Modified: Tue, 24 Nov 2026 05:30:07 GMT  
		Size: 39.3 MB (39321936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cc06b4956b522e35b537674412004b3d63ecadb984936fff143811f2844a4d`  
		Last Modified: Tue, 24 Nov 2026 05:30:07 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cb2ace0bcc01f936935ff874d1e161db92770479c9b2b79c9f673f02949531`  
		Last Modified: Tue, 24 Nov 2026 06:20:05 GMT  
		Size: 6.6 MB (6567366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e4a19a60efce54e5226b8aec7c3c26dd48d73f0471dcfe073e8ad82320aacd`  
		Last Modified: Tue, 24 Nov 2026 06:20:05 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3f1c5822489a4c5799238a003c46603ce313c98489d6047d1dd675dbbb6b13`  
		Last Modified: Tue, 24 Nov 2026 06:20:05 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0e76259dffeb74f4857e494796584320957f3009e0d1750225e2eca0a41ee8`  
		Last Modified: Tue, 24 Nov 2026 06:20:05 GMT  
		Size: 477.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:3941110392933be2cd90fde4056651f3f896a057de37bb6f778ca8e6be7e754d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7572058b6b720f28ba39887df3641a9f7df22359ec1b02466d39ac972fe6cdaf`

```dockerfile
```

-	Layers:
	-	`sha256:302ad17a276d3471da92694f3943aa6e0c7b159c66469aa29699119dfee0f74c`  
		Last Modified: Tue, 24 Nov 2026 06:20:05 GMT  
		Size: 2.3 MB (2289419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:383c7535baa5661d2f307110831f1ac9803c946ae3a2966f5c49b349935637c7`  
		Last Modified: Tue, 24 Nov 2026 06:20:05 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json
