<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:6`](#ghost6)
-	[`ghost:6-alpine`](#ghost6-alpine)
-	[`ghost:6-alpine3.23`](#ghost6-alpine323)
-	[`ghost:6-bookworm`](#ghost6-bookworm)
-	[`ghost:6-next`](#ghost6-next)
-	[`ghost:6-next-alpine`](#ghost6-next-alpine)
-	[`ghost:6-next-alpine3.23`](#ghost6-next-alpine323)
-	[`ghost:6-next-bookworm`](#ghost6-next-bookworm)
-	[`ghost:6.65`](#ghost665)
-	[`ghost:6.65-alpine`](#ghost665-alpine)
-	[`ghost:6.65-alpine3.23`](#ghost665-alpine323)
-	[`ghost:6.65-bookworm`](#ghost665-bookworm)
-	[`ghost:6.65-next`](#ghost665-next)
-	[`ghost:6.65-next-alpine`](#ghost665-next-alpine)
-	[`ghost:6.65-next-alpine3.23`](#ghost665-next-alpine323)
-	[`ghost:6.65-next-bookworm`](#ghost665-next-bookworm)
-	[`ghost:6.65.0`](#ghost6650)
-	[`ghost:6.65.0-alpine`](#ghost6650-alpine)
-	[`ghost:6.65.0-alpine3.23`](#ghost6650-alpine323)
-	[`ghost:6.65.0-bookworm`](#ghost6650-bookworm)
-	[`ghost:6.65.0-next`](#ghost6650-next)
-	[`ghost:6.65.0-next-alpine`](#ghost6650-next-alpine)
-	[`ghost:6.65.0-next-alpine3.23`](#ghost6650-next-alpine323)
-	[`ghost:6.65.0-next-bookworm`](#ghost6650-next-bookworm)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:alpine3.23`](#ghostalpine323)
-	[`ghost:bookworm`](#ghostbookworm)
-	[`ghost:latest`](#ghostlatest)
-	[`ghost:next`](#ghostnext)
-	[`ghost:next-alpine`](#ghostnext-alpine)
-	[`ghost:next-alpine3.23`](#ghostnext-alpine323)
-	[`ghost:next-bookworm`](#ghostnext-bookworm)

## `ghost:6`

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

### `ghost:6` - linux; amd64

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

### `ghost:6` - unknown; unknown

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

### `ghost:6` - linux; arm variant v7

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

### `ghost:6` - unknown; unknown

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

### `ghost:6` - linux; arm64 variant v8

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

### `ghost:6` - unknown; unknown

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

## `ghost:6-alpine`

```console
$ docker pull ghost@sha256:fea3264f902e656833a84656ac6e81a6ef644f87aa0940aa636d4300de62196e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ff7bcb7add7f96a510fa18168730e9a7b3129667fbf11b813b131217f5bb5add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212263259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85e30bdcec7a7977c740effaac35434c9430c57a93ffeaae1a8dcbee3d3b3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:56 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:09:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:21 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:09:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:09:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:21 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f820efa367a404f3fb8e8c584e3ba11686cec3b1832db4367ddbd633e7d99564`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 821.7 KB (821729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79815caabd6c60c5a002785ecf59600e52e3fb5af6a050811ab2f30bc0b95ca`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 904.5 KB (904462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a631bb8d813d46ad4579dd5a36a5c560699ca60c780379419c372713d8ac2f2`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 9.4 MB (9391404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09372c2cdbbd5ec753eee21e9f16fe6f72c67cc0597637dfb3a7994772bccb8e`  
		Last Modified: Wed, 23 Sep 2026 22:10:00 GMT  
		Size: 140.6 MB (140588659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5755e08086dc7769c7067bdf08066d0766c77edff91aee627eba2344e132c6be`  
		Last Modified: Wed, 23 Sep 2026 22:09:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:bc0b81c80c0429ee56d80fce207993f24cad87135e2bfb3c4cfb6e498400ceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd548c22f751570ca7b0b6ded63bd28e8c2d03afaa17b407b8fc08d2f7831f5`

```dockerfile
```

-	Layers:
	-	`sha256:e21d1b9099dcaf3a0b536196cc4c1c3664a448e7d9b7ae9acd8232a8171d4193`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 2.4 MB (2370498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e60a280abc0f851a4f27b3b380edc9966e656524cd890214450690a7456490c`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 33.1 KB (33133 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:46b8712c4cc873baaf2ce2c9e84878816d8ae6c06612fe4a4a6c7a9b5b43f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212266470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ddcfbd90cb85f2906ef480c2f10eaf70a2bf45c5d52d287a48a9825b47881b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:08:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:08:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:08:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:08:56 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:08:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cd7f453478459d64d82b5d2ed06642752b83039e8d032ec0c6cf5621556732`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 891.2 KB (891168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b8e0aa1355eda05aa2e82a254f7727e81f6af2c493b5ab2385a632770450b7`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 859.9 KB (859907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167582bfdd0b3866dc761fc71b951a277e76890d9e23955609ca60f34cc3df55`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 9.4 MB (9391676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc20ab603b71fdb062d76c6622ac50d0bb975ee75979ccfb6ff70bcf165e65c5`  
		Last Modified: Wed, 23 Sep 2026 22:09:44 GMT  
		Size: 140.2 MB (140218070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba895ffecdd38f4c9481d4ac28c56f2c868af3133e3090c4d0d108e2f6c5e41`  
		Last Modified: Wed, 23 Sep 2026 22:09:42 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:313991a2757d6a4ca6f0743126f47a58684595199244a0fae74e7db71dca2361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9a785d3d79e6c215c64d26a5388cf35a5371161900cc992044bdb2b108df`

```dockerfile
```

-	Layers:
	-	`sha256:cfd38c887ad46ea9651ffc1133460e9d8907f6731a04e480bebfeb49449c4e57`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 2.4 MB (2368935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a49dd3795fb35fac08a7283b861cf7930fb285652a7aa536d2ba57a43b502e8c`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 33.3 KB (33331 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-alpine3.23`

```console
$ docker pull ghost@sha256:fea3264f902e656833a84656ac6e81a6ef644f87aa0940aa636d4300de62196e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:ff7bcb7add7f96a510fa18168730e9a7b3129667fbf11b813b131217f5bb5add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212263259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85e30bdcec7a7977c740effaac35434c9430c57a93ffeaae1a8dcbee3d3b3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:56 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:09:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:21 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:09:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:09:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:21 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f820efa367a404f3fb8e8c584e3ba11686cec3b1832db4367ddbd633e7d99564`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 821.7 KB (821729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79815caabd6c60c5a002785ecf59600e52e3fb5af6a050811ab2f30bc0b95ca`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 904.5 KB (904462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a631bb8d813d46ad4579dd5a36a5c560699ca60c780379419c372713d8ac2f2`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 9.4 MB (9391404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09372c2cdbbd5ec753eee21e9f16fe6f72c67cc0597637dfb3a7994772bccb8e`  
		Last Modified: Wed, 23 Sep 2026 22:10:00 GMT  
		Size: 140.6 MB (140588659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5755e08086dc7769c7067bdf08066d0766c77edff91aee627eba2344e132c6be`  
		Last Modified: Wed, 23 Sep 2026 22:09:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:bc0b81c80c0429ee56d80fce207993f24cad87135e2bfb3c4cfb6e498400ceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd548c22f751570ca7b0b6ded63bd28e8c2d03afaa17b407b8fc08d2f7831f5`

```dockerfile
```

-	Layers:
	-	`sha256:e21d1b9099dcaf3a0b536196cc4c1c3664a448e7d9b7ae9acd8232a8171d4193`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 2.4 MB (2370498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e60a280abc0f851a4f27b3b380edc9966e656524cd890214450690a7456490c`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 33.1 KB (33133 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:46b8712c4cc873baaf2ce2c9e84878816d8ae6c06612fe4a4a6c7a9b5b43f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212266470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ddcfbd90cb85f2906ef480c2f10eaf70a2bf45c5d52d287a48a9825b47881b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:08:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:08:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:08:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:08:56 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:08:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cd7f453478459d64d82b5d2ed06642752b83039e8d032ec0c6cf5621556732`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 891.2 KB (891168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b8e0aa1355eda05aa2e82a254f7727e81f6af2c493b5ab2385a632770450b7`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 859.9 KB (859907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167582bfdd0b3866dc761fc71b951a277e76890d9e23955609ca60f34cc3df55`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 9.4 MB (9391676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc20ab603b71fdb062d76c6622ac50d0bb975ee75979ccfb6ff70bcf165e65c5`  
		Last Modified: Wed, 23 Sep 2026 22:09:44 GMT  
		Size: 140.2 MB (140218070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba895ffecdd38f4c9481d4ac28c56f2c868af3133e3090c4d0d108e2f6c5e41`  
		Last Modified: Wed, 23 Sep 2026 22:09:42 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:313991a2757d6a4ca6f0743126f47a58684595199244a0fae74e7db71dca2361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9a785d3d79e6c215c64d26a5388cf35a5371161900cc992044bdb2b108df`

```dockerfile
```

-	Layers:
	-	`sha256:cfd38c887ad46ea9651ffc1133460e9d8907f6731a04e480bebfeb49449c4e57`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 2.4 MB (2368935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a49dd3795fb35fac08a7283b861cf7930fb285652a7aa536d2ba57a43b502e8c`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 33.3 KB (33331 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-bookworm`

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

### `ghost:6-bookworm` - linux; amd64

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

### `ghost:6-bookworm` - unknown; unknown

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

### `ghost:6-bookworm` - linux; arm variant v7

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

### `ghost:6-bookworm` - unknown; unknown

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

### `ghost:6-bookworm` - linux; arm64 variant v8

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

### `ghost:6-bookworm` - unknown; unknown

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

## `ghost:6-next`

```console
$ docker pull ghost@sha256:3a266e6630b4a9f1caa54a6925c3cf3ea849c3e26f9bee46b64bbdd43a686297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next` - linux; amd64

```console
$ docker pull ghost@sha256:122995518037c1641722a61ae6c3e1aaa1bce40cdfb86633612be8c98adc5690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161921980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9cbf8da9c64c5826073befe7abced300b1ac67253d88cfeeeb0e4467a08520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:19 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:19 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:19 GMT
CMD ["node" "index.js"]
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
	-	`sha256:fc45e3e49d66b9ec9ad15447ea4578aca711cee3fe5097b2af09b5e4e38911fe`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 MB (1247949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd4bc038c42038b915b1b55440b769939223c70b43258e7e7656c5636ca1feb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3ff8ed963a0ec02b2867aa94ee6586aa2909e9ec33d8fec843124c783dae67`  
		Last Modified: Wed, 23 Sep 2026 22:10:42 GMT  
		Size: 80.9 MB (80878190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e5e06bd12c50705d4441723ce2537781d40db0872f608ddc60a3d936a15ffb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b1afc31d869c4d6fd146d243e547c34deaeab0b84e53c66b26e78b4dd68047`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ba6edac1a4f79d4778958a9e02a3bab0aaa0a8cddb5b33ee9ef5b9f6d4d351`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next` - unknown; unknown

```console
$ docker pull ghost@sha256:bc397c5ab2bc92b116ea39a4e58b24840ea1c2081ed93d7d1bc1ca7043144a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f733d7d2119a3249f745ddb15bb0d289fbfa805c7c6b5256d82de837b0d8be`

```dockerfile
```

-	Layers:
	-	`sha256:ba81c7d95e1c4e1b79d7d65d23e78c0e81173430d1427d888717f0ce0e38c0f3`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 4.3 MB (4344273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f30c06784b6f9af02a7f30340c723d2b071204abeac84cb6ba2de08c68f8702a`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:76a6011b55e8dafc14ea7da6256c21520079b560dab206eb3143a6de5353dd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161166300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a779567f74dbe5cd7c56a2a9b8dce1ab486a54f0b829a0ca8093e1a3c227df5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:08 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:08 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:08 GMT
CMD ["node" "index.js"]
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
	-	`sha256:e26015d51b13b326496237fd35a1e6b1984aa2accb6fbfeb9d9e792b5b6d1dba`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 MB (1201947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89883a68da8b4be9ef3f1c06471d562c20c2dba7508f484eb4d52a4f706bd38f`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a366d36cf4d897a7217e2b4d493cb77a72ca5fa896db93b7d70df5f307e566e`  
		Last Modified: Wed, 23 Sep 2026 22:09:36 GMT  
		Size: 80.2 MB (80156776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553f39e6c1d0dce712398e1cb145980e22471fed84914fae9ebd58a574039e3`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da4b5dc50ac59a5241d4d5a6540c2ce66a5eef2fe9e2cb7fcf47e9d997d11f`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3343f3549a8f3ecbdbd96d9d1a0ac6e24b96ba5cf50ebc8c3793cbc90f46c52`  
		Last Modified: Wed, 23 Sep 2026 22:09:35 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next` - unknown; unknown

```console
$ docker pull ghost@sha256:8181aaf0cc3f7eb711ddbe27ed5dcea3a87c6873c9aaf4b4c94548765404951b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5fd007b7d0f18ea89aeae950b9125a6dfd52fe7d01673a2fc592380da43e3f8`

```dockerfile
```

-	Layers:
	-	`sha256:ff965400b87b6267c173b8d70ac7e07bc73599be795f0dc069752ce0a3d21987`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 4.3 MB (4343813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4642ff4cb15ce72f31803fd23da426b172d70fc29f9e60b281cf1a441d8487d`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 37.2 KB (37204 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-next-alpine`

```console
$ docker pull ghost@sha256:b816cfd4d130ddc3dbf35fc97547da2a6f0c0fc59097db6f0000bbb27ed6cec2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:597f0d83bfd72bd94c8cc00184f0af8707be2bd355cf9869d6a6ba97ec967f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139020056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd632c91754ce0383a2f41a1e96705e96d6bb266ee42d6695b57ca1fc8e71c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f43bdcbd541080ad75001af2559bcb1b0467a38f328ddef5213fc09f40bd89`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 902.2 KB (902249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3f45d53155f963dd06d761239cffa84beee791979dd9c6e6da59c28518ed2`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4669110cde81227779e3fb7bebb197f1f74647ed9eff959f474732f04713e47f`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 77.6 MB (77558081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5d801389fd9a3c7c5ae587854852392bccd20e1d0aafa6d341c67722ccf9a9`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413bbf76fb52a17f45039984bdf5bea32198ae4f5cc9e04d3be21253edf34906`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cad21971f22799e6b9f7ab4a0ceff14b7b204fa00b4c15bd00296e152e86f80`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:f6f5d43f5211b13d2a0267e7311b0c0873d152814b5a6158b79e474619a34914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1977848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae397637d2da5f40bd242855370a4678059fe21632671382db4a5acb06c2c86`

```dockerfile
```

-	Layers:
	-	`sha256:9b6010925f39cd4cb35041572eaa4d77e05680286b6dedb31637baca4841d0ad`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 1.9 MB (1944757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb00c9cf65b66cc17eaa8ad2e5c31cbdf74ab5037bad99709770b88ed10ada5`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:bede999fe945271a3a88515d488b1442b7cdb113a636759865df5f600557fb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138897526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3f5f17c9c829b4dc9cd3e9ac766e059b4b301e0115a8478952973f8f86a4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:15 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:15 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c134b2f4e036ad923ae6b8f476cf25833b98a497c5e7be3756dd42eb2b3ee83f`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 855.0 KB (855041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f775951644de68a1d01162f4679c0454adb9e2e6b9f6754ecdd2268eb2e8793`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1fcfa0acb3fad2aad95c757e122ed0e4c8a5dcbab0a42538b6a8443f2ce0b2`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 77.1 MB (77134107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65dad5023e3dc6d58728c014b85e0ac9721617b3f892c076a81282471c8d81ea`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b8540bbac4d79a52cf0cc4d9b057bba1bbfeee3332234127191b68d2a8a7c2`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552f7235953592e7d9bb1716e16285c123a3a4d8c4bce207a50473f6e06f57e1`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:cbccb59775452ba0b03cdd8e10009c6db4b7523ee48726b3954d23b69b537189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1976734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157447ef6731a457862a8b3f2d53c869e6dc0d0b6657a108df52025dbc26a8a1`

```dockerfile
```

-	Layers:
	-	`sha256:21751c1978f1ee81ff9bc9ce69677a0788b0ae7c439a6a18a27e7645ad4c4a1c`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 1.9 MB (1943446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:487fa2f80f4a843fa70d8c1fc7885a614a969623cf3d2d3751b80a0ac73cc2de`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-next-alpine3.23`

```console
$ docker pull ghost@sha256:b816cfd4d130ddc3dbf35fc97547da2a6f0c0fc59097db6f0000bbb27ed6cec2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:597f0d83bfd72bd94c8cc00184f0af8707be2bd355cf9869d6a6ba97ec967f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139020056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd632c91754ce0383a2f41a1e96705e96d6bb266ee42d6695b57ca1fc8e71c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f43bdcbd541080ad75001af2559bcb1b0467a38f328ddef5213fc09f40bd89`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 902.2 KB (902249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3f45d53155f963dd06d761239cffa84beee791979dd9c6e6da59c28518ed2`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4669110cde81227779e3fb7bebb197f1f74647ed9eff959f474732f04713e47f`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 77.6 MB (77558081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5d801389fd9a3c7c5ae587854852392bccd20e1d0aafa6d341c67722ccf9a9`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413bbf76fb52a17f45039984bdf5bea32198ae4f5cc9e04d3be21253edf34906`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cad21971f22799e6b9f7ab4a0ceff14b7b204fa00b4c15bd00296e152e86f80`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:f6f5d43f5211b13d2a0267e7311b0c0873d152814b5a6158b79e474619a34914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1977848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae397637d2da5f40bd242855370a4678059fe21632671382db4a5acb06c2c86`

```dockerfile
```

-	Layers:
	-	`sha256:9b6010925f39cd4cb35041572eaa4d77e05680286b6dedb31637baca4841d0ad`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 1.9 MB (1944757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb00c9cf65b66cc17eaa8ad2e5c31cbdf74ab5037bad99709770b88ed10ada5`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:bede999fe945271a3a88515d488b1442b7cdb113a636759865df5f600557fb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138897526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3f5f17c9c829b4dc9cd3e9ac766e059b4b301e0115a8478952973f8f86a4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:15 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:15 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c134b2f4e036ad923ae6b8f476cf25833b98a497c5e7be3756dd42eb2b3ee83f`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 855.0 KB (855041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f775951644de68a1d01162f4679c0454adb9e2e6b9f6754ecdd2268eb2e8793`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1fcfa0acb3fad2aad95c757e122ed0e4c8a5dcbab0a42538b6a8443f2ce0b2`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 77.1 MB (77134107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65dad5023e3dc6d58728c014b85e0ac9721617b3f892c076a81282471c8d81ea`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b8540bbac4d79a52cf0cc4d9b057bba1bbfeee3332234127191b68d2a8a7c2`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552f7235953592e7d9bb1716e16285c123a3a4d8c4bce207a50473f6e06f57e1`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:cbccb59775452ba0b03cdd8e10009c6db4b7523ee48726b3954d23b69b537189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1976734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157447ef6731a457862a8b3f2d53c869e6dc0d0b6657a108df52025dbc26a8a1`

```dockerfile
```

-	Layers:
	-	`sha256:21751c1978f1ee81ff9bc9ce69677a0788b0ae7c439a6a18a27e7645ad4c4a1c`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 1.9 MB (1943446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:487fa2f80f4a843fa70d8c1fc7885a614a969623cf3d2d3751b80a0ac73cc2de`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-next-bookworm`

```console
$ docker pull ghost@sha256:3a266e6630b4a9f1caa54a6925c3cf3ea849c3e26f9bee46b64bbdd43a686297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:122995518037c1641722a61ae6c3e1aaa1bce40cdfb86633612be8c98adc5690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161921980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9cbf8da9c64c5826073befe7abced300b1ac67253d88cfeeeb0e4467a08520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:19 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:19 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:19 GMT
CMD ["node" "index.js"]
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
	-	`sha256:fc45e3e49d66b9ec9ad15447ea4578aca711cee3fe5097b2af09b5e4e38911fe`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 MB (1247949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd4bc038c42038b915b1b55440b769939223c70b43258e7e7656c5636ca1feb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3ff8ed963a0ec02b2867aa94ee6586aa2909e9ec33d8fec843124c783dae67`  
		Last Modified: Wed, 23 Sep 2026 22:10:42 GMT  
		Size: 80.9 MB (80878190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e5e06bd12c50705d4441723ce2537781d40db0872f608ddc60a3d936a15ffb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b1afc31d869c4d6fd146d243e547c34deaeab0b84e53c66b26e78b4dd68047`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ba6edac1a4f79d4778958a9e02a3bab0aaa0a8cddb5b33ee9ef5b9f6d4d351`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:bc397c5ab2bc92b116ea39a4e58b24840ea1c2081ed93d7d1bc1ca7043144a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f733d7d2119a3249f745ddb15bb0d289fbfa805c7c6b5256d82de837b0d8be`

```dockerfile
```

-	Layers:
	-	`sha256:ba81c7d95e1c4e1b79d7d65d23e78c0e81173430d1427d888717f0ce0e38c0f3`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 4.3 MB (4344273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f30c06784b6f9af02a7f30340c723d2b071204abeac84cb6ba2de08c68f8702a`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:76a6011b55e8dafc14ea7da6256c21520079b560dab206eb3143a6de5353dd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161166300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a779567f74dbe5cd7c56a2a9b8dce1ab486a54f0b829a0ca8093e1a3c227df5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:08 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:08 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:08 GMT
CMD ["node" "index.js"]
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
	-	`sha256:e26015d51b13b326496237fd35a1e6b1984aa2accb6fbfeb9d9e792b5b6d1dba`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 MB (1201947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89883a68da8b4be9ef3f1c06471d562c20c2dba7508f484eb4d52a4f706bd38f`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a366d36cf4d897a7217e2b4d493cb77a72ca5fa896db93b7d70df5f307e566e`  
		Last Modified: Wed, 23 Sep 2026 22:09:36 GMT  
		Size: 80.2 MB (80156776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553f39e6c1d0dce712398e1cb145980e22471fed84914fae9ebd58a574039e3`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da4b5dc50ac59a5241d4d5a6540c2ce66a5eef2fe9e2cb7fcf47e9d997d11f`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3343f3549a8f3ecbdbd96d9d1a0ac6e24b96ba5cf50ebc8c3793cbc90f46c52`  
		Last Modified: Wed, 23 Sep 2026 22:09:35 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:8181aaf0cc3f7eb711ddbe27ed5dcea3a87c6873c9aaf4b4c94548765404951b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5fd007b7d0f18ea89aeae950b9125a6dfd52fe7d01673a2fc592380da43e3f8`

```dockerfile
```

-	Layers:
	-	`sha256:ff965400b87b6267c173b8d70ac7e07bc73599be795f0dc069752ce0a3d21987`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 4.3 MB (4343813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4642ff4cb15ce72f31803fd23da426b172d70fc29f9e60b281cf1a441d8487d`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 37.2 KB (37204 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65`

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

### `ghost:6.65` - linux; amd64

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

### `ghost:6.65` - unknown; unknown

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

### `ghost:6.65` - linux; arm variant v7

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

### `ghost:6.65` - unknown; unknown

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

### `ghost:6.65` - linux; arm64 variant v8

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

### `ghost:6.65` - unknown; unknown

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

## `ghost:6.65-alpine`

```console
$ docker pull ghost@sha256:fea3264f902e656833a84656ac6e81a6ef644f87aa0940aa636d4300de62196e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ff7bcb7add7f96a510fa18168730e9a7b3129667fbf11b813b131217f5bb5add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212263259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85e30bdcec7a7977c740effaac35434c9430c57a93ffeaae1a8dcbee3d3b3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:56 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:09:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:21 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:09:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:09:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:21 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f820efa367a404f3fb8e8c584e3ba11686cec3b1832db4367ddbd633e7d99564`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 821.7 KB (821729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79815caabd6c60c5a002785ecf59600e52e3fb5af6a050811ab2f30bc0b95ca`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 904.5 KB (904462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a631bb8d813d46ad4579dd5a36a5c560699ca60c780379419c372713d8ac2f2`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 9.4 MB (9391404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09372c2cdbbd5ec753eee21e9f16fe6f72c67cc0597637dfb3a7994772bccb8e`  
		Last Modified: Wed, 23 Sep 2026 22:10:00 GMT  
		Size: 140.6 MB (140588659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5755e08086dc7769c7067bdf08066d0766c77edff91aee627eba2344e132c6be`  
		Last Modified: Wed, 23 Sep 2026 22:09:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:bc0b81c80c0429ee56d80fce207993f24cad87135e2bfb3c4cfb6e498400ceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd548c22f751570ca7b0b6ded63bd28e8c2d03afaa17b407b8fc08d2f7831f5`

```dockerfile
```

-	Layers:
	-	`sha256:e21d1b9099dcaf3a0b536196cc4c1c3664a448e7d9b7ae9acd8232a8171d4193`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 2.4 MB (2370498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e60a280abc0f851a4f27b3b380edc9966e656524cd890214450690a7456490c`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 33.1 KB (33133 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:46b8712c4cc873baaf2ce2c9e84878816d8ae6c06612fe4a4a6c7a9b5b43f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212266470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ddcfbd90cb85f2906ef480c2f10eaf70a2bf45c5d52d287a48a9825b47881b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:08:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:08:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:08:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:08:56 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:08:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cd7f453478459d64d82b5d2ed06642752b83039e8d032ec0c6cf5621556732`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 891.2 KB (891168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b8e0aa1355eda05aa2e82a254f7727e81f6af2c493b5ab2385a632770450b7`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 859.9 KB (859907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167582bfdd0b3866dc761fc71b951a277e76890d9e23955609ca60f34cc3df55`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 9.4 MB (9391676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc20ab603b71fdb062d76c6622ac50d0bb975ee75979ccfb6ff70bcf165e65c5`  
		Last Modified: Wed, 23 Sep 2026 22:09:44 GMT  
		Size: 140.2 MB (140218070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba895ffecdd38f4c9481d4ac28c56f2c868af3133e3090c4d0d108e2f6c5e41`  
		Last Modified: Wed, 23 Sep 2026 22:09:42 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:313991a2757d6a4ca6f0743126f47a58684595199244a0fae74e7db71dca2361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9a785d3d79e6c215c64d26a5388cf35a5371161900cc992044bdb2b108df`

```dockerfile
```

-	Layers:
	-	`sha256:cfd38c887ad46ea9651ffc1133460e9d8907f6731a04e480bebfeb49449c4e57`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 2.4 MB (2368935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a49dd3795fb35fac08a7283b861cf7930fb285652a7aa536d2ba57a43b502e8c`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 33.3 KB (33331 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65-alpine3.23`

```console
$ docker pull ghost@sha256:fea3264f902e656833a84656ac6e81a6ef644f87aa0940aa636d4300de62196e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:ff7bcb7add7f96a510fa18168730e9a7b3129667fbf11b813b131217f5bb5add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212263259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85e30bdcec7a7977c740effaac35434c9430c57a93ffeaae1a8dcbee3d3b3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:56 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:09:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:21 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:09:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:09:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:21 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f820efa367a404f3fb8e8c584e3ba11686cec3b1832db4367ddbd633e7d99564`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 821.7 KB (821729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79815caabd6c60c5a002785ecf59600e52e3fb5af6a050811ab2f30bc0b95ca`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 904.5 KB (904462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a631bb8d813d46ad4579dd5a36a5c560699ca60c780379419c372713d8ac2f2`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 9.4 MB (9391404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09372c2cdbbd5ec753eee21e9f16fe6f72c67cc0597637dfb3a7994772bccb8e`  
		Last Modified: Wed, 23 Sep 2026 22:10:00 GMT  
		Size: 140.6 MB (140588659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5755e08086dc7769c7067bdf08066d0766c77edff91aee627eba2344e132c6be`  
		Last Modified: Wed, 23 Sep 2026 22:09:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:bc0b81c80c0429ee56d80fce207993f24cad87135e2bfb3c4cfb6e498400ceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd548c22f751570ca7b0b6ded63bd28e8c2d03afaa17b407b8fc08d2f7831f5`

```dockerfile
```

-	Layers:
	-	`sha256:e21d1b9099dcaf3a0b536196cc4c1c3664a448e7d9b7ae9acd8232a8171d4193`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 2.4 MB (2370498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e60a280abc0f851a4f27b3b380edc9966e656524cd890214450690a7456490c`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 33.1 KB (33133 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:46b8712c4cc873baaf2ce2c9e84878816d8ae6c06612fe4a4a6c7a9b5b43f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212266470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ddcfbd90cb85f2906ef480c2f10eaf70a2bf45c5d52d287a48a9825b47881b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:08:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:08:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:08:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:08:56 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:08:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cd7f453478459d64d82b5d2ed06642752b83039e8d032ec0c6cf5621556732`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 891.2 KB (891168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b8e0aa1355eda05aa2e82a254f7727e81f6af2c493b5ab2385a632770450b7`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 859.9 KB (859907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167582bfdd0b3866dc761fc71b951a277e76890d9e23955609ca60f34cc3df55`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 9.4 MB (9391676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc20ab603b71fdb062d76c6622ac50d0bb975ee75979ccfb6ff70bcf165e65c5`  
		Last Modified: Wed, 23 Sep 2026 22:09:44 GMT  
		Size: 140.2 MB (140218070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba895ffecdd38f4c9481d4ac28c56f2c868af3133e3090c4d0d108e2f6c5e41`  
		Last Modified: Wed, 23 Sep 2026 22:09:42 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:313991a2757d6a4ca6f0743126f47a58684595199244a0fae74e7db71dca2361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9a785d3d79e6c215c64d26a5388cf35a5371161900cc992044bdb2b108df`

```dockerfile
```

-	Layers:
	-	`sha256:cfd38c887ad46ea9651ffc1133460e9d8907f6731a04e480bebfeb49449c4e57`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 2.4 MB (2368935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a49dd3795fb35fac08a7283b861cf7930fb285652a7aa536d2ba57a43b502e8c`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 33.3 KB (33331 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65-bookworm`

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

### `ghost:6.65-bookworm` - linux; amd64

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

### `ghost:6.65-bookworm` - unknown; unknown

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

### `ghost:6.65-bookworm` - linux; arm variant v7

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

### `ghost:6.65-bookworm` - unknown; unknown

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

### `ghost:6.65-bookworm` - linux; arm64 variant v8

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

### `ghost:6.65-bookworm` - unknown; unknown

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

## `ghost:6.65-next`

```console
$ docker pull ghost@sha256:3a266e6630b4a9f1caa54a6925c3cf3ea849c3e26f9bee46b64bbdd43a686297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65-next` - linux; amd64

```console
$ docker pull ghost@sha256:122995518037c1641722a61ae6c3e1aaa1bce40cdfb86633612be8c98adc5690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161921980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9cbf8da9c64c5826073befe7abced300b1ac67253d88cfeeeb0e4467a08520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:19 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:19 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:19 GMT
CMD ["node" "index.js"]
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
	-	`sha256:fc45e3e49d66b9ec9ad15447ea4578aca711cee3fe5097b2af09b5e4e38911fe`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 MB (1247949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd4bc038c42038b915b1b55440b769939223c70b43258e7e7656c5636ca1feb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3ff8ed963a0ec02b2867aa94ee6586aa2909e9ec33d8fec843124c783dae67`  
		Last Modified: Wed, 23 Sep 2026 22:10:42 GMT  
		Size: 80.9 MB (80878190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e5e06bd12c50705d4441723ce2537781d40db0872f608ddc60a3d936a15ffb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b1afc31d869c4d6fd146d243e547c34deaeab0b84e53c66b26e78b4dd68047`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ba6edac1a4f79d4778958a9e02a3bab0aaa0a8cddb5b33ee9ef5b9f6d4d351`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-next` - unknown; unknown

```console
$ docker pull ghost@sha256:bc397c5ab2bc92b116ea39a4e58b24840ea1c2081ed93d7d1bc1ca7043144a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f733d7d2119a3249f745ddb15bb0d289fbfa805c7c6b5256d82de837b0d8be`

```dockerfile
```

-	Layers:
	-	`sha256:ba81c7d95e1c4e1b79d7d65d23e78c0e81173430d1427d888717f0ce0e38c0f3`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 4.3 MB (4344273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f30c06784b6f9af02a7f30340c723d2b071204abeac84cb6ba2de08c68f8702a`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65-next` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:76a6011b55e8dafc14ea7da6256c21520079b560dab206eb3143a6de5353dd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161166300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a779567f74dbe5cd7c56a2a9b8dce1ab486a54f0b829a0ca8093e1a3c227df5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:08 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:08 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:08 GMT
CMD ["node" "index.js"]
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
	-	`sha256:e26015d51b13b326496237fd35a1e6b1984aa2accb6fbfeb9d9e792b5b6d1dba`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 MB (1201947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89883a68da8b4be9ef3f1c06471d562c20c2dba7508f484eb4d52a4f706bd38f`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a366d36cf4d897a7217e2b4d493cb77a72ca5fa896db93b7d70df5f307e566e`  
		Last Modified: Wed, 23 Sep 2026 22:09:36 GMT  
		Size: 80.2 MB (80156776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553f39e6c1d0dce712398e1cb145980e22471fed84914fae9ebd58a574039e3`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da4b5dc50ac59a5241d4d5a6540c2ce66a5eef2fe9e2cb7fcf47e9d997d11f`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3343f3549a8f3ecbdbd96d9d1a0ac6e24b96ba5cf50ebc8c3793cbc90f46c52`  
		Last Modified: Wed, 23 Sep 2026 22:09:35 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-next` - unknown; unknown

```console
$ docker pull ghost@sha256:8181aaf0cc3f7eb711ddbe27ed5dcea3a87c6873c9aaf4b4c94548765404951b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5fd007b7d0f18ea89aeae950b9125a6dfd52fe7d01673a2fc592380da43e3f8`

```dockerfile
```

-	Layers:
	-	`sha256:ff965400b87b6267c173b8d70ac7e07bc73599be795f0dc069752ce0a3d21987`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 4.3 MB (4343813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4642ff4cb15ce72f31803fd23da426b172d70fc29f9e60b281cf1a441d8487d`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 37.2 KB (37204 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65-next-alpine`

```console
$ docker pull ghost@sha256:b816cfd4d130ddc3dbf35fc97547da2a6f0c0fc59097db6f0000bbb27ed6cec2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65-next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:597f0d83bfd72bd94c8cc00184f0af8707be2bd355cf9869d6a6ba97ec967f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139020056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd632c91754ce0383a2f41a1e96705e96d6bb266ee42d6695b57ca1fc8e71c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f43bdcbd541080ad75001af2559bcb1b0467a38f328ddef5213fc09f40bd89`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 902.2 KB (902249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3f45d53155f963dd06d761239cffa84beee791979dd9c6e6da59c28518ed2`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4669110cde81227779e3fb7bebb197f1f74647ed9eff959f474732f04713e47f`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 77.6 MB (77558081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5d801389fd9a3c7c5ae587854852392bccd20e1d0aafa6d341c67722ccf9a9`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413bbf76fb52a17f45039984bdf5bea32198ae4f5cc9e04d3be21253edf34906`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cad21971f22799e6b9f7ab4a0ceff14b7b204fa00b4c15bd00296e152e86f80`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:f6f5d43f5211b13d2a0267e7311b0c0873d152814b5a6158b79e474619a34914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1977848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae397637d2da5f40bd242855370a4678059fe21632671382db4a5acb06c2c86`

```dockerfile
```

-	Layers:
	-	`sha256:9b6010925f39cd4cb35041572eaa4d77e05680286b6dedb31637baca4841d0ad`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 1.9 MB (1944757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb00c9cf65b66cc17eaa8ad2e5c31cbdf74ab5037bad99709770b88ed10ada5`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65-next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:bede999fe945271a3a88515d488b1442b7cdb113a636759865df5f600557fb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138897526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3f5f17c9c829b4dc9cd3e9ac766e059b4b301e0115a8478952973f8f86a4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:15 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:15 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c134b2f4e036ad923ae6b8f476cf25833b98a497c5e7be3756dd42eb2b3ee83f`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 855.0 KB (855041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f775951644de68a1d01162f4679c0454adb9e2e6b9f6754ecdd2268eb2e8793`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1fcfa0acb3fad2aad95c757e122ed0e4c8a5dcbab0a42538b6a8443f2ce0b2`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 77.1 MB (77134107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65dad5023e3dc6d58728c014b85e0ac9721617b3f892c076a81282471c8d81ea`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b8540bbac4d79a52cf0cc4d9b057bba1bbfeee3332234127191b68d2a8a7c2`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552f7235953592e7d9bb1716e16285c123a3a4d8c4bce207a50473f6e06f57e1`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:cbccb59775452ba0b03cdd8e10009c6db4b7523ee48726b3954d23b69b537189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1976734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157447ef6731a457862a8b3f2d53c869e6dc0d0b6657a108df52025dbc26a8a1`

```dockerfile
```

-	Layers:
	-	`sha256:21751c1978f1ee81ff9bc9ce69677a0788b0ae7c439a6a18a27e7645ad4c4a1c`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 1.9 MB (1943446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:487fa2f80f4a843fa70d8c1fc7885a614a969623cf3d2d3751b80a0ac73cc2de`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65-next-alpine3.23`

```console
$ docker pull ghost@sha256:b816cfd4d130ddc3dbf35fc97547da2a6f0c0fc59097db6f0000bbb27ed6cec2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65-next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:597f0d83bfd72bd94c8cc00184f0af8707be2bd355cf9869d6a6ba97ec967f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139020056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd632c91754ce0383a2f41a1e96705e96d6bb266ee42d6695b57ca1fc8e71c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f43bdcbd541080ad75001af2559bcb1b0467a38f328ddef5213fc09f40bd89`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 902.2 KB (902249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3f45d53155f963dd06d761239cffa84beee791979dd9c6e6da59c28518ed2`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4669110cde81227779e3fb7bebb197f1f74647ed9eff959f474732f04713e47f`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 77.6 MB (77558081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5d801389fd9a3c7c5ae587854852392bccd20e1d0aafa6d341c67722ccf9a9`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413bbf76fb52a17f45039984bdf5bea32198ae4f5cc9e04d3be21253edf34906`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cad21971f22799e6b9f7ab4a0ceff14b7b204fa00b4c15bd00296e152e86f80`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:f6f5d43f5211b13d2a0267e7311b0c0873d152814b5a6158b79e474619a34914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1977848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae397637d2da5f40bd242855370a4678059fe21632671382db4a5acb06c2c86`

```dockerfile
```

-	Layers:
	-	`sha256:9b6010925f39cd4cb35041572eaa4d77e05680286b6dedb31637baca4841d0ad`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 1.9 MB (1944757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb00c9cf65b66cc17eaa8ad2e5c31cbdf74ab5037bad99709770b88ed10ada5`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65-next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:bede999fe945271a3a88515d488b1442b7cdb113a636759865df5f600557fb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138897526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3f5f17c9c829b4dc9cd3e9ac766e059b4b301e0115a8478952973f8f86a4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:15 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:15 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c134b2f4e036ad923ae6b8f476cf25833b98a497c5e7be3756dd42eb2b3ee83f`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 855.0 KB (855041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f775951644de68a1d01162f4679c0454adb9e2e6b9f6754ecdd2268eb2e8793`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1fcfa0acb3fad2aad95c757e122ed0e4c8a5dcbab0a42538b6a8443f2ce0b2`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 77.1 MB (77134107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65dad5023e3dc6d58728c014b85e0ac9721617b3f892c076a81282471c8d81ea`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b8540bbac4d79a52cf0cc4d9b057bba1bbfeee3332234127191b68d2a8a7c2`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552f7235953592e7d9bb1716e16285c123a3a4d8c4bce207a50473f6e06f57e1`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:cbccb59775452ba0b03cdd8e10009c6db4b7523ee48726b3954d23b69b537189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1976734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157447ef6731a457862a8b3f2d53c869e6dc0d0b6657a108df52025dbc26a8a1`

```dockerfile
```

-	Layers:
	-	`sha256:21751c1978f1ee81ff9bc9ce69677a0788b0ae7c439a6a18a27e7645ad4c4a1c`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 1.9 MB (1943446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:487fa2f80f4a843fa70d8c1fc7885a614a969623cf3d2d3751b80a0ac73cc2de`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65-next-bookworm`

```console
$ docker pull ghost@sha256:3a266e6630b4a9f1caa54a6925c3cf3ea849c3e26f9bee46b64bbdd43a686297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65-next-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:122995518037c1641722a61ae6c3e1aaa1bce40cdfb86633612be8c98adc5690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161921980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9cbf8da9c64c5826073befe7abced300b1ac67253d88cfeeeb0e4467a08520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:19 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:19 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:19 GMT
CMD ["node" "index.js"]
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
	-	`sha256:fc45e3e49d66b9ec9ad15447ea4578aca711cee3fe5097b2af09b5e4e38911fe`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 MB (1247949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd4bc038c42038b915b1b55440b769939223c70b43258e7e7656c5636ca1feb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3ff8ed963a0ec02b2867aa94ee6586aa2909e9ec33d8fec843124c783dae67`  
		Last Modified: Wed, 23 Sep 2026 22:10:42 GMT  
		Size: 80.9 MB (80878190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e5e06bd12c50705d4441723ce2537781d40db0872f608ddc60a3d936a15ffb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b1afc31d869c4d6fd146d243e547c34deaeab0b84e53c66b26e78b4dd68047`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ba6edac1a4f79d4778958a9e02a3bab0aaa0a8cddb5b33ee9ef5b9f6d4d351`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:bc397c5ab2bc92b116ea39a4e58b24840ea1c2081ed93d7d1bc1ca7043144a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f733d7d2119a3249f745ddb15bb0d289fbfa805c7c6b5256d82de837b0d8be`

```dockerfile
```

-	Layers:
	-	`sha256:ba81c7d95e1c4e1b79d7d65d23e78c0e81173430d1427d888717f0ce0e38c0f3`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 4.3 MB (4344273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f30c06784b6f9af02a7f30340c723d2b071204abeac84cb6ba2de08c68f8702a`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65-next-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:76a6011b55e8dafc14ea7da6256c21520079b560dab206eb3143a6de5353dd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161166300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a779567f74dbe5cd7c56a2a9b8dce1ab486a54f0b829a0ca8093e1a3c227df5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:08 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:08 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:08 GMT
CMD ["node" "index.js"]
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
	-	`sha256:e26015d51b13b326496237fd35a1e6b1984aa2accb6fbfeb9d9e792b5b6d1dba`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 MB (1201947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89883a68da8b4be9ef3f1c06471d562c20c2dba7508f484eb4d52a4f706bd38f`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a366d36cf4d897a7217e2b4d493cb77a72ca5fa896db93b7d70df5f307e566e`  
		Last Modified: Wed, 23 Sep 2026 22:09:36 GMT  
		Size: 80.2 MB (80156776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553f39e6c1d0dce712398e1cb145980e22471fed84914fae9ebd58a574039e3`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da4b5dc50ac59a5241d4d5a6540c2ce66a5eef2fe9e2cb7fcf47e9d997d11f`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3343f3549a8f3ecbdbd96d9d1a0ac6e24b96ba5cf50ebc8c3793cbc90f46c52`  
		Last Modified: Wed, 23 Sep 2026 22:09:35 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:8181aaf0cc3f7eb711ddbe27ed5dcea3a87c6873c9aaf4b4c94548765404951b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5fd007b7d0f18ea89aeae950b9125a6dfd52fe7d01673a2fc592380da43e3f8`

```dockerfile
```

-	Layers:
	-	`sha256:ff965400b87b6267c173b8d70ac7e07bc73599be795f0dc069752ce0a3d21987`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 4.3 MB (4343813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4642ff4cb15ce72f31803fd23da426b172d70fc29f9e60b281cf1a441d8487d`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 37.2 KB (37204 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65.0`

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

### `ghost:6.65.0` - linux; amd64

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

### `ghost:6.65.0` - unknown; unknown

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

### `ghost:6.65.0` - linux; arm variant v7

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

### `ghost:6.65.0` - unknown; unknown

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

### `ghost:6.65.0` - linux; arm64 variant v8

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

### `ghost:6.65.0` - unknown; unknown

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

## `ghost:6.65.0-alpine`

```console
$ docker pull ghost@sha256:fea3264f902e656833a84656ac6e81a6ef644f87aa0940aa636d4300de62196e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65.0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ff7bcb7add7f96a510fa18168730e9a7b3129667fbf11b813b131217f5bb5add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212263259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85e30bdcec7a7977c740effaac35434c9430c57a93ffeaae1a8dcbee3d3b3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:56 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:09:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:21 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:09:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:09:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:21 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f820efa367a404f3fb8e8c584e3ba11686cec3b1832db4367ddbd633e7d99564`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 821.7 KB (821729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79815caabd6c60c5a002785ecf59600e52e3fb5af6a050811ab2f30bc0b95ca`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 904.5 KB (904462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a631bb8d813d46ad4579dd5a36a5c560699ca60c780379419c372713d8ac2f2`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 9.4 MB (9391404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09372c2cdbbd5ec753eee21e9f16fe6f72c67cc0597637dfb3a7994772bccb8e`  
		Last Modified: Wed, 23 Sep 2026 22:10:00 GMT  
		Size: 140.6 MB (140588659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5755e08086dc7769c7067bdf08066d0766c77edff91aee627eba2344e132c6be`  
		Last Modified: Wed, 23 Sep 2026 22:09:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:bc0b81c80c0429ee56d80fce207993f24cad87135e2bfb3c4cfb6e498400ceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd548c22f751570ca7b0b6ded63bd28e8c2d03afaa17b407b8fc08d2f7831f5`

```dockerfile
```

-	Layers:
	-	`sha256:e21d1b9099dcaf3a0b536196cc4c1c3664a448e7d9b7ae9acd8232a8171d4193`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 2.4 MB (2370498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e60a280abc0f851a4f27b3b380edc9966e656524cd890214450690a7456490c`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 33.1 KB (33133 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65.0-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:46b8712c4cc873baaf2ce2c9e84878816d8ae6c06612fe4a4a6c7a9b5b43f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212266470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ddcfbd90cb85f2906ef480c2f10eaf70a2bf45c5d52d287a48a9825b47881b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:08:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:08:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:08:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:08:56 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:08:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cd7f453478459d64d82b5d2ed06642752b83039e8d032ec0c6cf5621556732`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 891.2 KB (891168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b8e0aa1355eda05aa2e82a254f7727e81f6af2c493b5ab2385a632770450b7`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 859.9 KB (859907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167582bfdd0b3866dc761fc71b951a277e76890d9e23955609ca60f34cc3df55`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 9.4 MB (9391676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc20ab603b71fdb062d76c6622ac50d0bb975ee75979ccfb6ff70bcf165e65c5`  
		Last Modified: Wed, 23 Sep 2026 22:09:44 GMT  
		Size: 140.2 MB (140218070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba895ffecdd38f4c9481d4ac28c56f2c868af3133e3090c4d0d108e2f6c5e41`  
		Last Modified: Wed, 23 Sep 2026 22:09:42 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:313991a2757d6a4ca6f0743126f47a58684595199244a0fae74e7db71dca2361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9a785d3d79e6c215c64d26a5388cf35a5371161900cc992044bdb2b108df`

```dockerfile
```

-	Layers:
	-	`sha256:cfd38c887ad46ea9651ffc1133460e9d8907f6731a04e480bebfeb49449c4e57`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 2.4 MB (2368935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a49dd3795fb35fac08a7283b861cf7930fb285652a7aa536d2ba57a43b502e8c`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 33.3 KB (33331 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65.0-alpine3.23`

```console
$ docker pull ghost@sha256:fea3264f902e656833a84656ac6e81a6ef644f87aa0940aa636d4300de62196e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65.0-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:ff7bcb7add7f96a510fa18168730e9a7b3129667fbf11b813b131217f5bb5add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212263259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85e30bdcec7a7977c740effaac35434c9430c57a93ffeaae1a8dcbee3d3b3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:56 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:09:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:21 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:09:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:09:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:21 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f820efa367a404f3fb8e8c584e3ba11686cec3b1832db4367ddbd633e7d99564`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 821.7 KB (821729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79815caabd6c60c5a002785ecf59600e52e3fb5af6a050811ab2f30bc0b95ca`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 904.5 KB (904462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a631bb8d813d46ad4579dd5a36a5c560699ca60c780379419c372713d8ac2f2`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 9.4 MB (9391404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09372c2cdbbd5ec753eee21e9f16fe6f72c67cc0597637dfb3a7994772bccb8e`  
		Last Modified: Wed, 23 Sep 2026 22:10:00 GMT  
		Size: 140.6 MB (140588659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5755e08086dc7769c7067bdf08066d0766c77edff91aee627eba2344e132c6be`  
		Last Modified: Wed, 23 Sep 2026 22:09:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:bc0b81c80c0429ee56d80fce207993f24cad87135e2bfb3c4cfb6e498400ceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd548c22f751570ca7b0b6ded63bd28e8c2d03afaa17b407b8fc08d2f7831f5`

```dockerfile
```

-	Layers:
	-	`sha256:e21d1b9099dcaf3a0b536196cc4c1c3664a448e7d9b7ae9acd8232a8171d4193`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 2.4 MB (2370498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e60a280abc0f851a4f27b3b380edc9966e656524cd890214450690a7456490c`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 33.1 KB (33133 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65.0-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:46b8712c4cc873baaf2ce2c9e84878816d8ae6c06612fe4a4a6c7a9b5b43f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212266470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ddcfbd90cb85f2906ef480c2f10eaf70a2bf45c5d52d287a48a9825b47881b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:08:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:08:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:08:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:08:56 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:08:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cd7f453478459d64d82b5d2ed06642752b83039e8d032ec0c6cf5621556732`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 891.2 KB (891168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b8e0aa1355eda05aa2e82a254f7727e81f6af2c493b5ab2385a632770450b7`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 859.9 KB (859907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167582bfdd0b3866dc761fc71b951a277e76890d9e23955609ca60f34cc3df55`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 9.4 MB (9391676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc20ab603b71fdb062d76c6622ac50d0bb975ee75979ccfb6ff70bcf165e65c5`  
		Last Modified: Wed, 23 Sep 2026 22:09:44 GMT  
		Size: 140.2 MB (140218070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba895ffecdd38f4c9481d4ac28c56f2c868af3133e3090c4d0d108e2f6c5e41`  
		Last Modified: Wed, 23 Sep 2026 22:09:42 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:313991a2757d6a4ca6f0743126f47a58684595199244a0fae74e7db71dca2361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9a785d3d79e6c215c64d26a5388cf35a5371161900cc992044bdb2b108df`

```dockerfile
```

-	Layers:
	-	`sha256:cfd38c887ad46ea9651ffc1133460e9d8907f6731a04e480bebfeb49449c4e57`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 2.4 MB (2368935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a49dd3795fb35fac08a7283b861cf7930fb285652a7aa536d2ba57a43b502e8c`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 33.3 KB (33331 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65.0-bookworm`

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

### `ghost:6.65.0-bookworm` - linux; amd64

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

### `ghost:6.65.0-bookworm` - unknown; unknown

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

### `ghost:6.65.0-bookworm` - linux; arm variant v7

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

### `ghost:6.65.0-bookworm` - unknown; unknown

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

### `ghost:6.65.0-bookworm` - linux; arm64 variant v8

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

### `ghost:6.65.0-bookworm` - unknown; unknown

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

## `ghost:6.65.0-next`

```console
$ docker pull ghost@sha256:3a266e6630b4a9f1caa54a6925c3cf3ea849c3e26f9bee46b64bbdd43a686297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65.0-next` - linux; amd64

```console
$ docker pull ghost@sha256:122995518037c1641722a61ae6c3e1aaa1bce40cdfb86633612be8c98adc5690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161921980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9cbf8da9c64c5826073befe7abced300b1ac67253d88cfeeeb0e4467a08520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:19 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:19 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:19 GMT
CMD ["node" "index.js"]
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
	-	`sha256:fc45e3e49d66b9ec9ad15447ea4578aca711cee3fe5097b2af09b5e4e38911fe`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 MB (1247949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd4bc038c42038b915b1b55440b769939223c70b43258e7e7656c5636ca1feb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3ff8ed963a0ec02b2867aa94ee6586aa2909e9ec33d8fec843124c783dae67`  
		Last Modified: Wed, 23 Sep 2026 22:10:42 GMT  
		Size: 80.9 MB (80878190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e5e06bd12c50705d4441723ce2537781d40db0872f608ddc60a3d936a15ffb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b1afc31d869c4d6fd146d243e547c34deaeab0b84e53c66b26e78b4dd68047`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ba6edac1a4f79d4778958a9e02a3bab0aaa0a8cddb5b33ee9ef5b9f6d4d351`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-next` - unknown; unknown

```console
$ docker pull ghost@sha256:bc397c5ab2bc92b116ea39a4e58b24840ea1c2081ed93d7d1bc1ca7043144a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f733d7d2119a3249f745ddb15bb0d289fbfa805c7c6b5256d82de837b0d8be`

```dockerfile
```

-	Layers:
	-	`sha256:ba81c7d95e1c4e1b79d7d65d23e78c0e81173430d1427d888717f0ce0e38c0f3`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 4.3 MB (4344273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f30c06784b6f9af02a7f30340c723d2b071204abeac84cb6ba2de08c68f8702a`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65.0-next` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:76a6011b55e8dafc14ea7da6256c21520079b560dab206eb3143a6de5353dd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161166300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a779567f74dbe5cd7c56a2a9b8dce1ab486a54f0b829a0ca8093e1a3c227df5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:08 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:08 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:08 GMT
CMD ["node" "index.js"]
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
	-	`sha256:e26015d51b13b326496237fd35a1e6b1984aa2accb6fbfeb9d9e792b5b6d1dba`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 MB (1201947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89883a68da8b4be9ef3f1c06471d562c20c2dba7508f484eb4d52a4f706bd38f`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a366d36cf4d897a7217e2b4d493cb77a72ca5fa896db93b7d70df5f307e566e`  
		Last Modified: Wed, 23 Sep 2026 22:09:36 GMT  
		Size: 80.2 MB (80156776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553f39e6c1d0dce712398e1cb145980e22471fed84914fae9ebd58a574039e3`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da4b5dc50ac59a5241d4d5a6540c2ce66a5eef2fe9e2cb7fcf47e9d997d11f`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3343f3549a8f3ecbdbd96d9d1a0ac6e24b96ba5cf50ebc8c3793cbc90f46c52`  
		Last Modified: Wed, 23 Sep 2026 22:09:35 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-next` - unknown; unknown

```console
$ docker pull ghost@sha256:8181aaf0cc3f7eb711ddbe27ed5dcea3a87c6873c9aaf4b4c94548765404951b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5fd007b7d0f18ea89aeae950b9125a6dfd52fe7d01673a2fc592380da43e3f8`

```dockerfile
```

-	Layers:
	-	`sha256:ff965400b87b6267c173b8d70ac7e07bc73599be795f0dc069752ce0a3d21987`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 4.3 MB (4343813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4642ff4cb15ce72f31803fd23da426b172d70fc29f9e60b281cf1a441d8487d`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 37.2 KB (37204 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65.0-next-alpine`

```console
$ docker pull ghost@sha256:b816cfd4d130ddc3dbf35fc97547da2a6f0c0fc59097db6f0000bbb27ed6cec2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65.0-next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:597f0d83bfd72bd94c8cc00184f0af8707be2bd355cf9869d6a6ba97ec967f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139020056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd632c91754ce0383a2f41a1e96705e96d6bb266ee42d6695b57ca1fc8e71c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f43bdcbd541080ad75001af2559bcb1b0467a38f328ddef5213fc09f40bd89`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 902.2 KB (902249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3f45d53155f963dd06d761239cffa84beee791979dd9c6e6da59c28518ed2`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4669110cde81227779e3fb7bebb197f1f74647ed9eff959f474732f04713e47f`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 77.6 MB (77558081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5d801389fd9a3c7c5ae587854852392bccd20e1d0aafa6d341c67722ccf9a9`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413bbf76fb52a17f45039984bdf5bea32198ae4f5cc9e04d3be21253edf34906`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cad21971f22799e6b9f7ab4a0ceff14b7b204fa00b4c15bd00296e152e86f80`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:f6f5d43f5211b13d2a0267e7311b0c0873d152814b5a6158b79e474619a34914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1977848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae397637d2da5f40bd242855370a4678059fe21632671382db4a5acb06c2c86`

```dockerfile
```

-	Layers:
	-	`sha256:9b6010925f39cd4cb35041572eaa4d77e05680286b6dedb31637baca4841d0ad`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 1.9 MB (1944757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb00c9cf65b66cc17eaa8ad2e5c31cbdf74ab5037bad99709770b88ed10ada5`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65.0-next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:bede999fe945271a3a88515d488b1442b7cdb113a636759865df5f600557fb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138897526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3f5f17c9c829b4dc9cd3e9ac766e059b4b301e0115a8478952973f8f86a4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:15 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:15 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c134b2f4e036ad923ae6b8f476cf25833b98a497c5e7be3756dd42eb2b3ee83f`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 855.0 KB (855041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f775951644de68a1d01162f4679c0454adb9e2e6b9f6754ecdd2268eb2e8793`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1fcfa0acb3fad2aad95c757e122ed0e4c8a5dcbab0a42538b6a8443f2ce0b2`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 77.1 MB (77134107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65dad5023e3dc6d58728c014b85e0ac9721617b3f892c076a81282471c8d81ea`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b8540bbac4d79a52cf0cc4d9b057bba1bbfeee3332234127191b68d2a8a7c2`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552f7235953592e7d9bb1716e16285c123a3a4d8c4bce207a50473f6e06f57e1`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:cbccb59775452ba0b03cdd8e10009c6db4b7523ee48726b3954d23b69b537189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1976734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157447ef6731a457862a8b3f2d53c869e6dc0d0b6657a108df52025dbc26a8a1`

```dockerfile
```

-	Layers:
	-	`sha256:21751c1978f1ee81ff9bc9ce69677a0788b0ae7c439a6a18a27e7645ad4c4a1c`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 1.9 MB (1943446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:487fa2f80f4a843fa70d8c1fc7885a614a969623cf3d2d3751b80a0ac73cc2de`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65.0-next-alpine3.23`

```console
$ docker pull ghost@sha256:b816cfd4d130ddc3dbf35fc97547da2a6f0c0fc59097db6f0000bbb27ed6cec2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65.0-next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:597f0d83bfd72bd94c8cc00184f0af8707be2bd355cf9869d6a6ba97ec967f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139020056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd632c91754ce0383a2f41a1e96705e96d6bb266ee42d6695b57ca1fc8e71c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f43bdcbd541080ad75001af2559bcb1b0467a38f328ddef5213fc09f40bd89`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 902.2 KB (902249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3f45d53155f963dd06d761239cffa84beee791979dd9c6e6da59c28518ed2`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4669110cde81227779e3fb7bebb197f1f74647ed9eff959f474732f04713e47f`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 77.6 MB (77558081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5d801389fd9a3c7c5ae587854852392bccd20e1d0aafa6d341c67722ccf9a9`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413bbf76fb52a17f45039984bdf5bea32198ae4f5cc9e04d3be21253edf34906`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cad21971f22799e6b9f7ab4a0ceff14b7b204fa00b4c15bd00296e152e86f80`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:f6f5d43f5211b13d2a0267e7311b0c0873d152814b5a6158b79e474619a34914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1977848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae397637d2da5f40bd242855370a4678059fe21632671382db4a5acb06c2c86`

```dockerfile
```

-	Layers:
	-	`sha256:9b6010925f39cd4cb35041572eaa4d77e05680286b6dedb31637baca4841d0ad`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 1.9 MB (1944757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb00c9cf65b66cc17eaa8ad2e5c31cbdf74ab5037bad99709770b88ed10ada5`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65.0-next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:bede999fe945271a3a88515d488b1442b7cdb113a636759865df5f600557fb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138897526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3f5f17c9c829b4dc9cd3e9ac766e059b4b301e0115a8478952973f8f86a4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:15 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:15 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c134b2f4e036ad923ae6b8f476cf25833b98a497c5e7be3756dd42eb2b3ee83f`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 855.0 KB (855041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f775951644de68a1d01162f4679c0454adb9e2e6b9f6754ecdd2268eb2e8793`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1fcfa0acb3fad2aad95c757e122ed0e4c8a5dcbab0a42538b6a8443f2ce0b2`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 77.1 MB (77134107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65dad5023e3dc6d58728c014b85e0ac9721617b3f892c076a81282471c8d81ea`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b8540bbac4d79a52cf0cc4d9b057bba1bbfeee3332234127191b68d2a8a7c2`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552f7235953592e7d9bb1716e16285c123a3a4d8c4bce207a50473f6e06f57e1`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:cbccb59775452ba0b03cdd8e10009c6db4b7523ee48726b3954d23b69b537189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1976734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157447ef6731a457862a8b3f2d53c869e6dc0d0b6657a108df52025dbc26a8a1`

```dockerfile
```

-	Layers:
	-	`sha256:21751c1978f1ee81ff9bc9ce69677a0788b0ae7c439a6a18a27e7645ad4c4a1c`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 1.9 MB (1943446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:487fa2f80f4a843fa70d8c1fc7885a614a969623cf3d2d3751b80a0ac73cc2de`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.65.0-next-bookworm`

```console
$ docker pull ghost@sha256:3a266e6630b4a9f1caa54a6925c3cf3ea849c3e26f9bee46b64bbdd43a686297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.65.0-next-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:122995518037c1641722a61ae6c3e1aaa1bce40cdfb86633612be8c98adc5690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161921980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9cbf8da9c64c5826073befe7abced300b1ac67253d88cfeeeb0e4467a08520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:19 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:19 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:19 GMT
CMD ["node" "index.js"]
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
	-	`sha256:fc45e3e49d66b9ec9ad15447ea4578aca711cee3fe5097b2af09b5e4e38911fe`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 MB (1247949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd4bc038c42038b915b1b55440b769939223c70b43258e7e7656c5636ca1feb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3ff8ed963a0ec02b2867aa94ee6586aa2909e9ec33d8fec843124c783dae67`  
		Last Modified: Wed, 23 Sep 2026 22:10:42 GMT  
		Size: 80.9 MB (80878190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e5e06bd12c50705d4441723ce2537781d40db0872f608ddc60a3d936a15ffb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b1afc31d869c4d6fd146d243e547c34deaeab0b84e53c66b26e78b4dd68047`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ba6edac1a4f79d4778958a9e02a3bab0aaa0a8cddb5b33ee9ef5b9f6d4d351`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:bc397c5ab2bc92b116ea39a4e58b24840ea1c2081ed93d7d1bc1ca7043144a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f733d7d2119a3249f745ddb15bb0d289fbfa805c7c6b5256d82de837b0d8be`

```dockerfile
```

-	Layers:
	-	`sha256:ba81c7d95e1c4e1b79d7d65d23e78c0e81173430d1427d888717f0ce0e38c0f3`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 4.3 MB (4344273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f30c06784b6f9af02a7f30340c723d2b071204abeac84cb6ba2de08c68f8702a`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.65.0-next-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:76a6011b55e8dafc14ea7da6256c21520079b560dab206eb3143a6de5353dd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161166300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a779567f74dbe5cd7c56a2a9b8dce1ab486a54f0b829a0ca8093e1a3c227df5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:08 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:08 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:08 GMT
CMD ["node" "index.js"]
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
	-	`sha256:e26015d51b13b326496237fd35a1e6b1984aa2accb6fbfeb9d9e792b5b6d1dba`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 MB (1201947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89883a68da8b4be9ef3f1c06471d562c20c2dba7508f484eb4d52a4f706bd38f`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a366d36cf4d897a7217e2b4d493cb77a72ca5fa896db93b7d70df5f307e566e`  
		Last Modified: Wed, 23 Sep 2026 22:09:36 GMT  
		Size: 80.2 MB (80156776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553f39e6c1d0dce712398e1cb145980e22471fed84914fae9ebd58a574039e3`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da4b5dc50ac59a5241d4d5a6540c2ce66a5eef2fe9e2cb7fcf47e9d997d11f`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3343f3549a8f3ecbdbd96d9d1a0ac6e24b96ba5cf50ebc8c3793cbc90f46c52`  
		Last Modified: Wed, 23 Sep 2026 22:09:35 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.65.0-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:8181aaf0cc3f7eb711ddbe27ed5dcea3a87c6873c9aaf4b4c94548765404951b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5fd007b7d0f18ea89aeae950b9125a6dfd52fe7d01673a2fc592380da43e3f8`

```dockerfile
```

-	Layers:
	-	`sha256:ff965400b87b6267c173b8d70ac7e07bc73599be795f0dc069752ce0a3d21987`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 4.3 MB (4343813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4642ff4cb15ce72f31803fd23da426b172d70fc29f9e60b281cf1a441d8487d`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 37.2 KB (37204 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:alpine`

```console
$ docker pull ghost@sha256:fea3264f902e656833a84656ac6e81a6ef644f87aa0940aa636d4300de62196e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:ff7bcb7add7f96a510fa18168730e9a7b3129667fbf11b813b131217f5bb5add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212263259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85e30bdcec7a7977c740effaac35434c9430c57a93ffeaae1a8dcbee3d3b3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:56 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:09:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:21 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:09:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:09:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:21 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f820efa367a404f3fb8e8c584e3ba11686cec3b1832db4367ddbd633e7d99564`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 821.7 KB (821729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79815caabd6c60c5a002785ecf59600e52e3fb5af6a050811ab2f30bc0b95ca`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 904.5 KB (904462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a631bb8d813d46ad4579dd5a36a5c560699ca60c780379419c372713d8ac2f2`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 9.4 MB (9391404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09372c2cdbbd5ec753eee21e9f16fe6f72c67cc0597637dfb3a7994772bccb8e`  
		Last Modified: Wed, 23 Sep 2026 22:10:00 GMT  
		Size: 140.6 MB (140588659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5755e08086dc7769c7067bdf08066d0766c77edff91aee627eba2344e132c6be`  
		Last Modified: Wed, 23 Sep 2026 22:09:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:bc0b81c80c0429ee56d80fce207993f24cad87135e2bfb3c4cfb6e498400ceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd548c22f751570ca7b0b6ded63bd28e8c2d03afaa17b407b8fc08d2f7831f5`

```dockerfile
```

-	Layers:
	-	`sha256:e21d1b9099dcaf3a0b536196cc4c1c3664a448e7d9b7ae9acd8232a8171d4193`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 2.4 MB (2370498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e60a280abc0f851a4f27b3b380edc9966e656524cd890214450690a7456490c`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 33.1 KB (33133 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:46b8712c4cc873baaf2ce2c9e84878816d8ae6c06612fe4a4a6c7a9b5b43f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212266470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ddcfbd90cb85f2906ef480c2f10eaf70a2bf45c5d52d287a48a9825b47881b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:08:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:08:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:08:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:08:56 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:08:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cd7f453478459d64d82b5d2ed06642752b83039e8d032ec0c6cf5621556732`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 891.2 KB (891168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b8e0aa1355eda05aa2e82a254f7727e81f6af2c493b5ab2385a632770450b7`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 859.9 KB (859907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167582bfdd0b3866dc761fc71b951a277e76890d9e23955609ca60f34cc3df55`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 9.4 MB (9391676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc20ab603b71fdb062d76c6622ac50d0bb975ee75979ccfb6ff70bcf165e65c5`  
		Last Modified: Wed, 23 Sep 2026 22:09:44 GMT  
		Size: 140.2 MB (140218070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba895ffecdd38f4c9481d4ac28c56f2c868af3133e3090c4d0d108e2f6c5e41`  
		Last Modified: Wed, 23 Sep 2026 22:09:42 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:313991a2757d6a4ca6f0743126f47a58684595199244a0fae74e7db71dca2361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9a785d3d79e6c215c64d26a5388cf35a5371161900cc992044bdb2b108df`

```dockerfile
```

-	Layers:
	-	`sha256:cfd38c887ad46ea9651ffc1133460e9d8907f6731a04e480bebfeb49449c4e57`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 2.4 MB (2368935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a49dd3795fb35fac08a7283b861cf7930fb285652a7aa536d2ba57a43b502e8c`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 33.3 KB (33331 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:alpine3.23`

```console
$ docker pull ghost@sha256:fea3264f902e656833a84656ac6e81a6ef644f87aa0940aa636d4300de62196e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:ff7bcb7add7f96a510fa18168730e9a7b3129667fbf11b813b131217f5bb5add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212263259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85e30bdcec7a7977c740effaac35434c9430c57a93ffeaae1a8dcbee3d3b3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:56 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:58 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:58 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:09:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:09:04 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:21 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:09:21 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:09:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:21 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:21 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f820efa367a404f3fb8e8c584e3ba11686cec3b1832db4367ddbd633e7d99564`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 821.7 KB (821729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79815caabd6c60c5a002785ecf59600e52e3fb5af6a050811ab2f30bc0b95ca`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 904.5 KB (904462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a631bb8d813d46ad4579dd5a36a5c560699ca60c780379419c372713d8ac2f2`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 9.4 MB (9391404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09372c2cdbbd5ec753eee21e9f16fe6f72c67cc0597637dfb3a7994772bccb8e`  
		Last Modified: Wed, 23 Sep 2026 22:10:00 GMT  
		Size: 140.6 MB (140588659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5755e08086dc7769c7067bdf08066d0766c77edff91aee627eba2344e132c6be`  
		Last Modified: Wed, 23 Sep 2026 22:09:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:bc0b81c80c0429ee56d80fce207993f24cad87135e2bfb3c4cfb6e498400ceb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd548c22f751570ca7b0b6ded63bd28e8c2d03afaa17b407b8fc08d2f7831f5`

```dockerfile
```

-	Layers:
	-	`sha256:e21d1b9099dcaf3a0b536196cc4c1c3664a448e7d9b7ae9acd8232a8171d4193`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 2.4 MB (2370498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e60a280abc0f851a4f27b3b380edc9966e656524cd890214450690a7456490c`  
		Last Modified: Wed, 23 Sep 2026 22:09:57 GMT  
		Size: 33.1 KB (33133 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:46b8712c4cc873baaf2ce2c9e84878816d8ae6c06612fe4a4a6c7a9b5b43f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212266470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ddcfbd90cb85f2906ef480c2f10eaf70a2bf45c5d52d287a48a9825b47881b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:08:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:29 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Wed, 23 Sep 2026 22:08:29 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 23 Sep 2026 22:08:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.27.1'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 23 Sep 2026 22:08:36 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
WORKDIR /var/lib/ghost
# Wed, 23 Sep 2026 22:08:56 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 23 Sep 2026 22:08:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:08:56 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:08:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cd7f453478459d64d82b5d2ed06642752b83039e8d032ec0c6cf5621556732`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 891.2 KB (891168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b8e0aa1355eda05aa2e82a254f7727e81f6af2c493b5ab2385a632770450b7`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 859.9 KB (859907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167582bfdd0b3866dc761fc71b951a277e76890d9e23955609ca60f34cc3df55`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 9.4 MB (9391676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc20ab603b71fdb062d76c6622ac50d0bb975ee75979ccfb6ff70bcf165e65c5`  
		Last Modified: Wed, 23 Sep 2026 22:09:44 GMT  
		Size: 140.2 MB (140218070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba895ffecdd38f4c9481d4ac28c56f2c868af3133e3090c4d0d108e2f6c5e41`  
		Last Modified: Wed, 23 Sep 2026 22:09:42 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:313991a2757d6a4ca6f0743126f47a58684595199244a0fae74e7db71dca2361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9a785d3d79e6c215c64d26a5388cf35a5371161900cc992044bdb2b108df`

```dockerfile
```

-	Layers:
	-	`sha256:cfd38c887ad46ea9651ffc1133460e9d8907f6731a04e480bebfeb49449c4e57`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 2.4 MB (2368935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a49dd3795fb35fac08a7283b861cf7930fb285652a7aa536d2ba57a43b502e8c`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 33.3 KB (33331 bytes)  
		MIME: application/vnd.in-toto+json

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

## `ghost:latest`

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

### `ghost:latest` - linux; amd64

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

### `ghost:latest` - unknown; unknown

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

### `ghost:latest` - linux; arm variant v7

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

### `ghost:latest` - unknown; unknown

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

### `ghost:latest` - linux; arm64 variant v8

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

### `ghost:latest` - unknown; unknown

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

## `ghost:next`

```console
$ docker pull ghost@sha256:3a266e6630b4a9f1caa54a6925c3cf3ea849c3e26f9bee46b64bbdd43a686297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next` - linux; amd64

```console
$ docker pull ghost@sha256:122995518037c1641722a61ae6c3e1aaa1bce40cdfb86633612be8c98adc5690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161921980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9cbf8da9c64c5826073befe7abced300b1ac67253d88cfeeeb0e4467a08520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:19 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:19 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:19 GMT
CMD ["node" "index.js"]
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
	-	`sha256:fc45e3e49d66b9ec9ad15447ea4578aca711cee3fe5097b2af09b5e4e38911fe`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 MB (1247949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd4bc038c42038b915b1b55440b769939223c70b43258e7e7656c5636ca1feb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3ff8ed963a0ec02b2867aa94ee6586aa2909e9ec33d8fec843124c783dae67`  
		Last Modified: Wed, 23 Sep 2026 22:10:42 GMT  
		Size: 80.9 MB (80878190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e5e06bd12c50705d4441723ce2537781d40db0872f608ddc60a3d936a15ffb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b1afc31d869c4d6fd146d243e547c34deaeab0b84e53c66b26e78b4dd68047`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ba6edac1a4f79d4778958a9e02a3bab0aaa0a8cddb5b33ee9ef5b9f6d4d351`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next` - unknown; unknown

```console
$ docker pull ghost@sha256:bc397c5ab2bc92b116ea39a4e58b24840ea1c2081ed93d7d1bc1ca7043144a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f733d7d2119a3249f745ddb15bb0d289fbfa805c7c6b5256d82de837b0d8be`

```dockerfile
```

-	Layers:
	-	`sha256:ba81c7d95e1c4e1b79d7d65d23e78c0e81173430d1427d888717f0ce0e38c0f3`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 4.3 MB (4344273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f30c06784b6f9af02a7f30340c723d2b071204abeac84cb6ba2de08c68f8702a`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:76a6011b55e8dafc14ea7da6256c21520079b560dab206eb3143a6de5353dd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161166300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a779567f74dbe5cd7c56a2a9b8dce1ab486a54f0b829a0ca8093e1a3c227df5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:08 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:08 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:08 GMT
CMD ["node" "index.js"]
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
	-	`sha256:e26015d51b13b326496237fd35a1e6b1984aa2accb6fbfeb9d9e792b5b6d1dba`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 MB (1201947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89883a68da8b4be9ef3f1c06471d562c20c2dba7508f484eb4d52a4f706bd38f`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a366d36cf4d897a7217e2b4d493cb77a72ca5fa896db93b7d70df5f307e566e`  
		Last Modified: Wed, 23 Sep 2026 22:09:36 GMT  
		Size: 80.2 MB (80156776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553f39e6c1d0dce712398e1cb145980e22471fed84914fae9ebd58a574039e3`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da4b5dc50ac59a5241d4d5a6540c2ce66a5eef2fe9e2cb7fcf47e9d997d11f`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3343f3549a8f3ecbdbd96d9d1a0ac6e24b96ba5cf50ebc8c3793cbc90f46c52`  
		Last Modified: Wed, 23 Sep 2026 22:09:35 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next` - unknown; unknown

```console
$ docker pull ghost@sha256:8181aaf0cc3f7eb711ddbe27ed5dcea3a87c6873c9aaf4b4c94548765404951b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5fd007b7d0f18ea89aeae950b9125a6dfd52fe7d01673a2fc592380da43e3f8`

```dockerfile
```

-	Layers:
	-	`sha256:ff965400b87b6267c173b8d70ac7e07bc73599be795f0dc069752ce0a3d21987`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 4.3 MB (4343813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4642ff4cb15ce72f31803fd23da426b172d70fc29f9e60b281cf1a441d8487d`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 37.2 KB (37204 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:next-alpine`

```console
$ docker pull ghost@sha256:b816cfd4d130ddc3dbf35fc97547da2a6f0c0fc59097db6f0000bbb27ed6cec2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:597f0d83bfd72bd94c8cc00184f0af8707be2bd355cf9869d6a6ba97ec967f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139020056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd632c91754ce0383a2f41a1e96705e96d6bb266ee42d6695b57ca1fc8e71c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f43bdcbd541080ad75001af2559bcb1b0467a38f328ddef5213fc09f40bd89`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 902.2 KB (902249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3f45d53155f963dd06d761239cffa84beee791979dd9c6e6da59c28518ed2`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4669110cde81227779e3fb7bebb197f1f74647ed9eff959f474732f04713e47f`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 77.6 MB (77558081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5d801389fd9a3c7c5ae587854852392bccd20e1d0aafa6d341c67722ccf9a9`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413bbf76fb52a17f45039984bdf5bea32198ae4f5cc9e04d3be21253edf34906`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cad21971f22799e6b9f7ab4a0ceff14b7b204fa00b4c15bd00296e152e86f80`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:f6f5d43f5211b13d2a0267e7311b0c0873d152814b5a6158b79e474619a34914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1977848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae397637d2da5f40bd242855370a4678059fe21632671382db4a5acb06c2c86`

```dockerfile
```

-	Layers:
	-	`sha256:9b6010925f39cd4cb35041572eaa4d77e05680286b6dedb31637baca4841d0ad`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 1.9 MB (1944757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb00c9cf65b66cc17eaa8ad2e5c31cbdf74ab5037bad99709770b88ed10ada5`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:bede999fe945271a3a88515d488b1442b7cdb113a636759865df5f600557fb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138897526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3f5f17c9c829b4dc9cd3e9ac766e059b4b301e0115a8478952973f8f86a4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:15 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:15 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c134b2f4e036ad923ae6b8f476cf25833b98a497c5e7be3756dd42eb2b3ee83f`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 855.0 KB (855041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f775951644de68a1d01162f4679c0454adb9e2e6b9f6754ecdd2268eb2e8793`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1fcfa0acb3fad2aad95c757e122ed0e4c8a5dcbab0a42538b6a8443f2ce0b2`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 77.1 MB (77134107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65dad5023e3dc6d58728c014b85e0ac9721617b3f892c076a81282471c8d81ea`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b8540bbac4d79a52cf0cc4d9b057bba1bbfeee3332234127191b68d2a8a7c2`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552f7235953592e7d9bb1716e16285c123a3a4d8c4bce207a50473f6e06f57e1`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:cbccb59775452ba0b03cdd8e10009c6db4b7523ee48726b3954d23b69b537189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1976734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157447ef6731a457862a8b3f2d53c869e6dc0d0b6657a108df52025dbc26a8a1`

```dockerfile
```

-	Layers:
	-	`sha256:21751c1978f1ee81ff9bc9ce69677a0788b0ae7c439a6a18a27e7645ad4c4a1c`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 1.9 MB (1943446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:487fa2f80f4a843fa70d8c1fc7885a614a969623cf3d2d3751b80a0ac73cc2de`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:next-alpine3.23`

```console
$ docker pull ghost@sha256:b816cfd4d130ddc3dbf35fc97547da2a6f0c0fc59097db6f0000bbb27ed6cec2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:597f0d83bfd72bd94c8cc00184f0af8707be2bd355cf9869d6a6ba97ec967f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139020056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd632c91754ce0383a2f41a1e96705e96d6bb266ee42d6695b57ca1fc8e71c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:08:48 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:48 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:48 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:52 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:52 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:10:01 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:01 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8240bb48dec349df9f86aec253112592ddeffb6db6a5dcbf46a7f2e7468b62a`  
		Last Modified: Wed, 23 Sep 2026 21:09:05 GMT  
		Size: 55.4 MB (55445484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70ce933f8766ed47297db70e5183e610a7a8d61d7a0009de7cf827e883956cc`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 1.3 MB (1261992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d359148c86f8d0efbf43318218c74763b6ab9ecb0474d1205dfda4c70518d4d0`  
		Last Modified: Wed, 23 Sep 2026 21:09:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f43bdcbd541080ad75001af2559bcb1b0467a38f328ddef5213fc09f40bd89`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 902.2 KB (902249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3f45d53155f963dd06d761239cffa84beee791979dd9c6e6da59c28518ed2`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4669110cde81227779e3fb7bebb197f1f74647ed9eff959f474732f04713e47f`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 77.6 MB (77558081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5d801389fd9a3c7c5ae587854852392bccd20e1d0aafa6d341c67722ccf9a9`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413bbf76fb52a17f45039984bdf5bea32198ae4f5cc9e04d3be21253edf34906`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cad21971f22799e6b9f7ab4a0ceff14b7b204fa00b4c15bd00296e152e86f80`  
		Last Modified: Wed, 23 Sep 2026 22:10:39 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:f6f5d43f5211b13d2a0267e7311b0c0873d152814b5a6158b79e474619a34914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1977848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae397637d2da5f40bd242855370a4678059fe21632671382db4a5acb06c2c86`

```dockerfile
```

-	Layers:
	-	`sha256:9b6010925f39cd4cb35041572eaa4d77e05680286b6dedb31637baca4841d0ad`  
		Last Modified: Wed, 23 Sep 2026 22:10:38 GMT  
		Size: 1.9 MB (1944757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb00c9cf65b66cc17eaa8ad2e5c31cbdf74ab5037bad99709770b88ed10ada5`  
		Last Modified: Wed, 23 Sep 2026 22:10:37 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:bede999fe945271a3a88515d488b1442b7cdb113a636759865df5f600557fb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138897526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3f5f17c9c829b4dc9cd3e9ac766e059b4b301e0115a8478952973f8f86a4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 21:40:33 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:40:33 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="9b177f0c140a82a3d247e8f54586a65dbdf91e5e3a01f04708dabfdc9e0e01c4" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:33 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:40:38 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:40:38 GMT
CMD ["node"]
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 23 Sep 2026 22:09:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:09:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:15 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:15 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:16 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:16 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:16 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e81ca35cf2666857b0cc88774bcdd82f4fb8f2a3acd9a658b2f25d68ec8d4e`  
		Last Modified: Wed, 23 Sep 2026 21:40:55 GMT  
		Size: 55.5 MB (55455691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5317b758bf55618c74f9e1714d7413aab693999ba33f6d91c05135f9a49de1`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 1.3 MB (1262887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c0ca6bfd7d4ff7b4520535fe7f3363a95b75a25eb04eeea6fe4261335131f8`  
		Last Modified: Wed, 23 Sep 2026 21:40:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c134b2f4e036ad923ae6b8f476cf25833b98a497c5e7be3756dd42eb2b3ee83f`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 855.0 KB (855041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f775951644de68a1d01162f4679c0454adb9e2e6b9f6754ecdd2268eb2e8793`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1fcfa0acb3fad2aad95c757e122ed0e4c8a5dcbab0a42538b6a8443f2ce0b2`  
		Last Modified: Wed, 23 Sep 2026 22:09:41 GMT  
		Size: 77.1 MB (77134107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65dad5023e3dc6d58728c014b85e0ac9721617b3f892c076a81282471c8d81ea`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b8540bbac4d79a52cf0cc4d9b057bba1bbfeee3332234127191b68d2a8a7c2`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552f7235953592e7d9bb1716e16285c123a3a4d8c4bce207a50473f6e06f57e1`  
		Last Modified: Wed, 23 Sep 2026 22:09:40 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:cbccb59775452ba0b03cdd8e10009c6db4b7523ee48726b3954d23b69b537189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1976734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157447ef6731a457862a8b3f2d53c869e6dc0d0b6657a108df52025dbc26a8a1`

```dockerfile
```

-	Layers:
	-	`sha256:21751c1978f1ee81ff9bc9ce69677a0788b0ae7c439a6a18a27e7645ad4c4a1c`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 1.9 MB (1943446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:487fa2f80f4a843fa70d8c1fc7885a614a969623cf3d2d3751b80a0ac73cc2de`  
		Last Modified: Wed, 23 Sep 2026 22:09:39 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:next-bookworm`

```console
$ docker pull ghost@sha256:3a266e6630b4a9f1caa54a6925c3cf3ea849c3e26f9bee46b64bbdd43a686297
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:122995518037c1641722a61ae6c3e1aaa1bce40cdfb86633612be8c98adc5690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161921980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9cbf8da9c64c5826073befe7abced300b1ac67253d88cfeeeb0e4467a08520`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:10:00 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:10:00 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:10:19 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:10:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:10:19 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:10:19 GMT
CMD ["node" "index.js"]
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
	-	`sha256:fc45e3e49d66b9ec9ad15447ea4578aca711cee3fe5097b2af09b5e4e38911fe`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 MB (1247949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd4bc038c42038b915b1b55440b769939223c70b43258e7e7656c5636ca1feb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3ff8ed963a0ec02b2867aa94ee6586aa2909e9ec33d8fec843124c783dae67`  
		Last Modified: Wed, 23 Sep 2026 22:10:42 GMT  
		Size: 80.9 MB (80878190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e5e06bd12c50705d4441723ce2537781d40db0872f608ddc60a3d936a15ffb`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b1afc31d869c4d6fd146d243e547c34deaeab0b84e53c66b26e78b4dd68047`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ba6edac1a4f79d4778958a9e02a3bab0aaa0a8cddb5b33ee9ef5b9f6d4d351`  
		Last Modified: Wed, 23 Sep 2026 22:10:41 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:bc397c5ab2bc92b116ea39a4e58b24840ea1c2081ed93d7d1bc1ca7043144a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f733d7d2119a3249f745ddb15bb0d289fbfa805c7c6b5256d82de837b0d8be`

```dockerfile
```

-	Layers:
	-	`sha256:ba81c7d95e1c4e1b79d7d65d23e78c0e81173430d1427d888717f0ce0e38c0f3`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 4.3 MB (4344273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f30c06784b6f9af02a7f30340c723d2b071204abeac84cb6ba2de08c68f8702a`  
		Last Modified: Wed, 23 Sep 2026 22:10:40 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:76a6011b55e8dafc14ea7da6256c21520079b560dab206eb3143a6de5353dd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161166300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a779567f74dbe5cd7c56a2a9b8dce1ab486a54f0b829a0ca8093e1a3c227df5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

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
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 23 Sep 2026 22:08:47 GMT
ENV NODE_ENV=production
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_VERSION=6.65.0
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.65.0/ghost-6.65.0.tgz
# Wed, 23 Sep 2026 22:08:47 GMT
ENV GHOST_SHA256=13318d07a2c44a1ab96fb49bfb45855f53028ff7fbee6428d050ba73fa72b9e4
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
WORKDIR /home/ghost
# Wed, 23 Sep 2026 22:09:08 GMT
VOLUME [/home/ghost/content]
# Wed, 23 Sep 2026 22:09:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 22:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 22:09:08 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 23 Sep 2026 22:09:08 GMT
CMD ["node" "index.js"]
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
	-	`sha256:e26015d51b13b326496237fd35a1e6b1984aa2accb6fbfeb9d9e792b5b6d1dba`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 MB (1201947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89883a68da8b4be9ef3f1c06471d562c20c2dba7508f484eb4d52a4f706bd38f`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a366d36cf4d897a7217e2b4d493cb77a72ca5fa896db93b7d70df5f307e566e`  
		Last Modified: Wed, 23 Sep 2026 22:09:36 GMT  
		Size: 80.2 MB (80156776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553f39e6c1d0dce712398e1cb145980e22471fed84914fae9ebd58a574039e3`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da4b5dc50ac59a5241d4d5a6540c2ce66a5eef2fe9e2cb7fcf47e9d997d11f`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3343f3549a8f3ecbdbd96d9d1a0ac6e24b96ba5cf50ebc8c3793cbc90f46c52`  
		Last Modified: Wed, 23 Sep 2026 22:09:35 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:8181aaf0cc3f7eb711ddbe27ed5dcea3a87c6873c9aaf4b4c94548765404951b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5fd007b7d0f18ea89aeae950b9125a6dfd52fe7d01673a2fc592380da43e3f8`

```dockerfile
```

-	Layers:
	-	`sha256:ff965400b87b6267c173b8d70ac7e07bc73599be795f0dc069752ce0a3d21987`  
		Last Modified: Wed, 23 Sep 2026 22:09:34 GMT  
		Size: 4.3 MB (4343813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4642ff4cb15ce72f31803fd23da426b172d70fc29f9e60b281cf1a441d8487d`  
		Last Modified: Wed, 23 Sep 2026 22:09:33 GMT  
		Size: 37.2 KB (37204 bytes)  
		MIME: application/vnd.in-toto+json
