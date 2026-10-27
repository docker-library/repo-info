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
-	[`ghost:6.73`](#ghost673)
-	[`ghost:6.73-alpine`](#ghost673-alpine)
-	[`ghost:6.73-alpine3.23`](#ghost673-alpine323)
-	[`ghost:6.73-bookworm`](#ghost673-bookworm)
-	[`ghost:6.73-next`](#ghost673-next)
-	[`ghost:6.73-next-alpine`](#ghost673-next-alpine)
-	[`ghost:6.73-next-alpine3.23`](#ghost673-next-alpine323)
-	[`ghost:6.73-next-bookworm`](#ghost673-next-bookworm)
-	[`ghost:6.73.0`](#ghost6730)
-	[`ghost:6.73.0-alpine`](#ghost6730-alpine)
-	[`ghost:6.73.0-alpine3.23`](#ghost6730-alpine323)
-	[`ghost:6.73.0-bookworm`](#ghost6730-bookworm)
-	[`ghost:6.73.0-next`](#ghost6730-next)
-	[`ghost:6.73.0-next-alpine`](#ghost6730-next-alpine)
-	[`ghost:6.73.0-next-alpine3.23`](#ghost6730-next-alpine323)
-	[`ghost:6.73.0-next-bookworm`](#ghost6730-next-bookworm)
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
$ docker pull ghost@sha256:b5cf53a4fb7c5f8e7935b3dd921ee28fdb140a6b7a73b05c6c0851c19311fde5
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
$ docker pull ghost@sha256:8e966fa984e3701381ea9fc5c47d22ced4640201c4e54bc84120998de5aa7156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219153676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0934bcb48dee15083c655289f242f7b4d4f4ef6f7f8b836c19a308fee943da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:47 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:29:29 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:29 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:29 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:71dd6aed19cb709e50c3cf31da765757e5300eb05b864d2c30295c3cc7bf6bfa`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 1.2 MB (1247978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a8b83e6be86a1cd5ba8bfd3e1175f269b40e7b2c5e793e8e11f4e1faa82df4`  
		Last Modified: Tue, 27 Oct 2026 17:30:04 GMT  
		Size: 9.9 MB (9894570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b553f82374320d6d3a0c309442d34fd102cf4395d499d83caf11efaf68a28cb`  
		Last Modified: Tue, 27 Oct 2026 17:30:06 GMT  
		Size: 128.2 MB (128160201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f463fe64193a48765ae99dfee8de53bc2185d319d27c49be0c0581dc582d82`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:65d194ca0528882cda47aa9656fdb40b94c4650a9e07c1ea40ec08b5d23d84ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f955a8e15c9c46663e7e958c677eb33bbbcf5ec5c62737ffa0817fe2d8406837`

```dockerfile
```

-	Layers:
	-	`sha256:ee91873e453773205c49be15f4860a8822039cdee005e4e7b45ab6f3451adae0`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 4.4 MB (4360001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7802f7a789a3c88e5e1ea69566737912511cfefbeb5682259ca0b4a41d8f72b`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 34.7 KB (34684 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:c28b19a3f84bafe6b125493d27b1fcf4ef31b06938a78d100480c2c233b64b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217809342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df80e7bcb2717982c8a013316db2866380231cad5f4b6f0d4c415e070c65550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:36:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 11:36:49 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 11:37:06 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:37:06 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:23:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:23:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:24:56 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:24:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:24:56 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:24:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8ba6cde5d83686d00cecf9a072a448a30e268f966f682507943bcd43732a57`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019ba60a9d86f483141d06eec4df1fb88c3f19656fb26c022a6f9a691260ef4a`  
		Last Modified: Wed, 21 Oct 2026 11:37:20 GMT  
		Size: 44.6 MB (44578296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c5a94d6a730e100fe8771793fd00737ea19c75a558aa9b96c1d6da23eb8b5a`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 1.7 MB (1713192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68021e6a227938b52d10a4b67b5f17e8b880dd0bf3525158a31c143b13320909`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fe8cd29a4237730cca3905b630e4875a9d3d59ec481bb604213b5eca699c8e`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 1.2 MB (1214888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59003fcfc140879cb00fa9d2c2b45e8b2221b842276824beff1e1095b6b24c`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 16.7 MB (16715819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8659c6b092670ce3fa3949e07ca35e2280d2206eb4613c50658fe7e6b7dc823`  
		Last Modified: Tue, 27 Oct 2026 17:25:43 GMT  
		Size: 129.6 MB (129621327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c6817463477ee764f6c82f82f4a2480dd36b6057271ebfa37dc8ec8ee575b4`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:beba8b846d37c5e2b2dc36954c3a0a9067076e8a7eb9b6ed6863d4eb6aa69811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4429479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826855a6d4f21150a39cd26545c37f04d9bcb8eef25550843ad708388f9d0cf`

```dockerfile
```

-	Layers:
	-	`sha256:f4b3894715c1b0fd9ab4cc67b9fe8a0906ccd4667e99c10849eaa7f0284fdb29`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 4.4 MB (4394654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f24188ce7b1c4e39849fd0ca3d3e71e068e76be8fda2d229e4b6cb81a15541`  
		Last Modified: Tue, 27 Oct 2026 17:25:39 GMT  
		Size: 34.8 KB (34825 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:461ebca028763b3498b10d5c9d5b37edbf5e5e40796e588ed52bb66bd71baad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218548212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd125fdc5c3b0616d57e59afe9599acfe035745071ca131877026835f096d72d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:25:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:34 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:35 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:35 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:fc5f72fed28fb6bf0237b27d0a6183ed55cc18c9e8c63a8abf03c6f1f1a37019`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 1.2 MB (1202055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849240bbbe53871c14950bf67f22549061bab86461d3f88f5f3c0cd652d5a5da`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 9.9 MB (9895166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfb06f893b5756ee17a005b863d07fde97c72d3aaaa2ff48c65de8e3495eacf`  
		Last Modified: Tue, 27 Oct 2026 17:26:21 GMT  
		Size: 127.6 MB (127572497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9362ae97771e4460352b86a9b09eb32c7cb66a5f256ffe9991c74c5fd52832fb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:6f874e5fa5480c3fb698f200524262e25bcf73736062a80b0c4c377a9bc23296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0822996f4d86d29ebcd52c5c91143390bb40257b581f4613f1fef209719eabfd`

```dockerfile
```

-	Layers:
	-	`sha256:a86b73eacad34705ac735d7f632f2aeea161752a2199a79072ad2b4308818bdb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 4.4 MB (4359283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cc34991645521a75d55a7315d24f645e236e64aad7f56216ed2c17e5de37c7`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 34.9 KB (34864 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-alpine`

```console
$ docker pull ghost@sha256:4195f6c405e40230cd10c0770425cf500c1f542a96e9f6584c11649c150e5a89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:55ae0a036e785c662c7197b830058b246a11624b7041438e32dbab610be45a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200757238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46dbe010f669e0c34a4b8d014b2b020bd2415096e457de02c92c6e3d4af5bc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:59 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:00 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:00 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2343cc7c855917df5f95723bfd7d6920914f63faca61f1e2e34bdef822102312`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 822.2 KB (822226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657c7726dcd2a164344adf544e5bd4ca4fe74a277785e83d6cbba2ea6d44ea48`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 904.1 KB (904089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2eef3feeb8462e64e5e562202f8c8ff68d3c8116f7f9dd3af37c06b5ff1786`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 9.4 MB (9442507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa28cfc36cd5912134ea129b79774d8d0f6aebd9650ade29282ecbff496890`  
		Last Modified: Tue, 27 Oct 2026 17:29:36 GMT  
		Size: 128.4 MB (128392147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da6ada7251e2e016fd4fc91aea8fdc44f5898b302287c5fe4790dbf85fc1f11`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:4f9fb90bd4ed441d19d1292380e68f2e745a0ce7eae9429b9bba1305cfa5c5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36345dd9e1d7e24671187973a7f325ec0487c9307e215294c3920c79d134032e`

```dockerfile
```

-	Layers:
	-	`sha256:5870ecf5e79dfcf0267f4e087a2ee07ca0780d4a0f3f51b66794bde6337eda70`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 2.1 MB (2149907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e14c3b49556e0bfbc72d86c770db5177d9a629eeb1b60750e1070a995818d88`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:73f90e713efd3529b55c6a49df386ac193e8f9ba3fbbbc92e1070f4a2e8d06bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200181248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e45d032f0e97a5e4739f4f5ef7fbb7bc1ed8618edde5d18ba684fe874bf4904`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:45 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:10 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5787b4ce446ba891bfc004ebd37f6d9fa57c9d2302a98f76a7affead88ae1581`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 891.2 KB (891210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365840cb6a969133cd074af1da0ede172ff6efd550a74d9e4b99710d6ccc0ce`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 857.7 KB (857687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c4d9de8c1d9e83ea1001bafb533c3420017aba44427aac34f9b6de9c1c5ace`  
		Last Modified: Tue, 27 Oct 2026 17:25:52 GMT  
		Size: 9.4 MB (9442783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5800f866139d86165cca9854450db63b3b98e9b014c8a2a5f24bbd7a3267e4c1`  
		Last Modified: Tue, 27 Oct 2026 17:25:54 GMT  
		Size: 128.0 MB (127994764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db511578e5f09249af16c9d72cd359591ac149f654f442ed0267ffe088c9fa9`  
		Last Modified: Tue, 27 Oct 2026 17:25:53 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:975dd07e11e3a24c8898c2703cd3895a28c253e4349b4a714329f81a34ba783a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ebf6f07f368a3c88b019e39199f72f13b7ad375b9eb8d4149b19368bcccaf7`

```dockerfile
```

-	Layers:
	-	`sha256:6c31e980d4b087c9944d45d92b43984cab48c4abf7175b48de726a7c833d444b`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 2.1 MB (2148344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6279e9d1d393f1c16e991d35c7bb35cc3a4ad5b1fc5de2ab47707932901b7b8c`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 34.1 KB (34105 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-alpine3.23`

```console
$ docker pull ghost@sha256:4195f6c405e40230cd10c0770425cf500c1f542a96e9f6584c11649c150e5a89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:55ae0a036e785c662c7197b830058b246a11624b7041438e32dbab610be45a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200757238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46dbe010f669e0c34a4b8d014b2b020bd2415096e457de02c92c6e3d4af5bc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:59 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:00 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:00 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2343cc7c855917df5f95723bfd7d6920914f63faca61f1e2e34bdef822102312`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 822.2 KB (822226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657c7726dcd2a164344adf544e5bd4ca4fe74a277785e83d6cbba2ea6d44ea48`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 904.1 KB (904089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2eef3feeb8462e64e5e562202f8c8ff68d3c8116f7f9dd3af37c06b5ff1786`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 9.4 MB (9442507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa28cfc36cd5912134ea129b79774d8d0f6aebd9650ade29282ecbff496890`  
		Last Modified: Tue, 27 Oct 2026 17:29:36 GMT  
		Size: 128.4 MB (128392147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da6ada7251e2e016fd4fc91aea8fdc44f5898b302287c5fe4790dbf85fc1f11`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:4f9fb90bd4ed441d19d1292380e68f2e745a0ce7eae9429b9bba1305cfa5c5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36345dd9e1d7e24671187973a7f325ec0487c9307e215294c3920c79d134032e`

```dockerfile
```

-	Layers:
	-	`sha256:5870ecf5e79dfcf0267f4e087a2ee07ca0780d4a0f3f51b66794bde6337eda70`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 2.1 MB (2149907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e14c3b49556e0bfbc72d86c770db5177d9a629eeb1b60750e1070a995818d88`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:73f90e713efd3529b55c6a49df386ac193e8f9ba3fbbbc92e1070f4a2e8d06bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200181248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e45d032f0e97a5e4739f4f5ef7fbb7bc1ed8618edde5d18ba684fe874bf4904`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:45 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:10 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5787b4ce446ba891bfc004ebd37f6d9fa57c9d2302a98f76a7affead88ae1581`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 891.2 KB (891210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365840cb6a969133cd074af1da0ede172ff6efd550a74d9e4b99710d6ccc0ce`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 857.7 KB (857687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c4d9de8c1d9e83ea1001bafb533c3420017aba44427aac34f9b6de9c1c5ace`  
		Last Modified: Tue, 27 Oct 2026 17:25:52 GMT  
		Size: 9.4 MB (9442783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5800f866139d86165cca9854450db63b3b98e9b014c8a2a5f24bbd7a3267e4c1`  
		Last Modified: Tue, 27 Oct 2026 17:25:54 GMT  
		Size: 128.0 MB (127994764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db511578e5f09249af16c9d72cd359591ac149f654f442ed0267ffe088c9fa9`  
		Last Modified: Tue, 27 Oct 2026 17:25:53 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:975dd07e11e3a24c8898c2703cd3895a28c253e4349b4a714329f81a34ba783a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ebf6f07f368a3c88b019e39199f72f13b7ad375b9eb8d4149b19368bcccaf7`

```dockerfile
```

-	Layers:
	-	`sha256:6c31e980d4b087c9944d45d92b43984cab48c4abf7175b48de726a7c833d444b`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 2.1 MB (2148344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6279e9d1d393f1c16e991d35c7bb35cc3a4ad5b1fc5de2ab47707932901b7b8c`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 34.1 KB (34105 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-bookworm`

```console
$ docker pull ghost@sha256:b5cf53a4fb7c5f8e7935b3dd921ee28fdb140a6b7a73b05c6c0851c19311fde5
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
$ docker pull ghost@sha256:8e966fa984e3701381ea9fc5c47d22ced4640201c4e54bc84120998de5aa7156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219153676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0934bcb48dee15083c655289f242f7b4d4f4ef6f7f8b836c19a308fee943da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:47 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:29:29 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:29 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:29 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:71dd6aed19cb709e50c3cf31da765757e5300eb05b864d2c30295c3cc7bf6bfa`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 1.2 MB (1247978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a8b83e6be86a1cd5ba8bfd3e1175f269b40e7b2c5e793e8e11f4e1faa82df4`  
		Last Modified: Tue, 27 Oct 2026 17:30:04 GMT  
		Size: 9.9 MB (9894570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b553f82374320d6d3a0c309442d34fd102cf4395d499d83caf11efaf68a28cb`  
		Last Modified: Tue, 27 Oct 2026 17:30:06 GMT  
		Size: 128.2 MB (128160201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f463fe64193a48765ae99dfee8de53bc2185d319d27c49be0c0581dc582d82`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:65d194ca0528882cda47aa9656fdb40b94c4650a9e07c1ea40ec08b5d23d84ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f955a8e15c9c46663e7e958c677eb33bbbcf5ec5c62737ffa0817fe2d8406837`

```dockerfile
```

-	Layers:
	-	`sha256:ee91873e453773205c49be15f4860a8822039cdee005e4e7b45ab6f3451adae0`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 4.4 MB (4360001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7802f7a789a3c88e5e1ea69566737912511cfefbeb5682259ca0b4a41d8f72b`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 34.7 KB (34684 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:c28b19a3f84bafe6b125493d27b1fcf4ef31b06938a78d100480c2c233b64b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217809342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df80e7bcb2717982c8a013316db2866380231cad5f4b6f0d4c415e070c65550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:36:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 11:36:49 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 11:37:06 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:37:06 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:23:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:23:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:24:56 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:24:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:24:56 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:24:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8ba6cde5d83686d00cecf9a072a448a30e268f966f682507943bcd43732a57`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019ba60a9d86f483141d06eec4df1fb88c3f19656fb26c022a6f9a691260ef4a`  
		Last Modified: Wed, 21 Oct 2026 11:37:20 GMT  
		Size: 44.6 MB (44578296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c5a94d6a730e100fe8771793fd00737ea19c75a558aa9b96c1d6da23eb8b5a`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 1.7 MB (1713192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68021e6a227938b52d10a4b67b5f17e8b880dd0bf3525158a31c143b13320909`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fe8cd29a4237730cca3905b630e4875a9d3d59ec481bb604213b5eca699c8e`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 1.2 MB (1214888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59003fcfc140879cb00fa9d2c2b45e8b2221b842276824beff1e1095b6b24c`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 16.7 MB (16715819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8659c6b092670ce3fa3949e07ca35e2280d2206eb4613c50658fe7e6b7dc823`  
		Last Modified: Tue, 27 Oct 2026 17:25:43 GMT  
		Size: 129.6 MB (129621327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c6817463477ee764f6c82f82f4a2480dd36b6057271ebfa37dc8ec8ee575b4`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:beba8b846d37c5e2b2dc36954c3a0a9067076e8a7eb9b6ed6863d4eb6aa69811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4429479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826855a6d4f21150a39cd26545c37f04d9bcb8eef25550843ad708388f9d0cf`

```dockerfile
```

-	Layers:
	-	`sha256:f4b3894715c1b0fd9ab4cc67b9fe8a0906ccd4667e99c10849eaa7f0284fdb29`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 4.4 MB (4394654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f24188ce7b1c4e39849fd0ca3d3e71e068e76be8fda2d229e4b6cb81a15541`  
		Last Modified: Tue, 27 Oct 2026 17:25:39 GMT  
		Size: 34.8 KB (34825 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:461ebca028763b3498b10d5c9d5b37edbf5e5e40796e588ed52bb66bd71baad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218548212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd125fdc5c3b0616d57e59afe9599acfe035745071ca131877026835f096d72d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:25:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:34 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:35 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:35 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:fc5f72fed28fb6bf0237b27d0a6183ed55cc18c9e8c63a8abf03c6f1f1a37019`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 1.2 MB (1202055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849240bbbe53871c14950bf67f22549061bab86461d3f88f5f3c0cd652d5a5da`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 9.9 MB (9895166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfb06f893b5756ee17a005b863d07fde97c72d3aaaa2ff48c65de8e3495eacf`  
		Last Modified: Tue, 27 Oct 2026 17:26:21 GMT  
		Size: 127.6 MB (127572497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9362ae97771e4460352b86a9b09eb32c7cb66a5f256ffe9991c74c5fd52832fb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:6f874e5fa5480c3fb698f200524262e25bcf73736062a80b0c4c377a9bc23296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0822996f4d86d29ebcd52c5c91143390bb40257b581f4613f1fef209719eabfd`

```dockerfile
```

-	Layers:
	-	`sha256:a86b73eacad34705ac735d7f632f2aeea161752a2199a79072ad2b4308818bdb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 4.4 MB (4359283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cc34991645521a75d55a7315d24f645e236e64aad7f56216ed2c17e5de37c7`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 34.9 KB (34864 bytes)  
		MIME: application/vnd.in-toto+json

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

## `ghost:6-next-alpine`

```console
$ docker pull ghost@sha256:8b80e31f61b1dd3025cfe5240e1f45e4214e98bb2a9fdbd16bd77d12f16b13d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b30e040f96f149336a6c34e44edec36753be2497f4e745fa5a20322e243e7da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129283685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b449e47d40db9f86c15e20fffdadf4aee8f89c30fcf8e7c6a32341739a960f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:28:57 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:28:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:28:57 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:28:57 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b0e7bf4841aee89771c94f2e81421c7336febfa272b00eb34c8e6a0ff66166`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 901.4 KB (901402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffa7ece0d0adca70507590ced2ddd6dea0f5edb2fac6ed104ff732a68a46bc7`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb5102fc57f60bd5bf5b017cf632b0b2b81ac3150f2eab3a769a1985b188da4`  
		Last Modified: Tue, 27 Oct 2026 17:29:18 GMT  
		Size: 67.2 MB (67183267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f085c1a19a363cf80571e1d18d08aa6eaa282ef9ae0521e3f7fa6fa5a9c0089`  
		Last Modified: Tue, 27 Oct 2026 17:29:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b70f06f7ed80d7975380491784126e3dbe3dffeef0119b5e5a30c0a01c0dd9`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a5b5734ce32a58095ddf1f30039eb32680f0653390393d27b11fb24824a622`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:cfb308bd1d6ab1725eb07add308acfdaf1d3d47264fb0b5b638c75d35be1ef04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1764354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b715d4c6de668b7020ee1953da4b77be90e002c1fa03f3647838df3ea5057197`

```dockerfile
```

-	Layers:
	-	`sha256:db6278a391409a419b7da18d53ac96291b5f91fc9052d21c311be2bfcb892c5b`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 1.7 MB (1731263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6204b98e7c0f52a31961fa5b49aa526a5631b483aabcc2215abd48ee1244b1ca`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:eb232b8a04ac4aa6ed27af1a46106c28824fc0a677ec2258284fbbab86c65c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128581345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05685a3d3409785611601373879a5ce36c11a0caaf74826932aaacffd9e3155b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:25:11 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:11 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:11 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535b8c169634748a73dd0e47116ac70613fed6330dd4eb2256193ae998c79e15`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 854.0 KB (854023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbeb4ec927aba5a02c02a7c111d1b129ca26cee6569073f0782164c1e28ceb57`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370dcd1299ce005892397336ec64b376efbf65903b1964c6b2b22a4fbf74eea4`  
		Last Modified: Tue, 27 Oct 2026 17:25:35 GMT  
		Size: 66.7 MB (66729775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391834f46029f06b5c5ba06196492c568ec33fe79140a3fb2c4bfafc8101dc3d`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9a36d8ab2c4a98fc98496f7377347276162930346e2dd27928747293b45947`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d2305141089e7abb42b31465997380d466e0fb2fbf05949a42311122eb4cf7`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:40e61613b1e77792e7f947b6eeb1422b6e3f4331bc93166af0a529af20fa5965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1763240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92abc41e5345a970b3e2d48f65daa333234b2ed44ed02e262281c37bfdce05a7`

```dockerfile
```

-	Layers:
	-	`sha256:9ab7291098db1dce7de7ffdc746bee914c3c5c7da7d76431e885d2a6eed0f533`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 1.7 MB (1729952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8147bcc08b9cbcfdae9af36c9e7f89033498940930354934350cd21377ac5aca`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-next-alpine3.23`

```console
$ docker pull ghost@sha256:8b80e31f61b1dd3025cfe5240e1f45e4214e98bb2a9fdbd16bd77d12f16b13d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:b30e040f96f149336a6c34e44edec36753be2497f4e745fa5a20322e243e7da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129283685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b449e47d40db9f86c15e20fffdadf4aee8f89c30fcf8e7c6a32341739a960f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:28:57 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:28:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:28:57 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:28:57 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b0e7bf4841aee89771c94f2e81421c7336febfa272b00eb34c8e6a0ff66166`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 901.4 KB (901402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffa7ece0d0adca70507590ced2ddd6dea0f5edb2fac6ed104ff732a68a46bc7`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb5102fc57f60bd5bf5b017cf632b0b2b81ac3150f2eab3a769a1985b188da4`  
		Last Modified: Tue, 27 Oct 2026 17:29:18 GMT  
		Size: 67.2 MB (67183267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f085c1a19a363cf80571e1d18d08aa6eaa282ef9ae0521e3f7fa6fa5a9c0089`  
		Last Modified: Tue, 27 Oct 2026 17:29:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b70f06f7ed80d7975380491784126e3dbe3dffeef0119b5e5a30c0a01c0dd9`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a5b5734ce32a58095ddf1f30039eb32680f0653390393d27b11fb24824a622`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:cfb308bd1d6ab1725eb07add308acfdaf1d3d47264fb0b5b638c75d35be1ef04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1764354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b715d4c6de668b7020ee1953da4b77be90e002c1fa03f3647838df3ea5057197`

```dockerfile
```

-	Layers:
	-	`sha256:db6278a391409a419b7da18d53ac96291b5f91fc9052d21c311be2bfcb892c5b`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 1.7 MB (1731263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6204b98e7c0f52a31961fa5b49aa526a5631b483aabcc2215abd48ee1244b1ca`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:eb232b8a04ac4aa6ed27af1a46106c28824fc0a677ec2258284fbbab86c65c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128581345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05685a3d3409785611601373879a5ce36c11a0caaf74826932aaacffd9e3155b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:25:11 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:11 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:11 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535b8c169634748a73dd0e47116ac70613fed6330dd4eb2256193ae998c79e15`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 854.0 KB (854023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbeb4ec927aba5a02c02a7c111d1b129ca26cee6569073f0782164c1e28ceb57`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370dcd1299ce005892397336ec64b376efbf65903b1964c6b2b22a4fbf74eea4`  
		Last Modified: Tue, 27 Oct 2026 17:25:35 GMT  
		Size: 66.7 MB (66729775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391834f46029f06b5c5ba06196492c568ec33fe79140a3fb2c4bfafc8101dc3d`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9a36d8ab2c4a98fc98496f7377347276162930346e2dd27928747293b45947`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d2305141089e7abb42b31465997380d466e0fb2fbf05949a42311122eb4cf7`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:40e61613b1e77792e7f947b6eeb1422b6e3f4331bc93166af0a529af20fa5965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1763240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92abc41e5345a970b3e2d48f65daa333234b2ed44ed02e262281c37bfdce05a7`

```dockerfile
```

-	Layers:
	-	`sha256:9ab7291098db1dce7de7ffdc746bee914c3c5c7da7d76431e885d2a6eed0f533`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 1.7 MB (1729952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8147bcc08b9cbcfdae9af36c9e7f89033498940930354934350cd21377ac5aca`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-next-bookworm`

```console
$ docker pull ghost@sha256:9eef87674f10361302886c94c0164e0d5c6f8978ec6fe330bc5cec683683bd5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-bookworm` - linux; amd64

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

### `ghost:6-next-bookworm` - unknown; unknown

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

### `ghost:6-next-bookworm` - linux; arm64 variant v8

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

### `ghost:6-next-bookworm` - unknown; unknown

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

## `ghost:6.73`

```console
$ docker pull ghost@sha256:b5cf53a4fb7c5f8e7935b3dd921ee28fdb140a6b7a73b05c6c0851c19311fde5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73` - linux; amd64

```console
$ docker pull ghost@sha256:8e966fa984e3701381ea9fc5c47d22ced4640201c4e54bc84120998de5aa7156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219153676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0934bcb48dee15083c655289f242f7b4d4f4ef6f7f8b836c19a308fee943da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:47 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:29:29 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:29 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:29 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:71dd6aed19cb709e50c3cf31da765757e5300eb05b864d2c30295c3cc7bf6bfa`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 1.2 MB (1247978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a8b83e6be86a1cd5ba8bfd3e1175f269b40e7b2c5e793e8e11f4e1faa82df4`  
		Last Modified: Tue, 27 Oct 2026 17:30:04 GMT  
		Size: 9.9 MB (9894570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b553f82374320d6d3a0c309442d34fd102cf4395d499d83caf11efaf68a28cb`  
		Last Modified: Tue, 27 Oct 2026 17:30:06 GMT  
		Size: 128.2 MB (128160201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f463fe64193a48765ae99dfee8de53bc2185d319d27c49be0c0581dc582d82`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73` - unknown; unknown

```console
$ docker pull ghost@sha256:65d194ca0528882cda47aa9656fdb40b94c4650a9e07c1ea40ec08b5d23d84ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f955a8e15c9c46663e7e958c677eb33bbbcf5ec5c62737ffa0817fe2d8406837`

```dockerfile
```

-	Layers:
	-	`sha256:ee91873e453773205c49be15f4860a8822039cdee005e4e7b45ab6f3451adae0`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 4.4 MB (4360001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7802f7a789a3c88e5e1ea69566737912511cfefbeb5682259ca0b4a41d8f72b`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 34.7 KB (34684 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73` - linux; arm variant v7

```console
$ docker pull ghost@sha256:c28b19a3f84bafe6b125493d27b1fcf4ef31b06938a78d100480c2c233b64b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217809342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df80e7bcb2717982c8a013316db2866380231cad5f4b6f0d4c415e070c65550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:36:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 11:36:49 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 11:37:06 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:37:06 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:23:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:23:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:24:56 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:24:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:24:56 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:24:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8ba6cde5d83686d00cecf9a072a448a30e268f966f682507943bcd43732a57`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019ba60a9d86f483141d06eec4df1fb88c3f19656fb26c022a6f9a691260ef4a`  
		Last Modified: Wed, 21 Oct 2026 11:37:20 GMT  
		Size: 44.6 MB (44578296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c5a94d6a730e100fe8771793fd00737ea19c75a558aa9b96c1d6da23eb8b5a`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 1.7 MB (1713192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68021e6a227938b52d10a4b67b5f17e8b880dd0bf3525158a31c143b13320909`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fe8cd29a4237730cca3905b630e4875a9d3d59ec481bb604213b5eca699c8e`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 1.2 MB (1214888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59003fcfc140879cb00fa9d2c2b45e8b2221b842276824beff1e1095b6b24c`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 16.7 MB (16715819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8659c6b092670ce3fa3949e07ca35e2280d2206eb4613c50658fe7e6b7dc823`  
		Last Modified: Tue, 27 Oct 2026 17:25:43 GMT  
		Size: 129.6 MB (129621327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c6817463477ee764f6c82f82f4a2480dd36b6057271ebfa37dc8ec8ee575b4`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73` - unknown; unknown

```console
$ docker pull ghost@sha256:beba8b846d37c5e2b2dc36954c3a0a9067076e8a7eb9b6ed6863d4eb6aa69811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4429479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826855a6d4f21150a39cd26545c37f04d9bcb8eef25550843ad708388f9d0cf`

```dockerfile
```

-	Layers:
	-	`sha256:f4b3894715c1b0fd9ab4cc67b9fe8a0906ccd4667e99c10849eaa7f0284fdb29`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 4.4 MB (4394654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f24188ce7b1c4e39849fd0ca3d3e71e068e76be8fda2d229e4b6cb81a15541`  
		Last Modified: Tue, 27 Oct 2026 17:25:39 GMT  
		Size: 34.8 KB (34825 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:461ebca028763b3498b10d5c9d5b37edbf5e5e40796e588ed52bb66bd71baad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218548212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd125fdc5c3b0616d57e59afe9599acfe035745071ca131877026835f096d72d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:25:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:34 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:35 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:35 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:fc5f72fed28fb6bf0237b27d0a6183ed55cc18c9e8c63a8abf03c6f1f1a37019`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 1.2 MB (1202055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849240bbbe53871c14950bf67f22549061bab86461d3f88f5f3c0cd652d5a5da`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 9.9 MB (9895166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfb06f893b5756ee17a005b863d07fde97c72d3aaaa2ff48c65de8e3495eacf`  
		Last Modified: Tue, 27 Oct 2026 17:26:21 GMT  
		Size: 127.6 MB (127572497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9362ae97771e4460352b86a9b09eb32c7cb66a5f256ffe9991c74c5fd52832fb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73` - unknown; unknown

```console
$ docker pull ghost@sha256:6f874e5fa5480c3fb698f200524262e25bcf73736062a80b0c4c377a9bc23296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0822996f4d86d29ebcd52c5c91143390bb40257b581f4613f1fef209719eabfd`

```dockerfile
```

-	Layers:
	-	`sha256:a86b73eacad34705ac735d7f632f2aeea161752a2199a79072ad2b4308818bdb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 4.4 MB (4359283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cc34991645521a75d55a7315d24f645e236e64aad7f56216ed2c17e5de37c7`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 34.9 KB (34864 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73-alpine`

```console
$ docker pull ghost@sha256:4195f6c405e40230cd10c0770425cf500c1f542a96e9f6584c11649c150e5a89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:55ae0a036e785c662c7197b830058b246a11624b7041438e32dbab610be45a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200757238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46dbe010f669e0c34a4b8d014b2b020bd2415096e457de02c92c6e3d4af5bc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:59 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:00 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:00 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2343cc7c855917df5f95723bfd7d6920914f63faca61f1e2e34bdef822102312`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 822.2 KB (822226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657c7726dcd2a164344adf544e5bd4ca4fe74a277785e83d6cbba2ea6d44ea48`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 904.1 KB (904089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2eef3feeb8462e64e5e562202f8c8ff68d3c8116f7f9dd3af37c06b5ff1786`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 9.4 MB (9442507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa28cfc36cd5912134ea129b79774d8d0f6aebd9650ade29282ecbff496890`  
		Last Modified: Tue, 27 Oct 2026 17:29:36 GMT  
		Size: 128.4 MB (128392147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da6ada7251e2e016fd4fc91aea8fdc44f5898b302287c5fe4790dbf85fc1f11`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:4f9fb90bd4ed441d19d1292380e68f2e745a0ce7eae9429b9bba1305cfa5c5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36345dd9e1d7e24671187973a7f325ec0487c9307e215294c3920c79d134032e`

```dockerfile
```

-	Layers:
	-	`sha256:5870ecf5e79dfcf0267f4e087a2ee07ca0780d4a0f3f51b66794bde6337eda70`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 2.1 MB (2149907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e14c3b49556e0bfbc72d86c770db5177d9a629eeb1b60750e1070a995818d88`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:73f90e713efd3529b55c6a49df386ac193e8f9ba3fbbbc92e1070f4a2e8d06bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200181248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e45d032f0e97a5e4739f4f5ef7fbb7bc1ed8618edde5d18ba684fe874bf4904`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:45 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:10 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5787b4ce446ba891bfc004ebd37f6d9fa57c9d2302a98f76a7affead88ae1581`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 891.2 KB (891210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365840cb6a969133cd074af1da0ede172ff6efd550a74d9e4b99710d6ccc0ce`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 857.7 KB (857687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c4d9de8c1d9e83ea1001bafb533c3420017aba44427aac34f9b6de9c1c5ace`  
		Last Modified: Tue, 27 Oct 2026 17:25:52 GMT  
		Size: 9.4 MB (9442783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5800f866139d86165cca9854450db63b3b98e9b014c8a2a5f24bbd7a3267e4c1`  
		Last Modified: Tue, 27 Oct 2026 17:25:54 GMT  
		Size: 128.0 MB (127994764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db511578e5f09249af16c9d72cd359591ac149f654f442ed0267ffe088c9fa9`  
		Last Modified: Tue, 27 Oct 2026 17:25:53 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:975dd07e11e3a24c8898c2703cd3895a28c253e4349b4a714329f81a34ba783a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ebf6f07f368a3c88b019e39199f72f13b7ad375b9eb8d4149b19368bcccaf7`

```dockerfile
```

-	Layers:
	-	`sha256:6c31e980d4b087c9944d45d92b43984cab48c4abf7175b48de726a7c833d444b`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 2.1 MB (2148344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6279e9d1d393f1c16e991d35c7bb35cc3a4ad5b1fc5de2ab47707932901b7b8c`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 34.1 KB (34105 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73-alpine3.23`

```console
$ docker pull ghost@sha256:4195f6c405e40230cd10c0770425cf500c1f542a96e9f6584c11649c150e5a89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:55ae0a036e785c662c7197b830058b246a11624b7041438e32dbab610be45a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200757238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46dbe010f669e0c34a4b8d014b2b020bd2415096e457de02c92c6e3d4af5bc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:59 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:00 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:00 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2343cc7c855917df5f95723bfd7d6920914f63faca61f1e2e34bdef822102312`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 822.2 KB (822226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657c7726dcd2a164344adf544e5bd4ca4fe74a277785e83d6cbba2ea6d44ea48`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 904.1 KB (904089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2eef3feeb8462e64e5e562202f8c8ff68d3c8116f7f9dd3af37c06b5ff1786`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 9.4 MB (9442507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa28cfc36cd5912134ea129b79774d8d0f6aebd9650ade29282ecbff496890`  
		Last Modified: Tue, 27 Oct 2026 17:29:36 GMT  
		Size: 128.4 MB (128392147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da6ada7251e2e016fd4fc91aea8fdc44f5898b302287c5fe4790dbf85fc1f11`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:4f9fb90bd4ed441d19d1292380e68f2e745a0ce7eae9429b9bba1305cfa5c5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36345dd9e1d7e24671187973a7f325ec0487c9307e215294c3920c79d134032e`

```dockerfile
```

-	Layers:
	-	`sha256:5870ecf5e79dfcf0267f4e087a2ee07ca0780d4a0f3f51b66794bde6337eda70`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 2.1 MB (2149907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e14c3b49556e0bfbc72d86c770db5177d9a629eeb1b60750e1070a995818d88`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:73f90e713efd3529b55c6a49df386ac193e8f9ba3fbbbc92e1070f4a2e8d06bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200181248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e45d032f0e97a5e4739f4f5ef7fbb7bc1ed8618edde5d18ba684fe874bf4904`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:45 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:10 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5787b4ce446ba891bfc004ebd37f6d9fa57c9d2302a98f76a7affead88ae1581`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 891.2 KB (891210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365840cb6a969133cd074af1da0ede172ff6efd550a74d9e4b99710d6ccc0ce`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 857.7 KB (857687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c4d9de8c1d9e83ea1001bafb533c3420017aba44427aac34f9b6de9c1c5ace`  
		Last Modified: Tue, 27 Oct 2026 17:25:52 GMT  
		Size: 9.4 MB (9442783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5800f866139d86165cca9854450db63b3b98e9b014c8a2a5f24bbd7a3267e4c1`  
		Last Modified: Tue, 27 Oct 2026 17:25:54 GMT  
		Size: 128.0 MB (127994764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db511578e5f09249af16c9d72cd359591ac149f654f442ed0267ffe088c9fa9`  
		Last Modified: Tue, 27 Oct 2026 17:25:53 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:975dd07e11e3a24c8898c2703cd3895a28c253e4349b4a714329f81a34ba783a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ebf6f07f368a3c88b019e39199f72f13b7ad375b9eb8d4149b19368bcccaf7`

```dockerfile
```

-	Layers:
	-	`sha256:6c31e980d4b087c9944d45d92b43984cab48c4abf7175b48de726a7c833d444b`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 2.1 MB (2148344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6279e9d1d393f1c16e991d35c7bb35cc3a4ad5b1fc5de2ab47707932901b7b8c`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 34.1 KB (34105 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73-bookworm`

```console
$ docker pull ghost@sha256:b5cf53a4fb7c5f8e7935b3dd921ee28fdb140a6b7a73b05c6c0851c19311fde5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:8e966fa984e3701381ea9fc5c47d22ced4640201c4e54bc84120998de5aa7156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219153676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0934bcb48dee15083c655289f242f7b4d4f4ef6f7f8b836c19a308fee943da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:47 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:29:29 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:29 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:29 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:71dd6aed19cb709e50c3cf31da765757e5300eb05b864d2c30295c3cc7bf6bfa`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 1.2 MB (1247978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a8b83e6be86a1cd5ba8bfd3e1175f269b40e7b2c5e793e8e11f4e1faa82df4`  
		Last Modified: Tue, 27 Oct 2026 17:30:04 GMT  
		Size: 9.9 MB (9894570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b553f82374320d6d3a0c309442d34fd102cf4395d499d83caf11efaf68a28cb`  
		Last Modified: Tue, 27 Oct 2026 17:30:06 GMT  
		Size: 128.2 MB (128160201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f463fe64193a48765ae99dfee8de53bc2185d319d27c49be0c0581dc582d82`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:65d194ca0528882cda47aa9656fdb40b94c4650a9e07c1ea40ec08b5d23d84ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f955a8e15c9c46663e7e958c677eb33bbbcf5ec5c62737ffa0817fe2d8406837`

```dockerfile
```

-	Layers:
	-	`sha256:ee91873e453773205c49be15f4860a8822039cdee005e4e7b45ab6f3451adae0`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 4.4 MB (4360001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7802f7a789a3c88e5e1ea69566737912511cfefbeb5682259ca0b4a41d8f72b`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 34.7 KB (34684 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:c28b19a3f84bafe6b125493d27b1fcf4ef31b06938a78d100480c2c233b64b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217809342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df80e7bcb2717982c8a013316db2866380231cad5f4b6f0d4c415e070c65550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:36:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 11:36:49 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 11:37:06 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:37:06 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:23:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:23:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:24:56 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:24:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:24:56 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:24:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8ba6cde5d83686d00cecf9a072a448a30e268f966f682507943bcd43732a57`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019ba60a9d86f483141d06eec4df1fb88c3f19656fb26c022a6f9a691260ef4a`  
		Last Modified: Wed, 21 Oct 2026 11:37:20 GMT  
		Size: 44.6 MB (44578296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c5a94d6a730e100fe8771793fd00737ea19c75a558aa9b96c1d6da23eb8b5a`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 1.7 MB (1713192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68021e6a227938b52d10a4b67b5f17e8b880dd0bf3525158a31c143b13320909`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fe8cd29a4237730cca3905b630e4875a9d3d59ec481bb604213b5eca699c8e`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 1.2 MB (1214888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59003fcfc140879cb00fa9d2c2b45e8b2221b842276824beff1e1095b6b24c`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 16.7 MB (16715819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8659c6b092670ce3fa3949e07ca35e2280d2206eb4613c50658fe7e6b7dc823`  
		Last Modified: Tue, 27 Oct 2026 17:25:43 GMT  
		Size: 129.6 MB (129621327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c6817463477ee764f6c82f82f4a2480dd36b6057271ebfa37dc8ec8ee575b4`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:beba8b846d37c5e2b2dc36954c3a0a9067076e8a7eb9b6ed6863d4eb6aa69811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4429479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826855a6d4f21150a39cd26545c37f04d9bcb8eef25550843ad708388f9d0cf`

```dockerfile
```

-	Layers:
	-	`sha256:f4b3894715c1b0fd9ab4cc67b9fe8a0906ccd4667e99c10849eaa7f0284fdb29`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 4.4 MB (4394654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f24188ce7b1c4e39849fd0ca3d3e71e068e76be8fda2d229e4b6cb81a15541`  
		Last Modified: Tue, 27 Oct 2026 17:25:39 GMT  
		Size: 34.8 KB (34825 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:461ebca028763b3498b10d5c9d5b37edbf5e5e40796e588ed52bb66bd71baad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218548212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd125fdc5c3b0616d57e59afe9599acfe035745071ca131877026835f096d72d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:25:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:34 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:35 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:35 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:fc5f72fed28fb6bf0237b27d0a6183ed55cc18c9e8c63a8abf03c6f1f1a37019`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 1.2 MB (1202055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849240bbbe53871c14950bf67f22549061bab86461d3f88f5f3c0cd652d5a5da`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 9.9 MB (9895166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfb06f893b5756ee17a005b863d07fde97c72d3aaaa2ff48c65de8e3495eacf`  
		Last Modified: Tue, 27 Oct 2026 17:26:21 GMT  
		Size: 127.6 MB (127572497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9362ae97771e4460352b86a9b09eb32c7cb66a5f256ffe9991c74c5fd52832fb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:6f874e5fa5480c3fb698f200524262e25bcf73736062a80b0c4c377a9bc23296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0822996f4d86d29ebcd52c5c91143390bb40257b581f4613f1fef209719eabfd`

```dockerfile
```

-	Layers:
	-	`sha256:a86b73eacad34705ac735d7f632f2aeea161752a2199a79072ad2b4308818bdb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 4.4 MB (4359283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cc34991645521a75d55a7315d24f645e236e64aad7f56216ed2c17e5de37c7`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 34.9 KB (34864 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73-next`

```console
$ docker pull ghost@sha256:9eef87674f10361302886c94c0164e0d5c6f8978ec6fe330bc5cec683683bd5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73-next` - linux; amd64

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

### `ghost:6.73-next` - unknown; unknown

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

### `ghost:6.73-next` - linux; arm64 variant v8

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

### `ghost:6.73-next` - unknown; unknown

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

## `ghost:6.73-next-alpine`

```console
$ docker pull ghost@sha256:8b80e31f61b1dd3025cfe5240e1f45e4214e98bb2a9fdbd16bd77d12f16b13d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73-next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b30e040f96f149336a6c34e44edec36753be2497f4e745fa5a20322e243e7da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129283685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b449e47d40db9f86c15e20fffdadf4aee8f89c30fcf8e7c6a32341739a960f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:28:57 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:28:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:28:57 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:28:57 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b0e7bf4841aee89771c94f2e81421c7336febfa272b00eb34c8e6a0ff66166`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 901.4 KB (901402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffa7ece0d0adca70507590ced2ddd6dea0f5edb2fac6ed104ff732a68a46bc7`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb5102fc57f60bd5bf5b017cf632b0b2b81ac3150f2eab3a769a1985b188da4`  
		Last Modified: Tue, 27 Oct 2026 17:29:18 GMT  
		Size: 67.2 MB (67183267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f085c1a19a363cf80571e1d18d08aa6eaa282ef9ae0521e3f7fa6fa5a9c0089`  
		Last Modified: Tue, 27 Oct 2026 17:29:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b70f06f7ed80d7975380491784126e3dbe3dffeef0119b5e5a30c0a01c0dd9`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a5b5734ce32a58095ddf1f30039eb32680f0653390393d27b11fb24824a622`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:cfb308bd1d6ab1725eb07add308acfdaf1d3d47264fb0b5b638c75d35be1ef04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1764354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b715d4c6de668b7020ee1953da4b77be90e002c1fa03f3647838df3ea5057197`

```dockerfile
```

-	Layers:
	-	`sha256:db6278a391409a419b7da18d53ac96291b5f91fc9052d21c311be2bfcb892c5b`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 1.7 MB (1731263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6204b98e7c0f52a31961fa5b49aa526a5631b483aabcc2215abd48ee1244b1ca`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73-next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:eb232b8a04ac4aa6ed27af1a46106c28824fc0a677ec2258284fbbab86c65c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128581345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05685a3d3409785611601373879a5ce36c11a0caaf74826932aaacffd9e3155b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:25:11 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:11 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:11 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535b8c169634748a73dd0e47116ac70613fed6330dd4eb2256193ae998c79e15`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 854.0 KB (854023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbeb4ec927aba5a02c02a7c111d1b129ca26cee6569073f0782164c1e28ceb57`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370dcd1299ce005892397336ec64b376efbf65903b1964c6b2b22a4fbf74eea4`  
		Last Modified: Tue, 27 Oct 2026 17:25:35 GMT  
		Size: 66.7 MB (66729775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391834f46029f06b5c5ba06196492c568ec33fe79140a3fb2c4bfafc8101dc3d`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9a36d8ab2c4a98fc98496f7377347276162930346e2dd27928747293b45947`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d2305141089e7abb42b31465997380d466e0fb2fbf05949a42311122eb4cf7`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:40e61613b1e77792e7f947b6eeb1422b6e3f4331bc93166af0a529af20fa5965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1763240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92abc41e5345a970b3e2d48f65daa333234b2ed44ed02e262281c37bfdce05a7`

```dockerfile
```

-	Layers:
	-	`sha256:9ab7291098db1dce7de7ffdc746bee914c3c5c7da7d76431e885d2a6eed0f533`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 1.7 MB (1729952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8147bcc08b9cbcfdae9af36c9e7f89033498940930354934350cd21377ac5aca`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73-next-alpine3.23`

```console
$ docker pull ghost@sha256:8b80e31f61b1dd3025cfe5240e1f45e4214e98bb2a9fdbd16bd77d12f16b13d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73-next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:b30e040f96f149336a6c34e44edec36753be2497f4e745fa5a20322e243e7da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129283685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b449e47d40db9f86c15e20fffdadf4aee8f89c30fcf8e7c6a32341739a960f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:28:57 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:28:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:28:57 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:28:57 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b0e7bf4841aee89771c94f2e81421c7336febfa272b00eb34c8e6a0ff66166`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 901.4 KB (901402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffa7ece0d0adca70507590ced2ddd6dea0f5edb2fac6ed104ff732a68a46bc7`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb5102fc57f60bd5bf5b017cf632b0b2b81ac3150f2eab3a769a1985b188da4`  
		Last Modified: Tue, 27 Oct 2026 17:29:18 GMT  
		Size: 67.2 MB (67183267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f085c1a19a363cf80571e1d18d08aa6eaa282ef9ae0521e3f7fa6fa5a9c0089`  
		Last Modified: Tue, 27 Oct 2026 17:29:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b70f06f7ed80d7975380491784126e3dbe3dffeef0119b5e5a30c0a01c0dd9`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a5b5734ce32a58095ddf1f30039eb32680f0653390393d27b11fb24824a622`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:cfb308bd1d6ab1725eb07add308acfdaf1d3d47264fb0b5b638c75d35be1ef04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1764354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b715d4c6de668b7020ee1953da4b77be90e002c1fa03f3647838df3ea5057197`

```dockerfile
```

-	Layers:
	-	`sha256:db6278a391409a419b7da18d53ac96291b5f91fc9052d21c311be2bfcb892c5b`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 1.7 MB (1731263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6204b98e7c0f52a31961fa5b49aa526a5631b483aabcc2215abd48ee1244b1ca`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73-next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:eb232b8a04ac4aa6ed27af1a46106c28824fc0a677ec2258284fbbab86c65c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128581345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05685a3d3409785611601373879a5ce36c11a0caaf74826932aaacffd9e3155b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:25:11 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:11 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:11 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535b8c169634748a73dd0e47116ac70613fed6330dd4eb2256193ae998c79e15`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 854.0 KB (854023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbeb4ec927aba5a02c02a7c111d1b129ca26cee6569073f0782164c1e28ceb57`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370dcd1299ce005892397336ec64b376efbf65903b1964c6b2b22a4fbf74eea4`  
		Last Modified: Tue, 27 Oct 2026 17:25:35 GMT  
		Size: 66.7 MB (66729775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391834f46029f06b5c5ba06196492c568ec33fe79140a3fb2c4bfafc8101dc3d`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9a36d8ab2c4a98fc98496f7377347276162930346e2dd27928747293b45947`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d2305141089e7abb42b31465997380d466e0fb2fbf05949a42311122eb4cf7`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:40e61613b1e77792e7f947b6eeb1422b6e3f4331bc93166af0a529af20fa5965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1763240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92abc41e5345a970b3e2d48f65daa333234b2ed44ed02e262281c37bfdce05a7`

```dockerfile
```

-	Layers:
	-	`sha256:9ab7291098db1dce7de7ffdc746bee914c3c5c7da7d76431e885d2a6eed0f533`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 1.7 MB (1729952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8147bcc08b9cbcfdae9af36c9e7f89033498940930354934350cd21377ac5aca`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73-next-bookworm`

```console
$ docker pull ghost@sha256:9eef87674f10361302886c94c0164e0d5c6f8978ec6fe330bc5cec683683bd5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73-next-bookworm` - linux; amd64

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

### `ghost:6.73-next-bookworm` - unknown; unknown

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

### `ghost:6.73-next-bookworm` - linux; arm64 variant v8

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

### `ghost:6.73-next-bookworm` - unknown; unknown

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

## `ghost:6.73.0`

```console
$ docker pull ghost@sha256:b5cf53a4fb7c5f8e7935b3dd921ee28fdb140a6b7a73b05c6c0851c19311fde5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73.0` - linux; amd64

```console
$ docker pull ghost@sha256:8e966fa984e3701381ea9fc5c47d22ced4640201c4e54bc84120998de5aa7156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219153676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0934bcb48dee15083c655289f242f7b4d4f4ef6f7f8b836c19a308fee943da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:47 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:29:29 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:29 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:29 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:71dd6aed19cb709e50c3cf31da765757e5300eb05b864d2c30295c3cc7bf6bfa`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 1.2 MB (1247978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a8b83e6be86a1cd5ba8bfd3e1175f269b40e7b2c5e793e8e11f4e1faa82df4`  
		Last Modified: Tue, 27 Oct 2026 17:30:04 GMT  
		Size: 9.9 MB (9894570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b553f82374320d6d3a0c309442d34fd102cf4395d499d83caf11efaf68a28cb`  
		Last Modified: Tue, 27 Oct 2026 17:30:06 GMT  
		Size: 128.2 MB (128160201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f463fe64193a48765ae99dfee8de53bc2185d319d27c49be0c0581dc582d82`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0` - unknown; unknown

```console
$ docker pull ghost@sha256:65d194ca0528882cda47aa9656fdb40b94c4650a9e07c1ea40ec08b5d23d84ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f955a8e15c9c46663e7e958c677eb33bbbcf5ec5c62737ffa0817fe2d8406837`

```dockerfile
```

-	Layers:
	-	`sha256:ee91873e453773205c49be15f4860a8822039cdee005e4e7b45ab6f3451adae0`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 4.4 MB (4360001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7802f7a789a3c88e5e1ea69566737912511cfefbeb5682259ca0b4a41d8f72b`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 34.7 KB (34684 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73.0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:c28b19a3f84bafe6b125493d27b1fcf4ef31b06938a78d100480c2c233b64b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217809342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df80e7bcb2717982c8a013316db2866380231cad5f4b6f0d4c415e070c65550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:36:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 11:36:49 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 11:37:06 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:37:06 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:23:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:23:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:24:56 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:24:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:24:56 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:24:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8ba6cde5d83686d00cecf9a072a448a30e268f966f682507943bcd43732a57`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019ba60a9d86f483141d06eec4df1fb88c3f19656fb26c022a6f9a691260ef4a`  
		Last Modified: Wed, 21 Oct 2026 11:37:20 GMT  
		Size: 44.6 MB (44578296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c5a94d6a730e100fe8771793fd00737ea19c75a558aa9b96c1d6da23eb8b5a`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 1.7 MB (1713192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68021e6a227938b52d10a4b67b5f17e8b880dd0bf3525158a31c143b13320909`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fe8cd29a4237730cca3905b630e4875a9d3d59ec481bb604213b5eca699c8e`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 1.2 MB (1214888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59003fcfc140879cb00fa9d2c2b45e8b2221b842276824beff1e1095b6b24c`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 16.7 MB (16715819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8659c6b092670ce3fa3949e07ca35e2280d2206eb4613c50658fe7e6b7dc823`  
		Last Modified: Tue, 27 Oct 2026 17:25:43 GMT  
		Size: 129.6 MB (129621327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c6817463477ee764f6c82f82f4a2480dd36b6057271ebfa37dc8ec8ee575b4`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0` - unknown; unknown

```console
$ docker pull ghost@sha256:beba8b846d37c5e2b2dc36954c3a0a9067076e8a7eb9b6ed6863d4eb6aa69811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4429479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826855a6d4f21150a39cd26545c37f04d9bcb8eef25550843ad708388f9d0cf`

```dockerfile
```

-	Layers:
	-	`sha256:f4b3894715c1b0fd9ab4cc67b9fe8a0906ccd4667e99c10849eaa7f0284fdb29`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 4.4 MB (4394654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f24188ce7b1c4e39849fd0ca3d3e71e068e76be8fda2d229e4b6cb81a15541`  
		Last Modified: Tue, 27 Oct 2026 17:25:39 GMT  
		Size: 34.8 KB (34825 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73.0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:461ebca028763b3498b10d5c9d5b37edbf5e5e40796e588ed52bb66bd71baad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218548212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd125fdc5c3b0616d57e59afe9599acfe035745071ca131877026835f096d72d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:25:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:34 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:35 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:35 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:fc5f72fed28fb6bf0237b27d0a6183ed55cc18c9e8c63a8abf03c6f1f1a37019`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 1.2 MB (1202055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849240bbbe53871c14950bf67f22549061bab86461d3f88f5f3c0cd652d5a5da`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 9.9 MB (9895166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfb06f893b5756ee17a005b863d07fde97c72d3aaaa2ff48c65de8e3495eacf`  
		Last Modified: Tue, 27 Oct 2026 17:26:21 GMT  
		Size: 127.6 MB (127572497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9362ae97771e4460352b86a9b09eb32c7cb66a5f256ffe9991c74c5fd52832fb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0` - unknown; unknown

```console
$ docker pull ghost@sha256:6f874e5fa5480c3fb698f200524262e25bcf73736062a80b0c4c377a9bc23296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0822996f4d86d29ebcd52c5c91143390bb40257b581f4613f1fef209719eabfd`

```dockerfile
```

-	Layers:
	-	`sha256:a86b73eacad34705ac735d7f632f2aeea161752a2199a79072ad2b4308818bdb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 4.4 MB (4359283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cc34991645521a75d55a7315d24f645e236e64aad7f56216ed2c17e5de37c7`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 34.9 KB (34864 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73.0-alpine`

```console
$ docker pull ghost@sha256:4195f6c405e40230cd10c0770425cf500c1f542a96e9f6584c11649c150e5a89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73.0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:55ae0a036e785c662c7197b830058b246a11624b7041438e32dbab610be45a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200757238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46dbe010f669e0c34a4b8d014b2b020bd2415096e457de02c92c6e3d4af5bc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:59 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:00 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:00 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2343cc7c855917df5f95723bfd7d6920914f63faca61f1e2e34bdef822102312`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 822.2 KB (822226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657c7726dcd2a164344adf544e5bd4ca4fe74a277785e83d6cbba2ea6d44ea48`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 904.1 KB (904089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2eef3feeb8462e64e5e562202f8c8ff68d3c8116f7f9dd3af37c06b5ff1786`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 9.4 MB (9442507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa28cfc36cd5912134ea129b79774d8d0f6aebd9650ade29282ecbff496890`  
		Last Modified: Tue, 27 Oct 2026 17:29:36 GMT  
		Size: 128.4 MB (128392147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da6ada7251e2e016fd4fc91aea8fdc44f5898b302287c5fe4790dbf85fc1f11`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:4f9fb90bd4ed441d19d1292380e68f2e745a0ce7eae9429b9bba1305cfa5c5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36345dd9e1d7e24671187973a7f325ec0487c9307e215294c3920c79d134032e`

```dockerfile
```

-	Layers:
	-	`sha256:5870ecf5e79dfcf0267f4e087a2ee07ca0780d4a0f3f51b66794bde6337eda70`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 2.1 MB (2149907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e14c3b49556e0bfbc72d86c770db5177d9a629eeb1b60750e1070a995818d88`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73.0-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:73f90e713efd3529b55c6a49df386ac193e8f9ba3fbbbc92e1070f4a2e8d06bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200181248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e45d032f0e97a5e4739f4f5ef7fbb7bc1ed8618edde5d18ba684fe874bf4904`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:45 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:10 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5787b4ce446ba891bfc004ebd37f6d9fa57c9d2302a98f76a7affead88ae1581`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 891.2 KB (891210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365840cb6a969133cd074af1da0ede172ff6efd550a74d9e4b99710d6ccc0ce`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 857.7 KB (857687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c4d9de8c1d9e83ea1001bafb533c3420017aba44427aac34f9b6de9c1c5ace`  
		Last Modified: Tue, 27 Oct 2026 17:25:52 GMT  
		Size: 9.4 MB (9442783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5800f866139d86165cca9854450db63b3b98e9b014c8a2a5f24bbd7a3267e4c1`  
		Last Modified: Tue, 27 Oct 2026 17:25:54 GMT  
		Size: 128.0 MB (127994764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db511578e5f09249af16c9d72cd359591ac149f654f442ed0267ffe088c9fa9`  
		Last Modified: Tue, 27 Oct 2026 17:25:53 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:975dd07e11e3a24c8898c2703cd3895a28c253e4349b4a714329f81a34ba783a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ebf6f07f368a3c88b019e39199f72f13b7ad375b9eb8d4149b19368bcccaf7`

```dockerfile
```

-	Layers:
	-	`sha256:6c31e980d4b087c9944d45d92b43984cab48c4abf7175b48de726a7c833d444b`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 2.1 MB (2148344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6279e9d1d393f1c16e991d35c7bb35cc3a4ad5b1fc5de2ab47707932901b7b8c`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 34.1 KB (34105 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73.0-alpine3.23`

```console
$ docker pull ghost@sha256:4195f6c405e40230cd10c0770425cf500c1f542a96e9f6584c11649c150e5a89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73.0-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:55ae0a036e785c662c7197b830058b246a11624b7041438e32dbab610be45a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200757238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46dbe010f669e0c34a4b8d014b2b020bd2415096e457de02c92c6e3d4af5bc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:59 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:00 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:00 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2343cc7c855917df5f95723bfd7d6920914f63faca61f1e2e34bdef822102312`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 822.2 KB (822226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657c7726dcd2a164344adf544e5bd4ca4fe74a277785e83d6cbba2ea6d44ea48`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 904.1 KB (904089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2eef3feeb8462e64e5e562202f8c8ff68d3c8116f7f9dd3af37c06b5ff1786`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 9.4 MB (9442507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa28cfc36cd5912134ea129b79774d8d0f6aebd9650ade29282ecbff496890`  
		Last Modified: Tue, 27 Oct 2026 17:29:36 GMT  
		Size: 128.4 MB (128392147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da6ada7251e2e016fd4fc91aea8fdc44f5898b302287c5fe4790dbf85fc1f11`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:4f9fb90bd4ed441d19d1292380e68f2e745a0ce7eae9429b9bba1305cfa5c5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36345dd9e1d7e24671187973a7f325ec0487c9307e215294c3920c79d134032e`

```dockerfile
```

-	Layers:
	-	`sha256:5870ecf5e79dfcf0267f4e087a2ee07ca0780d4a0f3f51b66794bde6337eda70`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 2.1 MB (2149907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e14c3b49556e0bfbc72d86c770db5177d9a629eeb1b60750e1070a995818d88`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73.0-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:73f90e713efd3529b55c6a49df386ac193e8f9ba3fbbbc92e1070f4a2e8d06bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200181248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e45d032f0e97a5e4739f4f5ef7fbb7bc1ed8618edde5d18ba684fe874bf4904`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:45 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:10 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5787b4ce446ba891bfc004ebd37f6d9fa57c9d2302a98f76a7affead88ae1581`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 891.2 KB (891210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365840cb6a969133cd074af1da0ede172ff6efd550a74d9e4b99710d6ccc0ce`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 857.7 KB (857687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c4d9de8c1d9e83ea1001bafb533c3420017aba44427aac34f9b6de9c1c5ace`  
		Last Modified: Tue, 27 Oct 2026 17:25:52 GMT  
		Size: 9.4 MB (9442783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5800f866139d86165cca9854450db63b3b98e9b014c8a2a5f24bbd7a3267e4c1`  
		Last Modified: Tue, 27 Oct 2026 17:25:54 GMT  
		Size: 128.0 MB (127994764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db511578e5f09249af16c9d72cd359591ac149f654f442ed0267ffe088c9fa9`  
		Last Modified: Tue, 27 Oct 2026 17:25:53 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:975dd07e11e3a24c8898c2703cd3895a28c253e4349b4a714329f81a34ba783a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ebf6f07f368a3c88b019e39199f72f13b7ad375b9eb8d4149b19368bcccaf7`

```dockerfile
```

-	Layers:
	-	`sha256:6c31e980d4b087c9944d45d92b43984cab48c4abf7175b48de726a7c833d444b`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 2.1 MB (2148344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6279e9d1d393f1c16e991d35c7bb35cc3a4ad5b1fc5de2ab47707932901b7b8c`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 34.1 KB (34105 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73.0-bookworm`

```console
$ docker pull ghost@sha256:b5cf53a4fb7c5f8e7935b3dd921ee28fdb140a6b7a73b05c6c0851c19311fde5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73.0-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:8e966fa984e3701381ea9fc5c47d22ced4640201c4e54bc84120998de5aa7156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219153676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0934bcb48dee15083c655289f242f7b4d4f4ef6f7f8b836c19a308fee943da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:47 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:29:29 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:29 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:29 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:71dd6aed19cb709e50c3cf31da765757e5300eb05b864d2c30295c3cc7bf6bfa`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 1.2 MB (1247978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a8b83e6be86a1cd5ba8bfd3e1175f269b40e7b2c5e793e8e11f4e1faa82df4`  
		Last Modified: Tue, 27 Oct 2026 17:30:04 GMT  
		Size: 9.9 MB (9894570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b553f82374320d6d3a0c309442d34fd102cf4395d499d83caf11efaf68a28cb`  
		Last Modified: Tue, 27 Oct 2026 17:30:06 GMT  
		Size: 128.2 MB (128160201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f463fe64193a48765ae99dfee8de53bc2185d319d27c49be0c0581dc582d82`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:65d194ca0528882cda47aa9656fdb40b94c4650a9e07c1ea40ec08b5d23d84ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f955a8e15c9c46663e7e958c677eb33bbbcf5ec5c62737ffa0817fe2d8406837`

```dockerfile
```

-	Layers:
	-	`sha256:ee91873e453773205c49be15f4860a8822039cdee005e4e7b45ab6f3451adae0`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 4.4 MB (4360001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7802f7a789a3c88e5e1ea69566737912511cfefbeb5682259ca0b4a41d8f72b`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 34.7 KB (34684 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73.0-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:c28b19a3f84bafe6b125493d27b1fcf4ef31b06938a78d100480c2c233b64b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217809342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df80e7bcb2717982c8a013316db2866380231cad5f4b6f0d4c415e070c65550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:36:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 11:36:49 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 11:37:06 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:37:06 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:23:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:23:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:24:56 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:24:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:24:56 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:24:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8ba6cde5d83686d00cecf9a072a448a30e268f966f682507943bcd43732a57`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019ba60a9d86f483141d06eec4df1fb88c3f19656fb26c022a6f9a691260ef4a`  
		Last Modified: Wed, 21 Oct 2026 11:37:20 GMT  
		Size: 44.6 MB (44578296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c5a94d6a730e100fe8771793fd00737ea19c75a558aa9b96c1d6da23eb8b5a`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 1.7 MB (1713192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68021e6a227938b52d10a4b67b5f17e8b880dd0bf3525158a31c143b13320909`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fe8cd29a4237730cca3905b630e4875a9d3d59ec481bb604213b5eca699c8e`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 1.2 MB (1214888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59003fcfc140879cb00fa9d2c2b45e8b2221b842276824beff1e1095b6b24c`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 16.7 MB (16715819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8659c6b092670ce3fa3949e07ca35e2280d2206eb4613c50658fe7e6b7dc823`  
		Last Modified: Tue, 27 Oct 2026 17:25:43 GMT  
		Size: 129.6 MB (129621327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c6817463477ee764f6c82f82f4a2480dd36b6057271ebfa37dc8ec8ee575b4`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:beba8b846d37c5e2b2dc36954c3a0a9067076e8a7eb9b6ed6863d4eb6aa69811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4429479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826855a6d4f21150a39cd26545c37f04d9bcb8eef25550843ad708388f9d0cf`

```dockerfile
```

-	Layers:
	-	`sha256:f4b3894715c1b0fd9ab4cc67b9fe8a0906ccd4667e99c10849eaa7f0284fdb29`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 4.4 MB (4394654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f24188ce7b1c4e39849fd0ca3d3e71e068e76be8fda2d229e4b6cb81a15541`  
		Last Modified: Tue, 27 Oct 2026 17:25:39 GMT  
		Size: 34.8 KB (34825 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:461ebca028763b3498b10d5c9d5b37edbf5e5e40796e588ed52bb66bd71baad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218548212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd125fdc5c3b0616d57e59afe9599acfe035745071ca131877026835f096d72d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:25:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:34 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:35 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:35 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:fc5f72fed28fb6bf0237b27d0a6183ed55cc18c9e8c63a8abf03c6f1f1a37019`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 1.2 MB (1202055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849240bbbe53871c14950bf67f22549061bab86461d3f88f5f3c0cd652d5a5da`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 9.9 MB (9895166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfb06f893b5756ee17a005b863d07fde97c72d3aaaa2ff48c65de8e3495eacf`  
		Last Modified: Tue, 27 Oct 2026 17:26:21 GMT  
		Size: 127.6 MB (127572497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9362ae97771e4460352b86a9b09eb32c7cb66a5f256ffe9991c74c5fd52832fb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:6f874e5fa5480c3fb698f200524262e25bcf73736062a80b0c4c377a9bc23296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0822996f4d86d29ebcd52c5c91143390bb40257b581f4613f1fef209719eabfd`

```dockerfile
```

-	Layers:
	-	`sha256:a86b73eacad34705ac735d7f632f2aeea161752a2199a79072ad2b4308818bdb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 4.4 MB (4359283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cc34991645521a75d55a7315d24f645e236e64aad7f56216ed2c17e5de37c7`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 34.9 KB (34864 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73.0-next`

```console
$ docker pull ghost@sha256:9eef87674f10361302886c94c0164e0d5c6f8978ec6fe330bc5cec683683bd5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73.0-next` - linux; amd64

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

### `ghost:6.73.0-next` - unknown; unknown

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

### `ghost:6.73.0-next` - linux; arm64 variant v8

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

### `ghost:6.73.0-next` - unknown; unknown

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

## `ghost:6.73.0-next-alpine`

```console
$ docker pull ghost@sha256:8b80e31f61b1dd3025cfe5240e1f45e4214e98bb2a9fdbd16bd77d12f16b13d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73.0-next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b30e040f96f149336a6c34e44edec36753be2497f4e745fa5a20322e243e7da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129283685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b449e47d40db9f86c15e20fffdadf4aee8f89c30fcf8e7c6a32341739a960f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:28:57 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:28:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:28:57 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:28:57 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b0e7bf4841aee89771c94f2e81421c7336febfa272b00eb34c8e6a0ff66166`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 901.4 KB (901402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffa7ece0d0adca70507590ced2ddd6dea0f5edb2fac6ed104ff732a68a46bc7`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb5102fc57f60bd5bf5b017cf632b0b2b81ac3150f2eab3a769a1985b188da4`  
		Last Modified: Tue, 27 Oct 2026 17:29:18 GMT  
		Size: 67.2 MB (67183267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f085c1a19a363cf80571e1d18d08aa6eaa282ef9ae0521e3f7fa6fa5a9c0089`  
		Last Modified: Tue, 27 Oct 2026 17:29:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b70f06f7ed80d7975380491784126e3dbe3dffeef0119b5e5a30c0a01c0dd9`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a5b5734ce32a58095ddf1f30039eb32680f0653390393d27b11fb24824a622`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:cfb308bd1d6ab1725eb07add308acfdaf1d3d47264fb0b5b638c75d35be1ef04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1764354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b715d4c6de668b7020ee1953da4b77be90e002c1fa03f3647838df3ea5057197`

```dockerfile
```

-	Layers:
	-	`sha256:db6278a391409a419b7da18d53ac96291b5f91fc9052d21c311be2bfcb892c5b`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 1.7 MB (1731263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6204b98e7c0f52a31961fa5b49aa526a5631b483aabcc2215abd48ee1244b1ca`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73.0-next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:eb232b8a04ac4aa6ed27af1a46106c28824fc0a677ec2258284fbbab86c65c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128581345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05685a3d3409785611601373879a5ce36c11a0caaf74826932aaacffd9e3155b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:25:11 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:11 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:11 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535b8c169634748a73dd0e47116ac70613fed6330dd4eb2256193ae998c79e15`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 854.0 KB (854023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbeb4ec927aba5a02c02a7c111d1b129ca26cee6569073f0782164c1e28ceb57`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370dcd1299ce005892397336ec64b376efbf65903b1964c6b2b22a4fbf74eea4`  
		Last Modified: Tue, 27 Oct 2026 17:25:35 GMT  
		Size: 66.7 MB (66729775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391834f46029f06b5c5ba06196492c568ec33fe79140a3fb2c4bfafc8101dc3d`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9a36d8ab2c4a98fc98496f7377347276162930346e2dd27928747293b45947`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d2305141089e7abb42b31465997380d466e0fb2fbf05949a42311122eb4cf7`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:40e61613b1e77792e7f947b6eeb1422b6e3f4331bc93166af0a529af20fa5965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1763240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92abc41e5345a970b3e2d48f65daa333234b2ed44ed02e262281c37bfdce05a7`

```dockerfile
```

-	Layers:
	-	`sha256:9ab7291098db1dce7de7ffdc746bee914c3c5c7da7d76431e885d2a6eed0f533`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 1.7 MB (1729952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8147bcc08b9cbcfdae9af36c9e7f89033498940930354934350cd21377ac5aca`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73.0-next-alpine3.23`

```console
$ docker pull ghost@sha256:8b80e31f61b1dd3025cfe5240e1f45e4214e98bb2a9fdbd16bd77d12f16b13d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73.0-next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:b30e040f96f149336a6c34e44edec36753be2497f4e745fa5a20322e243e7da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129283685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b449e47d40db9f86c15e20fffdadf4aee8f89c30fcf8e7c6a32341739a960f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:28:57 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:28:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:28:57 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:28:57 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b0e7bf4841aee89771c94f2e81421c7336febfa272b00eb34c8e6a0ff66166`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 901.4 KB (901402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffa7ece0d0adca70507590ced2ddd6dea0f5edb2fac6ed104ff732a68a46bc7`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb5102fc57f60bd5bf5b017cf632b0b2b81ac3150f2eab3a769a1985b188da4`  
		Last Modified: Tue, 27 Oct 2026 17:29:18 GMT  
		Size: 67.2 MB (67183267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f085c1a19a363cf80571e1d18d08aa6eaa282ef9ae0521e3f7fa6fa5a9c0089`  
		Last Modified: Tue, 27 Oct 2026 17:29:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b70f06f7ed80d7975380491784126e3dbe3dffeef0119b5e5a30c0a01c0dd9`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a5b5734ce32a58095ddf1f30039eb32680f0653390393d27b11fb24824a622`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:cfb308bd1d6ab1725eb07add308acfdaf1d3d47264fb0b5b638c75d35be1ef04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1764354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b715d4c6de668b7020ee1953da4b77be90e002c1fa03f3647838df3ea5057197`

```dockerfile
```

-	Layers:
	-	`sha256:db6278a391409a419b7da18d53ac96291b5f91fc9052d21c311be2bfcb892c5b`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 1.7 MB (1731263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6204b98e7c0f52a31961fa5b49aa526a5631b483aabcc2215abd48ee1244b1ca`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.73.0-next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:eb232b8a04ac4aa6ed27af1a46106c28824fc0a677ec2258284fbbab86c65c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128581345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05685a3d3409785611601373879a5ce36c11a0caaf74826932aaacffd9e3155b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:25:11 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:11 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:11 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535b8c169634748a73dd0e47116ac70613fed6330dd4eb2256193ae998c79e15`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 854.0 KB (854023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbeb4ec927aba5a02c02a7c111d1b129ca26cee6569073f0782164c1e28ceb57`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370dcd1299ce005892397336ec64b376efbf65903b1964c6b2b22a4fbf74eea4`  
		Last Modified: Tue, 27 Oct 2026 17:25:35 GMT  
		Size: 66.7 MB (66729775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391834f46029f06b5c5ba06196492c568ec33fe79140a3fb2c4bfafc8101dc3d`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9a36d8ab2c4a98fc98496f7377347276162930346e2dd27928747293b45947`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d2305141089e7abb42b31465997380d466e0fb2fbf05949a42311122eb4cf7`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.73.0-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:40e61613b1e77792e7f947b6eeb1422b6e3f4331bc93166af0a529af20fa5965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1763240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92abc41e5345a970b3e2d48f65daa333234b2ed44ed02e262281c37bfdce05a7`

```dockerfile
```

-	Layers:
	-	`sha256:9ab7291098db1dce7de7ffdc746bee914c3c5c7da7d76431e885d2a6eed0f533`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 1.7 MB (1729952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8147bcc08b9cbcfdae9af36c9e7f89033498940930354934350cd21377ac5aca`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.73.0-next-bookworm`

```console
$ docker pull ghost@sha256:9eef87674f10361302886c94c0164e0d5c6f8978ec6fe330bc5cec683683bd5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.73.0-next-bookworm` - linux; amd64

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

### `ghost:6.73.0-next-bookworm` - unknown; unknown

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

### `ghost:6.73.0-next-bookworm` - linux; arm64 variant v8

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

### `ghost:6.73.0-next-bookworm` - unknown; unknown

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

## `ghost:alpine`

```console
$ docker pull ghost@sha256:4195f6c405e40230cd10c0770425cf500c1f542a96e9f6584c11649c150e5a89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:55ae0a036e785c662c7197b830058b246a11624b7041438e32dbab610be45a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200757238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46dbe010f669e0c34a4b8d014b2b020bd2415096e457de02c92c6e3d4af5bc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:59 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:00 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:00 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2343cc7c855917df5f95723bfd7d6920914f63faca61f1e2e34bdef822102312`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 822.2 KB (822226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657c7726dcd2a164344adf544e5bd4ca4fe74a277785e83d6cbba2ea6d44ea48`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 904.1 KB (904089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2eef3feeb8462e64e5e562202f8c8ff68d3c8116f7f9dd3af37c06b5ff1786`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 9.4 MB (9442507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa28cfc36cd5912134ea129b79774d8d0f6aebd9650ade29282ecbff496890`  
		Last Modified: Tue, 27 Oct 2026 17:29:36 GMT  
		Size: 128.4 MB (128392147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da6ada7251e2e016fd4fc91aea8fdc44f5898b302287c5fe4790dbf85fc1f11`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:4f9fb90bd4ed441d19d1292380e68f2e745a0ce7eae9429b9bba1305cfa5c5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36345dd9e1d7e24671187973a7f325ec0487c9307e215294c3920c79d134032e`

```dockerfile
```

-	Layers:
	-	`sha256:5870ecf5e79dfcf0267f4e087a2ee07ca0780d4a0f3f51b66794bde6337eda70`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 2.1 MB (2149907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e14c3b49556e0bfbc72d86c770db5177d9a629eeb1b60750e1070a995818d88`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:73f90e713efd3529b55c6a49df386ac193e8f9ba3fbbbc92e1070f4a2e8d06bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200181248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e45d032f0e97a5e4739f4f5ef7fbb7bc1ed8618edde5d18ba684fe874bf4904`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:45 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:10 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5787b4ce446ba891bfc004ebd37f6d9fa57c9d2302a98f76a7affead88ae1581`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 891.2 KB (891210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365840cb6a969133cd074af1da0ede172ff6efd550a74d9e4b99710d6ccc0ce`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 857.7 KB (857687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c4d9de8c1d9e83ea1001bafb533c3420017aba44427aac34f9b6de9c1c5ace`  
		Last Modified: Tue, 27 Oct 2026 17:25:52 GMT  
		Size: 9.4 MB (9442783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5800f866139d86165cca9854450db63b3b98e9b014c8a2a5f24bbd7a3267e4c1`  
		Last Modified: Tue, 27 Oct 2026 17:25:54 GMT  
		Size: 128.0 MB (127994764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db511578e5f09249af16c9d72cd359591ac149f654f442ed0267ffe088c9fa9`  
		Last Modified: Tue, 27 Oct 2026 17:25:53 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:975dd07e11e3a24c8898c2703cd3895a28c253e4349b4a714329f81a34ba783a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ebf6f07f368a3c88b019e39199f72f13b7ad375b9eb8d4149b19368bcccaf7`

```dockerfile
```

-	Layers:
	-	`sha256:6c31e980d4b087c9944d45d92b43984cab48c4abf7175b48de726a7c833d444b`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 2.1 MB (2148344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6279e9d1d393f1c16e991d35c7bb35cc3a4ad5b1fc5de2ab47707932901b7b8c`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 34.1 KB (34105 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:alpine3.23`

```console
$ docker pull ghost@sha256:4195f6c405e40230cd10c0770425cf500c1f542a96e9f6584c11649c150e5a89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:55ae0a036e785c662c7197b830058b246a11624b7041438e32dbab610be45a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200757238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46dbe010f669e0c34a4b8d014b2b020bd2415096e457de02c92c6e3d4af5bc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:41 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:41 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:45 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:59 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:00 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:00 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:00 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2343cc7c855917df5f95723bfd7d6920914f63faca61f1e2e34bdef822102312`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 822.2 KB (822226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657c7726dcd2a164344adf544e5bd4ca4fe74a277785e83d6cbba2ea6d44ea48`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 904.1 KB (904089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2eef3feeb8462e64e5e562202f8c8ff68d3c8116f7f9dd3af37c06b5ff1786`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 9.4 MB (9442507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa28cfc36cd5912134ea129b79774d8d0f6aebd9650ade29282ecbff496890`  
		Last Modified: Tue, 27 Oct 2026 17:29:36 GMT  
		Size: 128.4 MB (128392147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da6ada7251e2e016fd4fc91aea8fdc44f5898b302287c5fe4790dbf85fc1f11`  
		Last Modified: Tue, 27 Oct 2026 17:29:34 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:4f9fb90bd4ed441d19d1292380e68f2e745a0ce7eae9429b9bba1305cfa5c5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36345dd9e1d7e24671187973a7f325ec0487c9307e215294c3920c79d134032e`

```dockerfile
```

-	Layers:
	-	`sha256:5870ecf5e79dfcf0267f4e087a2ee07ca0780d4a0f3f51b66794bde6337eda70`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 2.1 MB (2149907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e14c3b49556e0bfbc72d86c770db5177d9a629eeb1b60750e1070a995818d88`  
		Last Modified: Tue, 27 Oct 2026 17:29:33 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:73f90e713efd3529b55c6a49df386ac193e8f9ba3fbbbc92e1070f4a2e8d06bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200181248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e45d032f0e97a5e4739f4f5ef7fbb7bc1ed8618edde5d18ba684fe874bf4904`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:45 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:48 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:48 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:10 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5787b4ce446ba891bfc004ebd37f6d9fa57c9d2302a98f76a7affead88ae1581`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 891.2 KB (891210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365840cb6a969133cd074af1da0ede172ff6efd550a74d9e4b99710d6ccc0ce`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 857.7 KB (857687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c4d9de8c1d9e83ea1001bafb533c3420017aba44427aac34f9b6de9c1c5ace`  
		Last Modified: Tue, 27 Oct 2026 17:25:52 GMT  
		Size: 9.4 MB (9442783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5800f866139d86165cca9854450db63b3b98e9b014c8a2a5f24bbd7a3267e4c1`  
		Last Modified: Tue, 27 Oct 2026 17:25:54 GMT  
		Size: 128.0 MB (127994764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db511578e5f09249af16c9d72cd359591ac149f654f442ed0267ffe088c9fa9`  
		Last Modified: Tue, 27 Oct 2026 17:25:53 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:975dd07e11e3a24c8898c2703cd3895a28c253e4349b4a714329f81a34ba783a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ebf6f07f368a3c88b019e39199f72f13b7ad375b9eb8d4149b19368bcccaf7`

```dockerfile
```

-	Layers:
	-	`sha256:6c31e980d4b087c9944d45d92b43984cab48c4abf7175b48de726a7c833d444b`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 2.1 MB (2148344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6279e9d1d393f1c16e991d35c7bb35cc3a4ad5b1fc5de2ab47707932901b7b8c`  
		Last Modified: Tue, 27 Oct 2026 17:25:51 GMT  
		Size: 34.1 KB (34105 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:bookworm`

```console
$ docker pull ghost@sha256:b5cf53a4fb7c5f8e7935b3dd921ee28fdb140a6b7a73b05c6c0851c19311fde5
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
$ docker pull ghost@sha256:8e966fa984e3701381ea9fc5c47d22ced4640201c4e54bc84120998de5aa7156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219153676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0934bcb48dee15083c655289f242f7b4d4f4ef6f7f8b836c19a308fee943da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:47 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:29:29 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:29 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:29 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:71dd6aed19cb709e50c3cf31da765757e5300eb05b864d2c30295c3cc7bf6bfa`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 1.2 MB (1247978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a8b83e6be86a1cd5ba8bfd3e1175f269b40e7b2c5e793e8e11f4e1faa82df4`  
		Last Modified: Tue, 27 Oct 2026 17:30:04 GMT  
		Size: 9.9 MB (9894570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b553f82374320d6d3a0c309442d34fd102cf4395d499d83caf11efaf68a28cb`  
		Last Modified: Tue, 27 Oct 2026 17:30:06 GMT  
		Size: 128.2 MB (128160201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f463fe64193a48765ae99dfee8de53bc2185d319d27c49be0c0581dc582d82`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:65d194ca0528882cda47aa9656fdb40b94c4650a9e07c1ea40ec08b5d23d84ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f955a8e15c9c46663e7e958c677eb33bbbcf5ec5c62737ffa0817fe2d8406837`

```dockerfile
```

-	Layers:
	-	`sha256:ee91873e453773205c49be15f4860a8822039cdee005e4e7b45ab6f3451adae0`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 4.4 MB (4360001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7802f7a789a3c88e5e1ea69566737912511cfefbeb5682259ca0b4a41d8f72b`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 34.7 KB (34684 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:c28b19a3f84bafe6b125493d27b1fcf4ef31b06938a78d100480c2c233b64b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217809342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df80e7bcb2717982c8a013316db2866380231cad5f4b6f0d4c415e070c65550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:36:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 11:36:49 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 11:37:06 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:37:06 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:23:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:23:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:24:56 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:24:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:24:56 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:24:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8ba6cde5d83686d00cecf9a072a448a30e268f966f682507943bcd43732a57`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019ba60a9d86f483141d06eec4df1fb88c3f19656fb26c022a6f9a691260ef4a`  
		Last Modified: Wed, 21 Oct 2026 11:37:20 GMT  
		Size: 44.6 MB (44578296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c5a94d6a730e100fe8771793fd00737ea19c75a558aa9b96c1d6da23eb8b5a`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 1.7 MB (1713192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68021e6a227938b52d10a4b67b5f17e8b880dd0bf3525158a31c143b13320909`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fe8cd29a4237730cca3905b630e4875a9d3d59ec481bb604213b5eca699c8e`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 1.2 MB (1214888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59003fcfc140879cb00fa9d2c2b45e8b2221b842276824beff1e1095b6b24c`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 16.7 MB (16715819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8659c6b092670ce3fa3949e07ca35e2280d2206eb4613c50658fe7e6b7dc823`  
		Last Modified: Tue, 27 Oct 2026 17:25:43 GMT  
		Size: 129.6 MB (129621327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c6817463477ee764f6c82f82f4a2480dd36b6057271ebfa37dc8ec8ee575b4`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:beba8b846d37c5e2b2dc36954c3a0a9067076e8a7eb9b6ed6863d4eb6aa69811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4429479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826855a6d4f21150a39cd26545c37f04d9bcb8eef25550843ad708388f9d0cf`

```dockerfile
```

-	Layers:
	-	`sha256:f4b3894715c1b0fd9ab4cc67b9fe8a0906ccd4667e99c10849eaa7f0284fdb29`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 4.4 MB (4394654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f24188ce7b1c4e39849fd0ca3d3e71e068e76be8fda2d229e4b6cb81a15541`  
		Last Modified: Tue, 27 Oct 2026 17:25:39 GMT  
		Size: 34.8 KB (34825 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:461ebca028763b3498b10d5c9d5b37edbf5e5e40796e588ed52bb66bd71baad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218548212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd125fdc5c3b0616d57e59afe9599acfe035745071ca131877026835f096d72d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:25:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:34 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:35 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:35 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:fc5f72fed28fb6bf0237b27d0a6183ed55cc18c9e8c63a8abf03c6f1f1a37019`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 1.2 MB (1202055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849240bbbe53871c14950bf67f22549061bab86461d3f88f5f3c0cd652d5a5da`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 9.9 MB (9895166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfb06f893b5756ee17a005b863d07fde97c72d3aaaa2ff48c65de8e3495eacf`  
		Last Modified: Tue, 27 Oct 2026 17:26:21 GMT  
		Size: 127.6 MB (127572497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9362ae97771e4460352b86a9b09eb32c7cb66a5f256ffe9991c74c5fd52832fb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:6f874e5fa5480c3fb698f200524262e25bcf73736062a80b0c4c377a9bc23296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0822996f4d86d29ebcd52c5c91143390bb40257b581f4613f1fef209719eabfd`

```dockerfile
```

-	Layers:
	-	`sha256:a86b73eacad34705ac735d7f632f2aeea161752a2199a79072ad2b4308818bdb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 4.4 MB (4359283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cc34991645521a75d55a7315d24f645e236e64aad7f56216ed2c17e5de37c7`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 34.9 KB (34864 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:latest`

```console
$ docker pull ghost@sha256:b5cf53a4fb7c5f8e7935b3dd921ee28fdb140a6b7a73b05c6c0851c19311fde5
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
$ docker pull ghost@sha256:8e966fa984e3701381ea9fc5c47d22ced4640201c4e54bc84120998de5aa7156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219153676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0934bcb48dee15083c655289f242f7b4d4f4ef6f7f8b836c19a308fee943da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:47 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:28:47 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:28:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:28:58 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:29:29 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:29:29 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:29:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:29 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:29:29 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:71dd6aed19cb709e50c3cf31da765757e5300eb05b864d2c30295c3cc7bf6bfa`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 1.2 MB (1247978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a8b83e6be86a1cd5ba8bfd3e1175f269b40e7b2c5e793e8e11f4e1faa82df4`  
		Last Modified: Tue, 27 Oct 2026 17:30:04 GMT  
		Size: 9.9 MB (9894570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b553f82374320d6d3a0c309442d34fd102cf4395d499d83caf11efaf68a28cb`  
		Last Modified: Tue, 27 Oct 2026 17:30:06 GMT  
		Size: 128.2 MB (128160201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f463fe64193a48765ae99dfee8de53bc2185d319d27c49be0c0581dc582d82`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:65d194ca0528882cda47aa9656fdb40b94c4650a9e07c1ea40ec08b5d23d84ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f955a8e15c9c46663e7e958c677eb33bbbcf5ec5c62737ffa0817fe2d8406837`

```dockerfile
```

-	Layers:
	-	`sha256:ee91873e453773205c49be15f4860a8822039cdee005e4e7b45ab6f3451adae0`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 4.4 MB (4360001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7802f7a789a3c88e5e1ea69566737912511cfefbeb5682259ca0b4a41d8f72b`  
		Last Modified: Tue, 27 Oct 2026 17:30:03 GMT  
		Size: 34.7 KB (34684 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:c28b19a3f84bafe6b125493d27b1fcf4ef31b06938a78d100480c2c233b64b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217809342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df80e7bcb2717982c8a013316db2866380231cad5f4b6f0d4c415e070c65550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:36:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 11:36:49 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:36:49 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 11:37:06 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:37:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:37:06 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:23:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:23:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:23:55 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:24:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:24:14 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:24:56 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:24:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:24:56 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:24:56 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8ba6cde5d83686d00cecf9a072a448a30e268f966f682507943bcd43732a57`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019ba60a9d86f483141d06eec4df1fb88c3f19656fb26c022a6f9a691260ef4a`  
		Last Modified: Wed, 21 Oct 2026 11:37:20 GMT  
		Size: 44.6 MB (44578296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c5a94d6a730e100fe8771793fd00737ea19c75a558aa9b96c1d6da23eb8b5a`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 1.7 MB (1713192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68021e6a227938b52d10a4b67b5f17e8b880dd0bf3525158a31c143b13320909`  
		Last Modified: Wed, 21 Oct 2026 11:37:19 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fe8cd29a4237730cca3905b630e4875a9d3d59ec481bb604213b5eca699c8e`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 1.2 MB (1214888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59003fcfc140879cb00fa9d2c2b45e8b2221b842276824beff1e1095b6b24c`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 16.7 MB (16715819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8659c6b092670ce3fa3949e07ca35e2280d2206eb4613c50658fe7e6b7dc823`  
		Last Modified: Tue, 27 Oct 2026 17:25:43 GMT  
		Size: 129.6 MB (129621327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c6817463477ee764f6c82f82f4a2480dd36b6057271ebfa37dc8ec8ee575b4`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:beba8b846d37c5e2b2dc36954c3a0a9067076e8a7eb9b6ed6863d4eb6aa69811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4429479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b826855a6d4f21150a39cd26545c37f04d9bcb8eef25550843ad708388f9d0cf`

```dockerfile
```

-	Layers:
	-	`sha256:f4b3894715c1b0fd9ab4cc67b9fe8a0906ccd4667e99c10849eaa7f0284fdb29`  
		Last Modified: Tue, 27 Oct 2026 17:25:40 GMT  
		Size: 4.4 MB (4394654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f24188ce7b1c4e39849fd0ca3d3e71e068e76be8fda2d229e4b6cb81a15541`  
		Last Modified: Tue, 27 Oct 2026 17:25:39 GMT  
		Size: 34.8 KB (34825 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:461ebca028763b3498b10d5c9d5b37edbf5e5e40796e588ed52bb66bd71baad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218548212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd125fdc5c3b0616d57e59afe9599acfe035745071ca131877026835f096d72d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:53 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_VERSION=1.34.0
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_SHA=89c102e9e74e7d71aef0cbc99fc699b938623d7a
# Tue, 27 Oct 2026 17:24:53 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 27 Oct 2026 17:25:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.8'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 27 Oct 2026 17:25:07 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:25:34 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
WORKDIR /var/lib/ghost
# Tue, 27 Oct 2026 17:25:35 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 27 Oct 2026 17:25:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:35 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:35 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:fc5f72fed28fb6bf0237b27d0a6183ed55cc18c9e8c63a8abf03c6f1f1a37019`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 1.2 MB (1202055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849240bbbe53871c14950bf67f22549061bab86461d3f88f5f3c0cd652d5a5da`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 9.9 MB (9895166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfb06f893b5756ee17a005b863d07fde97c72d3aaaa2ff48c65de8e3495eacf`  
		Last Modified: Tue, 27 Oct 2026 17:26:21 GMT  
		Size: 127.6 MB (127572497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9362ae97771e4460352b86a9b09eb32c7cb66a5f256ffe9991c74c5fd52832fb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:6f874e5fa5480c3fb698f200524262e25bcf73736062a80b0c4c377a9bc23296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4394147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0822996f4d86d29ebcd52c5c91143390bb40257b581f4613f1fef209719eabfd`

```dockerfile
```

-	Layers:
	-	`sha256:a86b73eacad34705ac735d7f632f2aeea161752a2199a79072ad2b4308818bdb`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 4.4 MB (4359283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cc34991645521a75d55a7315d24f645e236e64aad7f56216ed2c17e5de37c7`  
		Last Modified: Tue, 27 Oct 2026 17:26:18 GMT  
		Size: 34.9 KB (34864 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:next`

```console
$ docker pull ghost@sha256:9eef87674f10361302886c94c0164e0d5c6f8978ec6fe330bc5cec683683bd5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next` - linux; amd64

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

### `ghost:next` - unknown; unknown

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

### `ghost:next` - linux; arm64 variant v8

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

### `ghost:next` - unknown; unknown

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

## `ghost:next-alpine`

```console
$ docker pull ghost@sha256:8b80e31f61b1dd3025cfe5240e1f45e4214e98bb2a9fdbd16bd77d12f16b13d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:b30e040f96f149336a6c34e44edec36753be2497f4e745fa5a20322e243e7da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129283685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b449e47d40db9f86c15e20fffdadf4aee8f89c30fcf8e7c6a32341739a960f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:28:57 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:28:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:28:57 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:28:57 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b0e7bf4841aee89771c94f2e81421c7336febfa272b00eb34c8e6a0ff66166`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 901.4 KB (901402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffa7ece0d0adca70507590ced2ddd6dea0f5edb2fac6ed104ff732a68a46bc7`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb5102fc57f60bd5bf5b017cf632b0b2b81ac3150f2eab3a769a1985b188da4`  
		Last Modified: Tue, 27 Oct 2026 17:29:18 GMT  
		Size: 67.2 MB (67183267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f085c1a19a363cf80571e1d18d08aa6eaa282ef9ae0521e3f7fa6fa5a9c0089`  
		Last Modified: Tue, 27 Oct 2026 17:29:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b70f06f7ed80d7975380491784126e3dbe3dffeef0119b5e5a30c0a01c0dd9`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a5b5734ce32a58095ddf1f30039eb32680f0653390393d27b11fb24824a622`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:cfb308bd1d6ab1725eb07add308acfdaf1d3d47264fb0b5b638c75d35be1ef04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1764354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b715d4c6de668b7020ee1953da4b77be90e002c1fa03f3647838df3ea5057197`

```dockerfile
```

-	Layers:
	-	`sha256:db6278a391409a419b7da18d53ac96291b5f91fc9052d21c311be2bfcb892c5b`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 1.7 MB (1731263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6204b98e7c0f52a31961fa5b49aa526a5631b483aabcc2215abd48ee1244b1ca`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:eb232b8a04ac4aa6ed27af1a46106c28824fc0a677ec2258284fbbab86c65c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128581345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05685a3d3409785611601373879a5ce36c11a0caaf74826932aaacffd9e3155b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:25:11 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:11 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:11 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535b8c169634748a73dd0e47116ac70613fed6330dd4eb2256193ae998c79e15`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 854.0 KB (854023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbeb4ec927aba5a02c02a7c111d1b129ca26cee6569073f0782164c1e28ceb57`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370dcd1299ce005892397336ec64b376efbf65903b1964c6b2b22a4fbf74eea4`  
		Last Modified: Tue, 27 Oct 2026 17:25:35 GMT  
		Size: 66.7 MB (66729775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391834f46029f06b5c5ba06196492c568ec33fe79140a3fb2c4bfafc8101dc3d`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9a36d8ab2c4a98fc98496f7377347276162930346e2dd27928747293b45947`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d2305141089e7abb42b31465997380d466e0fb2fbf05949a42311122eb4cf7`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:40e61613b1e77792e7f947b6eeb1422b6e3f4331bc93166af0a529af20fa5965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1763240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92abc41e5345a970b3e2d48f65daa333234b2ed44ed02e262281c37bfdce05a7`

```dockerfile
```

-	Layers:
	-	`sha256:9ab7291098db1dce7de7ffdc746bee914c3c5c7da7d76431e885d2a6eed0f533`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 1.7 MB (1729952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8147bcc08b9cbcfdae9af36c9e7f89033498940930354934350cd21377ac5aca`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:next-alpine3.23`

```console
$ docker pull ghost@sha256:8b80e31f61b1dd3025cfe5240e1f45e4214e98bb2a9fdbd16bd77d12f16b13d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:b30e040f96f149336a6c34e44edec36753be2497f4e745fa5a20322e243e7da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129283685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b449e47d40db9f86c15e20fffdadf4aee8f89c30fcf8e7c6a32341739a960f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:51 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:25:51 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:25:55 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:55 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:28:44 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:28:44 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:28:57 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:28:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:28:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:28:57 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:28:57 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6565a51d03ce2f6418ede79c590f402c26f7cd92f8dc141f319eb263d986ae`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 56.1 MB (56080609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8eba1411bbfdf26ab575c4268b4d743ed8b823e85439d3c3b9145454081239`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 1.3 MB (1262416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc7fb023034b5cb3ea785931713a356d5fc5bbc5f296aa4c06c7a2031b8406c`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b0e7bf4841aee89771c94f2e81421c7336febfa272b00eb34c8e6a0ff66166`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 901.4 KB (901402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffa7ece0d0adca70507590ced2ddd6dea0f5edb2fac6ed104ff732a68a46bc7`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb5102fc57f60bd5bf5b017cf632b0b2b81ac3150f2eab3a769a1985b188da4`  
		Last Modified: Tue, 27 Oct 2026 17:29:18 GMT  
		Size: 67.2 MB (67183267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f085c1a19a363cf80571e1d18d08aa6eaa282ef9ae0521e3f7fa6fa5a9c0089`  
		Last Modified: Tue, 27 Oct 2026 17:29:15 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b70f06f7ed80d7975380491784126e3dbe3dffeef0119b5e5a30c0a01c0dd9`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a5b5734ce32a58095ddf1f30039eb32680f0653390393d27b11fb24824a622`  
		Last Modified: Tue, 27 Oct 2026 17:29:17 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:cfb308bd1d6ab1725eb07add308acfdaf1d3d47264fb0b5b638c75d35be1ef04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1764354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b715d4c6de668b7020ee1953da4b77be90e002c1fa03f3647838df3ea5057197`

```dockerfile
```

-	Layers:
	-	`sha256:db6278a391409a419b7da18d53ac96291b5f91fc9052d21c311be2bfcb892c5b`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 1.7 MB (1731263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6204b98e7c0f52a31961fa5b49aa526a5631b483aabcc2215abd48ee1244b1ca`  
		Last Modified: Tue, 27 Oct 2026 17:29:16 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:eb232b8a04ac4aa6ed27af1a46106c28824fc0a677ec2258284fbbab86c65c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128581345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05685a3d3409785611601373879a5ce36c11a0caaf74826932aaacffd9e3155b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:55:55 GMT
ENV NODE_VERSION=22.23.4
# Wed, 21 Oct 2026 21:55:55 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:55 GMT
ENV YARN_VERSION=1.22.22
# Wed, 21 Oct 2026 21:55:59 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:55:59 GMT
CMD ["node"]
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 27 Oct 2026 17:24:55 GMT
ENV NODE_ENV=production
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_VERSION=6.73.0
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.73.0/ghost-6.73.0.tgz
# Tue, 27 Oct 2026 17:24:55 GMT
ENV GHOST_SHA256=7377bf3a20eb5174494e35c512c0cd55dde346ae0c0de9390874a4c02ee918c2
# Tue, 27 Oct 2026 17:25:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
WORKDIR /home/ghost
# Tue, 27 Oct 2026 17:25:11 GMT
VOLUME [/home/ghost/content]
# Tue, 27 Oct 2026 17:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:11 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 27 Oct 2026 17:25:11 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677912f64ba1309a9b8342041ca98919313941c22235476071ecf4fc5584d643`  
		Last Modified: Wed, 21 Oct 2026 21:56:16 GMT  
		Size: 55.5 MB (55541382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e642daf4fbc28ac1faccb30e6ff90e5090e278974b6ce96bcaf00483f90478bd`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 1.3 MB (1262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bbeb0b6cbfe5e357266d29678e19b77a0a88614ad819634c083b475af06706`  
		Last Modified: Wed, 21 Oct 2026 21:56:14 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535b8c169634748a73dd0e47116ac70613fed6330dd4eb2256193ae998c79e15`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 854.0 KB (854023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbeb4ec927aba5a02c02a7c111d1b129ca26cee6569073f0782164c1e28ceb57`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370dcd1299ce005892397336ec64b376efbf65903b1964c6b2b22a4fbf74eea4`  
		Last Modified: Tue, 27 Oct 2026 17:25:35 GMT  
		Size: 66.7 MB (66729775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391834f46029f06b5c5ba06196492c568ec33fe79140a3fb2c4bfafc8101dc3d`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9a36d8ab2c4a98fc98496f7377347276162930346e2dd27928747293b45947`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d2305141089e7abb42b31465997380d466e0fb2fbf05949a42311122eb4cf7`  
		Last Modified: Tue, 27 Oct 2026 17:25:34 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:40e61613b1e77792e7f947b6eeb1422b6e3f4331bc93166af0a529af20fa5965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1763240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92abc41e5345a970b3e2d48f65daa333234b2ed44ed02e262281c37bfdce05a7`

```dockerfile
```

-	Layers:
	-	`sha256:9ab7291098db1dce7de7ffdc746bee914c3c5c7da7d76431e885d2a6eed0f533`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 1.7 MB (1729952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8147bcc08b9cbcfdae9af36c9e7f89033498940930354934350cd21377ac5aca`  
		Last Modified: Tue, 27 Oct 2026 17:25:33 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:next-bookworm`

```console
$ docker pull ghost@sha256:9eef87674f10361302886c94c0164e0d5c6f8978ec6fe330bc5cec683683bd5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-bookworm` - linux; amd64

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

### `ghost:next-bookworm` - unknown; unknown

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

### `ghost:next-bookworm` - linux; arm64 variant v8

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

### `ghost:next-bookworm` - unknown; unknown

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
