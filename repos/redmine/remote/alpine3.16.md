## `redmine:alpine3.16`

```console
$ docker pull redmine@sha256:bc0fc9d8b473e1ca97e85041f2d0a1d9eb513f6a3fbf8fd7f24121f25e4dfed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:alpine3.16` - linux; amd64

```console
$ docker pull redmine@sha256:ed4cfc5d0c057e20293bcb2144aa5bf6e73eee9d3f45b5f38e5c47f26be93b1d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.5 MB (197455110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160781fbd83e4adc81cd76514eeea09bdf91e8db2bdb47faf9a0713d354b813c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 08:17:20 GMT
RUN set -eux; 	apk add --no-cache 		bzip2 		ca-certificates 		gmp-dev 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	;
# Sat, 12 Nov 2022 08:17:21 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 12 Nov 2022 08:17:21 GMT
ENV LANG=C.UTF-8
# Sat, 12 Nov 2022 08:20:09 GMT
ENV RUBY_MAJOR=3.1
# Fri, 25 Nov 2022 21:44:17 GMT
ENV RUBY_VERSION=3.1.3
# Fri, 25 Nov 2022 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=4ee161939826bcdfdafa757cf8e293a7f14e357f62be7144f040335cc8c7371a
# Fri, 25 Nov 2022 21:46:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		export ac_cv_func_isnan=yes ac_cv_func_isinf=yes; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-rundeps' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Fri, 25 Nov 2022 21:46:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 Nov 2022 21:46:48 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 Nov 2022 21:46:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Nov 2022 21:46:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 Nov 2022 21:46:48 GMT
CMD ["irb"]
# Thu, 01 Dec 2022 19:47:53 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine
# Thu, 01 Dec 2022 19:48:02 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ca-certificates 		findutils 		su-exec 		tini 		tzdata 		wget 				breezy 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		ghostscript-fonts 		imagemagick 	;
# Thu, 01 Dec 2022 19:48:03 GMT
ENV RAILS_ENV=production
# Thu, 01 Dec 2022 19:48:03 GMT
WORKDIR /usr/src/redmine
# Thu, 01 Dec 2022 19:48:03 GMT
ENV HOME=/home/redmine
# Thu, 01 Dec 2022 19:48:04 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 01 Dec 2022 19:48:04 GMT
ENV REDMINE_VERSION=5.0.4
# Thu, 01 Dec 2022 19:48:04 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-5.0.4.tar.gz
# Thu, 01 Dec 2022 19:48:04 GMT
ENV REDMINE_DOWNLOAD_SHA256=39436f5f8d26f5b7ce17e79903a3112e556e924da4f51c05b57f5defbe6f2924
# Thu, 01 Dec 2022 19:48:07 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 01 Dec 2022 19:48:07 GMT
ENV BUNDLE_FORCE_RUBY_PLATFORM=1
# Thu, 01 Dec 2022 19:49:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		sqlite-dev 		ttf2ufm 		zlib-dev 	; 		su-exec redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	su-exec redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps
# Thu, 01 Dec 2022 19:49:57 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 01 Dec 2022 19:49:57 GMT
COPY file:f2dac8fc10b4b9c85d18ffc54f3822ba7f98c858ad133cc1c0a63d9d52731204 in / 
# Thu, 01 Dec 2022 19:49:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Dec 2022 19:49:57 GMT
EXPOSE 3000
# Thu, 01 Dec 2022 19:49:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe71bb0ecfee9a49c659caea9c562189308c32261544479dd7babb052d24a6e3`  
		Last Modified: Sat, 12 Nov 2022 08:29:21 GMT  
		Size: 3.9 MB (3851337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134ec6373770556ccee80d88fc0a52d205074ceb254c4d68c04595025db9787b`  
		Last Modified: Sat, 12 Nov 2022 08:29:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0b92429a877be36af4aa3d8f28c1761fc10603bc88eb73544dfa1f7022c898`  
		Last Modified: Fri, 25 Nov 2022 22:16:46 GMT  
		Size: 29.7 MB (29709867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef128709d66de6e1197cc6e62b8e5fc528900f343bfab21d52476a54188911d`  
		Last Modified: Fri, 25 Nov 2022 22:16:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefc5597ec7afae7ac7d15ffe3bc7033e56ee01169d543c5ba7dc50efaf8868d`  
		Last Modified: Thu, 01 Dec 2022 19:55:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a2b712ccdf156296b853b05de5832450dd2fca9a29431f78ea72631cdfd06d`  
		Last Modified: Thu, 01 Dec 2022 19:55:16 GMT  
		Size: 90.5 MB (90520840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dca1eb093e8ba4713517690c1c54931ad7eae9bcfcf0c198683224a3a8f897d`  
		Last Modified: Thu, 01 Dec 2022 19:55:00 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959dfdc9e206591807d3127a0582c2797404790ebb9f28b7d17039f9eaf10b34`  
		Last Modified: Thu, 01 Dec 2022 19:55:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbb8454b4e41ada6797d7bd82eeb7244c2952cd6a5912af15c85a8bfc662ade`  
		Last Modified: Thu, 01 Dec 2022 19:55:01 GMT  
		Size: 3.1 MB (3143771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bc43a0cabd91ac7cbc49e870aa3a1e6825f11bf8670396608691da3cc212c0`  
		Last Modified: Thu, 01 Dec 2022 19:55:07 GMT  
		Size: 67.4 MB (67419085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca815746dccb5e8cff22f4b862d642257fef12e3dfa5c3778a7d412b42715ef`  
		Last Modified: Thu, 01 Dec 2022 19:55:00 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:alpine3.16` - linux; arm variant v6

```console
$ docker pull redmine@sha256:6c1514c3b60ac6b6b7da3a60684894e74cd8885d2113b8a3934c62757338e46c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187847038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:916fc852956045182159716fe43309e4fcbbc91c5c1fa300685c7b624120ee95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 12 Nov 2022 03:49:18 GMT
ADD file:493290ed8856fa13463defe63da0d30ab3de5dde042c87ef7c0701d66ebb8892 in / 
# Sat, 12 Nov 2022 03:49:18 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 08:13:16 GMT
RUN set -eux; 	apk add --no-cache 		bzip2 		ca-certificates 		gmp-dev 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	;
# Sat, 12 Nov 2022 08:13:18 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 12 Nov 2022 08:13:18 GMT
ENV LANG=C.UTF-8
# Sat, 12 Nov 2022 08:16:46 GMT
ENV RUBY_MAJOR=3.1
# Fri, 25 Nov 2022 21:49:51 GMT
ENV RUBY_VERSION=3.1.3
# Fri, 25 Nov 2022 21:49:51 GMT
ENV RUBY_DOWNLOAD_SHA256=4ee161939826bcdfdafa757cf8e293a7f14e357f62be7144f040335cc8c7371a
# Fri, 25 Nov 2022 21:52:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		export ac_cv_func_isnan=yes ac_cv_func_isinf=yes; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-rundeps' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Fri, 25 Nov 2022 21:52:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 Nov 2022 21:52:48 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 Nov 2022 21:52:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Nov 2022 21:52:50 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 Nov 2022 21:52:50 GMT
CMD ["irb"]
# Thu, 01 Dec 2022 18:51:38 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine
# Thu, 01 Dec 2022 18:51:55 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ca-certificates 		findutils 		su-exec 		tini 		tzdata 		wget 				breezy 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		ghostscript-fonts 		imagemagick 	;
# Thu, 01 Dec 2022 18:51:56 GMT
ENV RAILS_ENV=production
# Thu, 01 Dec 2022 18:51:56 GMT
WORKDIR /usr/src/redmine
# Thu, 01 Dec 2022 18:51:57 GMT
ENV HOME=/home/redmine
# Thu, 01 Dec 2022 18:51:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 01 Dec 2022 18:51:57 GMT
ENV REDMINE_VERSION=5.0.4
# Thu, 01 Dec 2022 18:51:57 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-5.0.4.tar.gz
# Thu, 01 Dec 2022 18:51:57 GMT
ENV REDMINE_DOWNLOAD_SHA256=39436f5f8d26f5b7ce17e79903a3112e556e924da4f51c05b57f5defbe6f2924
# Thu, 01 Dec 2022 18:52:01 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 01 Dec 2022 18:52:02 GMT
ENV BUNDLE_FORCE_RUBY_PLATFORM=1
# Thu, 01 Dec 2022 18:54:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		sqlite-dev 		ttf2ufm 		zlib-dev 	; 		su-exec redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	su-exec redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps
# Thu, 01 Dec 2022 18:54:23 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 01 Dec 2022 18:54:23 GMT
COPY file:f2dac8fc10b4b9c85d18ffc54f3822ba7f98c858ad133cc1c0a63d9d52731204 in / 
# Thu, 01 Dec 2022 18:54:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Dec 2022 18:54:23 GMT
EXPOSE 3000
# Thu, 01 Dec 2022 18:54:23 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9616ea8c1de4a90b1a50591336485e88ae5c2346e0d778bdbe69b00647bf8e39`  
		Last Modified: Sat, 12 Nov 2022 03:50:12 GMT  
		Size: 2.6 MB (2615105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcd5777d764dead6258950ac4fb570f7f9c9eb7ef65aca2422ae58a1f3af51d`  
		Last Modified: Sat, 12 Nov 2022 08:26:15 GMT  
		Size: 3.6 MB (3593669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72da7c39dca17bfb4c05ce3cf9e588f9484560d7520187951077e7669e91890f`  
		Last Modified: Sat, 12 Nov 2022 08:26:14 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50a79a4c319dff21f8e909d3a32c8f2b6ae34698dc963d84270dfb2c3e810d3`  
		Last Modified: Fri, 25 Nov 2022 22:09:55 GMT  
		Size: 28.7 MB (28660886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8089c807f0e919a067956fa0c6e609c0f4bccb10e22004c00f6a3dbb2d6d85`  
		Last Modified: Fri, 25 Nov 2022 22:09:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bad36d75b7342922a977c2199cc8551893808d33193dcf2a669eba739abb5aa`  
		Last Modified: Thu, 01 Dec 2022 18:58:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e6df92f565b26297405af39b40cf99103dace4e11bd470c84900cac0d8ea8b`  
		Last Modified: Thu, 01 Dec 2022 18:58:43 GMT  
		Size: 84.0 MB (84001593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d53687e72c9d4fb0611f4f38cb4b26ae094e43845a6a3b86618b5703934a30`  
		Last Modified: Thu, 01 Dec 2022 18:58:25 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1140f5e2093b3105ab62234e3c085ec337030609b6e1a124d93f5b017b093564`  
		Last Modified: Thu, 01 Dec 2022 18:58:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209c9df49a368ae7c8c462448f57522a404cc820ee435d307d6acabfac257fa6`  
		Last Modified: Thu, 01 Dec 2022 18:58:26 GMT  
		Size: 3.1 MB (3143379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b968c5849b2c1e22ea7dbf18b3eafc404fbf254f89f3d66d20e828d0250322`  
		Last Modified: Thu, 01 Dec 2022 18:58:34 GMT  
		Size: 65.8 MB (65828595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ea92487cc21ec85d8bee34357b832391688fe2741ff7835120abc20de17fdf`  
		Last Modified: Thu, 01 Dec 2022 18:58:25 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:alpine3.16` - linux; arm variant v7

```console
$ docker pull redmine@sha256:e5fed5dd63b8bb4f99451df659ed70c75f4ac5682d637286332a6d41a2c31113
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185085217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8209020776183c46ee9688558184a11186d5e7502b67528c3eb1d1d627ecb9b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 12 Nov 2022 03:57:24 GMT
ADD file:0b4a628f529226f5ec9d357ca63138bd2d22411a889c780ac8d395d761e07b2c in / 
# Sat, 12 Nov 2022 03:57:24 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 07:50:08 GMT
RUN set -eux; 	apk add --no-cache 		bzip2 		ca-certificates 		gmp-dev 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	;
# Sat, 12 Nov 2022 07:50:10 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 12 Nov 2022 07:50:10 GMT
ENV LANG=C.UTF-8
# Sat, 12 Nov 2022 07:53:42 GMT
ENV RUBY_MAJOR=3.1
# Fri, 25 Nov 2022 21:13:30 GMT
ENV RUBY_VERSION=3.1.3
# Fri, 25 Nov 2022 21:13:30 GMT
ENV RUBY_DOWNLOAD_SHA256=4ee161939826bcdfdafa757cf8e293a7f14e357f62be7144f040335cc8c7371a
# Fri, 25 Nov 2022 21:15:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		export ac_cv_func_isnan=yes ac_cv_func_isinf=yes; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-rundeps' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Fri, 25 Nov 2022 21:15:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 Nov 2022 21:15:51 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 Nov 2022 21:15:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Nov 2022 21:15:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 Nov 2022 21:15:51 GMT
CMD ["irb"]
# Thu, 01 Dec 2022 19:14:40 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine
# Thu, 01 Dec 2022 19:14:56 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ca-certificates 		findutils 		su-exec 		tini 		tzdata 		wget 				breezy 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		ghostscript-fonts 		imagemagick 	;
# Thu, 01 Dec 2022 19:14:57 GMT
ENV RAILS_ENV=production
# Thu, 01 Dec 2022 19:14:57 GMT
WORKDIR /usr/src/redmine
# Thu, 01 Dec 2022 19:14:57 GMT
ENV HOME=/home/redmine
# Thu, 01 Dec 2022 19:14:57 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 01 Dec 2022 19:14:57 GMT
ENV REDMINE_VERSION=5.0.4
# Thu, 01 Dec 2022 19:14:58 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-5.0.4.tar.gz
# Thu, 01 Dec 2022 19:14:58 GMT
ENV REDMINE_DOWNLOAD_SHA256=39436f5f8d26f5b7ce17e79903a3112e556e924da4f51c05b57f5defbe6f2924
# Thu, 01 Dec 2022 19:15:01 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 01 Dec 2022 19:15:01 GMT
ENV BUNDLE_FORCE_RUBY_PLATFORM=1
# Thu, 01 Dec 2022 19:17:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		sqlite-dev 		ttf2ufm 		zlib-dev 	; 		su-exec redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	su-exec redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps
# Thu, 01 Dec 2022 19:17:09 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 01 Dec 2022 19:17:09 GMT
COPY file:f2dac8fc10b4b9c85d18ffc54f3822ba7f98c858ad133cc1c0a63d9d52731204 in / 
# Thu, 01 Dec 2022 19:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Dec 2022 19:17:10 GMT
EXPOSE 3000
# Thu, 01 Dec 2022 19:17:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e44ba29d168a7f7c9e914f3724614df9e070aa6ef9b9ba5c9004db3c071f403a`  
		Last Modified: Sat, 12 Nov 2022 03:58:16 GMT  
		Size: 2.4 MB (2418788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59628795307e869573181e9e79c937ca25f4ec9ee8acf9d18762419bb526ba84`  
		Last Modified: Sat, 12 Nov 2022 08:06:56 GMT  
		Size: 3.5 MB (3461311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c401c802cd4593371150a0216056160b62fed7c9a0cb1b038c3a172d2e7e0d9f`  
		Last Modified: Sat, 12 Nov 2022 08:06:55 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2bc379db6c1feb6dddd0890217e372a3cd24bafa1a858ebeeae296c7475cfa`  
		Last Modified: Fri, 25 Nov 2022 21:49:16 GMT  
		Size: 28.5 MB (28512069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dbc242f0b59fc9281424a4ac2c30c066552fc090b3d54973f1942421fea09d`  
		Last Modified: Fri, 25 Nov 2022 21:49:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0730fe5baf941688fda54ca1390e27d07594147de81531f949db6c4851658ad4`  
		Last Modified: Thu, 01 Dec 2022 19:24:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc57aff8531d10bcf4706cfd4adc618de516598c612aaefee512b2c88872804`  
		Last Modified: Thu, 01 Dec 2022 19:24:48 GMT  
		Size: 82.1 MB (82114945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf7839f57a438d12ca8f5136ff4313beaf2df1b4858206a570a144376db0f54`  
		Last Modified: Thu, 01 Dec 2022 19:24:32 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f412a03410e90edac2fbef6195c478fd49521f72cacf0a60093bd1c7de4b369`  
		Last Modified: Thu, 01 Dec 2022 19:24:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62bc687f784d498322b07d9ebf432402583f33fee930db3098b9bf5bd5beaf0c`  
		Last Modified: Thu, 01 Dec 2022 19:24:33 GMT  
		Size: 3.1 MB (3143395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80885bec5fb80e6f9944015d68aacb3506162830c521340c1aa75cd78a2bf2e`  
		Last Modified: Thu, 01 Dec 2022 19:24:41 GMT  
		Size: 65.4 MB (65430900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cb14c6742bf83d4099e1939ad9b5b50c6a6598c48665140d668838947f059d`  
		Last Modified: Thu, 01 Dec 2022 19:24:32 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:alpine3.16` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:9207486f69e312dfb6835650fcdba3cac04eb00af6da3b4ea1958d010a5a77e4
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193243637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa2503f21c832f2b93b1637d2f7076a6b763d128e791d8fc3367c1b31e9128a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 12 Nov 2022 03:39:38 GMT
ADD file:57d621536158358b14d15155826ef2dd4ca034278044111ec0aaf6717016e569 in / 
# Sat, 12 Nov 2022 03:39:38 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 09:24:51 GMT
RUN set -eux; 	apk add --no-cache 		bzip2 		ca-certificates 		gmp-dev 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	;
# Sat, 12 Nov 2022 09:24:51 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 12 Nov 2022 09:24:51 GMT
ENV LANG=C.UTF-8
# Sat, 12 Nov 2022 09:26:54 GMT
ENV RUBY_MAJOR=3.1
# Fri, 25 Nov 2022 22:04:38 GMT
ENV RUBY_VERSION=3.1.3
# Fri, 25 Nov 2022 22:04:38 GMT
ENV RUBY_DOWNLOAD_SHA256=4ee161939826bcdfdafa757cf8e293a7f14e357f62be7144f040335cc8c7371a
# Fri, 25 Nov 2022 22:06:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		export ac_cv_func_isnan=yes ac_cv_func_isinf=yes; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-rundeps' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Fri, 25 Nov 2022 22:06:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 Nov 2022 22:06:25 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 Nov 2022 22:06:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Nov 2022 22:06:26 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 Nov 2022 22:06:26 GMT
CMD ["irb"]
# Thu, 01 Dec 2022 20:15:04 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine
# Thu, 01 Dec 2022 20:15:13 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ca-certificates 		findutils 		su-exec 		tini 		tzdata 		wget 				breezy 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		ghostscript-fonts 		imagemagick 	;
# Thu, 01 Dec 2022 20:15:14 GMT
ENV RAILS_ENV=production
# Thu, 01 Dec 2022 20:15:14 GMT
WORKDIR /usr/src/redmine
# Thu, 01 Dec 2022 20:15:14 GMT
ENV HOME=/home/redmine
# Thu, 01 Dec 2022 20:15:15 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 01 Dec 2022 20:15:15 GMT
ENV REDMINE_VERSION=5.0.4
# Thu, 01 Dec 2022 20:15:15 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-5.0.4.tar.gz
# Thu, 01 Dec 2022 20:15:15 GMT
ENV REDMINE_DOWNLOAD_SHA256=39436f5f8d26f5b7ce17e79903a3112e556e924da4f51c05b57f5defbe6f2924
# Thu, 01 Dec 2022 20:15:18 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 01 Dec 2022 20:15:18 GMT
ENV BUNDLE_FORCE_RUBY_PLATFORM=1
# Thu, 01 Dec 2022 20:16:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		sqlite-dev 		ttf2ufm 		zlib-dev 	; 		su-exec redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	su-exec redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps
# Thu, 01 Dec 2022 20:16:54 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 01 Dec 2022 20:16:55 GMT
COPY file:f2dac8fc10b4b9c85d18ffc54f3822ba7f98c858ad133cc1c0a63d9d52731204 in / 
# Thu, 01 Dec 2022 20:16:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Dec 2022 20:16:55 GMT
EXPOSE 3000
# Thu, 01 Dec 2022 20:16:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6875df1f535433e5affe18ecfde9acb7950ab5f76887980ff06c5cdd48cf98f4`  
		Last Modified: Sat, 12 Nov 2022 03:40:05 GMT  
		Size: 2.7 MB (2707756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43d5165cf5412b14fdf30765f0d1823cd0d27446e34154b51275785a4e57fb6`  
		Last Modified: Sat, 12 Nov 2022 09:34:18 GMT  
		Size: 3.8 MB (3821321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd602cf58768c68ce194e9b618f6a22fec351c543ab89c110be7b0373df82f44`  
		Last Modified: Sat, 12 Nov 2022 09:34:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70ef809efd815a10281224feb78242990ad76d2d0afdad04ad110b13e7419e6`  
		Last Modified: Fri, 25 Nov 2022 22:30:14 GMT  
		Size: 29.1 MB (29114850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5617f98ac2b31c9aca4cf2d954fb438c71f96c03971b9a084bc466dff5765107`  
		Last Modified: Fri, 25 Nov 2022 22:30:11 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ee551bf1a70a3714bbbd16e247d980163f6e42de514a6563bedfafa230dfa3`  
		Last Modified: Thu, 01 Dec 2022 20:21:09 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58010cfb55da7871cde3d2d9ee41e4bf1fa57b58cef8a35a593fe802b6598d68`  
		Last Modified: Thu, 01 Dec 2022 20:21:19 GMT  
		Size: 87.4 MB (87381629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a5d16fd24a5b03f3b70977d2eb03a95486e9ee8109242b541d3d3a0268a589`  
		Last Modified: Thu, 01 Dec 2022 20:21:08 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f260fcb007c256842f19bd7d4c0ed6bd0096b8e23651b90e69a77650755505cc`  
		Last Modified: Thu, 01 Dec 2022 20:21:08 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54cbe00dd73a2108400557a0dcde834a8fa3333fabcd01bf1804d63e16d2494e`  
		Last Modified: Thu, 01 Dec 2022 20:21:08 GMT  
		Size: 3.1 MB (3143746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb255c9c9ca7ff592f4c972f7aaf9b67e31689db3647a6404754bc7abaca87c`  
		Last Modified: Thu, 01 Dec 2022 20:21:14 GMT  
		Size: 67.1 MB (67070398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1b849649feedb72449f616be92c63adef08ad7c7faa8b30d941a9d424c3c7`  
		Last Modified: Thu, 01 Dec 2022 20:21:08 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:alpine3.16` - linux; 386

```console
$ docker pull redmine@sha256:9d7f25e356c485c60cd1fe44d0dcdbf0cbc68b56422460d0164ffd6f081c9c7c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.8 MB (194833902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6676339c6086625887358f1cddb597a16d46a83631e1d50f9a60a3268477c787`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 12 Nov 2022 03:38:23 GMT
ADD file:561637cbdd23fdd69f555dbc938902d79be2b123eb244d2cfd35b337878b63df in / 
# Sat, 12 Nov 2022 03:38:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 07:10:57 GMT
RUN set -eux; 	apk add --no-cache 		bzip2 		ca-certificates 		gmp-dev 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	;
# Sat, 12 Nov 2022 07:10:58 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 12 Nov 2022 07:10:59 GMT
ENV LANG=C.UTF-8
# Sat, 12 Nov 2022 07:14:21 GMT
ENV RUBY_MAJOR=3.1
# Fri, 25 Nov 2022 21:51:04 GMT
ENV RUBY_VERSION=3.1.3
# Fri, 25 Nov 2022 21:51:05 GMT
ENV RUBY_DOWNLOAD_SHA256=4ee161939826bcdfdafa757cf8e293a7f14e357f62be7144f040335cc8c7371a
# Fri, 25 Nov 2022 21:53:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		export ac_cv_func_isnan=yes ac_cv_func_isinf=yes; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-rundeps' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Fri, 25 Nov 2022 21:53:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 Nov 2022 21:53:44 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 Nov 2022 21:53:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Nov 2022 21:53:46 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 Nov 2022 21:53:47 GMT
CMD ["irb"]
# Thu, 01 Dec 2022 19:46:24 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine
# Thu, 01 Dec 2022 19:46:39 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ca-certificates 		findutils 		su-exec 		tini 		tzdata 		wget 				breezy 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		ghostscript-fonts 		imagemagick 	;
# Thu, 01 Dec 2022 19:46:39 GMT
ENV RAILS_ENV=production
# Thu, 01 Dec 2022 19:46:40 GMT
WORKDIR /usr/src/redmine
# Thu, 01 Dec 2022 19:46:41 GMT
ENV HOME=/home/redmine
# Thu, 01 Dec 2022 19:46:42 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 01 Dec 2022 19:46:43 GMT
ENV REDMINE_VERSION=5.0.4
# Thu, 01 Dec 2022 19:46:44 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-5.0.4.tar.gz
# Thu, 01 Dec 2022 19:46:45 GMT
ENV REDMINE_DOWNLOAD_SHA256=39436f5f8d26f5b7ce17e79903a3112e556e924da4f51c05b57f5defbe6f2924
# Thu, 01 Dec 2022 19:46:49 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 01 Dec 2022 19:46:50 GMT
ENV BUNDLE_FORCE_RUBY_PLATFORM=1
# Thu, 01 Dec 2022 19:48:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		sqlite-dev 		ttf2ufm 		zlib-dev 	; 		su-exec redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	su-exec redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps
# Thu, 01 Dec 2022 19:48:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 01 Dec 2022 19:48:57 GMT
COPY file:f2dac8fc10b4b9c85d18ffc54f3822ba7f98c858ad133cc1c0a63d9d52731204 in / 
# Thu, 01 Dec 2022 19:48:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Dec 2022 19:48:58 GMT
EXPOSE 3000
# Thu, 01 Dec 2022 19:48:59 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0c10ccf9426f4a034c81b9e1a0fa81fc5cd957d8a4e0ea545ee33f4cd59f227b`  
		Last Modified: Sat, 12 Nov 2022 03:39:07 GMT  
		Size: 2.8 MB (2808348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408b6d1fccf8ff94e4948dbfd8e63528d36b4eea1f3275a0187e4b47b5f7a197`  
		Last Modified: Sat, 12 Nov 2022 07:26:25 GMT  
		Size: 3.9 MB (3886267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94610bf138293731fbe929e0d5804da641eaa561c5fc3f140ef228d50cfb6858`  
		Last Modified: Sat, 12 Nov 2022 07:26:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cea517acbdcdec5ee6b43a10547620b30483517467434d5482dac35939fe68e`  
		Last Modified: Fri, 25 Nov 2022 22:26:53 GMT  
		Size: 28.5 MB (28511523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527c24f0805365e9f720cfe05071b0499ef8282e779c5f2262014f6f168ca6bb`  
		Last Modified: Fri, 25 Nov 2022 22:26:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903c577b64f255f071d68d53db48499ca7c4eebe0a196a075f882923dd3b9973`  
		Last Modified: Thu, 01 Dec 2022 19:54:42 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c64616fa0968583ad0e2e38667e2e49b6c0a872449c502c93b8c1bee3a71886`  
		Last Modified: Thu, 01 Dec 2022 19:54:55 GMT  
		Size: 90.4 MB (90389181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161e8b46157d3847c0b03f8c2feb68665c4df25a19242a4f33493beb47be31c`  
		Last Modified: Thu, 01 Dec 2022 19:54:40 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668c819d76f0cc6215c64c9613da90e1deff2644c7a5885bbcd882af514e88f6`  
		Last Modified: Thu, 01 Dec 2022 19:54:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49d136433a742ed28ac0e5fe2014801769b61b551574aa6fe05edb4718c1046`  
		Last Modified: Thu, 01 Dec 2022 19:54:41 GMT  
		Size: 3.1 MB (3143415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e796d88c5020d2b576ab8f7271f6a05efdb4fd76ca85f82f662bfe180f21b3cb`  
		Last Modified: Thu, 01 Dec 2022 19:54:50 GMT  
		Size: 66.1 MB (66091356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ce253e477fbd05fafa8af2587e1932f35c41a8142e080f13f743b2d11b26cc`  
		Last Modified: Thu, 01 Dec 2022 19:54:40 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:alpine3.16` - linux; ppc64le

```console
$ docker pull redmine@sha256:af1513a0d28226b7be6c553438ed2973f3e8c6087ed6a444d513fc7f5fceba1e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204409329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83399e8330435b13bc6531d60de3e28fb3400baa0986a5a115b866c1c15bd190`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 12 Nov 2022 04:16:30 GMT
ADD file:6f7965319fe0caaea57086835c0c2212284c6850f33e3c4d522c758e43acbc98 in / 
# Sat, 12 Nov 2022 04:16:31 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 13:20:12 GMT
RUN set -eux; 	apk add --no-cache 		bzip2 		ca-certificates 		gmp-dev 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	;
# Sat, 12 Nov 2022 13:20:14 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 12 Nov 2022 13:20:14 GMT
ENV LANG=C.UTF-8
# Sat, 12 Nov 2022 13:24:08 GMT
ENV RUBY_MAJOR=3.1
# Fri, 25 Nov 2022 21:27:18 GMT
ENV RUBY_VERSION=3.1.3
# Fri, 25 Nov 2022 21:27:19 GMT
ENV RUBY_DOWNLOAD_SHA256=4ee161939826bcdfdafa757cf8e293a7f14e357f62be7144f040335cc8c7371a
# Fri, 25 Nov 2022 21:30:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		export ac_cv_func_isnan=yes ac_cv_func_isinf=yes; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-rundeps' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Fri, 25 Nov 2022 21:30:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 Nov 2022 21:30:54 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 Nov 2022 21:30:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Nov 2022 21:30:55 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 Nov 2022 21:30:56 GMT
CMD ["irb"]
# Thu, 01 Dec 2022 19:32:02 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine
# Thu, 01 Dec 2022 19:32:39 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ca-certificates 		findutils 		su-exec 		tini 		tzdata 		wget 				breezy 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		ghostscript-fonts 		imagemagick 	;
# Thu, 01 Dec 2022 19:32:43 GMT
ENV RAILS_ENV=production
# Thu, 01 Dec 2022 19:32:43 GMT
WORKDIR /usr/src/redmine
# Thu, 01 Dec 2022 19:32:43 GMT
ENV HOME=/home/redmine
# Thu, 01 Dec 2022 19:32:45 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 01 Dec 2022 19:32:45 GMT
ENV REDMINE_VERSION=5.0.4
# Thu, 01 Dec 2022 19:32:45 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-5.0.4.tar.gz
# Thu, 01 Dec 2022 19:32:46 GMT
ENV REDMINE_DOWNLOAD_SHA256=39436f5f8d26f5b7ce17e79903a3112e556e924da4f51c05b57f5defbe6f2924
# Thu, 01 Dec 2022 19:32:52 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 01 Dec 2022 19:32:52 GMT
ENV BUNDLE_FORCE_RUBY_PLATFORM=1
# Thu, 01 Dec 2022 19:36:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		sqlite-dev 		ttf2ufm 		zlib-dev 	; 		su-exec redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	su-exec redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps
# Thu, 01 Dec 2022 19:36:50 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 01 Dec 2022 19:36:50 GMT
COPY file:f2dac8fc10b4b9c85d18ffc54f3822ba7f98c858ad133cc1c0a63d9d52731204 in / 
# Thu, 01 Dec 2022 19:36:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Dec 2022 19:36:51 GMT
EXPOSE 3000
# Thu, 01 Dec 2022 19:36:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5c3a6ece62351976dfb4b56dc417aebd2a7dbda14ebac2737edd2ab43883553f`  
		Last Modified: Sat, 12 Nov 2022 04:17:14 GMT  
		Size: 2.8 MB (2801551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dd24868d39317caf1e351ecd235920ea3ca85c44dd1bf7c3dd45c1df2b4a9d`  
		Last Modified: Sat, 12 Nov 2022 13:37:16 GMT  
		Size: 4.0 MB (3973178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb04162733da7df270ddcc7108273e425ead582ff511fbfc8b569561926823c`  
		Last Modified: Sat, 12 Nov 2022 13:37:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408f5a97efd53b1aaa7f7f81266b366f25c6fa988907f2b03321884cb205c50`  
		Last Modified: Fri, 25 Nov 2022 22:05:00 GMT  
		Size: 29.9 MB (29908395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2002ce286daead7b593ed950a0b2bc41dea3b29504fff63b502fb92eca2300`  
		Last Modified: Fri, 25 Nov 2022 22:04:54 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a3e8b9fc652af021fc755942d4ae1e0eac562dceefc8142ac42018786967d4`  
		Last Modified: Thu, 01 Dec 2022 19:48:05 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b217c6d89205888fe9cc459bfeb2eea5eb82af99b684e30dd53cbca1d8ce8a4d`  
		Last Modified: Thu, 01 Dec 2022 19:48:29 GMT  
		Size: 96.4 MB (96401847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba61387193222954e7f1bb6b24af886bb131b8a5f0c0638c9d4089ce152b8af6`  
		Last Modified: Thu, 01 Dec 2022 19:48:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3636ac713e89e79928201bf88be2a8bebeb92b5a03eadba640152e5115d887`  
		Last Modified: Thu, 01 Dec 2022 19:48:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2606bf45494b3e15bb8e3610ac46c1404c9a0e9d7f6908e6750919eafe069a0b`  
		Last Modified: Thu, 01 Dec 2022 19:48:05 GMT  
		Size: 3.1 MB (3143763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed2980ece10595c044fb13bb48f607827dcc4293a9047cf4e24cd4cef67db95`  
		Last Modified: Thu, 01 Dec 2022 19:48:15 GMT  
		Size: 68.2 MB (68176658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042b044c5e2cb1c5a363b5cd8fdabc0093198e5d17c3264a9b5b53fedcbb208d`  
		Last Modified: Thu, 01 Dec 2022 19:48:03 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:alpine3.16` - linux; s390x

```console
$ docker pull redmine@sha256:1fc0e4f4aac9b47dc673dbe8f6d14a0aeb080931d944eb6605a90af8d4191460
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187544334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faad4cf192f0db61d439d10b2a211321117085764f80aae23b3b5adbd5c8efeb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 12 Nov 2022 03:42:05 GMT
ADD file:b78ae95cbacd853e398f187adaf3be51d9e301a66de8f7a4b6c60a9733075cb5 in / 
# Sat, 12 Nov 2022 03:42:06 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 08:33:10 GMT
RUN set -eux; 	apk add --no-cache 		bzip2 		ca-certificates 		gmp-dev 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	;
# Sat, 12 Nov 2022 08:33:11 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 12 Nov 2022 08:33:11 GMT
ENV LANG=C.UTF-8
# Sat, 12 Nov 2022 08:36:22 GMT
ENV RUBY_MAJOR=3.1
# Fri, 25 Nov 2022 21:50:51 GMT
ENV RUBY_VERSION=3.1.3
# Fri, 25 Nov 2022 21:50:52 GMT
ENV RUBY_DOWNLOAD_SHA256=4ee161939826bcdfdafa757cf8e293a7f14e357f62be7144f040335cc8c7371a
# Fri, 25 Nov 2022 21:53:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		g++ 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		patch 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 	; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch'; 	echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum --check --strict; 	patch -p1 -i thread-stack-fix.patch; 	rm thread-stack-fix.patch; 		export ac_cv_func_isnan=yes ac_cv_func_isinf=yes; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .ruby-rundeps $runDeps; 	apk del --no-network .ruby-builddeps; 		cd /; 	rm -r /usr/src/ruby; 	if 		apk --no-network list --installed 			| grep -v '^[.]ruby-rundeps' 			| grep -i ruby 	; then 		exit 1; 	fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Fri, 25 Nov 2022 21:53:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 Nov 2022 21:53:16 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 Nov 2022 21:53:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Nov 2022 21:53:16 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 Nov 2022 21:53:16 GMT
CMD ["irb"]
# Thu, 01 Dec 2022 19:57:36 GMT
RUN addgroup -S -g 1000 redmine && adduser -S -H -G redmine -u 999 redmine
# Thu, 01 Dec 2022 19:57:49 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ca-certificates 		findutils 		su-exec 		tini 		tzdata 		wget 				breezy 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		ghostscript-fonts 		imagemagick 	;
# Thu, 01 Dec 2022 19:57:53 GMT
ENV RAILS_ENV=production
# Thu, 01 Dec 2022 19:57:54 GMT
WORKDIR /usr/src/redmine
# Thu, 01 Dec 2022 19:57:54 GMT
ENV HOME=/home/redmine
# Thu, 01 Dec 2022 19:57:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 01 Dec 2022 19:57:54 GMT
ENV REDMINE_VERSION=5.0.4
# Thu, 01 Dec 2022 19:57:54 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-5.0.4.tar.gz
# Thu, 01 Dec 2022 19:57:55 GMT
ENV REDMINE_DOWNLOAD_SHA256=39436f5f8d26f5b7ce17e79903a3112e556e924da4f51c05b57f5defbe6f2924
# Thu, 01 Dec 2022 19:57:57 GMT
RUN set -eux; 	wget -O redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 01 Dec 2022 19:57:58 GMT
ENV BUNDLE_FORCE_RUBY_PLATFORM=1
# Thu, 01 Dec 2022 19:59:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetds-dev 		gcc 		make 		mariadb-dev 		musl-dev 		patch 		postgresql-dev 		sqlite-dev 		ttf2ufm 		zlib-dev 	; 		su-exec redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	su-exec redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		rm /usr/local/bundle/gems/rbpdf-font-1.19.*/lib/fonts/ttf2ufm/ttf2ufm; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/bundle/gems 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .redmine-rundeps $runDeps; 	apk del --no-network .build-deps
# Thu, 01 Dec 2022 19:59:44 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 01 Dec 2022 19:59:44 GMT
COPY file:f2dac8fc10b4b9c85d18ffc54f3822ba7f98c858ad133cc1c0a63d9d52731204 in / 
# Thu, 01 Dec 2022 19:59:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Dec 2022 19:59:44 GMT
EXPOSE 3000
# Thu, 01 Dec 2022 19:59:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cff16a5ffe2df97bc1d10b021c5ceb98bdb36a18a1d70395590444ac204a9b2b`  
		Last Modified: Sat, 12 Nov 2022 03:43:06 GMT  
		Size: 2.6 MB (2591126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9730e14cea879b2bd57ada02e0c79cb1163be61ac4e587f16b3c968864068e4f`  
		Last Modified: Sat, 12 Nov 2022 08:48:00 GMT  
		Size: 3.9 MB (3940889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a735d9f55a1e462717c5eb873f7fd0de003535c856336c55f73fa3e5aa2daa50`  
		Last Modified: Sat, 12 Nov 2022 08:47:59 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96036e48520fba3a57a15ad6e77d9ef087c797872a52768c0d94ee284e29cc12`  
		Last Modified: Fri, 25 Nov 2022 22:17:16 GMT  
		Size: 29.3 MB (29324269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa2921f74d7b3a98cc9d1041573aefbe6f1aa9a4584f7aeaac9b353189e3de0`  
		Last Modified: Fri, 25 Nov 2022 22:17:14 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188c2e9d8b14b5ab50f52305826c730e8308c252e7d833761c53e0d1d2be612f`  
		Last Modified: Thu, 01 Dec 2022 20:06:18 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bea2592a3116e2bf018ec807bba3d63123c0c63b75ae0e656f25fdd411ffc68`  
		Last Modified: Thu, 01 Dec 2022 20:06:30 GMT  
		Size: 81.0 MB (80957083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9837aba5fb1a8ea321fede569d34788ed6ba2a1dffb5c5f5264d7e3f3eef1a`  
		Last Modified: Thu, 01 Dec 2022 20:06:17 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dccbf790b42997b65107cbd62caf5675c9c95486d67522016b9ab0e2b4f980`  
		Last Modified: Thu, 01 Dec 2022 20:06:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d3970685e80e8240326d0d6e9c55945989b96bb90caf96eb5d5c7eb89f0840`  
		Last Modified: Thu, 01 Dec 2022 20:06:18 GMT  
		Size: 3.1 MB (3143761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898f030f3664d761016dbd31939ee9adf2aa4f8d429429946c6e6af8ab115b16`  
		Last Modified: Thu, 01 Dec 2022 20:06:24 GMT  
		Size: 67.6 MB (67583268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76530b418554b85007d0bae9cbf7a36b7eaf3f61a4663bce9326555ee1daeb9`  
		Last Modified: Thu, 01 Dec 2022 20:06:17 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
