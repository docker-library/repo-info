## `ghost:bookworm`

```console
$ docker pull ghost@sha256:90592b712b6b6502c3169cf12bcb6e5f7b8c8315968b8bb53e08e879892641fa
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
$ docker pull ghost@sha256:6413742700e82276d9613c26f3587ee32e03b31f974f38c5e0a1884f0d593866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231174521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6cbf9983c39c3c2b279645be9e955c1b7538aa1253ed66b1c5e09b6cba1574d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Wed, 23 Sep 2026 21:09:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 23 Sep 2026 21:10:11 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:10:11 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:10:11 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:10:23 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:10:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:10:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:10:23 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:55 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:55 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:55 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:55 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:55 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:09:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:09:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:09:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:09:07 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:34 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:35 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:09:35 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:09:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:35 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:35 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab8fd6c944526e5da2ca93b1663b2ab6f4bb8d4ea7b50a90d53c9fdcc5b0b9e`  
		Last Modified: Wed, 23 Sep 2026 21:10:37 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61592f5b60306b96e5208206668cdf0fa62d3cda3a3baeed26efdcd1a21aaba5`  
		Last Modified: Wed, 23 Sep 2026 21:10:39 GMT  
		Size: 49.8 MB (49837024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9d84ee31888adba85837fbf8f0e6eca99263904b2ba04d79e7d4fc1da40056`  
		Last Modified: Wed, 23 Sep 2026 21:10:38 GMT  
		Size: 1.7 MB (1713017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc40c63c08b5453854c13da6d72b3182737b2e223156b786c67779e0d6f4e8e0`  
		Last Modified: Wed, 23 Sep 2026 21:10:38 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaebd5f35578b94c12a94159661c4654bbf73437603d4c0d81d44cc191fdc250`  
		Last Modified: Wed, 23 Sep 2026 22:10:10 GMT  
		Size: 1.2 MB (1247953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e92cc4447045700661cb75175042f9306e16855f4ebf69ad962af98bd5c1a6e`  
		Last Modified: Wed, 23 Sep 2026 22:10:10 GMT  
		Size: 9.8 MB (9840969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb5d90f5bd04e9b8b8d486fc6663ee1f082428c3307803008514b1571ea00ff9`  
		Last Modified: Wed, 23 Sep 2026 22:10:13 GMT  
		Size: 140.3 MB (140292786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae552c54bdfc5c3de62dd03374fa07cd40d7447da274934ea3f60899716bbd8`  
		Last Modified: Wed, 23 Sep 2026 22:10:10 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:7abe80c55b330c81f35f4c02487a8304083b035008b015055b62c38932def8f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4616454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68f0b0db825b93707023e9cedb26e6891e38d77bd21d4c4d34f68ad35421b241`

```dockerfile
```

-	Layers:
	-	`sha256:4f34496b45a7b40e2523991875e1edf574e540f20261b89c12eb1f32ca17049b`  
		Last Modified: Wed, 23 Sep 2026 22:10:10 GMT  
		Size: 4.6 MB (4582549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac1814b2a269fafb00cc5d0f07efffe3a6db65c0b91322f88feeefb45a8cb9fa`  
		Last Modified: Wed, 23 Sep 2026 22:10:10 GMT  
		Size: 33.9 KB (33905 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:b2027405888aeb7efe907b529e9e8610c74f25d9004fa43d089b4da26be12be9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271151652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1017ae79e295e14d636dc45b19f939676d40575eb84be8cef162b698da49b692`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Wed, 23 Sep 2026 21:10:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 23 Sep 2026 21:10:44 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:10:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:10:44 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:10:58 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:10:58 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:10:50 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:50 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:50 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:10:50 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:10:50 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:11:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:11:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:11:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:11:12 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:12:12 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:12:13 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:12:13 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:12:13 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:12:13 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a967c9f2eaea74d63c57d06c336284b2af15611edbcf12b909f7804b96a6960`  
		Last Modified: Wed, 23 Sep 2026 21:11:11 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9137ff083a667af1b9af4446e42a9a0531646c5f9ead1d6431139dfc61c92b67`  
		Last Modified: Wed, 23 Sep 2026 21:11:12 GMT  
		Size: 44.5 MB (44529625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2787f28eed6bb695ad2c7f2412e410a75765c9a3b111a0994da815534cec3832`  
		Last Modified: Wed, 23 Sep 2026 21:11:11 GMT  
		Size: 1.7 MB (1713191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:730cb5e337e51a6b3ebbfc865a775b3deccc678c48317bef452d7a54bcc2317e`  
		Last Modified: Wed, 23 Sep 2026 21:11:11 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa3254a0ae78eaec08350c4ad42a18d13f0eeba6199a6655bfc3c90ddbbba04`  
		Last Modified: Wed, 23 Sep 2026 22:13:03 GMT  
		Size: 1.2 MB (1214826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16b92ffd211b6864e6dbbd9155949f57cb7db52f42653fcfb502da72cb2f13a`  
		Last Modified: Wed, 23 Sep 2026 22:13:04 GMT  
		Size: 15.8 MB (15825085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03161869eab5c595a62f0c1ead23011e192210d509ba3f13e08efb9d3479e79c`  
		Last Modified: Wed, 23 Sep 2026 22:13:07 GMT  
		Size: 183.9 MB (183921480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42974cee69f4e52e33fd1be79f383d330b8bf5a4a2cb32fdec225cadae81f19e`  
		Last Modified: Wed, 23 Sep 2026 22:13:03 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:2853e6a268673cd707385e111730c2b3ebee9d85124677164b05b7cac5a0539a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4650604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423a5643e95fa856fe2bc10dc2ebee1caf37455c75de462c1b6fa1b84b1f2909`

```dockerfile
```

-	Layers:
	-	`sha256:757052b396a2599fcc5929e03346c4f618dc03bbcd90127526734673eba0ca05`  
		Last Modified: Wed, 23 Sep 2026 22:13:03 GMT  
		Size: 4.6 MB (4616557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f39b3c2b32360eeb76583b089301f8d1d7a8f52a7d418d7b207f79676539c7fa`  
		Last Modified: Wed, 23 Sep 2026 22:13:03 GMT  
		Size: 34.0 KB (34047 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:96ce42bb2a8874ed85d08c6a7d771bb0f5cc2cbc28412ba1d2b548c237e372da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230567527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccea8e937b53c4c400a2e5b882d0d46494f0292addd3aaade13c5d6c32d0cb4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Wed, 23 Sep 2026 21:10:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 23 Sep 2026 21:10:31 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:10:31 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:10:31 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:10:43 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:10:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:10:43 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:22 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:22 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:22 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:22 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:22 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:08:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:08:37 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:08:37 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:08:37 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:09 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:09:09 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:09:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:09 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:09 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443f150fdaaf3900597eb42593ffd9da89872a7ddf30e2bf9d29116973a8e2f7`  
		Last Modified: Wed, 23 Sep 2026 21:10:58 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f33852fe56d4b3372c04540761702d58a08c946f7b28022b6b11abffba903c7`  
		Last Modified: Wed, 23 Sep 2026 21:10:59 GMT  
		Size: 50.0 MB (49963542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a718d416e6a5f2e01d91a59faca4813e603709ecfb0b64ca0df2319ce19bc37`  
		Last Modified: Wed, 23 Sep 2026 21:10:58 GMT  
		Size: 1.7 MB (1712988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e036486ceb4f744447e52d2b06825d6dd848d2e26affe04ef5a1c5b17a7e2626`  
		Last Modified: Wed, 23 Sep 2026 21:10:58 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6c257c5ee925e6e8aa4a506adf3f71e3201c68b9e2d230241da7c793ff6222`  
		Last Modified: Wed, 23 Sep 2026 22:09:55 GMT  
		Size: 1.2 MB (1201914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127d4154260b1c6ccf8df036c427734abe333e2d0ce8b4462c47c3d56ac886d4`  
		Last Modified: Wed, 23 Sep 2026 22:09:56 GMT  
		Size: 9.8 MB (9842427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abbb76c77301589f5503831acb97afb422ff603e29d3a828666677e42950114b`  
		Last Modified: Wed, 23 Sep 2026 22:09:58 GMT  
		Size: 139.7 MB (139718643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4566fda5c8a8142228348c6894912b46011504f3f7d9153203752538945c7b`  
		Last Modified: Wed, 23 Sep 2026 22:09:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:a5ce03b76f0642bb82314bb446c8b29a24817614fa474a52383b6d92f1a1853b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4615918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e90d7bd604b7d26b2b1cb182c4cd420b90994c47699ec661c2fa529ae0e61646`

```dockerfile
```

-	Layers:
	-	`sha256:e72017bb665c0729435fc0d2bd71a625ac8ad2bea1627629d972b8562a3c5b4b`  
		Last Modified: Wed, 23 Sep 2026 22:09:55 GMT  
		Size: 4.6 MB (4581831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a6e0bfdf2c3877bd03118e09766b0d262392576b77b33d0ef3a4b78faaa667a`  
		Last Modified: Wed, 23 Sep 2026 22:09:55 GMT  
		Size: 34.1 KB (34087 bytes)  
		MIME: application/vnd.in-toto+json
