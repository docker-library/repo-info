## `fluentd:latest`

```console
$ docker pull fluentd@sha256:293c9ea86045365b29d0cd97fb5451b90a4e911decd353fac185f2e087157805
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
$ docker pull fluentd@sha256:e42805b7470043fe4187231360c0f169b6d303663d7d0fabfaa004482ec251aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79329754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed50e089b165074778b64d39922e1c9c62d97bbb2b631e3f340da7e77985016`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:13:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:13:00 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 01:15:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:15:13 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 05 Aug 2026 01:15:13 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 05 Aug 2026 01:15:13 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 05 Aug 2026 01:15:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 01:15:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 01:15:13 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 01:15:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:15:13 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 01:15:13 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 01:50:28 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 05 Aug 2026 01:50:28 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Wed, 05 Aug 2026 01:50:28 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 01:50:28 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 05 Aug 2026 01:50:28 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 05 Aug 2026 01:50:28 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 05 Aug 2026 01:50:28 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 05 Aug 2026 01:50:28 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 05 Aug 2026 01:50:28 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 05 Aug 2026 01:50:28 GMT
USER fluent
# Wed, 05 Aug 2026 01:50:28 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 05 Aug 2026 01:50:28 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c54c782b73a18f79a66d893683482ab453139475bcda99e129faab0855c90b`  
		Last Modified: Wed, 05 Aug 2026 01:15:21 GMT  
		Size: 1.3 MB (1279959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c084e0bc42aa7c4181d571fee2c8817c3ec2ebd4d92667223821dce09f59cf26`  
		Last Modified: Wed, 05 Aug 2026 01:15:21 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61e40e2b3edc6e117a0a76add97c642c42161085a3cb76b30345dbdf2d9e2ed`  
		Last Modified: Wed, 05 Aug 2026 01:15:23 GMT  
		Size: 42.2 MB (42164706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b802dd01eb007f68bcf59dab9ce60aecf0e94e4cac83450650f71dcad2d7e7`  
		Last Modified: Wed, 05 Aug 2026 01:15:21 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f58f123b195c14a852c630883ad1c5acff5ff55bb4112d07810c24b9fe1b014`  
		Last Modified: Wed, 05 Aug 2026 01:50:37 GMT  
		Size: 6.1 MB (6101931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ec38233c11e29b3b03769b82c56edc87fe096d5d537efd3ff52a065fcff843`  
		Last Modified: Wed, 05 Aug 2026 01:50:37 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b99c223b3b7c50ad6c932ce138717b217ca054ed5f832e2606fd19981cfe9f3`  
		Last Modified: Wed, 05 Aug 2026 01:50:37 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e84067c1ef2c6a62c756a3739f92536d0731b5b1db15ba5d2b9200b1b829a96`  
		Last Modified: Wed, 05 Aug 2026 01:50:37 GMT  
		Size: 477.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:c4128f01f484bb12a360189714fb08b5229dcf38d15e19defe06d0a569e22f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e687243645ec72645c6c85f40d8b057895d03af602c5010c2173606eebfe06e`

```dockerfile
```

-	Layers:
	-	`sha256:e72a91aaaef58927d7f56920159a32c278250c645b4a447a3e7804a03913e065`  
		Last Modified: Wed, 05 Aug 2026 01:50:37 GMT  
		Size: 2.3 MB (2281928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9566d0e05c732647f168277f04cbe21c17153e86b6c3dcdf2dd7aea6e4755c1f`  
		Last Modified: Wed, 05 Aug 2026 01:50:37 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:726dcd614f54bef670fcd22728112cba8db1c4b26ddeb7d5ac9d0016c26a03ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73157358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e39f538dede3868aa6a2a88ea06383409714ae5f9cc85848613f6822e73cd13b`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:56:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:56:47 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 00:59:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:59:55 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 05 Aug 2026 00:59:55 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 05 Aug 2026 00:59:55 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 05 Aug 2026 00:59:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 00:59:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 00:59:55 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 00:59:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:59:55 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 00:59:55 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 02:54:02 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 05 Aug 2026 02:54:02 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Wed, 05 Aug 2026 02:54:02 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 02:54:02 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 05 Aug 2026 02:54:02 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 05 Aug 2026 02:54:02 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 05 Aug 2026 02:54:02 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 05 Aug 2026 02:54:02 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 05 Aug 2026 02:54:02 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 05 Aug 2026 02:54:02 GMT
USER fluent
# Wed, 05 Aug 2026 02:54:02 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 05 Aug 2026 02:54:02 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc55d3411af8276bd83f8bb7740613bcbce89ccf01ba4e925cd1b1edf4975bcc`  
		Last Modified: Wed, 05 Aug 2026 01:00:08 GMT  
		Size: 1.3 MB (1263752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502b69b751c119894716b2ef5e361718ef3dae9210f33209d3bf3365a6792acc`  
		Last Modified: Wed, 05 Aug 2026 01:00:08 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab0c8d719b970dae75f7ff01534d5e2b4ece207f8b7f778577368cea5e31445`  
		Last Modified: Wed, 05 Aug 2026 01:00:09 GMT  
		Size: 37.9 MB (37944808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c387fea0fe788d274e50bc2a032108e609da693fc76cdc743657345572afb6`  
		Last Modified: Wed, 05 Aug 2026 01:00:08 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdbb911be7de95c7741004e208da78b9b64662299bdc0b720c9e53bd301be78`  
		Last Modified: Wed, 05 Aug 2026 02:54:10 GMT  
		Size: 6.0 MB (5991691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14965b1819100b49c6354ae28048b7d4585be2082bc8f1987d7f4ff96e271856`  
		Last Modified: Wed, 05 Aug 2026 02:54:10 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fd6ce37c0e047786610f93bae90656b1e118bdfdb8b508d6f41e8dce2c59a0`  
		Last Modified: Wed, 05 Aug 2026 02:54:10 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08229e1e046d2ca8d2501dfa2979f4db4250f2c901be40ee6899e941db535317`  
		Last Modified: Wed, 05 Aug 2026 02:54:10 GMT  
		Size: 477.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:3b629671bb0616bae79edea69241394c86c6ccc76d90f7befb94e45c32bd423a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f834eac241922a1f7d34758d9bb7fc6bbc076a28f0b768a72e3065bd0058452c`

```dockerfile
```

-	Layers:
	-	`sha256:eda20854151cb56620db78bb5546662aeb7228c2bc54d19f3f3414dbe342fc85`  
		Last Modified: Wed, 05 Aug 2026 02:54:10 GMT  
		Size: 2.3 MB (2284899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6746bad350128604d8234670b354f229512ca1dd766603373b11c0286591758`  
		Last Modified: Wed, 05 Aug 2026 02:54:10 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:ccc0795e2df8b590773b409eb0c8e1d5bc6653a9f8eeae53dc8d765aad63c5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71009693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da6233d4b3c41fd72245ae39001190b018e4be7af4c8f9c6e40831cfc103f26`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:59:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:59:56 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 02:02:48 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 02:02:48 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 05 Aug 2026 02:02:48 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 05 Aug 2026 02:02:48 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 05 Aug 2026 02:02:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 02:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 02:02:48 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 02:02:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:02:48 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 02:02:48 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 03:00:08 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 05 Aug 2026 03:00:08 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Wed, 05 Aug 2026 03:00:08 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 03:00:08 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 05 Aug 2026 03:00:08 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 05 Aug 2026 03:00:08 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 05 Aug 2026 03:00:08 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 05 Aug 2026 03:00:08 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 05 Aug 2026 03:00:08 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 05 Aug 2026 03:00:08 GMT
USER fluent
# Wed, 05 Aug 2026 03:00:08 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 05 Aug 2026 03:00:08 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9944e27c039730c14c058cb28aeccad06c95c2ba700531529aa544a290908c11`  
		Last Modified: Wed, 05 Aug 2026 02:02:57 GMT  
		Size: 1.2 MB (1237577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5508f07101733f27da85be16f54cba6653d9afe32e959fb7abea6638aca363`  
		Last Modified: Wed, 05 Aug 2026 02:02:57 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9609b1ebd2d73239a8a6f116e451fb99312a532f5894c70f4f0dd8565c86cf`  
		Last Modified: Wed, 05 Aug 2026 02:02:58 GMT  
		Size: 37.8 MB (37808512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa7b567b336d23f49b4ff00584318ca4a80149d9bcc6f781b9e9868288b10794`  
		Last Modified: Wed, 05 Aug 2026 02:02:57 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dceddb945f51ca457a4982fd405b9f2c73836fbff37993a3749f95413e29d7`  
		Last Modified: Wed, 05 Aug 2026 03:00:17 GMT  
		Size: 5.8 MB (5754844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d78b75d6e05708d438f2165dcead59884bfb9504ce2debc99c21f962e7ec194`  
		Last Modified: Wed, 05 Aug 2026 03:00:16 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc78e93852b27a31520b71e0fa9d3f2cc9c36342e6d01bfec4dd5afa537c467`  
		Last Modified: Wed, 05 Aug 2026 03:00:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5933004dc35ea99c256e576f2da80372e841953073c9e35c5f5704d5985adb`  
		Last Modified: Wed, 05 Aug 2026 03:00:17 GMT  
		Size: 475.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:29a64753accbbda823754ab6aea1e2227d6339a63bce8a686935597844c3a205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2304770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a909561b306e8432f14d59d639637ce2a9e09cd176f9dd299ef5a4d8f56c57`

```dockerfile
```

-	Layers:
	-	`sha256:97b39d30cdc56350697f8be2fd111d31db3db576ab80cc70e1521a1563091bc1`  
		Last Modified: Wed, 05 Aug 2026 03:00:16 GMT  
		Size: 2.3 MB (2283340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e74d3858617104b260d139175d483e56a00f9b82240dbf96152fe2b52bda55aa`  
		Last Modified: Wed, 05 Aug 2026 03:00:16 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:7949c629347730b4057d5767128f42c37dbe72980a65d28d5f5d1179680b8cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79621165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29661331b97b7b6d928491ea1464cbc0c98dd9838b8d353edb3913e0524b030`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:19:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:19:48 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 01:22:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:22:16 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 05 Aug 2026 01:22:16 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 05 Aug 2026 01:22:16 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 05 Aug 2026 01:22:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 01:22:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 01:22:16 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 01:22:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:16 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 01:22:16 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 02:25:36 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 05 Aug 2026 02:25:36 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Wed, 05 Aug 2026 02:25:36 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 02:25:36 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 05 Aug 2026 02:25:36 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 05 Aug 2026 02:25:36 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 05 Aug 2026 02:25:36 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 05 Aug 2026 02:25:36 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 05 Aug 2026 02:25:36 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 05 Aug 2026 02:25:36 GMT
USER fluent
# Wed, 05 Aug 2026 02:25:36 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 05 Aug 2026 02:25:36 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6583180dd761596e5d8d7288d1b586aba1e874fa90a977a2c8294b358a818d1`  
		Last Modified: Wed, 05 Aug 2026 01:22:26 GMT  
		Size: 1.3 MB (1261998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1abd4287fbc6b6ef07110333b237352f70859d962bd0cdbfe1f15851d806b7`  
		Last Modified: Wed, 05 Aug 2026 01:22:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b188bcb0e62ceb12dacbf6973427bf2338cc8e79dbd438bcf62388b2a89e51ac`  
		Last Modified: Wed, 05 Aug 2026 01:22:27 GMT  
		Size: 42.1 MB (42133860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e4ede6c0f3d6cf502a3d5a00d818cd1e3dcbb065fcc522af1d1b4551d13ce7`  
		Last Modified: Wed, 05 Aug 2026 01:22:26 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d84d38380b20f3af0d11b2b106dc87aedf43baedd4c2bf2c3453f84e1000ecb`  
		Last Modified: Wed, 05 Aug 2026 02:25:44 GMT  
		Size: 6.1 MB (6079306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a727f91d8c23b773ce7ff1a296fc5102a1392bdaf05e67a7405b532c4bbf5c`  
		Last Modified: Wed, 05 Aug 2026 02:25:44 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6664e3472a83a84dee2ee33df16734100ab6c8fb4e57bf28c0240cdc732e387c`  
		Last Modified: Wed, 05 Aug 2026 02:25:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a7032bece50f03803e9db59f289d11eada10cc5d1ee5477e7a2a8df9500671`  
		Last Modified: Wed, 05 Aug 2026 02:25:44 GMT  
		Size: 477.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:e91c798deb3bf3b12c80d0d34dec8fa2099d7b36a8cc32f2f4a798f69e613eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2303652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:576b6ab7edf830c990b6cd15aea6dd75f4503a3e26b11a7b8bcc4ab5a7fdaf3c`

```dockerfile
```

-	Layers:
	-	`sha256:04d758636fbdbb3bd42a294d2ba1bd8a8103c96f72d79bcabdc77f2b5bed87fe`  
		Last Modified: Wed, 05 Aug 2026 02:25:44 GMT  
		Size: 2.3 MB (2282192 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6812a9854e4fdc487b8df10fc3403b6283593d3528531b83885154a6ba562b1a`  
		Last Modified: Wed, 05 Aug 2026 02:25:44 GMT  
		Size: 21.5 KB (21460 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; 386

```console
$ docker pull fluentd@sha256:02e738f249e285e73ab785acebf05afbba6e69c787f21fe245e15c8035199960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76354607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:377098241ed9016317e446b1efe7a418a830fdde86141633c087baa4ce07b8eb`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:12:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:12:46 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 01:15:24 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:15:24 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 05 Aug 2026 01:15:24 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 05 Aug 2026 01:15:24 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 05 Aug 2026 01:15:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 01:15:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 01:15:24 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 01:15:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:15:24 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 01:15:24 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 01:55:38 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 05 Aug 2026 01:55:38 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Wed, 05 Aug 2026 01:55:38 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 01:55:39 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 05 Aug 2026 01:55:39 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 05 Aug 2026 01:55:39 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 05 Aug 2026 01:55:39 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 05 Aug 2026 01:55:39 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 05 Aug 2026 01:55:39 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 05 Aug 2026 01:55:39 GMT
USER fluent
# Wed, 05 Aug 2026 01:55:39 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 05 Aug 2026 01:55:39 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7d42d2c96042ace3e88d7c08b3a2d7d7c8200ee86d52ba7758d92190f755ad`  
		Last Modified: Wed, 05 Aug 2026 01:15:33 GMT  
		Size: 1.3 MB (1287800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cd0db10d3f12b468e506cecd8916caf4b7f1769d6ffc471ea1b7f278b9b1c5`  
		Last Modified: Wed, 05 Aug 2026 01:15:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a88f393e2c2df2dd0a191609e2ce96300d048712d7ab5585f630088ed97a72`  
		Last Modified: Wed, 05 Aug 2026 01:15:34 GMT  
		Size: 37.7 MB (37691092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b6663f59a8a82c648900b5f9570bc4e55432fd5005834e381ec7bd53575757b`  
		Last Modified: Wed, 05 Aug 2026 01:15:33 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dffc3f8f7c1142f68cbd67ac09c0e05c1e023a6a0d271e987d555109e8261b09`  
		Last Modified: Wed, 05 Aug 2026 01:55:46 GMT  
		Size: 6.1 MB (6077056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55bba24255e36c5393995938a9d76f6af527392aeb1e44cce434740518d20b9`  
		Last Modified: Wed, 05 Aug 2026 01:55:46 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1478ee7fc20f33ce6d42446f924d7cf875e3bee2decc4cc6eabb6ac9d28ee53e`  
		Last Modified: Wed, 05 Aug 2026 01:55:46 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a018741640042799bd9824bd8fc79519b1873936e8b16976b7ce08a2bb5bc3c1`  
		Last Modified: Wed, 05 Aug 2026 01:55:46 GMT  
		Size: 477.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:ab911e2e93af0ca3c6d724796b010c361695be4bcf82b8f7471dedd50c48cf82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2300406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae94466c9360153aefa853b70851ec8eeab0bfbb116cea0b5cf71b7f700fbdfe`

```dockerfile
```

-	Layers:
	-	`sha256:c1854e138e1a94a9556022eba074b52d049947acb696e8c2bfe75ec7d1b25c06`  
		Last Modified: Wed, 05 Aug 2026 01:55:46 GMT  
		Size: 2.3 MB (2279116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f07a34d7be0775b2db26f27ec3bffaa9efd4f1a5a4dd1fc257143f327488d7b4`  
		Last Modified: Wed, 05 Aug 2026 01:55:46 GMT  
		Size: 21.3 KB (21290 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; ppc64le

```console
$ docker pull fluentd@sha256:9e532e16ba02506af54e8ea8d7bb9d99b9a34bc8b3a2a28ce075fd53f988f1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81106311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4700b4ae8f682eb2f695535a84bbc5f96b5b144c2f3c4699b2fc9b06fd1655d8`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 07:23:59 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 07:32:41 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 07:32:41 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 05 Aug 2026 07:32:41 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 05 Aug 2026 07:32:41 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 05 Aug 2026 07:32:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 07:32:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 07:32:41 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 07:32:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:32:41 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 07:32:41 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 10:53:50 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 05 Aug 2026 10:53:50 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Wed, 05 Aug 2026 10:53:50 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 10:53:51 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 05 Aug 2026 10:53:51 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 05 Aug 2026 10:53:51 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 05 Aug 2026 10:53:51 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 05 Aug 2026 10:53:51 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 05 Aug 2026 10:53:51 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 05 Aug 2026 10:53:51 GMT
USER fluent
# Wed, 05 Aug 2026 10:53:51 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 05 Aug 2026 10:53:51 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f2fe78f05a559fbeefa400f23cad9d0f1b594753078b9bbdaf4d04b7693481`  
		Last Modified: Wed, 05 Aug 2026 07:28:29 GMT  
		Size: 1.3 MB (1310306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136a63c40e4eab203c9d7ed84e515b31970afacdb8aa00fbb714c0e341a9ef5b`  
		Last Modified: Wed, 05 Aug 2026 07:28:29 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85eccbb22d9dbbc4b8b636d00c474a1a98ed2a7eda1908c3263d04042086a7fc`  
		Last Modified: Wed, 05 Aug 2026 07:32:59 GMT  
		Size: 39.6 MB (39583154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09eab870c81ee2ff60c7007fbc512a44e725a5c5fc24e3d244bad4eb1afde336`  
		Last Modified: Wed, 05 Aug 2026 07:32:57 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22d05a11f2ec1f49df0d8bc0be1806ce3e5448dfbc01873532c420ab0642e2e`  
		Last Modified: Wed, 05 Aug 2026 10:54:08 GMT  
		Size: 6.6 MB (6609116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a456e8e3b17cfac3fd0d910e548ea0fa14971fa5020a59eb6d3d6523bc5f442`  
		Last Modified: Wed, 05 Aug 2026 10:54:08 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d871ae586ff9c1d3f760be8dff179b47e723f8a456a843bb65996341e10a9640`  
		Last Modified: Wed, 05 Aug 2026 10:54:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6c354aad62c3ca4cded44552999361d90d72087ff8f4f1dd7a51af758bd955`  
		Last Modified: Wed, 05 Aug 2026 10:54:08 GMT  
		Size: 477.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:0138e149c01dbded752238b7c6df91d9da6f459605c498fbf2202a6002a89ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6765a62e120552f826e216b1ae6a2369a33aa45f24efa065282a339dc0f5cc`

```dockerfile
```

-	Layers:
	-	`sha256:e65b632787dbcad365dae84321532bfbfaf34fa851e08033a177f299a5f8531a`  
		Last Modified: Wed, 05 Aug 2026 10:54:08 GMT  
		Size: 2.3 MB (2285463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea4c4f9e70bef39666cdd7ccabe1efe0627993adf77861cfe35c684bea155155`  
		Last Modified: Wed, 05 Aug 2026 10:54:08 GMT  
		Size: 21.4 KB (21381 bytes)  
		MIME: application/vnd.in-toto+json

### `fluentd:latest` - linux; s390x

```console
$ docker pull fluentd@sha256:ee9e9665aa06e9b2d5f7966a0677fe58b1c614ce5a4d036a344998ba8d328a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76866521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acbf6e1f95365062a7904bfd69297a1793f148fd508357b4f987f77cdaef13cc`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:40:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:46 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Wed, 05 Aug 2026 01:43:34 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 01:43:34 GMT
ENV RUBY_VERSION=3.4.10
# Wed, 05 Aug 2026 01:43:34 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/3.4/ruby-3.4.10.tar.xz
# Wed, 05 Aug 2026 01:43:34 GMT
ENV RUBY_DOWNLOAD_SHA256=6f32ad662baafc228d12030dbcd284f83b034dd4337b300dc84ac74d11a1eb68
# Wed, 05 Aug 2026 01:43:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		bzip2 		g++ 		gcc 		libbz2-dev 		libffi-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libgmp-dev 		libncurses-dev 		libssl-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		wget 		xz-utils 		zlib1g-dev 	; 		rustArch=; 	dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		'amd64') rustArch='x86_64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-gnu/rustup-init'; rustupSha256='20a06e644b0d9bd2fbdbfd52d42540bdde820ea7df86e92e533c073da0cdd43c' ;; 		'arm64') rustArch='aarch64-unknown-linux-gnu'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-gnu/rustup-init'; rustupSha256='e3853c5a252fca15252d07cb23a1bdd9377a8c6f3efa01531109281ae47f841c' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Wed, 05 Aug 2026 01:43:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 05 Aug 2026 01:43:34 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 05 Aug 2026 01:43:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:43:35 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Wed, 05 Aug 2026 01:43:35 GMT
CMD ["irb"]
# Wed, 05 Aug 2026 02:45:47 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 05 Aug 2026 02:45:47 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.19.3
# Wed, 05 Aug 2026 02:45:47 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates tini  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && export MAKEFLAGS=-j$(nproc)  && gem install oj -v 3.17.3  && gem install json -v 2.13.2  && gem install rexml -v 3.4.4  && gem install async -v 2.24.0  && gem install async-http -v 0.89.0  && gem install fluentd -v 1.19.3  && unset MAKEFLAGS  && export GEM_DIR=$(ruby -e 'puts Gem.dir')  && echo GEM_DIR=$GEM_DIR  && rm -rf $GEM_DIR/cache/*.gem  && find $GEM_DIR -maxdepth 3 -type d -name test -or -name ext -or -name spec -or -name benchmark | xargs -r rm -rfv  && find $GEM_DIR -name "*.so" | xargs -r strip  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /tmp/jemalloc-5.3.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-5.3.0.tar.bz2 --no-same-owner && cd jemalloc-5.3.0/  && (echo "je_cv_madv_free=no" > config.cache) && ./configure -C && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps                   '*-dev'  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 05 Aug 2026 02:45:47 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd # buildkit
# Wed, 05 Aug 2026 02:45:47 GMT
COPY fluent.conf /fluentd/etc/ # buildkit
# Wed, 05 Aug 2026 02:45:47 GMT
COPY entrypoint.sh /bin/ # buildkit
# Wed, 05 Aug 2026 02:45:47 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 05 Aug 2026 02:45:47 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 05 Aug 2026 02:45:47 GMT
EXPOSE map[24224/tcp:{} 5140/tcp:{}]
# Wed, 05 Aug 2026 02:45:47 GMT
USER fluent
# Wed, 05 Aug 2026 02:45:47 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 05 Aug 2026 02:45:47 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39e02e57b80e79a883d750e4d55ec22cecba587f160eb91122b1b22abdd4a15`  
		Last Modified: Wed, 05 Aug 2026 01:43:48 GMT  
		Size: 1.3 MB (1294892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2189e38e05c3c9a1f581dd7cedb9f51df542fc4d77ec13506b5b1c39580bb133`  
		Last Modified: Wed, 05 Aug 2026 01:43:48 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8bab7bde0bb8eee388788f884a7a165e5e5cef5d4fbe893f65ef2ab6c96924`  
		Last Modified: Wed, 05 Aug 2026 01:43:49 GMT  
		Size: 39.3 MB (39255561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ff5a549141e5cc68b20f6a89c3e8cd52433d572a3d7295bd5bc396b90d6dd7`  
		Last Modified: Wed, 05 Aug 2026 01:43:48 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901e0a74a3dddd422478613a0a8afc64f0dfe37afca32054ee1f83bf119e567b`  
		Last Modified: Wed, 05 Aug 2026 02:46:00 GMT  
		Size: 6.5 MB (6467100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f69a352f343db512eaaba45f4c5a144d9f23451980e8f27771eabf3bf42e3b4`  
		Last Modified: Wed, 05 Aug 2026 02:46:00 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df5effecae0a96a18959ad98567683412779522013e96b50bace20f43268b03d`  
		Last Modified: Wed, 05 Aug 2026 02:46:00 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cca1110db6e601727e5dca10a42772222b75cda2df440a4d529c220b3b795dc`  
		Last Modified: Wed, 05 Aug 2026 02:46:00 GMT  
		Size: 478.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `fluentd:latest` - unknown; unknown

```console
$ docker pull fluentd@sha256:94c5c404133ff7aed8e340937c210c770178dd2126ac9ad8a2145e81004a16fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2304702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6504473371f7861891272616e054218df8d6f735f967ac2586ee9e18200aad9`

```dockerfile
```

-	Layers:
	-	`sha256:3654232b1c517f6a2de3ac9f846527be324e766c02f079b76c6e1ed5cca93410`  
		Last Modified: Wed, 05 Aug 2026 02:46:00 GMT  
		Size: 2.3 MB (2283373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55891f231dc9301d902a96d801a85394d925115621e20c1530d1826244f0521f`  
		Last Modified: Wed, 05 Aug 2026 02:46:00 GMT  
		Size: 21.3 KB (21329 bytes)  
		MIME: application/vnd.in-toto+json
