## `ghost:6-next-bookworm`

```console
$ docker pull ghost@sha256:ebdc11824da674c97ca0373483fe102b613011721ee14bfbe3641ae474903f1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:13d70cddd959ccdca74b9007f05d39d09745acbc864c6aa633352687b805a38f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (165988118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5777d5a202a06c066ebce8f4f03eaf17c7fd9ee4f03fc13258cdf532eb669e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:55:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 25 Aug 2026 00:55:48 GMT
ENV NODE_VERSION=22.23.2
# Tue, 25 Aug 2026 00:55:48 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 00:55:48 GMT
ENV YARN_VERSION=1.22.22
# Tue, 25 Aug 2026 00:56:00 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 00:56:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:56:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:56:00 GMT
CMD ["node"]
# Tue, 15 Sep 2026 22:58:00 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 22:58:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 22:58:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 15 Sep 2026 22:58:00 GMT
ENV NODE_ENV=production
# Tue, 15 Sep 2026 22:58:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 15 Sep 2026 22:58:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 15 Sep 2026 22:58:00 GMT
ENV GHOST_VERSION=6.64.0
# Tue, 15 Sep 2026 22:58:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.64.0/ghost-6.64.0.tgz
# Tue, 15 Sep 2026 22:58:00 GMT
ENV GHOST_SHA256=7d9420128eeb2102339e326fd03fd17c581c91a26549a918fda717fe37d8fd4e
# Tue, 15 Sep 2026 22:58:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 15 Sep 2026 22:58:23 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 15 Sep 2026 22:58:23 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 15 Sep 2026 22:58:23 GMT
WORKDIR /home/ghost
# Tue, 15 Sep 2026 22:58:23 GMT
VOLUME [/home/ghost/content]
# Tue, 15 Sep 2026 22:58:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:58:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:58:23 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 15 Sep 2026 22:58:23 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7eb9bbe80eabf8356efb28b3796ab904f36a32049aeb6b435920ca93f9285`  
		Last Modified: Tue, 25 Aug 2026 00:56:13 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c53f95c2cae3d00dfc0350297c92dea913fe129ec38b8deb8313e5f3e0297d`  
		Last Modified: Tue, 25 Aug 2026 00:56:15 GMT  
		Size: 49.9 MB (49938210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cddab114edadc7cf5a7b0b591e59f6312aade3dc4fb68e88aacca5eb1cc1c03`  
		Last Modified: Tue, 25 Aug 2026 00:56:13 GMT  
		Size: 1.7 MB (1712979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0282d618b52cd2eb8fcf041e780cd66b15e7ebae519a4054c5d293eae6b6d34f`  
		Last Modified: Tue, 25 Aug 2026 00:56:13 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10530fd3ddbe4bf24cad4bfc2e32c6a8f2698da7883ca11b9622554f593d17e`  
		Last Modified: Tue, 15 Sep 2026 22:58:46 GMT  
		Size: 1.2 MB (1247979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137bd7b1568c46128ee95c01d4ac8287987fa1f4e3fc7cd04943a576e5b4a682`  
		Last Modified: Tue, 15 Sep 2026 22:58:46 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502065e1d7d50434aa3b3a53b1d27aea6de921e5e647bc58c61571f7eb0c208c`  
		Last Modified: Tue, 15 Sep 2026 22:58:48 GMT  
		Size: 84.8 MB (84848922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4827308828b4460cb29e7aa8b703c3e507e9d890a0cbf56e1fc1655d0ab9a8`  
		Last Modified: Tue, 15 Sep 2026 22:58:46 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a1a727c449626f95956e57966e1170d89f8a22f6148b9ee30a0e271484aced`  
		Last Modified: Tue, 15 Sep 2026 22:58:47 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc60eeef13e33481706a72eec62a071db83c358be887418300e3b70fe86d86bd`  
		Last Modified: Tue, 15 Sep 2026 22:58:47 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:5d4e082c4cd7d0272bd8b59a93bf147a10fc10f9491ddbe1bb205d0481ea6600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4468234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1d6a675fe2ce238604234d318a05edb3316b7301c15d2b18441b498769b0b8`

```dockerfile
```

-	Layers:
	-	`sha256:e45a6aa14045041927bb68f048b0662b35304f510b23f8edec841994954409b9`  
		Last Modified: Tue, 15 Sep 2026 22:58:46 GMT  
		Size: 4.4 MB (4431226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:147884dbda17a4585d9ed842d3c8ed19ea5ee7e63417ebbf4e98bc0c41e7b6d9`  
		Last Modified: Tue, 15 Sep 2026 22:58:46 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:201a377c00d1fbc123b0faea1042e8d8c086ba5f4c3a75fee178978a4ea38f44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165254669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7501b786ae8caa93a1f83cdba30de7f1f482f444aa0cc42c01f7738a28f97b99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:51:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:51:41 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:51:41 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:51:41 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:51:53 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:51:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:51:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:51:53 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:49:28 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:49:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:49:28 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Sat, 19 Sep 2026 01:49:28 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:49:28 GMT
ENV GHOST_INSTALL=/home/ghost
# Sat, 19 Sep 2026 01:49:28 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Sat, 19 Sep 2026 01:49:28 GMT
ENV GHOST_VERSION=6.64.0
# Sat, 19 Sep 2026 01:49:28 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.64.0/ghost-6.64.0.tgz
# Sat, 19 Sep 2026 01:49:28 GMT
ENV GHOST_SHA256=7d9420128eeb2102339e326fd03fd17c581c91a26549a918fda717fe37d8fd4e
# Sat, 19 Sep 2026 01:49:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Sat, 19 Sep 2026 01:49:49 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Sat, 19 Sep 2026 01:49:50 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Sat, 19 Sep 2026 01:49:50 GMT
WORKDIR /home/ghost
# Sat, 19 Sep 2026 01:49:50 GMT
VOLUME [/home/ghost/content]
# Sat, 19 Sep 2026 01:49:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:49:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:49:50 GMT
EXPOSE map[2368/tcp:{}]
# Sat, 19 Sep 2026 01:49:50 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ddfe4ee30582377a39e6dcbd9aa732faf0417c0921182e24e2f8b53280b0b`  
		Last Modified: Sat, 19 Sep 2026 00:52:09 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dbed671e47283da7a5ac589208f4562e6271c7f74ae39de988db0ce60c40e12`  
		Last Modified: Sat, 19 Sep 2026 00:52:10 GMT  
		Size: 50.1 MB (50057548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5a913b2c7655eabebde4a4e08fad03a8934de5f164f215899a55bc434bbd22`  
		Last Modified: Sat, 19 Sep 2026 00:52:09 GMT  
		Size: 1.7 MB (1712974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3189d73824af17697c8f59386ea028b50886e90a86f05d4792569b829806f386`  
		Last Modified: Sat, 19 Sep 2026 00:52:09 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f974ef2d4f340bef4f932f8a6c1aac6a2035c1c6ac39e7ee97ea6f97f37792`  
		Last Modified: Sat, 19 Sep 2026 01:50:16 GMT  
		Size: 1.2 MB (1202001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e402223aa0da3c01043003fe1f63967fcf38a84a93d6be5eaaf2c3022a4370`  
		Last Modified: Sat, 19 Sep 2026 01:50:15 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3465b65e2b0229f66e4faa083d4ae1f073ce5d0405418c78aeb608c8f962c0f`  
		Last Modified: Sat, 19 Sep 2026 01:50:18 GMT  
		Size: 84.2 MB (84151102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3e9433b0f5fed6a5653eb9a419cc02a7c44cae856ace18747165dcce5164b3`  
		Last Modified: Sat, 19 Sep 2026 01:50:15 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee24a59fee544bab42613c3c66d8db52268365b096d9a4a275663318996375c`  
		Last Modified: Sat, 19 Sep 2026 01:50:17 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79684c923d307432dff242303cd6249acebecfc0f35b3ad1d90372ce840d02b`  
		Last Modified: Sat, 19 Sep 2026 01:50:17 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:77aac12c2f8bbd6bb877c989484ed9fad947e4d6c97067678263925ee6bdf194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4468007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62639ab9f8dc15820dc6cf1447f61e46518fb6aaef52a2f8c71f544a137e4d3`

```dockerfile
```

-	Layers:
	-	`sha256:880220f1b1b9c02de10577300a28750494b8ae302e95dec9200af9ac53899470`  
		Last Modified: Sat, 19 Sep 2026 01:50:16 GMT  
		Size: 4.4 MB (4430802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b605e4ea11af57ac45e02e9c06e7d3e687e1032d9b981eb409a876502a353d61`  
		Last Modified: Sat, 19 Sep 2026 01:50:15 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json
