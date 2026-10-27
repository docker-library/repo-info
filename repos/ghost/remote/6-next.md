## `ghost:6-next`

```console
$ docker pull ghost@sha256:9eef87674f10361302886c94c0164e0d5c6f8978ec6fe330bc5cec683683bd5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next` - linux; amd64

```console
$ docker pull ghost@sha256:f754fe763e7caee750875f9710f8378268dbfb64089795e62509ffbd2cdf3337
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151601530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078ee7c7b57cffc10e1f291ccfac12f96162c7935d8cc7466470f03f42362d94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:35:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:35:52 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 11:35:52 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:35:52 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 11:36:11 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:36:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:36:11 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:52 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 27 Oct 2026 17:28:52 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:52 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:28:52 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:28:52 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:52 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:28:52 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:29:11 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:11 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:29:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:29:11 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:29:11 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:29:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:11 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:11 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43ad0aedb87ae13912d52799d0d5552c146dced05197a7fa83b117cb3308906`  
		Last Modified: Wed, 21 Oct 2026 11:36:25 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8be34911c2eabcd63c9da67f2e8887ddf912df62c1223ca377ef9e9655cfba`  
		Last Modified: Wed, 21 Oct 2026 11:36:26 GMT  
		Size: 49.9 MB (49885604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696628b66b50a8ea2d374542f47107bc19fb3fd29825211da5c68b74a1b01555`  
		Last Modified: Wed, 21 Oct 2026 11:36:25 GMT  
		Size: 1.7 MB (1713054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d58805976c12f11013d188c510c3520e3f061c1b311d4905afe5865aa496e63`  
		Last Modified: Wed, 21 Oct 2026 11:36:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26fa37d7e7aae17a74c82a1557a9ae0c0346de68dc76f0c19ecfce2f83b1a422`  
		Last Modified: Tue, 27 Oct 2026 17:29:32 GMT  
		Size: 1.2 MB (1247947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189baec9e19833c7c798e777dcee2deb90d6a911034c9cff8cdd0b34d453a9f2`  
		Last Modified: Tue, 27 Oct 2026 17:29:31 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49a83de1ae34c428cb631e334ae34fb2693377285816264c84db3bd354f783a`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 70.5 MB (70499605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e027982a6ff1a97dbe0a2eebbfe56ab67e8d83c334d7509db87fdb9c955e9f`  
		Last Modified: Tue, 27 Oct 2026 17:29:32 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6c8becccfec538a43ff816c11874e8ea8641634cdb46776e2cbefccf18acaf`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fba28935e80ea5143686333823b453f75a5906442879dc0e318b72cfe531a8`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next` - unknown; unknown

```console
$ docker pull ghost@sha256:599f07a87464db2a8752a2369d0e9d0557659408091fa6869c33fcf86c1fd20f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4164535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af675f5e0742339ef933676ab8b2b4e9dcede32dde6cb91037525d2c4e3296f2`

```dockerfile
```

-	Layers:
	-	`sha256:b52e0c6ecd63201e3b53e7be5e2124cc7f27a534961f3fc13692e79150b6f7cd`  
		Last Modified: Tue, 27 Oct 2026 17:29:32 GMT  
		Size: 4.1 MB (4127527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a693048469d1bc8550880e7237fb28dbd20494fa89684b3042b2fce15cabbdb5`  
		Last Modified: Tue, 27 Oct 2026 17:29:31 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:ccbe027fd2431425f2225fec2919195a99d537b64abc821ea75a27c351cfa8d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150862571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7e724e2d77748a06db46fb8d1146d9df3a4cc261dd69dbf383899303219b8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:35:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:36:12 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 11:36:12 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:12 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 11:36:25 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:36:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:36:25 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:25:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:25:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:25:01 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 27 Oct 2026 17:25:01 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:25:01 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:25:01 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:25:01 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:01 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:25:01 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:25:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:23 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:25:23 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:25:23 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:25:23 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:25:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:23 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:23 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e48733c6ecb8ca0b186658d0e103d9ae7728ae2a10e79e4df4a760474ad5fe`  
		Last Modified: Wed, 21 Oct 2026 11:36:40 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f4d16cf8ff92019a313bb4f67c1b5b8f5861181a5972355c2d8a057224d23e`  
		Last Modified: Wed, 21 Oct 2026 11:36:42 GMT  
		Size: 50.0 MB (50022733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dceb4523c022ddfcb19a6a0df4d7f341c21ab6af25a2a2d039c854237ce201a`  
		Last Modified: Wed, 21 Oct 2026 11:36:40 GMT  
		Size: 1.7 MB (1713004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d414f437f98e684911193d7be6d963eec339ef59c845c7676528385b8d82b6d`  
		Last Modified: Wed, 21 Oct 2026 11:36:40 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8baf25702de2a4fe4d71bce631fc89126c68a7fa3dfc898f214c3da839bae2e`  
		Last Modified: Tue, 27 Oct 2026 17:25:46 GMT  
		Size: 1.2 MB (1202044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd545b317f689f579f2e88924891d45d1c96e07cd78054576077201272d6e4d9`  
		Last Modified: Tue, 27 Oct 2026 17:25:46 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b44f2cdfbc21e43da127807fe37da740ab05a5f713bd3e0884e613344dcb366`  
		Last Modified: Tue, 27 Oct 2026 17:25:48 GMT  
		Size: 69.8 MB (69778979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3e9ebc96d1f2fc4b2f516aec0f13fd4ff72ff3d58a26ed3ae8cdcba4b63f79`  
		Last Modified: Tue, 27 Oct 2026 17:25:46 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370a9dde3b4823abe7feb5a4bcf6b126c9a5ee05dc9bf96e43e1751db5339acd`  
		Last Modified: Tue, 27 Oct 2026 17:25:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c046c6357f20fbfd341689587e833668937d4516ad396074d6d51e981f0894da`  
		Last Modified: Tue, 27 Oct 2026 17:25:48 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next` - unknown; unknown

```console
$ docker pull ghost@sha256:770ba6fff6b5639618d2ba94b81c5553a3f505c9f70af5d9b880818e828dd5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4164272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74063f702e85cc431306f89083c805e71b85e18f2bae98ebb8706234eebe7b4d`

```dockerfile
```

-	Layers:
	-	`sha256:d6231af5cb88d3189035b1d640de28e58967aea098cea00c6a411cbc753aa8b7`  
		Last Modified: Tue, 27 Oct 2026 17:25:46 GMT  
		Size: 4.1 MB (4127067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99b4985551f73998f55fcac128e855d2df0b159a6cb3df0eb4da292f6d0e9120`  
		Last Modified: Tue, 27 Oct 2026 17:25:46 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json
