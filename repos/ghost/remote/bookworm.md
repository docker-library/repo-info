## `ghost:bookworm`

```console
$ docker pull ghost@sha256:1e226c106826928bddafd138f8507f559c46e480c0d64f3984165bcbab034de1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:3d41e7ee53f9d3bbacded70f46ba23f2c0269402e41ff5d2018a5784b3cee408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274626550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abafedc60f25915fa11d85423df99c75206c8991dd56847284d1fdf65ff05136`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:57 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 00:49:18 GMT
ENV NODE_VERSION=22.23.2
# Wed, 05 Aug 2026 00:49:18 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 00:49:18 GMT
ENV YARN_VERSION=1.22.22
# Wed, 05 Aug 2026 00:49:30 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 00:49:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:49:30 GMT
CMD ["node"]
# Wed, 05 Aug 2026 01:48:31 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 01:48:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 01:48:31 GMT
ENV NODE_ENV=production
# Wed, 05 Aug 2026 01:48:31 GMT
ENV GHOST_CLI_VERSION=1.30.1
# Wed, 05 Aug 2026 01:48:39 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Wed, 05 Aug 2026 01:48:39 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 05 Aug 2026 01:48:39 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 05 Aug 2026 01:48:39 GMT
ENV GHOST_VERSION=6.56.0
# Wed, 05 Aug 2026 01:49:12 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 05 Aug 2026 01:49:12 GMT
WORKDIR /var/lib/ghost
# Wed, 05 Aug 2026 01:49:12 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 05 Aug 2026 01:49:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:49:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:49:12 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 05 Aug 2026 01:49:12 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5404bc2cc13c8aefe11c6d1d4bc40a30e07879b45d93b485c1d72317488d3b04`  
		Last Modified: Wed, 05 Aug 2026 00:49:45 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555d3507458376894ba4e9c5ea63da2b3d9dd3e9765e756483d94438eb840440`  
		Last Modified: Wed, 05 Aug 2026 00:49:46 GMT  
		Size: 49.9 MB (49937716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f99eb9866f3244aac3800fb9f992ecc69aef9894d3d0c29be5b09c4ae0e40e5`  
		Last Modified: Wed, 05 Aug 2026 00:49:45 GMT  
		Size: 1.7 MB (1712643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ed9f2d0e0e040af91270b0d33de349f4769825f106751ed52d7105fd1870bf`  
		Last Modified: Wed, 05 Aug 2026 00:49:45 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5ac4184d2a820359c3c9da29999831b7f10368bc9f9fd5785a54234a0b8ab7`  
		Last Modified: Wed, 05 Aug 2026 01:49:52 GMT  
		Size: 1.2 MB (1247575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a5cf044ec8932e6e89ca1eb7e1b6f33ef27d0ea15bb149c71791cb8d22b679`  
		Last Modified: Wed, 05 Aug 2026 01:49:53 GMT  
		Size: 13.7 MB (13732302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b74450688368297e2d3af57994d67cb26bc89a71f98b0c533f4a111af0c216f`  
		Last Modified: Wed, 05 Aug 2026 01:49:56 GMT  
		Size: 179.8 MB (179759399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d868ba9cea33a764962ce9f3672d359b5a89ce004be36ba52e9c7eb187248e0`  
		Last Modified: Wed, 05 Aug 2026 01:49:53 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:73e12bcd4cd654077aeda14a8558f109b4155cf287ec576ce862af8c6af500bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5182911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb78dad07f7bf5943b1ee7c7ea2f34e8b89e3f2b4cfcd521650ec74b3250d01`

```dockerfile
```

-	Layers:
	-	`sha256:47877b505ec27b8b69d1154bf11fce9815c23f6ee61193727393f3068110c2e1`  
		Last Modified: Wed, 05 Aug 2026 01:49:52 GMT  
		Size: 5.2 MB (5156319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:880ac42a3a1deeb544feef4de47e32815b9ad4a7f35aeaf37b87e8c911ba31a6`  
		Last Modified: Wed, 05 Aug 2026 01:49:52 GMT  
		Size: 26.6 KB (26592 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:805ee041cce96c171b7a489260eda25581d8e54a99e276ad607bcf4f3531761c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296351773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1b1944fe5f78dc9285ee737453c14b8aa5ebfb44931b4f031e5aafde380914`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:28:04 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:28:25 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:28:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:25 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:38 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:38 GMT
CMD ["node"]
# Tue, 04 Aug 2026 21:15:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 21:15:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 21:15:41 GMT
ENV NODE_ENV=production
# Tue, 04 Aug 2026 21:15:41 GMT
ENV GHOST_CLI_VERSION=1.30.1
# Tue, 04 Aug 2026 21:15:52 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 04 Aug 2026 21:15:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Aug 2026 21:15:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Aug 2026 21:15:52 GMT
ENV GHOST_VERSION=6.56.0
# Tue, 04 Aug 2026 21:18:02 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 04 Aug 2026 21:18:03 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Aug 2026 21:18:03 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Aug 2026 21:18:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 21:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 21:18:03 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 04 Aug 2026 21:18:03 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634711532a257c7fdbe90012f8301ec8f31308c2a6a13d098b49a9ee4e833651`  
		Last Modified: Wed, 29 Jul 2026 17:28:52 GMT  
		Size: 3.3 KB (3316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8371cd6dbc8b159ac2a23e4dcdc6f533f7b0ccfa07aa07f98b6dd84ce7bff4`  
		Last Modified: Wed, 29 Jul 2026 17:28:53 GMT  
		Size: 44.6 MB (44632612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2d9059820e28811e7005642f09ae1f5b3d48f8b779ef6947ad2698918d8bf0`  
		Last Modified: Wed, 29 Jul 2026 17:28:52 GMT  
		Size: 1.7 MB (1712824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0551a9107681e287fc8026e5dae136f1f9470b2234b7e79a06daa7fa87bbf55`  
		Last Modified: Wed, 29 Jul 2026 17:28:52 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139ea654b29789ec6d5921f09ce46313af1bb98907459de7f84516e65575c80b`  
		Last Modified: Tue, 04 Aug 2026 21:18:55 GMT  
		Size: 1.2 MB (1214412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93cf1fd1c33b46ca5c6bd67a402085bca702151a02d20a21232f46807e633b2`  
		Last Modified: Tue, 04 Aug 2026 21:18:55 GMT  
		Size: 13.7 MB (13726483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3413414cebc19aa9af88c9735dd6a26c09bddbc3492b6f574b9cbeb887bc8b33`  
		Last Modified: Tue, 04 Aug 2026 21:18:59 GMT  
		Size: 211.1 MB (211121321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab294c0bd097407ddad68f083330db73313481fa1d781c17674e3dcafd97839`  
		Last Modified: Tue, 04 Aug 2026 21:18:54 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:d7b510343550c860a39b0bedaa1b8642dd661212cb51cad84885950eddaccb96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5188875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c76a4711817edb9c1cc9d3e88a4b59aa7e334aa5f3ada6734097c4d370120495`

```dockerfile
```

-	Layers:
	-	`sha256:fb7cef491cf0cfc0fc58ad507fe791f9fefddc2652044cf9ad8d3deb4d3f73ee`  
		Last Modified: Tue, 04 Aug 2026 21:18:54 GMT  
		Size: 5.2 MB (5162145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3610dcde38f3edef568cee7c4341006c0e74332e6cedfd81c51c644384bb6be4`  
		Last Modified: Tue, 04 Aug 2026 21:18:54 GMT  
		Size: 26.7 KB (26730 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1437646def36f14b8c8bda0744742c8eae4360e528f82108893b0507a6a0e4b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274515930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d58facd5d50466a24731aaaef3129f2c68e5c2addd5bee75fa4ab3d7c1904ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:35 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:55 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:55 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:07 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:07 GMT
CMD ["node"]
# Tue, 04 Aug 2026 22:07:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 22:07:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 22:07:23 GMT
ENV NODE_ENV=production
# Tue, 04 Aug 2026 22:07:23 GMT
ENV GHOST_CLI_VERSION=1.30.1
# Tue, 04 Aug 2026 22:07:33 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 04 Aug 2026 22:07:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 04 Aug 2026 22:07:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 04 Aug 2026 22:07:33 GMT
ENV GHOST_VERSION=6.56.0
# Tue, 04 Aug 2026 22:08:08 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 04 Aug 2026 22:08:09 GMT
WORKDIR /var/lib/ghost
# Tue, 04 Aug 2026 22:08:09 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 04 Aug 2026 22:08:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 22:08:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 22:08:09 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 04 Aug 2026 22:08:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5280e541693be10b231014a3d486b117fbc0bc8e5d1914ae988e5187ab99d0cf`  
		Last Modified: Wed, 29 Jul 2026 17:28:22 GMT  
		Size: 3.3 KB (3315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0f462000495598692b38a9289018f5f44ac75bbbe4c1517c885bc7e4822ebf`  
		Last Modified: Wed, 29 Jul 2026 17:28:23 GMT  
		Size: 50.1 MB (50056866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279222ba81a501d78f0566836886d43a6cddbb1d2c48fdcd9d1090b39223e79e`  
		Last Modified: Wed, 29 Jul 2026 17:28:22 GMT  
		Size: 1.7 MB (1712577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c78d6252bb5adbe4a0028a76d27784ddc7135433a0cfa1e701417c21dd12899`  
		Last Modified: Wed, 29 Jul 2026 17:28:22 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d0ee6c611589e884159e5387af15c22f5d6dd3760af241a01bc14f7d8861fc`  
		Last Modified: Tue, 04 Aug 2026 22:08:56 GMT  
		Size: 1.2 MB (1201413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4a403b0801e4606296d3a1312b4e12f04593a7c4590c37414416bab6d04ca1`  
		Last Modified: Tue, 04 Aug 2026 22:08:57 GMT  
		Size: 13.7 MB (13733799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c135149e9081a5e67771e0e226159ee325cfd29fb82be071a8c7fbbc2aed045`  
		Last Modified: Tue, 04 Aug 2026 22:09:00 GMT  
		Size: 179.7 MB (179689682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91e4612ab36673165b670423f155bdb7bf105d752ebd38c79c6196e41c48d57`  
		Last Modified: Tue, 04 Aug 2026 22:08:56 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:65db9a400c809bca0126f4278bac042a7f2c545c43734c79b5d97ea96969f3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5183422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:408a0c342763ac5073b4eb7be9db05de070657553aaaa2fcf4076ee9834e5732`

```dockerfile
```

-	Layers:
	-	`sha256:8eeec385b05e160d2ff170d83769f12889d0619a25671225449d6c134df41342`  
		Last Modified: Tue, 04 Aug 2026 22:08:57 GMT  
		Size: 5.2 MB (5156648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38096271819a04aa3acf3d5e033002bb04e3a49b9aaf865b4871d39909a0acea`  
		Last Modified: Tue, 04 Aug 2026 22:08:57 GMT  
		Size: 26.8 KB (26774 bytes)  
		MIME: application/vnd.in-toto+json
