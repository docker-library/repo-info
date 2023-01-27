## `redmine:4-bullseye`

```console
$ docker pull redmine@sha256:6c7cdda88909c12d9bddd0594380449950696cf130ddaa13c50b95aad746db5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:4-bullseye` - linux; amd64

```console
$ docker pull redmine@sha256:3c2790200c2f21bf3d4e4760dd10e31ad2e05b801b3271b84f0e80e33c387792
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.2 MB (206151523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b1b117c2b4572970f9d943938673956b88881230bdbb970ab3027d8f528888`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 09:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 09:35:25 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 11 Jan 2023 09:35:26 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 10:04:07 GMT
ENV RUBY_MAJOR=2.7
# Wed, 11 Jan 2023 10:04:07 GMT
ENV RUBY_VERSION=2.7.7
# Wed, 11 Jan 2023 10:04:07 GMT
ENV RUBY_DOWNLOAD_SHA256=b38dff2e1f8ce6e5b7d433f8758752987a6b2adfd9bc7571dbc42ea5d04e3e4c
# Wed, 11 Jan 2023 10:05:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 11 Jan 2023 10:06:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jan 2023 10:06:00 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jan 2023 10:06:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 10:06:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 11 Jan 2023 10:06:01 GMT
CMD ["irb"]
# Thu, 12 Jan 2023 01:33:03 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine
# Thu, 12 Jan 2023 01:33:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		gsfonts 		imagemagick 		gosu 		tini 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 01:33:30 GMT
ENV RAILS_ENV=production
# Thu, 12 Jan 2023 01:33:30 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Jan 2023 01:33:30 GMT
ENV HOME=/home/redmine
# Thu, 12 Jan 2023 01:33:31 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 12 Jan 2023 01:33:31 GMT
ENV REDMINE_VERSION=4.2.9
# Thu, 12 Jan 2023 01:33:31 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-4.2.9.tar.gz
# Thu, 12 Jan 2023 01:33:31 GMT
ENV REDMINE_DOWNLOAD_SHA256=d38741345f6efd10c079898093b259d8dc4dcd8e41dfc4f64649685ae7a8cb1e
# Thu, 12 Jan 2023 01:33:35 GMT
RUN set -eux; 	curl -fL -o redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 12 Jan 2023 01:34:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		make 		patch 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 12 Jan 2023 01:34:19 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Jan 2023 01:34:19 GMT
COPY file:f61e8718e722eba56748d9a7e58011159861fb49784b1ad721746c1fc5735b6d in / 
# Thu, 12 Jan 2023 01:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 01:34:19 GMT
EXPOSE 3000
# Thu, 12 Jan 2023 01:34:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fd25769e11faa7a89193d84f68e4c1fa42f1b315eb1621ef0aed050a5d4986`  
		Last Modified: Wed, 11 Jan 2023 10:12:03 GMT  
		Size: 10.0 MB (10019588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbb5ad0dc435f5ad5da801a21ff40e66ddd97488565c3489126c7c29e8ccdbe`  
		Last Modified: Wed, 11 Jan 2023 10:12:01 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f731afb17d634fb14e41216b5ddd1e6b4bef80178ea306963fb4cad70e3dc22`  
		Last Modified: Wed, 11 Jan 2023 10:15:09 GMT  
		Size: 14.6 MB (14582747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a59cd0ebf67051c02aebbf29c3dbd108df87920e7717aea4688bbd655d53472`  
		Last Modified: Wed, 11 Jan 2023 10:15:08 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0bb6beb831c2d8e704acc84bd681d6d86d3099e34acc230c64799107d4455f`  
		Last Modified: Thu, 12 Jan 2023 01:36:04 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfda5c1f37b15b8e806b553a7f85cf6a6fabe59b249cde5008865d3b8f7fd769`  
		Last Modified: Thu, 12 Jan 2023 01:36:20 GMT  
		Size: 102.0 MB (101992135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4496712cb0540ef8444d3ebab71d29036cf3fa1c565c2bf2115252aebe3d9c54`  
		Last Modified: Thu, 12 Jan 2023 01:36:02 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059893018bddbbaed29551ce250dd0beb715817de53735ab31633440cc5dfb2b`  
		Last Modified: Thu, 12 Jan 2023 01:36:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e833c7620b982140dfd3a340d2b374042091ef55aca0b6daf00e0b7c26189611`  
		Last Modified: Thu, 12 Jan 2023 01:36:03 GMT  
		Size: 3.1 MB (3067415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f95b07dd0f6becb3ec12508fe3221fb68dd33e7c7333be7947347ba40f540c3`  
		Last Modified: Thu, 12 Jan 2023 01:36:07 GMT  
		Size: 45.1 MB (45088202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1fce5e740ea246144128d33e0e293633a8cf5f56b6930f01ffcad98d75598f`  
		Last Modified: Thu, 12 Jan 2023 01:36:02 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4-bullseye` - linux; arm variant v5

```console
$ docker pull redmine@sha256:0b62e8c8c16947cc64b5577f99c38b2716a953bdf7c1de0280a7f001e1d82edb
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 MB (202654144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b6965fe8443c5b9cb2a027d7aca95a397c5f06168750e2bf45f1696b77f7b29`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:36 GMT
ADD file:f279d5ada9c5980d920c7b9ff126ce11ec9499a532ea3bfd8b717de3348c8439 in / 
# Wed, 11 Jan 2023 01:55:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 10:20:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 10:20:19 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 11 Jan 2023 10:20:19 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 10:35:47 GMT
ENV RUBY_MAJOR=2.7
# Wed, 11 Jan 2023 10:35:47 GMT
ENV RUBY_VERSION=2.7.7
# Wed, 11 Jan 2023 10:35:47 GMT
ENV RUBY_DOWNLOAD_SHA256=b38dff2e1f8ce6e5b7d433f8758752987a6b2adfd9bc7571dbc42ea5d04e3e4c
# Wed, 11 Jan 2023 10:37:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 11 Jan 2023 10:37:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jan 2023 10:37:51 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jan 2023 10:37:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 10:37:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 11 Jan 2023 10:37:52 GMT
CMD ["irb"]
# Wed, 11 Jan 2023 15:44:50 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine
# Wed, 11 Jan 2023 15:45:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		gsfonts 		imagemagick 		gosu 		tini 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 15:45:29 GMT
ENV RAILS_ENV=production
# Wed, 11 Jan 2023 15:45:30 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Jan 2023 15:45:30 GMT
ENV HOME=/home/redmine
# Wed, 11 Jan 2023 15:45:31 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 11 Jan 2023 15:45:31 GMT
ENV REDMINE_VERSION=4.2.9
# Wed, 11 Jan 2023 15:45:31 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-4.2.9.tar.gz
# Wed, 11 Jan 2023 15:45:32 GMT
ENV REDMINE_DOWNLOAD_SHA256=d38741345f6efd10c079898093b259d8dc4dcd8e41dfc4f64649685ae7a8cb1e
# Wed, 11 Jan 2023 15:45:36 GMT
RUN set -eux; 	curl -fL -o redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 11 Jan 2023 15:47:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		make 		patch 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 15:47:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Jan 2023 15:47:58 GMT
COPY file:f61e8718e722eba56748d9a7e58011159861fb49784b1ad721746c1fc5735b6d in / 
# Wed, 11 Jan 2023 15:47:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Jan 2023 15:47:58 GMT
EXPOSE 3000
# Wed, 11 Jan 2023 15:47:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:77f56a6f12b7a55a95e6f2c8beadc0eb0243b5881f73f45d09c343f2a8926d62`  
		Last Modified: Wed, 11 Jan 2023 02:00:42 GMT  
		Size: 28.9 MB (28898675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aa9df731f31f3f9c9ecd3e77a6b21d1892261b9d0213bf9fae983382ad8c8c`  
		Last Modified: Wed, 11 Jan 2023 10:40:33 GMT  
		Size: 8.6 MB (8633558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac40c650d9ea51c75b4953e09ad95014d27736b7a49d2f17bf1dfd2e25342ce`  
		Last Modified: Wed, 11 Jan 2023 10:40:30 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eebf0fc5f2b33a4e5914d3a9ac468f381f9ff55ca21f9da9f947e1a4870544d`  
		Last Modified: Wed, 11 Jan 2023 10:42:58 GMT  
		Size: 13.9 MB (13919553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4871351a8de9b7845e04a232d5d957345f9bfe573bcbbda7baae6cf141aacfc1`  
		Last Modified: Wed, 11 Jan 2023 10:42:55 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbbec1531c290300a2c9f01945a862537d3a8f190397a8a057f974d2bf220c5`  
		Last Modified: Wed, 11 Jan 2023 15:49:52 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcd19e3a423f35967ec5d8a4668f74e7469eadcf47c1e59687ea52419f23964`  
		Last Modified: Wed, 11 Jan 2023 15:50:11 GMT  
		Size: 97.0 MB (96966319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830735fa2ca9f30f04b8794994e9293307f4972afa1aa23ae429ee111c367bd8`  
		Last Modified: Wed, 11 Jan 2023 15:49:50 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cde79bf9e2b2bd9e87011e26cb39b31670626d65075c0998dec5bcbf9c25a41`  
		Last Modified: Wed, 11 Jan 2023 15:49:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423efd14c8f26893a6673c4762efab6ea887b263a2a0116a1833e1892caffa6b`  
		Last Modified: Wed, 11 Jan 2023 15:49:51 GMT  
		Size: 3.1 MB (3067004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d896b4b223e68802254e0af21efd19f7f0da705ddb40f83c0356149c379d686b`  
		Last Modified: Wed, 11 Jan 2023 15:49:57 GMT  
		Size: 51.2 MB (51164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cc01acd9840c89dbc0239da0dd959dc6ccf0307d8e5cd6525ede301c1e12e4`  
		Last Modified: Wed, 11 Jan 2023 15:49:50 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4-bullseye` - linux; arm variant v7

```console
$ docker pull redmine@sha256:8677b20df94d5d81f02528a95c7bd956620ae7a2c573a99ac5a8ac876d2fa1dc
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195614143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a6ab7620811040dec6c6e53db49bba9c3f9fb343212a1a93a2e8775a41ec73`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:36 GMT
ADD file:3fb94bfd628f3ebd91db74501bd297a817977cc066664f0fa342442b3352e0be in / 
# Wed, 11 Jan 2023 04:00:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 18:29:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 18:29:41 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 11 Jan 2023 18:29:41 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 18:56:35 GMT
ENV RUBY_MAJOR=2.7
# Wed, 11 Jan 2023 18:56:35 GMT
ENV RUBY_VERSION=2.7.7
# Wed, 11 Jan 2023 18:56:36 GMT
ENV RUBY_DOWNLOAD_SHA256=b38dff2e1f8ce6e5b7d433f8758752987a6b2adfd9bc7571dbc42ea5d04e3e4c
# Wed, 11 Jan 2023 18:58:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 11 Jan 2023 18:58:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jan 2023 18:58:21 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jan 2023 18:58:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 18:58:22 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 11 Jan 2023 18:58:22 GMT
CMD ["irb"]
# Thu, 12 Jan 2023 05:54:49 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine
# Thu, 12 Jan 2023 05:55:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		gsfonts 		imagemagick 		gosu 		tini 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 05:55:16 GMT
ENV RAILS_ENV=production
# Thu, 12 Jan 2023 05:55:17 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Jan 2023 05:55:17 GMT
ENV HOME=/home/redmine
# Thu, 12 Jan 2023 05:55:17 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 12 Jan 2023 05:55:17 GMT
ENV REDMINE_VERSION=4.2.9
# Thu, 12 Jan 2023 05:55:17 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-4.2.9.tar.gz
# Thu, 12 Jan 2023 05:55:17 GMT
ENV REDMINE_DOWNLOAD_SHA256=d38741345f6efd10c079898093b259d8dc4dcd8e41dfc4f64649685ae7a8cb1e
# Thu, 12 Jan 2023 05:55:22 GMT
RUN set -eux; 	curl -fL -o redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 12 Jan 2023 05:57:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		make 		patch 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 12 Jan 2023 05:57:17 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Jan 2023 05:57:17 GMT
COPY file:f61e8718e722eba56748d9a7e58011159861fb49784b1ad721746c1fc5735b6d in / 
# Thu, 12 Jan 2023 05:57:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Jan 2023 05:57:18 GMT
EXPOSE 3000
# Thu, 12 Jan 2023 05:57:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:330ad28688ae3fa5f3b241fef3efd076299bec9874e0597b1c16dcf8a165a53d`  
		Last Modified: Wed, 11 Jan 2023 04:07:49 GMT  
		Size: 26.6 MB (26559488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c4329f115ccb62a523184a59f6677da5453b0d310a49802471adda6a5f696b`  
		Last Modified: Wed, 11 Jan 2023 19:06:44 GMT  
		Size: 8.1 MB (8142228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2f88bb9c79099195b3a20ab2c1514dbb503f0bcc31d9dd770d3b661343def6`  
		Last Modified: Wed, 11 Jan 2023 19:06:42 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12a4081a8f989c69151953bae0cee77247f439eb76e2aa29470938ab1a8e972`  
		Last Modified: Wed, 11 Jan 2023 19:11:09 GMT  
		Size: 13.8 MB (13801139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241b0ba716ce7e20ede29e5184009752eaa8d98a317313ee292feb4788396dcd`  
		Last Modified: Wed, 11 Jan 2023 19:11:07 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb13385fb9d91ff9375bec59f47494b18c3f300dab3bb0bc5abbcc99717712aa`  
		Last Modified: Thu, 12 Jan 2023 05:59:47 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2edbf0a31d72337e79a659555d8912c50b13e29791590aca06676ae86e9ea9c`  
		Last Modified: Thu, 12 Jan 2023 06:00:04 GMT  
		Size: 93.1 MB (93113097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4b22fa3b6d082fcb77634fc86830e1f417a8dbdac1b1b58865c0e4633e55fe`  
		Last Modified: Thu, 12 Jan 2023 05:59:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04b7dcf46032b43d6a59e9a6bf90b5325728a80c8c0405fd0d38ee2298504ee`  
		Last Modified: Thu, 12 Jan 2023 05:59:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7627fba0ddea1f6f5b3aa636c172806aacae723d1563bead6c72b887dd12eb`  
		Last Modified: Thu, 12 Jan 2023 05:59:46 GMT  
		Size: 3.1 MB (3067016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5730d588e616f5a00c683fd131c66070bf850d777d14c6e26e8d4c59c5f644`  
		Last Modified: Thu, 12 Jan 2023 05:59:52 GMT  
		Size: 50.9 MB (50926820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d6324641d74023f45cd9c1e7e814f52b8352cd8f1faba750a5c07ad27446e3`  
		Last Modified: Thu, 12 Jan 2023 05:59:45 GMT  
		Size: 2.0 KB (2014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4-bullseye` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:bc744e485e4f0d6e192465a292b8ecdca4db763a5820db0e8f85fbfca30c1507
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201354894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbb9b6590369aa841a129fe4dcd7a8493bdb47075487b6a9e2ebf3e946a45485`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 14:04:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 14:04:56 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 11 Jan 2023 14:04:56 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 14:25:59 GMT
ENV RUBY_MAJOR=2.7
# Wed, 11 Jan 2023 14:25:59 GMT
ENV RUBY_VERSION=2.7.7
# Wed, 11 Jan 2023 14:25:59 GMT
ENV RUBY_DOWNLOAD_SHA256=b38dff2e1f8ce6e5b7d433f8758752987a6b2adfd9bc7571dbc42ea5d04e3e4c
# Wed, 11 Jan 2023 14:27:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 11 Jan 2023 14:27:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jan 2023 14:27:23 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jan 2023 14:27:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 14:27:23 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 11 Jan 2023 14:27:23 GMT
CMD ["irb"]
# Wed, 11 Jan 2023 21:50:30 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine
# Wed, 11 Jan 2023 21:50:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		gsfonts 		imagemagick 		gosu 		tini 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 21:50:51 GMT
ENV RAILS_ENV=production
# Wed, 11 Jan 2023 21:50:51 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Jan 2023 21:50:51 GMT
ENV HOME=/home/redmine
# Wed, 11 Jan 2023 21:50:52 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 11 Jan 2023 21:50:52 GMT
ENV REDMINE_VERSION=4.2.9
# Wed, 11 Jan 2023 21:50:52 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-4.2.9.tar.gz
# Wed, 11 Jan 2023 21:50:52 GMT
ENV REDMINE_DOWNLOAD_SHA256=d38741345f6efd10c079898093b259d8dc4dcd8e41dfc4f64649685ae7a8cb1e
# Wed, 11 Jan 2023 21:50:55 GMT
RUN set -eux; 	curl -fL -o redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 11 Jan 2023 21:51:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		make 		patch 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 21:51:32 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Jan 2023 21:51:32 GMT
COPY file:f61e8718e722eba56748d9a7e58011159861fb49784b1ad721746c1fc5735b6d in / 
# Wed, 11 Jan 2023 21:51:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Jan 2023 21:51:32 GMT
EXPOSE 3000
# Wed, 11 Jan 2023 21:51:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a209f35625388ad219f77bddf465a00ca2e6a254b4157de56f0f1dbe755848`  
		Last Modified: Wed, 11 Jan 2023 14:32:34 GMT  
		Size: 9.2 MB (9242278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c7630246b7160355beb44d129324bb6aa0c4676b9b10b21e900393f3051d4d`  
		Last Modified: Wed, 11 Jan 2023 14:32:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41db1ae29040cd2c3287fa7146fd85178473b09736adb5e08ca20b359c8c9d9`  
		Last Modified: Wed, 11 Jan 2023 14:35:35 GMT  
		Size: 14.4 MB (14422504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7791244f569b9e4b9ce06892481e3747e6e88baa7e1a2add9921846f6ad6e1a`  
		Last Modified: Wed, 11 Jan 2023 14:35:34 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7efafb015451cffe836900409e1fd3d5c3ec7bf04f18ab72adcb062f4154e6`  
		Last Modified: Wed, 11 Jan 2023 21:52:50 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f5c9dbec18a5171a08d78393719bee3e1d5c384ac6bfe4e93e661865147c26`  
		Last Modified: Wed, 11 Jan 2023 21:53:02 GMT  
		Size: 99.8 MB (99757703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e8fd1f024f75bac85f4f27176f9b20f338fddfef21754ec662f74c9d58668e`  
		Last Modified: Wed, 11 Jan 2023 21:52:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486966f9c2376757d27285adc458df337954c4a36097c807f1b7641c2e5a3382`  
		Last Modified: Wed, 11 Jan 2023 21:52:48 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bab372be74d7cd1259c7130c9206c43fa7a6faf73ffb82d5ccc28a9819c3c7c`  
		Last Modified: Wed, 11 Jan 2023 21:52:49 GMT  
		Size: 3.1 MB (3067413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d9b1d0ae4cbfb23a70f3310dd4d779fd250b7b702d29f353b92adc6fc1c0c5`  
		Last Modified: Wed, 11 Jan 2023 21:52:52 GMT  
		Size: 44.8 MB (44815716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25033a35e87d8e698200232e727c3438c94f34677cc012b5e412d13f675b80f2`  
		Last Modified: Wed, 11 Jan 2023 21:52:48 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4-bullseye` - linux; 386

```console
$ docker pull redmine@sha256:4e21b30d1948f5e10b43501b2280c5bd85cd62633d4726c9abfd985fd497f586
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.3 MB (209321737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9643b960e211405557f4723652f09ab5da2dbb9ddd7ed125ee595aa7c87b503e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:08 GMT
ADD file:68afc7c49a947a9fb253ffeba9950cdc39e241f8a5cf0133043cfc612447f597 in / 
# Wed, 11 Jan 2023 03:16:08 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:34:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:34:10 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 11 Jan 2023 17:34:11 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 18:02:13 GMT
ENV RUBY_MAJOR=2.7
# Wed, 11 Jan 2023 18:02:14 GMT
ENV RUBY_VERSION=2.7.7
# Wed, 11 Jan 2023 18:02:15 GMT
ENV RUBY_DOWNLOAD_SHA256=b38dff2e1f8ce6e5b7d433f8758752987a6b2adfd9bc7571dbc42ea5d04e3e4c
# Wed, 11 Jan 2023 18:04:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 11 Jan 2023 18:04:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jan 2023 18:04:02 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jan 2023 18:04:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 18:04:04 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 11 Jan 2023 18:04:05 GMT
CMD ["irb"]
# Wed, 11 Jan 2023 22:57:05 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine
# Wed, 11 Jan 2023 22:57:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		gsfonts 		imagemagick 		gosu 		tini 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 22:57:33 GMT
ENV RAILS_ENV=production
# Wed, 11 Jan 2023 22:57:34 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Jan 2023 22:57:35 GMT
ENV HOME=/home/redmine
# Wed, 11 Jan 2023 22:57:36 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 11 Jan 2023 22:57:37 GMT
ENV REDMINE_VERSION=4.2.9
# Wed, 11 Jan 2023 22:57:38 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-4.2.9.tar.gz
# Wed, 11 Jan 2023 22:57:39 GMT
ENV REDMINE_DOWNLOAD_SHA256=d38741345f6efd10c079898093b259d8dc4dcd8e41dfc4f64649685ae7a8cb1e
# Wed, 11 Jan 2023 22:57:43 GMT
RUN set -eux; 	curl -fL -o redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 11 Jan 2023 22:58:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		make 		patch 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 22:58:30 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Jan 2023 22:58:31 GMT
COPY file:f61e8718e722eba56748d9a7e58011159861fb49784b1ad721746c1fc5735b6d in / 
# Wed, 11 Jan 2023 22:58:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Jan 2023 22:58:32 GMT
EXPOSE 3000
# Wed, 11 Jan 2023 22:58:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:165165b78fad597abd0883f40adcaa0edcfe981a358deea181323680a07b7011`  
		Last Modified: Wed, 11 Jan 2023 03:22:01 GMT  
		Size: 32.4 MB (32375738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bbe8fc2b8710b3fc8628b410b58dbbcdb1869a82ae96d3eebf61f93f883eab`  
		Last Modified: Wed, 11 Jan 2023 18:11:18 GMT  
		Size: 12.0 MB (11992347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:362036d08ae7cd4cf49664df7b35e2eaaa6d8ea3271d5f6ea2690b6ecca21710`  
		Last Modified: Wed, 11 Jan 2023 18:11:16 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635ebefa7ba4446a6d6df8f517913dd61f7778fd23594befcf5ff1b6b4f67c01`  
		Last Modified: Wed, 11 Jan 2023 18:15:17 GMT  
		Size: 13.7 MB (13684931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3be7d64e78e4e6208d2b48c1ab9bdbc81378864536a5112c7ff8e51b0d73d3`  
		Last Modified: Wed, 11 Jan 2023 18:15:15 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb97eaff1b7e5f92856e24fa6b6ac542b40ce2992025a3e7b2fb930254d8a16`  
		Last Modified: Wed, 11 Jan 2023 23:00:40 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a370c82e41e7e225681783e5acb2a1e8817d8e510ef0386f92abbde13beeba5d`  
		Last Modified: Wed, 11 Jan 2023 23:00:55 GMT  
		Size: 103.3 MB (103313240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123c1839b761fce00d1911a3e546292c6d9320a1319fbe4350c6be6bc6eaaadc`  
		Last Modified: Wed, 11 Jan 2023 23:00:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dc01679b403acce892c7d3cbc6debb632f3f96eceddf10908477aedb2071be`  
		Last Modified: Wed, 11 Jan 2023 23:00:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7f871ee093564c24f97d6f15546224436ff4c4a05cf9ef55b0c65b28f9b680`  
		Last Modified: Wed, 11 Jan 2023 23:00:39 GMT  
		Size: 3.1 MB (3067607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbedc41473fd057a48c7c6daed63be7b5691d69997dfa7ca26d5879baa679f96`  
		Last Modified: Wed, 11 Jan 2023 23:00:43 GMT  
		Size: 44.9 MB (44883642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5280a7085f0a0c62cf015f6dff22389afaa28af8ff4e67bd9bf10471ec354c4a`  
		Last Modified: Wed, 11 Jan 2023 23:00:38 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4-bullseye` - linux; ppc64le

```console
$ docker pull redmine@sha256:dd899d14ebf1d937b69027a89cf3b49038831b4203bf9b77499633c723163908
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.3 MB (224317814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2eeaa42ac1aa175bb42a98560eb75b0ec308ff600ac489a5d95b7cd483541dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:30 GMT
ADD file:3c7553fb5eda606d574ff6c08bc2213f9e6a68910043fe3087e4c1a04b65a18e in / 
# Wed, 11 Jan 2023 03:49:32 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 15:03:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 15:03:34 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 11 Jan 2023 15:03:35 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 15:24:22 GMT
ENV RUBY_MAJOR=2.7
# Wed, 11 Jan 2023 15:24:22 GMT
ENV RUBY_VERSION=2.7.7
# Wed, 11 Jan 2023 15:24:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b38dff2e1f8ce6e5b7d433f8758752987a6b2adfd9bc7571dbc42ea5d04e3e4c
# Wed, 11 Jan 2023 15:27:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 11 Jan 2023 15:27:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jan 2023 15:27:32 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jan 2023 15:27:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 15:27:34 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 11 Jan 2023 15:27:35 GMT
CMD ["irb"]
# Wed, 11 Jan 2023 23:54:59 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine
# Wed, 11 Jan 2023 23:56:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		gsfonts 		imagemagick 		gosu 		tini 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 23:56:04 GMT
ENV RAILS_ENV=production
# Wed, 11 Jan 2023 23:56:04 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Jan 2023 23:56:05 GMT
ENV HOME=/home/redmine
# Wed, 11 Jan 2023 23:56:06 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 11 Jan 2023 23:56:06 GMT
ENV REDMINE_VERSION=4.2.9
# Wed, 11 Jan 2023 23:56:06 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-4.2.9.tar.gz
# Wed, 11 Jan 2023 23:56:07 GMT
ENV REDMINE_DOWNLOAD_SHA256=d38741345f6efd10c079898093b259d8dc4dcd8e41dfc4f64649685ae7a8cb1e
# Wed, 11 Jan 2023 23:56:12 GMT
RUN set -eux; 	curl -fL -o redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 11 Jan 2023 23:59:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		make 		patch 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 23:59:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Jan 2023 23:59:55 GMT
COPY file:f61e8718e722eba56748d9a7e58011159861fb49784b1ad721746c1fc5735b6d in / 
# Wed, 11 Jan 2023 23:59:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Jan 2023 23:59:56 GMT
EXPOSE 3000
# Wed, 11 Jan 2023 23:59:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bbf81328aca90b7ddb122fc175443f5323674a9e51bbb00d5b1d683ef0b858f4`  
		Last Modified: Wed, 11 Jan 2023 03:55:33 GMT  
		Size: 35.3 MB (35268773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7350e61967e916a3381c880637c5fc39c79ba348adf4d3a6b6a192999f618546`  
		Last Modified: Wed, 11 Jan 2023 15:30:49 GMT  
		Size: 10.5 MB (10477711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50a4ef71470b9df926fed04b7a1aa47e6c198e3f234bc3ef031350fe2b558c1`  
		Last Modified: Wed, 11 Jan 2023 15:30:46 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dc9dcef5af30b5bc59046eaed530ecf0f8d7e2d495358270f3f29704b4f85`  
		Last Modified: Wed, 11 Jan 2023 15:33:34 GMT  
		Size: 15.1 MB (15056493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b08070c3ada6ba931584f1b82dabd364e1e4955bd4a0b132f7e411a38074bf`  
		Last Modified: Wed, 11 Jan 2023 15:33:31 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee1139a4467339679a18449dd4d883587a6c718ef43f75ab07b8efe09c136a7`  
		Last Modified: Thu, 12 Jan 2023 00:02:19 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf44dbb9c47b719d54a313f3c701cbc0ee18a66835f17b83a88128c3f3a4cb10`  
		Last Modified: Thu, 12 Jan 2023 00:02:47 GMT  
		Size: 107.5 MB (107479017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35464089c8024d81ddee4188703086e24e1a5a4f5ea917f355599f289c23408f`  
		Last Modified: Thu, 12 Jan 2023 00:02:17 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8854d4cfec17b022bbf00b8e5cfbc459954eb28f0aa0e95bf96339393ca5aabd`  
		Last Modified: Thu, 12 Jan 2023 00:02:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b7a4471f2bea1960619ffa3da2c4dab4381608059c109d96f22729552cd730`  
		Last Modified: Thu, 12 Jan 2023 00:02:18 GMT  
		Size: 3.1 MB (3067409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2ec12e1ba8681b87b4da80c17dd5822d7e84d91699102ae673849e15145ea9`  
		Last Modified: Thu, 12 Jan 2023 00:02:26 GMT  
		Size: 53.0 MB (52963951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1d3c6e76fae59e3347f786368d43fcca2929a022aab6fed4fc61e6f7daf988`  
		Last Modified: Thu, 12 Jan 2023 00:02:17 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4-bullseye` - linux; s390x

```console
$ docker pull redmine@sha256:a770333197f6fc21a8258b551fc4216f6883d56e4491d8a03a9d83154b84462a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.7 MB (207684421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf3ea1c35d8ffffca3ec5b66ee29f4b2b0ce5f2e780526c52ba47e0bf85dbb99`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:23 GMT
ADD file:14f332233d8fa1ca519992e52aaf550bcee52d346c375e94ee73d36864933f8e in / 
# Wed, 11 Jan 2023 02:22:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 08:57:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 08:57:23 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 11 Jan 2023 08:57:23 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jan 2023 09:11:04 GMT
ENV RUBY_MAJOR=2.7
# Wed, 11 Jan 2023 09:11:05 GMT
ENV RUBY_VERSION=2.7.7
# Wed, 11 Jan 2023 09:11:05 GMT
ENV RUBY_DOWNLOAD_SHA256=b38dff2e1f8ce6e5b7d433f8758752987a6b2adfd9bc7571dbc42ea5d04e3e4c
# Wed, 11 Jan 2023 09:12:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 11 Jan 2023 09:12:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jan 2023 09:12:45 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jan 2023 09:12:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 09:12:46 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 11 Jan 2023 09:12:46 GMT
CMD ["irb"]
# Wed, 11 Jan 2023 15:37:41 GMT
RUN groupadd -r -g 999 redmine && useradd -r -g redmine -u 999 redmine
# Wed, 11 Jan 2023 15:38:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				ghostscript 		gsfonts 		imagemagick 		gosu 		tini 	; 	sed -ri 's/(rights)="none" (pattern="PDF")/\1="read" \2/' /etc/ImageMagick-6/policy.xml; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 15:38:44 GMT
ENV RAILS_ENV=production
# Wed, 11 Jan 2023 15:38:44 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Jan 2023 15:38:44 GMT
ENV HOME=/home/redmine
# Wed, 11 Jan 2023 15:38:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 11 Jan 2023 15:38:46 GMT
ENV REDMINE_VERSION=4.2.9
# Wed, 11 Jan 2023 15:38:46 GMT
ENV REDMINE_DOWNLOAD_URL=https://www.redmine.org/releases/redmine-4.2.9.tar.gz
# Wed, 11 Jan 2023 15:38:47 GMT
ENV REDMINE_DOWNLOAD_SHA256=d38741345f6efd10c079898093b259d8dc4dcd8e41dfc4f64649685ae7a8cb1e
# Wed, 11 Jan 2023 15:38:52 GMT
RUN set -eux; 	curl -fL -o redmine.tar.gz "$REDMINE_DOWNLOAD_URL"; 	echo "$REDMINE_DOWNLOAD_SHA256 *redmine.tar.gz" | sha256sum -c -; 	tar -xf redmine.tar.gz --strip-components=1; 	rm redmine.tar.gz files/delete.me log/delete.me; 	mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids; 	chown -R redmine:redmine ./; 	echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; 	chmod -R ugo=rwX config db sqlite; 	find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 11 Jan 2023 15:40:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		default-libmysqlclient-dev 		freetds-dev 		gcc 		libpq-dev 		libsqlite3-dev 		make 		patch 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		gosu redmine bundle config --local without 'development test'; 	puma="$(grep -E "^[[:space:]]*gem [:'\"]puma['\",[:space:]].*\$" Gemfile)"; 	{ echo; echo "$puma"; } | sed -re 's/^[[:space:]]+//' >> Gemfile; 	echo '# the following entries only exist to force `bundle install` to pre-install all database adapter dependencies -- they can be safely removed/ignored' > ./config/database.yml; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$adapter:" >> ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 	done; 	gosu redmine bundle install --jobs "$(nproc)"; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 11 Jan 2023 15:40:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Jan 2023 15:40:29 GMT
COPY file:f61e8718e722eba56748d9a7e58011159861fb49784b1ad721746c1fc5735b6d in / 
# Wed, 11 Jan 2023 15:40:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Jan 2023 15:40:30 GMT
EXPOSE 3000
# Wed, 11 Jan 2023 15:40:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5895b3b9300287ac4aca79440c1c4979b6d4fad1ceb06fba32443d012c83cc37`  
		Last Modified: Wed, 11 Jan 2023 02:26:52 GMT  
		Size: 29.6 MB (29629731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4953120d5a76d38371eb14d26c03d7b9e963dc0569342413f594e4b8a01f9033`  
		Last Modified: Wed, 11 Jan 2023 09:15:26 GMT  
		Size: 8.9 MB (8859854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150435f909e2db5c84f6ea7fcb0768d586adb13b9d4fb966c01d320eeb904d1d`  
		Last Modified: Wed, 11 Jan 2023 09:15:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937617fa5c96f655db7c8c1392d8c37689d3b79eed26cd0d3c17a29866742392`  
		Last Modified: Wed, 11 Jan 2023 09:17:05 GMT  
		Size: 14.7 MB (14671019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69c5dda4ca2e204299ddced8c240b23cf004620089a8920c7095789d1de4262`  
		Last Modified: Wed, 11 Jan 2023 09:17:04 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb899c7c6a25be5b534ae590c32aaeb7b1c2776d0d574fdcb7fdd989c06ee81`  
		Last Modified: Wed, 11 Jan 2023 15:42:22 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8931166657635fd45834cbe52a595b8c98ff9a1e1d86f36dfa1c672a6eedd6f`  
		Last Modified: Wed, 11 Jan 2023 15:42:36 GMT  
		Size: 99.1 MB (99131990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96820ffb07cb4f224a77ac9349ed3738d510bafb8201be34ae5698ab1a0aa5c6`  
		Last Modified: Wed, 11 Jan 2023 15:42:21 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ab6aecd147e29663b6a79bfbc55cffb7eaaf62c9a032125d56faaa0289475e`  
		Last Modified: Wed, 11 Jan 2023 15:42:21 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba819f5b1903eba2abb68569fd3a12d63c675365e884589daacba304a5a9afa9`  
		Last Modified: Wed, 11 Jan 2023 15:42:22 GMT  
		Size: 3.1 MB (3067408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0740f1873265bfd7b57db62de7f3066677efd5b12e6af2700ffe1098e00c38b8`  
		Last Modified: Wed, 11 Jan 2023 15:42:26 GMT  
		Size: 52.3 MB (52319955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb6f80e33bca60444d7f92bbe3a12b9308b00a9398a58571911d7832ca092a3`  
		Last Modified: Wed, 11 Jan 2023 15:42:21 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
