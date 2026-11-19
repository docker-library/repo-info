## `redmine:alpine3.24`

```console
$ docker pull redmine@sha256:8fc057305e1eade03dc401bb9c75f496889182a2f086537f4ac368f138b1c575
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `redmine:alpine3.24` - linux; amd64

```console
$ docker pull redmine@sha256:ed8b27a64089e88caecb322bfdbc06265f54d9c40830af4ba4b95e0c661976d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230924401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57db2b2818d598d370d596b6775338b154409bdc92877c1ef834ec4ddeedff92`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 00:27:54 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:07 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:07 GMT
ENV RUBY_VERSION=4.0.10
# Thu, 19 Nov 2026 00:30:07 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.10.tar.xz
# Thu, 19 Nov 2026 00:30:07 GMT
ENV RUBY_DOWNLOAD_SHA256=1537f7a6003c436546ecab6b48b6e7725a9af2328f45a8af7f42f41c5df90ab8
# Thu, 19 Nov 2026 00:30:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:07 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:07 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:07 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:29 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 19 Nov 2026 00:35:35 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 19 Nov 2026 00:35:37 GMT
ENV GOSU_VERSION=1.19
# Thu, 19 Nov 2026 00:35:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 19 Nov 2026 00:35:37 GMT
ENV RAILS_ENV=production
# Thu, 19 Nov 2026 00:35:37 GMT
WORKDIR /usr/src/redmine
# Thu, 19 Nov 2026 00:35:37 GMT
ENV HOME=/home/redmine
# Thu, 19 Nov 2026 00:35:37 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 19 Nov 2026 00:35:37 GMT
ENV REDMINE_VERSION=7.0.3
# Thu, 19 Nov 2026 00:35:37 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Thu, 19 Nov 2026 00:35:37 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Thu, 19 Nov 2026 00:35:37 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:35:40 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 19 Nov 2026 00:36:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 19 Nov 2026 00:36:28 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 19 Nov 2026 00:36:29 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:36:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 00:36:29 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 19 Nov 2026 00:36:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a123865c6655abb015c0b02866367907390c56938ed4dee21c85b1dcbf8f6cf2`  
		Last Modified: Thu, 19 Nov 2026 00:30:15 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b461f55a538da3d9ad61f569329c196460e59a66885c324871ee4cd02c947961`  
		Last Modified: Thu, 19 Nov 2026 00:30:18 GMT  
		Size: 48.8 MB (48804722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7a43010241a5faeb98fb4485b5b769adad92e905c04caa6b373fa3ee32da09`  
		Last Modified: Thu, 19 Nov 2026 00:30:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a28ee71056b6bf3854b2bf5e465db14d3335e2ac48af1dc1245a94621e45cb`  
		Last Modified: Thu, 19 Nov 2026 00:36:40 GMT  
		Size: 908.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03698d8c07c6883f5ab8f39cf83e4b5e52fa49deaf5472424bc860b0714b2d8`  
		Last Modified: Thu, 19 Nov 2026 00:36:42 GMT  
		Size: 78.7 MB (78674251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515b365cb97fe409eaa0a62cdb538d20980dfa777a571558d63a81d6fef2044e`  
		Last Modified: Thu, 19 Nov 2026 00:36:40 GMT  
		Size: 978.6 KB (978636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19802906a42a7612cb5f138f889c13624cc244266cbf556234a28ab46ffc7e57`  
		Last Modified: Thu, 19 Nov 2026 00:36:39 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e523811b2b7160b3a461d18e26634374c205461993aed6366548f841aa97d6`  
		Last Modified: Thu, 19 Nov 2026 00:36:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50da5676a45cc63fc69bff9023cbce6595602634ff5de2586880e120e75775e`  
		Last Modified: Thu, 19 Nov 2026 00:36:41 GMT  
		Size: 4.3 MB (4261391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e064a59f232dc32e1e944139e3532884a1ac02afc94e3166433c7e6965c3ef`  
		Last Modified: Thu, 19 Nov 2026 00:36:44 GMT  
		Size: 94.3 MB (94347815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd1d53d75a380bc2a383de6c485a49cef1ddc146a7e7e453e7f72339cea6700`  
		Last Modified: Thu, 19 Nov 2026 00:36:42 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:871ace7c430ca671b53d765f0ae82041cd1aa5d49b95d18df6a7f6aea6574c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 KB (41098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a914ae8775375c7558633b2bae2496474a136ea575205aebcd7c0c2c827b5b2`

```dockerfile
```

-	Layers:
	-	`sha256:e453b14360dcfbcd5b2f3fb6f402a12bedb2c6bfa0982ca3858da29f26fb7006`  
		Last Modified: Thu, 19 Nov 2026 00:36:39 GMT  
		Size: 41.1 KB (41098 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:05660d0c94fc1ac9772804c5cd4894c4d91dfd52b7ff870394b4fe12826d02ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232265831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1375622452dbb6a489698503d8dcafbc2c22ba642580a3a31dc169eaa85a30ec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 00:28:05 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 19 Nov 2026 00:30:42 GMT
ENV LANG=C.UTF-8
# Thu, 19 Nov 2026 00:30:42 GMT
ENV RUBY_VERSION=4.0.10
# Thu, 19 Nov 2026 00:30:42 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.10.tar.xz
# Thu, 19 Nov 2026 00:30:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1537f7a6003c436546ecab6b48b6e7725a9af2328f45a8af7f42f41c5df90ab8
# Thu, 19 Nov 2026 00:30:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 19 Nov 2026 00:30:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:42 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 19 Nov 2026 00:30:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 00:30:42 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 19 Nov 2026 00:30:42 GMT
CMD ["irb"]
# Thu, 19 Nov 2026 00:35:31 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 19 Nov 2026 00:35:37 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 19 Nov 2026 00:35:40 GMT
ENV GOSU_VERSION=1.19
# Thu, 19 Nov 2026 00:35:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 19 Nov 2026 00:35:40 GMT
ENV RAILS_ENV=production
# Thu, 19 Nov 2026 00:35:40 GMT
WORKDIR /usr/src/redmine
# Thu, 19 Nov 2026 00:35:40 GMT
ENV HOME=/home/redmine
# Thu, 19 Nov 2026 00:35:40 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 19 Nov 2026 00:35:40 GMT
ENV REDMINE_VERSION=7.0.3
# Thu, 19 Nov 2026 00:35:40 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Thu, 19 Nov 2026 00:35:40 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Thu, 19 Nov 2026 00:35:40 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 19 Nov 2026 00:35:42 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 19 Nov 2026 00:36:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 19 Nov 2026 00:36:17 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 19 Nov 2026 00:36:17 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:36:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Nov 2026 00:36:17 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 19 Nov 2026 00:36:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7970a59fc16d3f5b59324dacae5e591cb3aa3024ba98b68140985b652fb9e2e1`  
		Last Modified: Thu, 19 Nov 2026 00:30:50 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fceb6a9f775b896246127ef4c7ceda9dc0c90fc0eceb8efa1ff91df776cf400`  
		Last Modified: Thu, 19 Nov 2026 00:30:52 GMT  
		Size: 49.1 MB (49075319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8326bc640fc84a99015bcfe2c7b48e552e09b6361d8638f56d36391d8dfaec1d`  
		Last Modified: Thu, 19 Nov 2026 00:30:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d42a9a5bbfd566c1950d1841c4c10605cdf2ed7935b11212c94c10690c92d84`  
		Last Modified: Thu, 19 Nov 2026 00:36:29 GMT  
		Size: 909.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6788279cb7481532fc9a9556be27b94f185d79aaf6f5ae49d949edb7817aa67d`  
		Last Modified: Thu, 19 Nov 2026 00:36:31 GMT  
		Size: 78.2 MB (78161652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a568abd0c6192ce541332b52c75051d4b9de9d6dc673d1838301c817834bffa`  
		Last Modified: Thu, 19 Nov 2026 00:36:29 GMT  
		Size: 930.9 KB (930897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54519aea465a0387ccd3344d6bd9612fe4d0b4cadbe8d30881438d06769db2e2`  
		Last Modified: Thu, 19 Nov 2026 00:36:29 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cb51d74b4d039b5adf1770f5d7734e7656abcddae5b7b51d834eb062d03444`  
		Last Modified: Thu, 19 Nov 2026 00:36:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8cd858d64c23205100fcbcb329ea8f3fd5dbd85696c9e26e446ea83bb9f579`  
		Last Modified: Thu, 19 Nov 2026 00:36:30 GMT  
		Size: 4.3 MB (4261365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adfa3e9a6340bf107115bd4f4da3f07a4d4555a530645e2a756f5a0ac2a4f907`  
		Last Modified: Thu, 19 Nov 2026 00:36:32 GMT  
		Size: 95.6 MB (95642091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d2a2214b99b7220aae0e026418fa2398c104b56d56125881b2b132fc27fe72`  
		Last Modified: Thu, 19 Nov 2026 00:36:25 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:9229c6db674087157a4726632b3d73e70807e2e11af7234b479ad8cec46a4cbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 KB (41324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64af01dd43b49a61cc17f14a7db5c80d20298d29fa6fe2fdb7e611d108a88578`

```dockerfile
```

-	Layers:
	-	`sha256:2abe19a7d3435caea8055773d6ef0849f73d4746a36f268a37b92b4ac2a3c8e3`  
		Last Modified: Thu, 19 Nov 2026 00:36:29 GMT  
		Size: 41.3 KB (41324 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.24` - linux; ppc64le

```console
$ docker pull redmine@sha256:9dec4f440ce49b66431a023e67f2e2ef07ee9c3a182a2840b49c15fe362d08b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235400696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfca15a836755a358a1909e160e07053b1eee9826307371df72f3aae04297947`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:06:38 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Fri, 06 Nov 2026 06:21:22 GMT
ENV LANG=C.UTF-8
# Fri, 06 Nov 2026 06:21:22 GMT
ENV RUBY_VERSION=4.0.9
# Fri, 06 Nov 2026 06:21:22 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Fri, 06 Nov 2026 06:21:22 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Fri, 06 Nov 2026 06:21:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Fri, 06 Nov 2026 06:21:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Nov 2026 06:21:22 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Nov 2026 06:21:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 06:21:23 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Fri, 06 Nov 2026 06:21:23 GMT
CMD ["irb"]
# Fri, 06 Nov 2026 12:10:25 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Fri, 06 Nov 2026 12:10:35 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Fri, 06 Nov 2026 12:10:39 GMT
ENV GOSU_VERSION=1.19
# Fri, 06 Nov 2026 12:10:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 06 Nov 2026 12:10:39 GMT
ENV RAILS_ENV=production
# Fri, 06 Nov 2026 12:10:39 GMT
WORKDIR /usr/src/redmine
# Fri, 06 Nov 2026 12:10:39 GMT
ENV HOME=/home/redmine
# Fri, 06 Nov 2026 12:10:39 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Fri, 06 Nov 2026 12:10:39 GMT
ENV REDMINE_VERSION=7.0.3
# Fri, 06 Nov 2026 12:10:39 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Fri, 06 Nov 2026 12:10:39 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Fri, 06 Nov 2026 12:10:39 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Fri, 06 Nov 2026 12:10:43 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Fri, 06 Nov 2026 12:14:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Fri, 06 Nov 2026 12:14:05 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 06 Nov 2026 12:14:05 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 06 Nov 2026 12:14:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Nov 2026 12:14:05 GMT
EXPOSE map[3000/tcp:{}]
# Fri, 06 Nov 2026 12:14:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af836a4c2fd0437ded28b64fbf8d985f4d66ae8c0eca26c7035b572784f441eb`  
		Last Modified: Fri, 06 Nov 2026 06:11:57 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba62cef92693810fcb770cec342f84dbd1ce81971c0c3eb30793635b8e00030`  
		Last Modified: Fri, 06 Nov 2026 06:21:50 GMT  
		Size: 41.0 MB (41015302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fd18c5b96ce836fa9cf560cc74174e1301c9422d429c354e95350edc85edc4`  
		Last Modified: Fri, 06 Nov 2026 06:21:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a61755b60a785b3c97ba2584f762c226be7657146f9375c0cf917e110833fcb`  
		Last Modified: Fri, 06 Nov 2026 12:14:27 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0546632bb4e5e1f83b4fd601307109f577bc3db70c0b23bb24c074bf41907ec0`  
		Last Modified: Fri, 06 Nov 2026 12:14:29 GMT  
		Size: 81.1 MB (81063202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dd5fc8cbb367a34c636fe48b029783ed35a9d8201fb8932f59a08896c4e638`  
		Last Modified: Fri, 06 Nov 2026 12:14:27 GMT  
		Size: 936.2 KB (936161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c35bbd55d18cc050650bca1e3f82228ee2b1dad32196bcd9f3086245b53de30`  
		Last Modified: Fri, 06 Nov 2026 12:14:27 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46ded1fbd63a7faca40dd8ec013aec219d3780829c9397a3077acb5081f79aba`  
		Last Modified: Fri, 06 Nov 2026 12:14:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9daa907373f1d3a703d09193b642e50ea4aba7f96cbfb26734eca5a5556c9a3`  
		Last Modified: Fri, 06 Nov 2026 12:14:28 GMT  
		Size: 4.3 MB (4261351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c2cb2196bab80099583225819e28d1a8a283624d5b9593e2997c1dc3a26ccc0`  
		Last Modified: Fri, 06 Nov 2026 12:14:31 GMT  
		Size: 104.3 MB (104298846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaee458fa83ccdab976e9380d44ec08b6bc2cb630b622d907005658ce95fd409`  
		Last Modified: Fri, 06 Nov 2026 12:14:29 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:95eac53b70ae7dc8e8228a5eadf761f1d32f7b689dfccb0f3df72685d4ca7653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 KB (41166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a08c72287070c13f289c4c7fb5322dae7d8cd1bf59fb7b669eedcf2de663d4`

```dockerfile
```

-	Layers:
	-	`sha256:ca87859dc0c06e57a30a133d8f7809504e088383ea265386de4ed123323562d0`  
		Last Modified: Fri, 06 Nov 2026 12:14:27 GMT  
		Size: 41.2 KB (41166 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.24` - linux; riscv64

```console
$ docker pull redmine@sha256:fad55d00e47a7d822d082d90663e25667a8f5a67dbed236c9adf6915e0811210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238561315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393b14fe1dfbfae7277e29d77f78d1e55640640e5d78da73a88101c9fb842c66`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Wed, 28 Oct 2026 08:47:39 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 29 Oct 2026 22:41:37 GMT
ENV LANG=C.UTF-8
# Thu, 29 Oct 2026 22:41:37 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 29 Oct 2026 22:41:37 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 29 Oct 2026 22:41:37 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 29 Oct 2026 22:41:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 29 Oct 2026 22:41:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Oct 2026 22:41:37 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Oct 2026 22:41:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 22:41:37 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 29 Oct 2026 22:41:37 GMT
CMD ["irb"]
# Wed, 04 Nov 2026 03:28:34 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Wed, 04 Nov 2026 03:29:05 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Wed, 04 Nov 2026 03:29:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 04 Nov 2026 03:29:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 04 Nov 2026 03:29:14 GMT
ENV RAILS_ENV=production
# Wed, 04 Nov 2026 03:29:14 GMT
WORKDIR /usr/src/redmine
# Wed, 04 Nov 2026 03:29:14 GMT
ENV HOME=/home/redmine
# Wed, 04 Nov 2026 03:29:14 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Wed, 04 Nov 2026 03:29:14 GMT
ENV REDMINE_VERSION=7.0.3
# Wed, 04 Nov 2026 03:29:14 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Wed, 04 Nov 2026 03:29:14 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Wed, 04 Nov 2026 03:29:14 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Wed, 04 Nov 2026 03:29:20 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Wed, 04 Nov 2026 04:48:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Wed, 04 Nov 2026 04:48:21 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 04 Nov 2026 04:48:22 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 04 Nov 2026 04:48:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Nov 2026 04:48:22 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 04 Nov 2026 04:48:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e4468f5efcd9b8b18488c2ae3f11f1a1f5a487138ecf06954bc5d6d89e215e`  
		Last Modified: Wed, 28 Oct 2026 10:09:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921c5d17559bb65d4237b1a8a7f0b44fff9fd91a76fec6256447dace904cd5a6`  
		Last Modified: Thu, 29 Oct 2026 22:43:09 GMT  
		Size: 44.5 MB (44534077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f73f74e74b0888792feb33f3cfb9a43494b4294ec20f1c91df3005beb82736`  
		Last Modified: Thu, 29 Oct 2026 22:43:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:561972e1d10b2679a794bae5094ff3c09c10a8e0beec2e4d7f610095be2f615e`  
		Last Modified: Wed, 04 Nov 2026 04:50:47 GMT  
		Size: 912.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef72fdd36081298e93ef170a65ca4a2ca4e896a2dbf0d85a06ae22a98eaa7c9`  
		Last Modified: Wed, 04 Nov 2026 04:51:09 GMT  
		Size: 78.7 MB (78651403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee3948f7ee8fd2f75a1b59b1bc6ae34c75a07f02d5c999fcf5472450e7fab64`  
		Last Modified: Wed, 04 Nov 2026 04:50:47 GMT  
		Size: 923.6 KB (923589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c2f9a11fb45110ad0735364ff10c1e7621799c22d154f75a59fe34ac9997fa`  
		Last Modified: Wed, 04 Nov 2026 04:50:47 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdeb35863b883a7dc4c72a1865708b7077264095882f054804718e7d6f70020c`  
		Last Modified: Wed, 04 Nov 2026 04:50:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc48a830dd37a955849d7569eeaf85c951a0c64ca783e5b7098015bcb27f458b`  
		Last Modified: Wed, 04 Nov 2026 04:50:50 GMT  
		Size: 4.3 MB (4261441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4913b7ff099ee73dcfc3072b7b31979c0636d54bf6c295e4986961e3615da5`  
		Last Modified: Wed, 04 Nov 2026 04:51:14 GMT  
		Size: 106.6 MB (106606240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ca09c530dd96ddd53937059d9864c41ebb417e968ad7f21295ef3a6906c673`  
		Last Modified: Wed, 04 Nov 2026 04:50:50 GMT  
		Size: 2.4 KB (2414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:f377c1ab28bc1272185af3b2ed18261ee5df282940b00d25820acd15205ea7bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 KB (41166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e745e1939623a5a2cce1b1ad73489d3231b41a8df1a0e2dad08b9093d771621`

```dockerfile
```

-	Layers:
	-	`sha256:f6c8b743ee6870784cd9b195d21152f46689b60363ebfc1d8fd395a4eea67ca2`  
		Last Modified: Wed, 04 Nov 2026 04:50:46 GMT  
		Size: 41.2 KB (41166 bytes)  
		MIME: application/vnd.in-toto+json

### `redmine:alpine3.24` - linux; s390x

```console
$ docker pull redmine@sha256:8b81caf595e52093399e591dc48d81830ce06e366531cfe7fc17a37e3fa308c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.6 MB (233553491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc48e75970e8c04f7050546572e7c5fd4474c5ba68c8272bfcda7100bb8bcbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:19:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	echo 'gem: --no-document' >> /usr/local/etc/gemrc # buildkit
# Thu, 05 Nov 2026 21:23:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 21:23:10 GMT
ENV RUBY_VERSION=4.0.9
# Thu, 05 Nov 2026 21:23:10 GMT
ENV RUBY_DOWNLOAD_URL=https://cache.ruby-lang.org/pub/ruby/4.0/ruby-4.0.9.tar.xz
# Thu, 05 Nov 2026 21:23:10 GMT
ENV RUBY_DOWNLOAD_SHA256=a8057adb39f51ad6dc3106237504c93dd792bb515837b4fe7817ae21ed7e51f4
# Thu, 05 Nov 2026 21:23:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		gmp-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		yaml-dev 		zlib-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		rustArch=; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') rustArch='x86_64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/x86_64-unknown-linux-musl/rustup-init'; rustupSha256='e6599a1c7be58a2d8eaca66a80e0dc006d87bbcf780a58b7343d6e14c1605cb2' ;; 		'aarch64') rustArch='aarch64-unknown-linux-musl'; rustupUrl='https://static.rust-lang.org/rustup/archive/1.28.2/aarch64-unknown-linux-musl/rustup-init'; rustupSha256='a97c8f56d7462908695348dd8c71ea6740c138ce303715793a690503a94fc9a9' ;; 	esac; 		if [ -n "$rustArch" ]; then 		mkdir -p /tmp/rust; 				wget -O /tmp/rust/rustup-init "$rustupUrl"; 		echo "$rustupSha256 */tmp/rust/rustup-init" | sha256sum --check --strict; 		chmod +x /tmp/rust/rustup-init; 				export RUSTUP_HOME='/tmp/rust/rustup' CARGO_HOME='/tmp/rust/cargo'; 		export PATH="$CARGO_HOME/bin:$PATH"; 		/tmp/rust/rustup-init -y --no-modify-path --profile minimal --default-toolchain '1.91.1' --default-host "$rustArch"; 				rustc --version; 		cargo --version; 	fi; 		wget -O ruby.tar.xz "$RUBY_DOWNLOAD_URL"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	export LDFLAGS='-Wl,-z,relro -Wl,-z,now'; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 		${rustArch:+--enable-yjit} 		${rustArch:+--enable-zjit} 	; 	make -j "$(nproc)"; 	make install; 		rm -rf /tmp/rust; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version # buildkit
# Thu, 05 Nov 2026 21:23:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 05 Nov 2026 21:23:10 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 05 Nov 2026 21:23:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 21:23:11 GMT
RUN set -eux; 	mkdir "$GEM_HOME"; 	chmod 1777 "$GEM_HOME" # buildkit
# Thu, 05 Nov 2026 21:23:11 GMT
CMD ["irb"]
# Thu, 05 Nov 2026 22:39:13 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine # buildkit
# Thu, 05 Nov 2026 22:39:23 GMT
RUN set -eux; 	apk add --no-cache 		bash 		breezy 		ca-certificates 		findutils 		ghostscript 		ghostscript-fonts 		git 		imagemagick 		mercurial 		openssh-client 		subversion 		tini 		tzdata 		wget 	; # buildkit
# Thu, 05 Nov 2026 22:39:26 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 22:39:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 22:39:26 GMT
ENV RAILS_ENV=production
# Thu, 05 Nov 2026 22:39:26 GMT
WORKDIR /usr/src/redmine
# Thu, 05 Nov 2026 22:39:26 GMT
ENV HOME=/home/redmine
# Thu, 05 Nov 2026 22:39:27 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME" # buildkit
# Thu, 05 Nov 2026 22:39:27 GMT
ENV REDMINE_VERSION=7.0.3
# Thu, 05 Nov 2026 22:39:27 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-7.0.3.tar.gz
# Thu, 05 Nov 2026 22:39:27 GMT
ENV REDMINE_DOWNLOAD_SHA256=0b6b24c033341a9d7ad52cfcfa7b1bc913c191c7a604f740d863f16249dd3c15
# Thu, 05 Nov 2026 22:39:27 GMT
ENV RAILS_LOG_TO_STDOUT=true
# Thu, 05 Nov 2026 22:39:28 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	set -- 'config' 'db' 'log' 'public/assets' 'sqlite' 'tmp' 'tmp/pdf' 'tmp/pids'; 	mkdir -p "$@"; 	chown -R redmine:redmine ./; 	chmod -R ugo=rwX "$@"; 	find "$@" -type d -exec chmod 1777 '{}' + # buildkit
# Thu, 05 Nov 2026 22:43:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		cargo 		clang21-dev 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		yaml-dev 	; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --rpath --format '%n|%r|%F' --recursive /usr/local/bundle/gems 		| awk -F '|' '{ 			split($1, libs, ","); 			split($2, rpaths, ":"); 						origin = $3; 			sub("/[^/]+$", "", origin); 						for (i in libs) { 				lib = libs[i]; 				if (lib == "libc.so") continue; 								if (!system("[ -e \"/usr/local/lib/" lib "\" ]")) continue; 								found = 0; 				for (j in rpaths) { 					rpath = rpaths[j]; 										if (sub(/^\$[{]?ORIGIN[}]?/, origin, rpath)) { 						if (!system("[ -e \"" rpath "/" lib "\" ]")) { 							found = 1; 							break; 						} 					} 				} 								if (!found) { 					print "so:" lib; 				} 			} 		}' 		| sort -u 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps; 	gosu redmine bundle exec rake time:zones:all | grep -q 'Kyiv' # buildkit
# Thu, 05 Nov 2026 22:43:01 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 05 Nov 2026 22:43:01 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 22:43:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 22:43:01 GMT
EXPOSE map[3000/tcp:{}]
# Thu, 05 Nov 2026 22:43:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cc8d932745192d29eb67dfebd5dd24a6affccf6bcd88c010ee6aff7babd3ae`  
		Last Modified: Thu, 05 Nov 2026 21:23:36 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd17286c5d015bc9d413d94c1e8006cfc08a0edf2d96f2f22953672f859fc01c`  
		Last Modified: Thu, 05 Nov 2026 21:23:38 GMT  
		Size: 40.6 MB (40602168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecf94cceb3fd4bcc4186ec0adb147449163d0e44808576f137d27bec377593c`  
		Last Modified: Thu, 05 Nov 2026 21:23:37 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04794fae84a09ef390acd28606801b0f9eb07c8920abcfa7fc5c1da2131adcb`  
		Last Modified: Thu, 05 Nov 2026 22:43:19 GMT  
		Size: 911.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d95a080180741d6dc4691833395e33c8ce1d842c9eafadbf8a887f80c2def66`  
		Last Modified: Thu, 05 Nov 2026 22:43:21 GMT  
		Size: 80.6 MB (80556505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b592eb499bae4b8c8e249446a5275fb6cf3dfaea5729657670aa16fac024e1b3`  
		Last Modified: Thu, 05 Nov 2026 22:43:19 GMT  
		Size: 952.5 KB (952528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf1c6a0757150d3b88fb79eadfad2fb097fcf7c2ac471b9ed78ad07081b59be`  
		Last Modified: Thu, 05 Nov 2026 22:43:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e3766b51329e0ec864583da4ded7204ccb9378999e1dba68ba6b3ea0101226`  
		Last Modified: Thu, 05 Nov 2026 22:43:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b5a17b50ebb8aab3c09889d57549258f1430f75dce4bf1cee300e62e2c3f23`  
		Last Modified: Thu, 05 Nov 2026 22:43:21 GMT  
		Size: 4.3 MB (4261386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2089803f6ab6562b120791d592d10dbdcaca9fbd9c26c46b102789dc8257e2`  
		Last Modified: Thu, 05 Nov 2026 22:43:22 GMT  
		Size: 103.5 MB (103456323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75270c3f2b58ee15ab58d87f7bfe1e02b1b5606818daf29bd393a2132cb26e73`  
		Last Modified: Thu, 05 Nov 2026 22:43:22 GMT  
		Size: 2.4 KB (2413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `redmine:alpine3.24` - unknown; unknown

```console
$ docker pull redmine@sha256:2c89f4d2eda02e7c356acfb0aa9c85cfd713fb017318fd303c74b95b0514f5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 KB (41088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7e2d4e59088dfcc2e17d7aef5e025d70bc6536dbe93c87aeff6bfd5a0b6323`

```dockerfile
```

-	Layers:
	-	`sha256:dc29338aa16a241c844472ba67d68513ce86f2a731f295b99e2494a6e61975b0`  
		Last Modified: Thu, 05 Nov 2026 22:43:19 GMT  
		Size: 41.1 KB (41088 bytes)  
		MIME: application/vnd.in-toto+json
