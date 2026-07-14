<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:6`](#ghost6)
-	[`ghost:6-alpine`](#ghost6-alpine)
-	[`ghost:6-alpine3.23`](#ghost6-alpine323)
-	[`ghost:6-bookworm`](#ghost6-bookworm)
-	[`ghost:6.52`](#ghost652)
-	[`ghost:6.52-alpine`](#ghost652-alpine)
-	[`ghost:6.52-alpine3.23`](#ghost652-alpine323)
-	[`ghost:6.52-bookworm`](#ghost652-bookworm)
-	[`ghost:6.52.1`](#ghost6521)
-	[`ghost:6.52.1-alpine`](#ghost6521-alpine)
-	[`ghost:6.52.1-alpine3.23`](#ghost6521-alpine323)
-	[`ghost:6.52.1-bookworm`](#ghost6521-bookworm)
-	[`ghost:alpine`](#ghostalpine)
-	[`ghost:alpine3.23`](#ghostalpine323)
-	[`ghost:bookworm`](#ghostbookworm)
-	[`ghost:latest`](#ghostlatest)

## `ghost:6`

```console
$ docker pull ghost@sha256:cf1d38b036e17e9997b44617d6252a56f2fea371ec824a708238ef2470f92ec6
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
$ docker pull ghost@sha256:359b72ac06eff96199bbb095f5db49727f1c5230bbcaa31ffcffcba06af9cdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281894962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fe2d72b6795eda912462ff675edfb1ee130d1d24eb5105a01ebe8c4b8a493d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:48:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:48:37 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:37 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:45:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:45:56 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:46:05 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:46:40 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:46:40 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:46:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:46:40 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:46:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33bee2ce77b0c3748e6a8f2b808a5ab1d2ed466d5ee5a9b991cba597bd028e2`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65bd65926c2b38f8a7d518cefa8524e1484182dd6ffba7883654d886b4cfb3`  
		Last Modified: Tue, 14 Jul 2026 01:48:53 GMT  
		Size: 49.9 MB (49937657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392df1351ac2d7628088ee58b248e62a2c1b749e4beb94b7640994df1857c8ca`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 1.7 MB (1712633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437216719022b2853003498de36b055604c6ff1bcee290b912ed44226f2d3d46`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc27d9eacaaab40d411d82a9d0e35da6d9a1fe212ca72a993f3a82211dd1883a`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 1.2 MB (1247572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386773e296da43b1f39ab7b1168ada9d38c27ea0d909959b8ad1392c8f9280d7`  
		Last Modified: Tue, 14 Jul 2026 02:47:25 GMT  
		Size: 14.5 MB (14452543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e332fc9387d572876facda0a0ff2f0d1313f65752198fa7d4a1d19004062ca`  
		Last Modified: Tue, 14 Jul 2026 02:47:28 GMT  
		Size: 186.3 MB (186307585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae2431c22d9e18690c4c1a9131af73d4d676a275c784f7c2276098a21eae5eb`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:9cf9484d5e30b7b188a9dfc75c402c8d44b3ded1fa1818345310aa7562411f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b105caebff35c4e718d3f2a1b17f2e00c47d3abf2b055ba94ba307a20614c`

```dockerfile
```

-	Layers:
	-	`sha256:6e937e48022fbc8f36f660669f2393f18c9d129185ac4b3e0db2d3551ac4ce7b`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 5.5 MB (5502902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89dd05bdfb5e8cf3e84aba393a3e27486d0bb38a129b72b77d7606597b0930d4`  
		Last Modified: Tue, 14 Jul 2026 02:47:23 GMT  
		Size: 26.6 KB (26591 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:0c6132af68a8114561764bdc1a55affb7037135b502ccc6577057827e4610fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284490865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5acc40eec559f3af3ac5ad6c91cf8ac1ed5c4030a58495ad16e84b4cef8aef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:41:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 02:41:54 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 02:42:08 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:42:08 GMT
CMD ["node"]
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 04:31:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:31:59 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 04:32:12 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 04:34:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 04:34:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 04:34:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:34:26 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 04:34:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6222ee32f2bc642288521da26315ded0aae7470b70ea0abe9116ac6aa598c5ca`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ecf953ef99b4922d1b1077cb1d0340c961d751bd90103bb57fb0e6b9a102d0`  
		Last Modified: Tue, 14 Jul 2026 02:42:22 GMT  
		Size: 44.6 MB (44628003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1ea748121dfa1ea1d5143d8aaae3589897492ea1f3f02d498c5ef4f5de2808`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 1.7 MB (1712823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b2416c0f532b822b189b4754c1fa38b12bb706958d3abd48affe6ac80b6c71`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c71fbfaae6d080fecf3f112bdfcd3d93c5bd9a9a610f1730ca318368710113`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 1.2 MB (1214367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1950f4db6035e783f4b2b33413759f0d53e53146cc7c88307558c9cc4fede3a8`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 14.4 MB (14447039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95317e38ed5547623f9d0cf90d1dbd10f0cc016f7767adbf1d0055fd6ffa1497`  
		Last Modified: Tue, 14 Jul 2026 04:35:22 GMT  
		Size: 198.5 MB (198544523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bdc03df01c87f6db0c301af3bb2680ab996fcf7e9327ac4a14785ece0de0e8`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:ba7256160844160b00fb0c9a4b8d40d2a3f11d3b897031c7c68cf0253e08d05a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a780a401171452176559ef629085f84538848dbc480e3cda1c99468571beb99`

```dockerfile
```

-	Layers:
	-	`sha256:e5421cf172579d77371e995a0ba454a1fae495f45533005da541f84bf55635da`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 5.5 MB (5508789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1fab290695b71f437fb5b38c8e8b7452efc15afc34e3b97c9632755f1be716`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 26.7 KB (26730 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1f97dbd5b1605c6b889a7a5a087e827c4197ea9e7ce2aeb7d3e4dc4c33c78b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281096516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554d234e3d02ec706a3f3b25314947b0709f3ef3c9caae7f30ba16f28e2943b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:51:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:51:35 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:51:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:51:48 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:53:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:53:27 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:53:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:54:16 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:54:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:54:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:54:17 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:54:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37f2ae06d60c22e837dcfcee1fa0868a7840e6560333772f0196a0dbe4a221b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bc15716dc9232e0dc3223672fdedb2896c61f14295131b8436d936aaac4536`  
		Last Modified: Tue, 14 Jul 2026 01:52:05 GMT  
		Size: 50.1 MB (50061413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6c1ecf84f2a8e7e77270b7f2d223057290e5c96c0064bcd19e45011d55a07b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 1.7 MB (1712634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5b9e098e658595324f08a1887bd0e4a4f25da7ce64517166e4e0c695a1a99a`  
		Last Modified: Tue, 14 Jul 2026 01:52:04 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91450b407551c6d3faccff1e9f7fd91910532df1a5f9acd25b1526e9814b0fe6`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 1.2 MB (1201457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d000292f170413ca697119a7638ef1bc5cfd3376d276d24188f32141f37622a2`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 14.5 MB (14453529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e0808d121f33d1d00fd6b8d6cc737983b4f48db6c77acc19879135101a09ef`  
		Last Modified: Tue, 14 Jul 2026 02:55:13 GMT  
		Size: 185.5 MB (185545906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcabdfd46b7939ef299dc367da77b60fdd3d3cf872a1497cbaec5b3633db8583`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:a6c73ea343753d4acc6c0bde6038b073bccb43c5e76957b4625db966538ab1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5530063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb49cf1d1b009a6b68dab36cf1e9ff029ad9442025fdcd11544ae088423ebbc`

```dockerfile
```

-	Layers:
	-	`sha256:937a76d691ff51fd1ceb050e0fdc9bba6370653221024fb3ea0e5f4885c2aa20`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 5.5 MB (5503289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc633ccc02f81af880667fd456a875d78b60b5d10f1298b56f71d89b282ddfc`  
		Last Modified: Tue, 14 Jul 2026 02:55:08 GMT  
		Size: 26.8 KB (26774 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-alpine`

```console
$ docker pull ghost@sha256:471756274a224437d983ba0abd882d9bd735de33a3a44a9338596ebb2f206f6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7ae4a92e3a15078a7dfa0a08075ad5f11fef427c2609118bfcfeff93b3d31612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259618465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25429fbab672eed0b8f3a277f7918d863a1985e4eeb891290fa46ece408de127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:01:40 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:01:40 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:40 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:01:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:01:44 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:01 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:01 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:01 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:02 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09459c600bcd1eef9487085767f8f2247a3557fc8fe981ceb901dd2f2f212131`  
		Last Modified: Tue, 23 Jun 2026 19:01:59 GMT  
		Size: 52.3 MB (52313242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9480d20a2dd4b119e790de5e7b11bc0288166b479ec70b8d68e09c41061e777`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 1.3 MB (1262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90c4239b38aaad5caad9074c5b4a41d0c048e46224d00cf5e51d63a5183f214`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f3e997cded7b7d40463182e946f46ef1e4f78fb96e3c1ff719527f4f7034dd`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 821.9 KB (821867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8d75592ebd07b4e54d7ded27a76028469ca88af7a2d5550bb882699a51f390`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 903.9 KB (903942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c30f401c8708bb4fabab812e343204f3ee26bc2a2f5600c80fe86e6db78973`  
		Last Modified: Fri, 10 Jul 2026 16:36:43 GMT  
		Size: 14.5 MB (14451876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0896277d9e7a783907588b01272603dd3d619d6b7c775c8830d7c344531d74`  
		Last Modified: Fri, 10 Jul 2026 16:36:46 GMT  
		Size: 186.0 MB (186019999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3323f39082588878b1033dd714fc6ff118e5f3fdb62e0d78a766d9c3d4f7c41d`  
		Last Modified: Fri, 10 Jul 2026 16:36:44 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:313bcc9dab1340b265a85c4cfd41732816d97378f8dbe9f23ffe8e01e6537882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffda6e553f1b670c997e0fa20d021258be6aaa821473cb2981812b59aae453a4`

```dockerfile
```

-	Layers:
	-	`sha256:1921a80298a1455dcd8b411d1ba7090598a5693602fdd78781fdf727d2c345a6`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 3.3 MB (3290925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3bd9162c2b4a59b2a51ee77d574f4a40db7dd050dc5f83d59d01235597e24b4`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 26.6 KB (26630 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:cce68a11c22e309e29c15a0af3f639c4c276f43cbbb4613443ab16d3567c2f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259768381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c27a276323ddb8ec744de06d147dbbc36fbe6de6e2e46e0f18786f03e0df3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:33:03 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:33:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:03 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:33:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:33:07 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:52 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:19 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:20 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:20 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669cca7a7656c07133342b7b1e6ac1b44585834d67726b11dc4fb4e006b30ab6`  
		Last Modified: Tue, 23 Jun 2026 19:33:24 GMT  
		Size: 52.7 MB (52665811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9bd5aab1d649d54d2eb7f6a111e02630dbc561d429f5a213f35ada5601f984`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 1.3 MB (1262968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ce2922713aab9dd2a510c14aae6c3c0d03bd77923d459571e34f79a58deb3`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14421d0a093e10d5deedd95598762668f7d1b9affb412917b1a1f3976a016f7`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 891.3 KB (891280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b043855f13ad084a1feb078f0d54d1dba8723b8e431904a8a3f89ae46447ea0f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 858.1 KB (858088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa3a01e4f4d5a2148d3009e4f40941af11c14616ee351386fd70b3bb17d4309`  
		Last Modified: Fri, 10 Jul 2026 16:37:10 GMT  
		Size: 14.5 MB (14453210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db66b9019fd3db9a8a89fc0869eb87b008dd1eaf7fb5beafb1298fac2194c277`  
		Last Modified: Fri, 10 Jul 2026 16:37:13 GMT  
		Size: 185.5 MB (185454144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9152fdd5cb5af93aefff44b72be7b32c40ad9b80f871002484d46e52f76423`  
		Last Modified: Fri, 10 Jul 2026 16:37:11 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c2b175e73d27749a4a3fec2f6c0fe8e6e61552c28720be4cea4da2b3bc5ad45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2759d040aa3f2bc793c51c8d4e538bda70dcf231aa7b715da3c97496f6de24`

```dockerfile
```

-	Layers:
	-	`sha256:6881f606650ad07a3491313e425bcb924de47c24b8458dd1fd9675cab488ed61`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 3.3 MB (3290467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28696e8013e3fca8643db5028cf34780f250e74f6dd7f3c6221bfe41ae5660f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 26.8 KB (26827 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-alpine3.23`

```console
$ docker pull ghost@sha256:471756274a224437d983ba0abd882d9bd735de33a3a44a9338596ebb2f206f6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:7ae4a92e3a15078a7dfa0a08075ad5f11fef427c2609118bfcfeff93b3d31612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259618465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25429fbab672eed0b8f3a277f7918d863a1985e4eeb891290fa46ece408de127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:01:40 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:01:40 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:40 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:01:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:01:44 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:01 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:01 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:01 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:02 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09459c600bcd1eef9487085767f8f2247a3557fc8fe981ceb901dd2f2f212131`  
		Last Modified: Tue, 23 Jun 2026 19:01:59 GMT  
		Size: 52.3 MB (52313242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9480d20a2dd4b119e790de5e7b11bc0288166b479ec70b8d68e09c41061e777`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 1.3 MB (1262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90c4239b38aaad5caad9074c5b4a41d0c048e46224d00cf5e51d63a5183f214`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f3e997cded7b7d40463182e946f46ef1e4f78fb96e3c1ff719527f4f7034dd`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 821.9 KB (821867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8d75592ebd07b4e54d7ded27a76028469ca88af7a2d5550bb882699a51f390`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 903.9 KB (903942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c30f401c8708bb4fabab812e343204f3ee26bc2a2f5600c80fe86e6db78973`  
		Last Modified: Fri, 10 Jul 2026 16:36:43 GMT  
		Size: 14.5 MB (14451876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0896277d9e7a783907588b01272603dd3d619d6b7c775c8830d7c344531d74`  
		Last Modified: Fri, 10 Jul 2026 16:36:46 GMT  
		Size: 186.0 MB (186019999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3323f39082588878b1033dd714fc6ff118e5f3fdb62e0d78a766d9c3d4f7c41d`  
		Last Modified: Fri, 10 Jul 2026 16:36:44 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:313bcc9dab1340b265a85c4cfd41732816d97378f8dbe9f23ffe8e01e6537882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffda6e553f1b670c997e0fa20d021258be6aaa821473cb2981812b59aae453a4`

```dockerfile
```

-	Layers:
	-	`sha256:1921a80298a1455dcd8b411d1ba7090598a5693602fdd78781fdf727d2c345a6`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 3.3 MB (3290925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3bd9162c2b4a59b2a51ee77d574f4a40db7dd050dc5f83d59d01235597e24b4`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 26.6 KB (26630 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:cce68a11c22e309e29c15a0af3f639c4c276f43cbbb4613443ab16d3567c2f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259768381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c27a276323ddb8ec744de06d147dbbc36fbe6de6e2e46e0f18786f03e0df3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:33:03 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:33:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:03 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:33:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:33:07 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:52 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:19 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:20 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:20 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669cca7a7656c07133342b7b1e6ac1b44585834d67726b11dc4fb4e006b30ab6`  
		Last Modified: Tue, 23 Jun 2026 19:33:24 GMT  
		Size: 52.7 MB (52665811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9bd5aab1d649d54d2eb7f6a111e02630dbc561d429f5a213f35ada5601f984`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 1.3 MB (1262968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ce2922713aab9dd2a510c14aae6c3c0d03bd77923d459571e34f79a58deb3`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14421d0a093e10d5deedd95598762668f7d1b9affb412917b1a1f3976a016f7`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 891.3 KB (891280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b043855f13ad084a1feb078f0d54d1dba8723b8e431904a8a3f89ae46447ea0f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 858.1 KB (858088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa3a01e4f4d5a2148d3009e4f40941af11c14616ee351386fd70b3bb17d4309`  
		Last Modified: Fri, 10 Jul 2026 16:37:10 GMT  
		Size: 14.5 MB (14453210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db66b9019fd3db9a8a89fc0869eb87b008dd1eaf7fb5beafb1298fac2194c277`  
		Last Modified: Fri, 10 Jul 2026 16:37:13 GMT  
		Size: 185.5 MB (185454144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9152fdd5cb5af93aefff44b72be7b32c40ad9b80f871002484d46e52f76423`  
		Last Modified: Fri, 10 Jul 2026 16:37:11 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c2b175e73d27749a4a3fec2f6c0fe8e6e61552c28720be4cea4da2b3bc5ad45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2759d040aa3f2bc793c51c8d4e538bda70dcf231aa7b715da3c97496f6de24`

```dockerfile
```

-	Layers:
	-	`sha256:6881f606650ad07a3491313e425bcb924de47c24b8458dd1fd9675cab488ed61`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 3.3 MB (3290467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28696e8013e3fca8643db5028cf34780f250e74f6dd7f3c6221bfe41ae5660f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 26.8 KB (26827 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-bookworm`

```console
$ docker pull ghost@sha256:cf1d38b036e17e9997b44617d6252a56f2fea371ec824a708238ef2470f92ec6
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
$ docker pull ghost@sha256:359b72ac06eff96199bbb095f5db49727f1c5230bbcaa31ffcffcba06af9cdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281894962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fe2d72b6795eda912462ff675edfb1ee130d1d24eb5105a01ebe8c4b8a493d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:48:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:48:37 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:37 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:45:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:45:56 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:46:05 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:46:40 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:46:40 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:46:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:46:40 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:46:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33bee2ce77b0c3748e6a8f2b808a5ab1d2ed466d5ee5a9b991cba597bd028e2`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65bd65926c2b38f8a7d518cefa8524e1484182dd6ffba7883654d886b4cfb3`  
		Last Modified: Tue, 14 Jul 2026 01:48:53 GMT  
		Size: 49.9 MB (49937657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392df1351ac2d7628088ee58b248e62a2c1b749e4beb94b7640994df1857c8ca`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 1.7 MB (1712633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437216719022b2853003498de36b055604c6ff1bcee290b912ed44226f2d3d46`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc27d9eacaaab40d411d82a9d0e35da6d9a1fe212ca72a993f3a82211dd1883a`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 1.2 MB (1247572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386773e296da43b1f39ab7b1168ada9d38c27ea0d909959b8ad1392c8f9280d7`  
		Last Modified: Tue, 14 Jul 2026 02:47:25 GMT  
		Size: 14.5 MB (14452543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e332fc9387d572876facda0a0ff2f0d1313f65752198fa7d4a1d19004062ca`  
		Last Modified: Tue, 14 Jul 2026 02:47:28 GMT  
		Size: 186.3 MB (186307585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae2431c22d9e18690c4c1a9131af73d4d676a275c784f7c2276098a21eae5eb`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:9cf9484d5e30b7b188a9dfc75c402c8d44b3ded1fa1818345310aa7562411f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b105caebff35c4e718d3f2a1b17f2e00c47d3abf2b055ba94ba307a20614c`

```dockerfile
```

-	Layers:
	-	`sha256:6e937e48022fbc8f36f660669f2393f18c9d129185ac4b3e0db2d3551ac4ce7b`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 5.5 MB (5502902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89dd05bdfb5e8cf3e84aba393a3e27486d0bb38a129b72b77d7606597b0930d4`  
		Last Modified: Tue, 14 Jul 2026 02:47:23 GMT  
		Size: 26.6 KB (26591 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:0c6132af68a8114561764bdc1a55affb7037135b502ccc6577057827e4610fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284490865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5acc40eec559f3af3ac5ad6c91cf8ac1ed5c4030a58495ad16e84b4cef8aef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:41:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 02:41:54 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 02:42:08 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:42:08 GMT
CMD ["node"]
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 04:31:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:31:59 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 04:32:12 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 04:34:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 04:34:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 04:34:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:34:26 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 04:34:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6222ee32f2bc642288521da26315ded0aae7470b70ea0abe9116ac6aa598c5ca`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ecf953ef99b4922d1b1077cb1d0340c961d751bd90103bb57fb0e6b9a102d0`  
		Last Modified: Tue, 14 Jul 2026 02:42:22 GMT  
		Size: 44.6 MB (44628003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1ea748121dfa1ea1d5143d8aaae3589897492ea1f3f02d498c5ef4f5de2808`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 1.7 MB (1712823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b2416c0f532b822b189b4754c1fa38b12bb706958d3abd48affe6ac80b6c71`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c71fbfaae6d080fecf3f112bdfcd3d93c5bd9a9a610f1730ca318368710113`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 1.2 MB (1214367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1950f4db6035e783f4b2b33413759f0d53e53146cc7c88307558c9cc4fede3a8`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 14.4 MB (14447039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95317e38ed5547623f9d0cf90d1dbd10f0cc016f7767adbf1d0055fd6ffa1497`  
		Last Modified: Tue, 14 Jul 2026 04:35:22 GMT  
		Size: 198.5 MB (198544523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bdc03df01c87f6db0c301af3bb2680ab996fcf7e9327ac4a14785ece0de0e8`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:ba7256160844160b00fb0c9a4b8d40d2a3f11d3b897031c7c68cf0253e08d05a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a780a401171452176559ef629085f84538848dbc480e3cda1c99468571beb99`

```dockerfile
```

-	Layers:
	-	`sha256:e5421cf172579d77371e995a0ba454a1fae495f45533005da541f84bf55635da`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 5.5 MB (5508789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1fab290695b71f437fb5b38c8e8b7452efc15afc34e3b97c9632755f1be716`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 26.7 KB (26730 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1f97dbd5b1605c6b889a7a5a087e827c4197ea9e7ce2aeb7d3e4dc4c33c78b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281096516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554d234e3d02ec706a3f3b25314947b0709f3ef3c9caae7f30ba16f28e2943b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:51:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:51:35 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:51:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:51:48 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:53:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:53:27 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:53:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:54:16 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:54:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:54:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:54:17 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:54:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37f2ae06d60c22e837dcfcee1fa0868a7840e6560333772f0196a0dbe4a221b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bc15716dc9232e0dc3223672fdedb2896c61f14295131b8436d936aaac4536`  
		Last Modified: Tue, 14 Jul 2026 01:52:05 GMT  
		Size: 50.1 MB (50061413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6c1ecf84f2a8e7e77270b7f2d223057290e5c96c0064bcd19e45011d55a07b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 1.7 MB (1712634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5b9e098e658595324f08a1887bd0e4a4f25da7ce64517166e4e0c695a1a99a`  
		Last Modified: Tue, 14 Jul 2026 01:52:04 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91450b407551c6d3faccff1e9f7fd91910532df1a5f9acd25b1526e9814b0fe6`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 1.2 MB (1201457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d000292f170413ca697119a7638ef1bc5cfd3376d276d24188f32141f37622a2`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 14.5 MB (14453529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e0808d121f33d1d00fd6b8d6cc737983b4f48db6c77acc19879135101a09ef`  
		Last Modified: Tue, 14 Jul 2026 02:55:13 GMT  
		Size: 185.5 MB (185545906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcabdfd46b7939ef299dc367da77b60fdd3d3cf872a1497cbaec5b3633db8583`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:a6c73ea343753d4acc6c0bde6038b073bccb43c5e76957b4625db966538ab1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5530063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb49cf1d1b009a6b68dab36cf1e9ff029ad9442025fdcd11544ae088423ebbc`

```dockerfile
```

-	Layers:
	-	`sha256:937a76d691ff51fd1ceb050e0fdc9bba6370653221024fb3ea0e5f4885c2aa20`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 5.5 MB (5503289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc633ccc02f81af880667fd456a875d78b60b5d10f1298b56f71d89b282ddfc`  
		Last Modified: Tue, 14 Jul 2026 02:55:08 GMT  
		Size: 26.8 KB (26774 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.52`

```console
$ docker pull ghost@sha256:cf1d38b036e17e9997b44617d6252a56f2fea371ec824a708238ef2470f92ec6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.52` - linux; amd64

```console
$ docker pull ghost@sha256:359b72ac06eff96199bbb095f5db49727f1c5230bbcaa31ffcffcba06af9cdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281894962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fe2d72b6795eda912462ff675edfb1ee130d1d24eb5105a01ebe8c4b8a493d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:48:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:48:37 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:37 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:45:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:45:56 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:46:05 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:46:40 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:46:40 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:46:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:46:40 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:46:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33bee2ce77b0c3748e6a8f2b808a5ab1d2ed466d5ee5a9b991cba597bd028e2`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65bd65926c2b38f8a7d518cefa8524e1484182dd6ffba7883654d886b4cfb3`  
		Last Modified: Tue, 14 Jul 2026 01:48:53 GMT  
		Size: 49.9 MB (49937657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392df1351ac2d7628088ee58b248e62a2c1b749e4beb94b7640994df1857c8ca`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 1.7 MB (1712633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437216719022b2853003498de36b055604c6ff1bcee290b912ed44226f2d3d46`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc27d9eacaaab40d411d82a9d0e35da6d9a1fe212ca72a993f3a82211dd1883a`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 1.2 MB (1247572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386773e296da43b1f39ab7b1168ada9d38c27ea0d909959b8ad1392c8f9280d7`  
		Last Modified: Tue, 14 Jul 2026 02:47:25 GMT  
		Size: 14.5 MB (14452543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e332fc9387d572876facda0a0ff2f0d1313f65752198fa7d4a1d19004062ca`  
		Last Modified: Tue, 14 Jul 2026 02:47:28 GMT  
		Size: 186.3 MB (186307585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae2431c22d9e18690c4c1a9131af73d4d676a275c784f7c2276098a21eae5eb`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52` - unknown; unknown

```console
$ docker pull ghost@sha256:9cf9484d5e30b7b188a9dfc75c402c8d44b3ded1fa1818345310aa7562411f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b105caebff35c4e718d3f2a1b17f2e00c47d3abf2b055ba94ba307a20614c`

```dockerfile
```

-	Layers:
	-	`sha256:6e937e48022fbc8f36f660669f2393f18c9d129185ac4b3e0db2d3551ac4ce7b`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 5.5 MB (5502902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89dd05bdfb5e8cf3e84aba393a3e27486d0bb38a129b72b77d7606597b0930d4`  
		Last Modified: Tue, 14 Jul 2026 02:47:23 GMT  
		Size: 26.6 KB (26591 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52` - linux; arm variant v7

```console
$ docker pull ghost@sha256:0c6132af68a8114561764bdc1a55affb7037135b502ccc6577057827e4610fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284490865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5acc40eec559f3af3ac5ad6c91cf8ac1ed5c4030a58495ad16e84b4cef8aef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:41:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 02:41:54 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 02:42:08 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:42:08 GMT
CMD ["node"]
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 04:31:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:31:59 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 04:32:12 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 04:34:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 04:34:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 04:34:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:34:26 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 04:34:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6222ee32f2bc642288521da26315ded0aae7470b70ea0abe9116ac6aa598c5ca`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ecf953ef99b4922d1b1077cb1d0340c961d751bd90103bb57fb0e6b9a102d0`  
		Last Modified: Tue, 14 Jul 2026 02:42:22 GMT  
		Size: 44.6 MB (44628003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1ea748121dfa1ea1d5143d8aaae3589897492ea1f3f02d498c5ef4f5de2808`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 1.7 MB (1712823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b2416c0f532b822b189b4754c1fa38b12bb706958d3abd48affe6ac80b6c71`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c71fbfaae6d080fecf3f112bdfcd3d93c5bd9a9a610f1730ca318368710113`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 1.2 MB (1214367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1950f4db6035e783f4b2b33413759f0d53e53146cc7c88307558c9cc4fede3a8`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 14.4 MB (14447039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95317e38ed5547623f9d0cf90d1dbd10f0cc016f7767adbf1d0055fd6ffa1497`  
		Last Modified: Tue, 14 Jul 2026 04:35:22 GMT  
		Size: 198.5 MB (198544523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bdc03df01c87f6db0c301af3bb2680ab996fcf7e9327ac4a14785ece0de0e8`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52` - unknown; unknown

```console
$ docker pull ghost@sha256:ba7256160844160b00fb0c9a4b8d40d2a3f11d3b897031c7c68cf0253e08d05a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a780a401171452176559ef629085f84538848dbc480e3cda1c99468571beb99`

```dockerfile
```

-	Layers:
	-	`sha256:e5421cf172579d77371e995a0ba454a1fae495f45533005da541f84bf55635da`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 5.5 MB (5508789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1fab290695b71f437fb5b38c8e8b7452efc15afc34e3b97c9632755f1be716`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 26.7 KB (26730 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1f97dbd5b1605c6b889a7a5a087e827c4197ea9e7ce2aeb7d3e4dc4c33c78b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281096516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554d234e3d02ec706a3f3b25314947b0709f3ef3c9caae7f30ba16f28e2943b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:51:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:51:35 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:51:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:51:48 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:53:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:53:27 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:53:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:54:16 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:54:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:54:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:54:17 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:54:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37f2ae06d60c22e837dcfcee1fa0868a7840e6560333772f0196a0dbe4a221b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bc15716dc9232e0dc3223672fdedb2896c61f14295131b8436d936aaac4536`  
		Last Modified: Tue, 14 Jul 2026 01:52:05 GMT  
		Size: 50.1 MB (50061413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6c1ecf84f2a8e7e77270b7f2d223057290e5c96c0064bcd19e45011d55a07b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 1.7 MB (1712634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5b9e098e658595324f08a1887bd0e4a4f25da7ce64517166e4e0c695a1a99a`  
		Last Modified: Tue, 14 Jul 2026 01:52:04 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91450b407551c6d3faccff1e9f7fd91910532df1a5f9acd25b1526e9814b0fe6`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 1.2 MB (1201457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d000292f170413ca697119a7638ef1bc5cfd3376d276d24188f32141f37622a2`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 14.5 MB (14453529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e0808d121f33d1d00fd6b8d6cc737983b4f48db6c77acc19879135101a09ef`  
		Last Modified: Tue, 14 Jul 2026 02:55:13 GMT  
		Size: 185.5 MB (185545906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcabdfd46b7939ef299dc367da77b60fdd3d3cf872a1497cbaec5b3633db8583`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52` - unknown; unknown

```console
$ docker pull ghost@sha256:a6c73ea343753d4acc6c0bde6038b073bccb43c5e76957b4625db966538ab1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5530063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb49cf1d1b009a6b68dab36cf1e9ff029ad9442025fdcd11544ae088423ebbc`

```dockerfile
```

-	Layers:
	-	`sha256:937a76d691ff51fd1ceb050e0fdc9bba6370653221024fb3ea0e5f4885c2aa20`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 5.5 MB (5503289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc633ccc02f81af880667fd456a875d78b60b5d10f1298b56f71d89b282ddfc`  
		Last Modified: Tue, 14 Jul 2026 02:55:08 GMT  
		Size: 26.8 KB (26774 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.52-alpine`

```console
$ docker pull ghost@sha256:471756274a224437d983ba0abd882d9bd735de33a3a44a9338596ebb2f206f6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.52-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7ae4a92e3a15078a7dfa0a08075ad5f11fef427c2609118bfcfeff93b3d31612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259618465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25429fbab672eed0b8f3a277f7918d863a1985e4eeb891290fa46ece408de127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:01:40 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:01:40 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:40 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:01:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:01:44 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:01 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:01 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:01 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:02 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09459c600bcd1eef9487085767f8f2247a3557fc8fe981ceb901dd2f2f212131`  
		Last Modified: Tue, 23 Jun 2026 19:01:59 GMT  
		Size: 52.3 MB (52313242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9480d20a2dd4b119e790de5e7b11bc0288166b479ec70b8d68e09c41061e777`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 1.3 MB (1262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90c4239b38aaad5caad9074c5b4a41d0c048e46224d00cf5e51d63a5183f214`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f3e997cded7b7d40463182e946f46ef1e4f78fb96e3c1ff719527f4f7034dd`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 821.9 KB (821867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8d75592ebd07b4e54d7ded27a76028469ca88af7a2d5550bb882699a51f390`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 903.9 KB (903942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c30f401c8708bb4fabab812e343204f3ee26bc2a2f5600c80fe86e6db78973`  
		Last Modified: Fri, 10 Jul 2026 16:36:43 GMT  
		Size: 14.5 MB (14451876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0896277d9e7a783907588b01272603dd3d619d6b7c775c8830d7c344531d74`  
		Last Modified: Fri, 10 Jul 2026 16:36:46 GMT  
		Size: 186.0 MB (186019999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3323f39082588878b1033dd714fc6ff118e5f3fdb62e0d78a766d9c3d4f7c41d`  
		Last Modified: Fri, 10 Jul 2026 16:36:44 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:313bcc9dab1340b265a85c4cfd41732816d97378f8dbe9f23ffe8e01e6537882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffda6e553f1b670c997e0fa20d021258be6aaa821473cb2981812b59aae453a4`

```dockerfile
```

-	Layers:
	-	`sha256:1921a80298a1455dcd8b411d1ba7090598a5693602fdd78781fdf727d2c345a6`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 3.3 MB (3290925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3bd9162c2b4a59b2a51ee77d574f4a40db7dd050dc5f83d59d01235597e24b4`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 26.6 KB (26630 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:cce68a11c22e309e29c15a0af3f639c4c276f43cbbb4613443ab16d3567c2f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259768381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c27a276323ddb8ec744de06d147dbbc36fbe6de6e2e46e0f18786f03e0df3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:33:03 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:33:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:03 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:33:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:33:07 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:52 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:19 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:20 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:20 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669cca7a7656c07133342b7b1e6ac1b44585834d67726b11dc4fb4e006b30ab6`  
		Last Modified: Tue, 23 Jun 2026 19:33:24 GMT  
		Size: 52.7 MB (52665811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9bd5aab1d649d54d2eb7f6a111e02630dbc561d429f5a213f35ada5601f984`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 1.3 MB (1262968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ce2922713aab9dd2a510c14aae6c3c0d03bd77923d459571e34f79a58deb3`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14421d0a093e10d5deedd95598762668f7d1b9affb412917b1a1f3976a016f7`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 891.3 KB (891280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b043855f13ad084a1feb078f0d54d1dba8723b8e431904a8a3f89ae46447ea0f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 858.1 KB (858088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa3a01e4f4d5a2148d3009e4f40941af11c14616ee351386fd70b3bb17d4309`  
		Last Modified: Fri, 10 Jul 2026 16:37:10 GMT  
		Size: 14.5 MB (14453210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db66b9019fd3db9a8a89fc0869eb87b008dd1eaf7fb5beafb1298fac2194c277`  
		Last Modified: Fri, 10 Jul 2026 16:37:13 GMT  
		Size: 185.5 MB (185454144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9152fdd5cb5af93aefff44b72be7b32c40ad9b80f871002484d46e52f76423`  
		Last Modified: Fri, 10 Jul 2026 16:37:11 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c2b175e73d27749a4a3fec2f6c0fe8e6e61552c28720be4cea4da2b3bc5ad45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2759d040aa3f2bc793c51c8d4e538bda70dcf231aa7b715da3c97496f6de24`

```dockerfile
```

-	Layers:
	-	`sha256:6881f606650ad07a3491313e425bcb924de47c24b8458dd1fd9675cab488ed61`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 3.3 MB (3290467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28696e8013e3fca8643db5028cf34780f250e74f6dd7f3c6221bfe41ae5660f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 26.8 KB (26827 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.52-alpine3.23`

```console
$ docker pull ghost@sha256:471756274a224437d983ba0abd882d9bd735de33a3a44a9338596ebb2f206f6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.52-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:7ae4a92e3a15078a7dfa0a08075ad5f11fef427c2609118bfcfeff93b3d31612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259618465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25429fbab672eed0b8f3a277f7918d863a1985e4eeb891290fa46ece408de127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:01:40 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:01:40 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:40 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:01:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:01:44 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:01 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:01 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:01 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:02 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09459c600bcd1eef9487085767f8f2247a3557fc8fe981ceb901dd2f2f212131`  
		Last Modified: Tue, 23 Jun 2026 19:01:59 GMT  
		Size: 52.3 MB (52313242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9480d20a2dd4b119e790de5e7b11bc0288166b479ec70b8d68e09c41061e777`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 1.3 MB (1262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90c4239b38aaad5caad9074c5b4a41d0c048e46224d00cf5e51d63a5183f214`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f3e997cded7b7d40463182e946f46ef1e4f78fb96e3c1ff719527f4f7034dd`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 821.9 KB (821867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8d75592ebd07b4e54d7ded27a76028469ca88af7a2d5550bb882699a51f390`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 903.9 KB (903942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c30f401c8708bb4fabab812e343204f3ee26bc2a2f5600c80fe86e6db78973`  
		Last Modified: Fri, 10 Jul 2026 16:36:43 GMT  
		Size: 14.5 MB (14451876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0896277d9e7a783907588b01272603dd3d619d6b7c775c8830d7c344531d74`  
		Last Modified: Fri, 10 Jul 2026 16:36:46 GMT  
		Size: 186.0 MB (186019999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3323f39082588878b1033dd714fc6ff118e5f3fdb62e0d78a766d9c3d4f7c41d`  
		Last Modified: Fri, 10 Jul 2026 16:36:44 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:313bcc9dab1340b265a85c4cfd41732816d97378f8dbe9f23ffe8e01e6537882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffda6e553f1b670c997e0fa20d021258be6aaa821473cb2981812b59aae453a4`

```dockerfile
```

-	Layers:
	-	`sha256:1921a80298a1455dcd8b411d1ba7090598a5693602fdd78781fdf727d2c345a6`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 3.3 MB (3290925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3bd9162c2b4a59b2a51ee77d574f4a40db7dd050dc5f83d59d01235597e24b4`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 26.6 KB (26630 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:cce68a11c22e309e29c15a0af3f639c4c276f43cbbb4613443ab16d3567c2f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259768381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c27a276323ddb8ec744de06d147dbbc36fbe6de6e2e46e0f18786f03e0df3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:33:03 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:33:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:03 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:33:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:33:07 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:52 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:19 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:20 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:20 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669cca7a7656c07133342b7b1e6ac1b44585834d67726b11dc4fb4e006b30ab6`  
		Last Modified: Tue, 23 Jun 2026 19:33:24 GMT  
		Size: 52.7 MB (52665811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9bd5aab1d649d54d2eb7f6a111e02630dbc561d429f5a213f35ada5601f984`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 1.3 MB (1262968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ce2922713aab9dd2a510c14aae6c3c0d03bd77923d459571e34f79a58deb3`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14421d0a093e10d5deedd95598762668f7d1b9affb412917b1a1f3976a016f7`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 891.3 KB (891280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b043855f13ad084a1feb078f0d54d1dba8723b8e431904a8a3f89ae46447ea0f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 858.1 KB (858088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa3a01e4f4d5a2148d3009e4f40941af11c14616ee351386fd70b3bb17d4309`  
		Last Modified: Fri, 10 Jul 2026 16:37:10 GMT  
		Size: 14.5 MB (14453210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db66b9019fd3db9a8a89fc0869eb87b008dd1eaf7fb5beafb1298fac2194c277`  
		Last Modified: Fri, 10 Jul 2026 16:37:13 GMT  
		Size: 185.5 MB (185454144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9152fdd5cb5af93aefff44b72be7b32c40ad9b80f871002484d46e52f76423`  
		Last Modified: Fri, 10 Jul 2026 16:37:11 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c2b175e73d27749a4a3fec2f6c0fe8e6e61552c28720be4cea4da2b3bc5ad45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2759d040aa3f2bc793c51c8d4e538bda70dcf231aa7b715da3c97496f6de24`

```dockerfile
```

-	Layers:
	-	`sha256:6881f606650ad07a3491313e425bcb924de47c24b8458dd1fd9675cab488ed61`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 3.3 MB (3290467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28696e8013e3fca8643db5028cf34780f250e74f6dd7f3c6221bfe41ae5660f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 26.8 KB (26827 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.52-bookworm`

```console
$ docker pull ghost@sha256:cf1d38b036e17e9997b44617d6252a56f2fea371ec824a708238ef2470f92ec6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.52-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:359b72ac06eff96199bbb095f5db49727f1c5230bbcaa31ffcffcba06af9cdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281894962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fe2d72b6795eda912462ff675edfb1ee130d1d24eb5105a01ebe8c4b8a493d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:48:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:48:37 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:37 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:45:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:45:56 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:46:05 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:46:40 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:46:40 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:46:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:46:40 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:46:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33bee2ce77b0c3748e6a8f2b808a5ab1d2ed466d5ee5a9b991cba597bd028e2`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65bd65926c2b38f8a7d518cefa8524e1484182dd6ffba7883654d886b4cfb3`  
		Last Modified: Tue, 14 Jul 2026 01:48:53 GMT  
		Size: 49.9 MB (49937657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392df1351ac2d7628088ee58b248e62a2c1b749e4beb94b7640994df1857c8ca`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 1.7 MB (1712633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437216719022b2853003498de36b055604c6ff1bcee290b912ed44226f2d3d46`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc27d9eacaaab40d411d82a9d0e35da6d9a1fe212ca72a993f3a82211dd1883a`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 1.2 MB (1247572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386773e296da43b1f39ab7b1168ada9d38c27ea0d909959b8ad1392c8f9280d7`  
		Last Modified: Tue, 14 Jul 2026 02:47:25 GMT  
		Size: 14.5 MB (14452543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e332fc9387d572876facda0a0ff2f0d1313f65752198fa7d4a1d19004062ca`  
		Last Modified: Tue, 14 Jul 2026 02:47:28 GMT  
		Size: 186.3 MB (186307585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae2431c22d9e18690c4c1a9131af73d4d676a275c784f7c2276098a21eae5eb`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:9cf9484d5e30b7b188a9dfc75c402c8d44b3ded1fa1818345310aa7562411f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b105caebff35c4e718d3f2a1b17f2e00c47d3abf2b055ba94ba307a20614c`

```dockerfile
```

-	Layers:
	-	`sha256:6e937e48022fbc8f36f660669f2393f18c9d129185ac4b3e0db2d3551ac4ce7b`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 5.5 MB (5502902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89dd05bdfb5e8cf3e84aba393a3e27486d0bb38a129b72b77d7606597b0930d4`  
		Last Modified: Tue, 14 Jul 2026 02:47:23 GMT  
		Size: 26.6 KB (26591 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:0c6132af68a8114561764bdc1a55affb7037135b502ccc6577057827e4610fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284490865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5acc40eec559f3af3ac5ad6c91cf8ac1ed5c4030a58495ad16e84b4cef8aef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:41:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 02:41:54 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 02:42:08 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:42:08 GMT
CMD ["node"]
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 04:31:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:31:59 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 04:32:12 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 04:34:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 04:34:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 04:34:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:34:26 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 04:34:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6222ee32f2bc642288521da26315ded0aae7470b70ea0abe9116ac6aa598c5ca`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ecf953ef99b4922d1b1077cb1d0340c961d751bd90103bb57fb0e6b9a102d0`  
		Last Modified: Tue, 14 Jul 2026 02:42:22 GMT  
		Size: 44.6 MB (44628003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1ea748121dfa1ea1d5143d8aaae3589897492ea1f3f02d498c5ef4f5de2808`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 1.7 MB (1712823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b2416c0f532b822b189b4754c1fa38b12bb706958d3abd48affe6ac80b6c71`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c71fbfaae6d080fecf3f112bdfcd3d93c5bd9a9a610f1730ca318368710113`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 1.2 MB (1214367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1950f4db6035e783f4b2b33413759f0d53e53146cc7c88307558c9cc4fede3a8`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 14.4 MB (14447039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95317e38ed5547623f9d0cf90d1dbd10f0cc016f7767adbf1d0055fd6ffa1497`  
		Last Modified: Tue, 14 Jul 2026 04:35:22 GMT  
		Size: 198.5 MB (198544523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bdc03df01c87f6db0c301af3bb2680ab996fcf7e9327ac4a14785ece0de0e8`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:ba7256160844160b00fb0c9a4b8d40d2a3f11d3b897031c7c68cf0253e08d05a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a780a401171452176559ef629085f84538848dbc480e3cda1c99468571beb99`

```dockerfile
```

-	Layers:
	-	`sha256:e5421cf172579d77371e995a0ba454a1fae495f45533005da541f84bf55635da`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 5.5 MB (5508789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1fab290695b71f437fb5b38c8e8b7452efc15afc34e3b97c9632755f1be716`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 26.7 KB (26730 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1f97dbd5b1605c6b889a7a5a087e827c4197ea9e7ce2aeb7d3e4dc4c33c78b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281096516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554d234e3d02ec706a3f3b25314947b0709f3ef3c9caae7f30ba16f28e2943b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:51:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:51:35 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:51:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:51:48 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:53:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:53:27 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:53:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:54:16 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:54:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:54:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:54:17 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:54:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37f2ae06d60c22e837dcfcee1fa0868a7840e6560333772f0196a0dbe4a221b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bc15716dc9232e0dc3223672fdedb2896c61f14295131b8436d936aaac4536`  
		Last Modified: Tue, 14 Jul 2026 01:52:05 GMT  
		Size: 50.1 MB (50061413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6c1ecf84f2a8e7e77270b7f2d223057290e5c96c0064bcd19e45011d55a07b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 1.7 MB (1712634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5b9e098e658595324f08a1887bd0e4a4f25da7ce64517166e4e0c695a1a99a`  
		Last Modified: Tue, 14 Jul 2026 01:52:04 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91450b407551c6d3faccff1e9f7fd91910532df1a5f9acd25b1526e9814b0fe6`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 1.2 MB (1201457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d000292f170413ca697119a7638ef1bc5cfd3376d276d24188f32141f37622a2`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 14.5 MB (14453529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e0808d121f33d1d00fd6b8d6cc737983b4f48db6c77acc19879135101a09ef`  
		Last Modified: Tue, 14 Jul 2026 02:55:13 GMT  
		Size: 185.5 MB (185545906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcabdfd46b7939ef299dc367da77b60fdd3d3cf872a1497cbaec5b3633db8583`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:a6c73ea343753d4acc6c0bde6038b073bccb43c5e76957b4625db966538ab1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5530063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb49cf1d1b009a6b68dab36cf1e9ff029ad9442025fdcd11544ae088423ebbc`

```dockerfile
```

-	Layers:
	-	`sha256:937a76d691ff51fd1ceb050e0fdc9bba6370653221024fb3ea0e5f4885c2aa20`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 5.5 MB (5503289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc633ccc02f81af880667fd456a875d78b60b5d10f1298b56f71d89b282ddfc`  
		Last Modified: Tue, 14 Jul 2026 02:55:08 GMT  
		Size: 26.8 KB (26774 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.52.1`

```console
$ docker pull ghost@sha256:cf1d38b036e17e9997b44617d6252a56f2fea371ec824a708238ef2470f92ec6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.52.1` - linux; amd64

```console
$ docker pull ghost@sha256:359b72ac06eff96199bbb095f5db49727f1c5230bbcaa31ffcffcba06af9cdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281894962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fe2d72b6795eda912462ff675edfb1ee130d1d24eb5105a01ebe8c4b8a493d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:48:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:48:37 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:37 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:45:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:45:56 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:46:05 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:46:40 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:46:40 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:46:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:46:40 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:46:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33bee2ce77b0c3748e6a8f2b808a5ab1d2ed466d5ee5a9b991cba597bd028e2`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65bd65926c2b38f8a7d518cefa8524e1484182dd6ffba7883654d886b4cfb3`  
		Last Modified: Tue, 14 Jul 2026 01:48:53 GMT  
		Size: 49.9 MB (49937657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392df1351ac2d7628088ee58b248e62a2c1b749e4beb94b7640994df1857c8ca`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 1.7 MB (1712633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437216719022b2853003498de36b055604c6ff1bcee290b912ed44226f2d3d46`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc27d9eacaaab40d411d82a9d0e35da6d9a1fe212ca72a993f3a82211dd1883a`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 1.2 MB (1247572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386773e296da43b1f39ab7b1168ada9d38c27ea0d909959b8ad1392c8f9280d7`  
		Last Modified: Tue, 14 Jul 2026 02:47:25 GMT  
		Size: 14.5 MB (14452543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e332fc9387d572876facda0a0ff2f0d1313f65752198fa7d4a1d19004062ca`  
		Last Modified: Tue, 14 Jul 2026 02:47:28 GMT  
		Size: 186.3 MB (186307585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae2431c22d9e18690c4c1a9131af73d4d676a275c784f7c2276098a21eae5eb`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52.1` - unknown; unknown

```console
$ docker pull ghost@sha256:9cf9484d5e30b7b188a9dfc75c402c8d44b3ded1fa1818345310aa7562411f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b105caebff35c4e718d3f2a1b17f2e00c47d3abf2b055ba94ba307a20614c`

```dockerfile
```

-	Layers:
	-	`sha256:6e937e48022fbc8f36f660669f2393f18c9d129185ac4b3e0db2d3551ac4ce7b`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 5.5 MB (5502902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89dd05bdfb5e8cf3e84aba393a3e27486d0bb38a129b72b77d7606597b0930d4`  
		Last Modified: Tue, 14 Jul 2026 02:47:23 GMT  
		Size: 26.6 KB (26591 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52.1` - linux; arm variant v7

```console
$ docker pull ghost@sha256:0c6132af68a8114561764bdc1a55affb7037135b502ccc6577057827e4610fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284490865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5acc40eec559f3af3ac5ad6c91cf8ac1ed5c4030a58495ad16e84b4cef8aef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:41:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 02:41:54 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 02:42:08 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:42:08 GMT
CMD ["node"]
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 04:31:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:31:59 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 04:32:12 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 04:34:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 04:34:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 04:34:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:34:26 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 04:34:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6222ee32f2bc642288521da26315ded0aae7470b70ea0abe9116ac6aa598c5ca`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ecf953ef99b4922d1b1077cb1d0340c961d751bd90103bb57fb0e6b9a102d0`  
		Last Modified: Tue, 14 Jul 2026 02:42:22 GMT  
		Size: 44.6 MB (44628003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1ea748121dfa1ea1d5143d8aaae3589897492ea1f3f02d498c5ef4f5de2808`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 1.7 MB (1712823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b2416c0f532b822b189b4754c1fa38b12bb706958d3abd48affe6ac80b6c71`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c71fbfaae6d080fecf3f112bdfcd3d93c5bd9a9a610f1730ca318368710113`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 1.2 MB (1214367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1950f4db6035e783f4b2b33413759f0d53e53146cc7c88307558c9cc4fede3a8`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 14.4 MB (14447039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95317e38ed5547623f9d0cf90d1dbd10f0cc016f7767adbf1d0055fd6ffa1497`  
		Last Modified: Tue, 14 Jul 2026 04:35:22 GMT  
		Size: 198.5 MB (198544523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bdc03df01c87f6db0c301af3bb2680ab996fcf7e9327ac4a14785ece0de0e8`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52.1` - unknown; unknown

```console
$ docker pull ghost@sha256:ba7256160844160b00fb0c9a4b8d40d2a3f11d3b897031c7c68cf0253e08d05a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a780a401171452176559ef629085f84538848dbc480e3cda1c99468571beb99`

```dockerfile
```

-	Layers:
	-	`sha256:e5421cf172579d77371e995a0ba454a1fae495f45533005da541f84bf55635da`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 5.5 MB (5508789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1fab290695b71f437fb5b38c8e8b7452efc15afc34e3b97c9632755f1be716`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 26.7 KB (26730 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52.1` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1f97dbd5b1605c6b889a7a5a087e827c4197ea9e7ce2aeb7d3e4dc4c33c78b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281096516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554d234e3d02ec706a3f3b25314947b0709f3ef3c9caae7f30ba16f28e2943b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:51:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:51:35 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:51:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:51:48 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:53:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:53:27 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:53:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:54:16 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:54:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:54:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:54:17 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:54:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37f2ae06d60c22e837dcfcee1fa0868a7840e6560333772f0196a0dbe4a221b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bc15716dc9232e0dc3223672fdedb2896c61f14295131b8436d936aaac4536`  
		Last Modified: Tue, 14 Jul 2026 01:52:05 GMT  
		Size: 50.1 MB (50061413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6c1ecf84f2a8e7e77270b7f2d223057290e5c96c0064bcd19e45011d55a07b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 1.7 MB (1712634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5b9e098e658595324f08a1887bd0e4a4f25da7ce64517166e4e0c695a1a99a`  
		Last Modified: Tue, 14 Jul 2026 01:52:04 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91450b407551c6d3faccff1e9f7fd91910532df1a5f9acd25b1526e9814b0fe6`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 1.2 MB (1201457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d000292f170413ca697119a7638ef1bc5cfd3376d276d24188f32141f37622a2`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 14.5 MB (14453529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e0808d121f33d1d00fd6b8d6cc737983b4f48db6c77acc19879135101a09ef`  
		Last Modified: Tue, 14 Jul 2026 02:55:13 GMT  
		Size: 185.5 MB (185545906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcabdfd46b7939ef299dc367da77b60fdd3d3cf872a1497cbaec5b3633db8583`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52.1` - unknown; unknown

```console
$ docker pull ghost@sha256:a6c73ea343753d4acc6c0bde6038b073bccb43c5e76957b4625db966538ab1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5530063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb49cf1d1b009a6b68dab36cf1e9ff029ad9442025fdcd11544ae088423ebbc`

```dockerfile
```

-	Layers:
	-	`sha256:937a76d691ff51fd1ceb050e0fdc9bba6370653221024fb3ea0e5f4885c2aa20`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 5.5 MB (5503289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc633ccc02f81af880667fd456a875d78b60b5d10f1298b56f71d89b282ddfc`  
		Last Modified: Tue, 14 Jul 2026 02:55:08 GMT  
		Size: 26.8 KB (26774 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.52.1-alpine`

```console
$ docker pull ghost@sha256:471756274a224437d983ba0abd882d9bd735de33a3a44a9338596ebb2f206f6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.52.1-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7ae4a92e3a15078a7dfa0a08075ad5f11fef427c2609118bfcfeff93b3d31612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259618465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25429fbab672eed0b8f3a277f7918d863a1985e4eeb891290fa46ece408de127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:01:40 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:01:40 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:40 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:01:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:01:44 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:01 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:01 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:01 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:02 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09459c600bcd1eef9487085767f8f2247a3557fc8fe981ceb901dd2f2f212131`  
		Last Modified: Tue, 23 Jun 2026 19:01:59 GMT  
		Size: 52.3 MB (52313242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9480d20a2dd4b119e790de5e7b11bc0288166b479ec70b8d68e09c41061e777`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 1.3 MB (1262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90c4239b38aaad5caad9074c5b4a41d0c048e46224d00cf5e51d63a5183f214`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f3e997cded7b7d40463182e946f46ef1e4f78fb96e3c1ff719527f4f7034dd`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 821.9 KB (821867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8d75592ebd07b4e54d7ded27a76028469ca88af7a2d5550bb882699a51f390`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 903.9 KB (903942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c30f401c8708bb4fabab812e343204f3ee26bc2a2f5600c80fe86e6db78973`  
		Last Modified: Fri, 10 Jul 2026 16:36:43 GMT  
		Size: 14.5 MB (14451876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0896277d9e7a783907588b01272603dd3d619d6b7c775c8830d7c344531d74`  
		Last Modified: Fri, 10 Jul 2026 16:36:46 GMT  
		Size: 186.0 MB (186019999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3323f39082588878b1033dd714fc6ff118e5f3fdb62e0d78a766d9c3d4f7c41d`  
		Last Modified: Fri, 10 Jul 2026 16:36:44 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52.1-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:313bcc9dab1340b265a85c4cfd41732816d97378f8dbe9f23ffe8e01e6537882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffda6e553f1b670c997e0fa20d021258be6aaa821473cb2981812b59aae453a4`

```dockerfile
```

-	Layers:
	-	`sha256:1921a80298a1455dcd8b411d1ba7090598a5693602fdd78781fdf727d2c345a6`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 3.3 MB (3290925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3bd9162c2b4a59b2a51ee77d574f4a40db7dd050dc5f83d59d01235597e24b4`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 26.6 KB (26630 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52.1-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:cce68a11c22e309e29c15a0af3f639c4c276f43cbbb4613443ab16d3567c2f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259768381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c27a276323ddb8ec744de06d147dbbc36fbe6de6e2e46e0f18786f03e0df3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:33:03 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:33:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:03 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:33:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:33:07 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:52 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:19 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:20 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:20 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669cca7a7656c07133342b7b1e6ac1b44585834d67726b11dc4fb4e006b30ab6`  
		Last Modified: Tue, 23 Jun 2026 19:33:24 GMT  
		Size: 52.7 MB (52665811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9bd5aab1d649d54d2eb7f6a111e02630dbc561d429f5a213f35ada5601f984`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 1.3 MB (1262968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ce2922713aab9dd2a510c14aae6c3c0d03bd77923d459571e34f79a58deb3`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14421d0a093e10d5deedd95598762668f7d1b9affb412917b1a1f3976a016f7`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 891.3 KB (891280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b043855f13ad084a1feb078f0d54d1dba8723b8e431904a8a3f89ae46447ea0f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 858.1 KB (858088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa3a01e4f4d5a2148d3009e4f40941af11c14616ee351386fd70b3bb17d4309`  
		Last Modified: Fri, 10 Jul 2026 16:37:10 GMT  
		Size: 14.5 MB (14453210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db66b9019fd3db9a8a89fc0869eb87b008dd1eaf7fb5beafb1298fac2194c277`  
		Last Modified: Fri, 10 Jul 2026 16:37:13 GMT  
		Size: 185.5 MB (185454144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9152fdd5cb5af93aefff44b72be7b32c40ad9b80f871002484d46e52f76423`  
		Last Modified: Fri, 10 Jul 2026 16:37:11 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52.1-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c2b175e73d27749a4a3fec2f6c0fe8e6e61552c28720be4cea4da2b3bc5ad45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2759d040aa3f2bc793c51c8d4e538bda70dcf231aa7b715da3c97496f6de24`

```dockerfile
```

-	Layers:
	-	`sha256:6881f606650ad07a3491313e425bcb924de47c24b8458dd1fd9675cab488ed61`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 3.3 MB (3290467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28696e8013e3fca8643db5028cf34780f250e74f6dd7f3c6221bfe41ae5660f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 26.8 KB (26827 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.52.1-alpine3.23`

```console
$ docker pull ghost@sha256:471756274a224437d983ba0abd882d9bd735de33a3a44a9338596ebb2f206f6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.52.1-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:7ae4a92e3a15078a7dfa0a08075ad5f11fef427c2609118bfcfeff93b3d31612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259618465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25429fbab672eed0b8f3a277f7918d863a1985e4eeb891290fa46ece408de127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:01:40 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:01:40 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:40 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:01:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:01:44 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:01 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:01 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:01 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:02 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09459c600bcd1eef9487085767f8f2247a3557fc8fe981ceb901dd2f2f212131`  
		Last Modified: Tue, 23 Jun 2026 19:01:59 GMT  
		Size: 52.3 MB (52313242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9480d20a2dd4b119e790de5e7b11bc0288166b479ec70b8d68e09c41061e777`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 1.3 MB (1262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90c4239b38aaad5caad9074c5b4a41d0c048e46224d00cf5e51d63a5183f214`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f3e997cded7b7d40463182e946f46ef1e4f78fb96e3c1ff719527f4f7034dd`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 821.9 KB (821867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8d75592ebd07b4e54d7ded27a76028469ca88af7a2d5550bb882699a51f390`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 903.9 KB (903942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c30f401c8708bb4fabab812e343204f3ee26bc2a2f5600c80fe86e6db78973`  
		Last Modified: Fri, 10 Jul 2026 16:36:43 GMT  
		Size: 14.5 MB (14451876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0896277d9e7a783907588b01272603dd3d619d6b7c775c8830d7c344531d74`  
		Last Modified: Fri, 10 Jul 2026 16:36:46 GMT  
		Size: 186.0 MB (186019999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3323f39082588878b1033dd714fc6ff118e5f3fdb62e0d78a766d9c3d4f7c41d`  
		Last Modified: Fri, 10 Jul 2026 16:36:44 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52.1-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:313bcc9dab1340b265a85c4cfd41732816d97378f8dbe9f23ffe8e01e6537882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffda6e553f1b670c997e0fa20d021258be6aaa821473cb2981812b59aae453a4`

```dockerfile
```

-	Layers:
	-	`sha256:1921a80298a1455dcd8b411d1ba7090598a5693602fdd78781fdf727d2c345a6`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 3.3 MB (3290925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3bd9162c2b4a59b2a51ee77d574f4a40db7dd050dc5f83d59d01235597e24b4`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 26.6 KB (26630 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52.1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:cce68a11c22e309e29c15a0af3f639c4c276f43cbbb4613443ab16d3567c2f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259768381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c27a276323ddb8ec744de06d147dbbc36fbe6de6e2e46e0f18786f03e0df3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:33:03 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:33:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:03 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:33:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:33:07 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:52 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:19 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:20 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:20 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669cca7a7656c07133342b7b1e6ac1b44585834d67726b11dc4fb4e006b30ab6`  
		Last Modified: Tue, 23 Jun 2026 19:33:24 GMT  
		Size: 52.7 MB (52665811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9bd5aab1d649d54d2eb7f6a111e02630dbc561d429f5a213f35ada5601f984`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 1.3 MB (1262968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ce2922713aab9dd2a510c14aae6c3c0d03bd77923d459571e34f79a58deb3`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14421d0a093e10d5deedd95598762668f7d1b9affb412917b1a1f3976a016f7`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 891.3 KB (891280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b043855f13ad084a1feb078f0d54d1dba8723b8e431904a8a3f89ae46447ea0f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 858.1 KB (858088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa3a01e4f4d5a2148d3009e4f40941af11c14616ee351386fd70b3bb17d4309`  
		Last Modified: Fri, 10 Jul 2026 16:37:10 GMT  
		Size: 14.5 MB (14453210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db66b9019fd3db9a8a89fc0869eb87b008dd1eaf7fb5beafb1298fac2194c277`  
		Last Modified: Fri, 10 Jul 2026 16:37:13 GMT  
		Size: 185.5 MB (185454144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9152fdd5cb5af93aefff44b72be7b32c40ad9b80f871002484d46e52f76423`  
		Last Modified: Fri, 10 Jul 2026 16:37:11 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52.1-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c2b175e73d27749a4a3fec2f6c0fe8e6e61552c28720be4cea4da2b3bc5ad45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2759d040aa3f2bc793c51c8d4e538bda70dcf231aa7b715da3c97496f6de24`

```dockerfile
```

-	Layers:
	-	`sha256:6881f606650ad07a3491313e425bcb924de47c24b8458dd1fd9675cab488ed61`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 3.3 MB (3290467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28696e8013e3fca8643db5028cf34780f250e74f6dd7f3c6221bfe41ae5660f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 26.8 KB (26827 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.52.1-bookworm`

```console
$ docker pull ghost@sha256:cf1d38b036e17e9997b44617d6252a56f2fea371ec824a708238ef2470f92ec6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.52.1-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:359b72ac06eff96199bbb095f5db49727f1c5230bbcaa31ffcffcba06af9cdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281894962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fe2d72b6795eda912462ff675edfb1ee130d1d24eb5105a01ebe8c4b8a493d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:48:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:48:37 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:37 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:45:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:45:56 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:46:05 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:46:40 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:46:40 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:46:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:46:40 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:46:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33bee2ce77b0c3748e6a8f2b808a5ab1d2ed466d5ee5a9b991cba597bd028e2`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65bd65926c2b38f8a7d518cefa8524e1484182dd6ffba7883654d886b4cfb3`  
		Last Modified: Tue, 14 Jul 2026 01:48:53 GMT  
		Size: 49.9 MB (49937657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392df1351ac2d7628088ee58b248e62a2c1b749e4beb94b7640994df1857c8ca`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 1.7 MB (1712633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437216719022b2853003498de36b055604c6ff1bcee290b912ed44226f2d3d46`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc27d9eacaaab40d411d82a9d0e35da6d9a1fe212ca72a993f3a82211dd1883a`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 1.2 MB (1247572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386773e296da43b1f39ab7b1168ada9d38c27ea0d909959b8ad1392c8f9280d7`  
		Last Modified: Tue, 14 Jul 2026 02:47:25 GMT  
		Size: 14.5 MB (14452543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e332fc9387d572876facda0a0ff2f0d1313f65752198fa7d4a1d19004062ca`  
		Last Modified: Tue, 14 Jul 2026 02:47:28 GMT  
		Size: 186.3 MB (186307585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae2431c22d9e18690c4c1a9131af73d4d676a275c784f7c2276098a21eae5eb`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52.1-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:9cf9484d5e30b7b188a9dfc75c402c8d44b3ded1fa1818345310aa7562411f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b105caebff35c4e718d3f2a1b17f2e00c47d3abf2b055ba94ba307a20614c`

```dockerfile
```

-	Layers:
	-	`sha256:6e937e48022fbc8f36f660669f2393f18c9d129185ac4b3e0db2d3551ac4ce7b`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 5.5 MB (5502902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89dd05bdfb5e8cf3e84aba393a3e27486d0bb38a129b72b77d7606597b0930d4`  
		Last Modified: Tue, 14 Jul 2026 02:47:23 GMT  
		Size: 26.6 KB (26591 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52.1-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:0c6132af68a8114561764bdc1a55affb7037135b502ccc6577057827e4610fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284490865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5acc40eec559f3af3ac5ad6c91cf8ac1ed5c4030a58495ad16e84b4cef8aef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:41:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 02:41:54 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 02:42:08 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:42:08 GMT
CMD ["node"]
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 04:31:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:31:59 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 04:32:12 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 04:34:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 04:34:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 04:34:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:34:26 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 04:34:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6222ee32f2bc642288521da26315ded0aae7470b70ea0abe9116ac6aa598c5ca`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ecf953ef99b4922d1b1077cb1d0340c961d751bd90103bb57fb0e6b9a102d0`  
		Last Modified: Tue, 14 Jul 2026 02:42:22 GMT  
		Size: 44.6 MB (44628003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1ea748121dfa1ea1d5143d8aaae3589897492ea1f3f02d498c5ef4f5de2808`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 1.7 MB (1712823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b2416c0f532b822b189b4754c1fa38b12bb706958d3abd48affe6ac80b6c71`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c71fbfaae6d080fecf3f112bdfcd3d93c5bd9a9a610f1730ca318368710113`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 1.2 MB (1214367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1950f4db6035e783f4b2b33413759f0d53e53146cc7c88307558c9cc4fede3a8`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 14.4 MB (14447039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95317e38ed5547623f9d0cf90d1dbd10f0cc016f7767adbf1d0055fd6ffa1497`  
		Last Modified: Tue, 14 Jul 2026 04:35:22 GMT  
		Size: 198.5 MB (198544523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bdc03df01c87f6db0c301af3bb2680ab996fcf7e9327ac4a14785ece0de0e8`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52.1-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:ba7256160844160b00fb0c9a4b8d40d2a3f11d3b897031c7c68cf0253e08d05a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a780a401171452176559ef629085f84538848dbc480e3cda1c99468571beb99`

```dockerfile
```

-	Layers:
	-	`sha256:e5421cf172579d77371e995a0ba454a1fae495f45533005da541f84bf55635da`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 5.5 MB (5508789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1fab290695b71f437fb5b38c8e8b7452efc15afc34e3b97c9632755f1be716`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 26.7 KB (26730 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.52.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1f97dbd5b1605c6b889a7a5a087e827c4197ea9e7ce2aeb7d3e4dc4c33c78b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281096516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554d234e3d02ec706a3f3b25314947b0709f3ef3c9caae7f30ba16f28e2943b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:51:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:51:35 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:51:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:51:48 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:53:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:53:27 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:53:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:54:16 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:54:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:54:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:54:17 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:54:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37f2ae06d60c22e837dcfcee1fa0868a7840e6560333772f0196a0dbe4a221b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bc15716dc9232e0dc3223672fdedb2896c61f14295131b8436d936aaac4536`  
		Last Modified: Tue, 14 Jul 2026 01:52:05 GMT  
		Size: 50.1 MB (50061413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6c1ecf84f2a8e7e77270b7f2d223057290e5c96c0064bcd19e45011d55a07b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 1.7 MB (1712634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5b9e098e658595324f08a1887bd0e4a4f25da7ce64517166e4e0c695a1a99a`  
		Last Modified: Tue, 14 Jul 2026 01:52:04 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91450b407551c6d3faccff1e9f7fd91910532df1a5f9acd25b1526e9814b0fe6`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 1.2 MB (1201457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d000292f170413ca697119a7638ef1bc5cfd3376d276d24188f32141f37622a2`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 14.5 MB (14453529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e0808d121f33d1d00fd6b8d6cc737983b4f48db6c77acc19879135101a09ef`  
		Last Modified: Tue, 14 Jul 2026 02:55:13 GMT  
		Size: 185.5 MB (185545906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcabdfd46b7939ef299dc367da77b60fdd3d3cf872a1497cbaec5b3633db8583`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.52.1-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:a6c73ea343753d4acc6c0bde6038b073bccb43c5e76957b4625db966538ab1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5530063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb49cf1d1b009a6b68dab36cf1e9ff029ad9442025fdcd11544ae088423ebbc`

```dockerfile
```

-	Layers:
	-	`sha256:937a76d691ff51fd1ceb050e0fdc9bba6370653221024fb3ea0e5f4885c2aa20`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 5.5 MB (5503289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc633ccc02f81af880667fd456a875d78b60b5d10f1298b56f71d89b282ddfc`  
		Last Modified: Tue, 14 Jul 2026 02:55:08 GMT  
		Size: 26.8 KB (26774 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:alpine`

```console
$ docker pull ghost@sha256:471756274a224437d983ba0abd882d9bd735de33a3a44a9338596ebb2f206f6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7ae4a92e3a15078a7dfa0a08075ad5f11fef427c2609118bfcfeff93b3d31612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259618465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25429fbab672eed0b8f3a277f7918d863a1985e4eeb891290fa46ece408de127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:01:40 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:01:40 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:40 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:01:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:01:44 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:01 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:01 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:01 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:02 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09459c600bcd1eef9487085767f8f2247a3557fc8fe981ceb901dd2f2f212131`  
		Last Modified: Tue, 23 Jun 2026 19:01:59 GMT  
		Size: 52.3 MB (52313242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9480d20a2dd4b119e790de5e7b11bc0288166b479ec70b8d68e09c41061e777`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 1.3 MB (1262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90c4239b38aaad5caad9074c5b4a41d0c048e46224d00cf5e51d63a5183f214`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f3e997cded7b7d40463182e946f46ef1e4f78fb96e3c1ff719527f4f7034dd`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 821.9 KB (821867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8d75592ebd07b4e54d7ded27a76028469ca88af7a2d5550bb882699a51f390`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 903.9 KB (903942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c30f401c8708bb4fabab812e343204f3ee26bc2a2f5600c80fe86e6db78973`  
		Last Modified: Fri, 10 Jul 2026 16:36:43 GMT  
		Size: 14.5 MB (14451876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0896277d9e7a783907588b01272603dd3d619d6b7c775c8830d7c344531d74`  
		Last Modified: Fri, 10 Jul 2026 16:36:46 GMT  
		Size: 186.0 MB (186019999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3323f39082588878b1033dd714fc6ff118e5f3fdb62e0d78a766d9c3d4f7c41d`  
		Last Modified: Fri, 10 Jul 2026 16:36:44 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:313bcc9dab1340b265a85c4cfd41732816d97378f8dbe9f23ffe8e01e6537882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffda6e553f1b670c997e0fa20d021258be6aaa821473cb2981812b59aae453a4`

```dockerfile
```

-	Layers:
	-	`sha256:1921a80298a1455dcd8b411d1ba7090598a5693602fdd78781fdf727d2c345a6`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 3.3 MB (3290925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3bd9162c2b4a59b2a51ee77d574f4a40db7dd050dc5f83d59d01235597e24b4`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 26.6 KB (26630 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:cce68a11c22e309e29c15a0af3f639c4c276f43cbbb4613443ab16d3567c2f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259768381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c27a276323ddb8ec744de06d147dbbc36fbe6de6e2e46e0f18786f03e0df3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:33:03 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:33:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:03 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:33:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:33:07 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:52 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:19 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:20 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:20 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669cca7a7656c07133342b7b1e6ac1b44585834d67726b11dc4fb4e006b30ab6`  
		Last Modified: Tue, 23 Jun 2026 19:33:24 GMT  
		Size: 52.7 MB (52665811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9bd5aab1d649d54d2eb7f6a111e02630dbc561d429f5a213f35ada5601f984`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 1.3 MB (1262968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ce2922713aab9dd2a510c14aae6c3c0d03bd77923d459571e34f79a58deb3`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14421d0a093e10d5deedd95598762668f7d1b9affb412917b1a1f3976a016f7`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 891.3 KB (891280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b043855f13ad084a1feb078f0d54d1dba8723b8e431904a8a3f89ae46447ea0f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 858.1 KB (858088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa3a01e4f4d5a2148d3009e4f40941af11c14616ee351386fd70b3bb17d4309`  
		Last Modified: Fri, 10 Jul 2026 16:37:10 GMT  
		Size: 14.5 MB (14453210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db66b9019fd3db9a8a89fc0869eb87b008dd1eaf7fb5beafb1298fac2194c277`  
		Last Modified: Fri, 10 Jul 2026 16:37:13 GMT  
		Size: 185.5 MB (185454144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9152fdd5cb5af93aefff44b72be7b32c40ad9b80f871002484d46e52f76423`  
		Last Modified: Fri, 10 Jul 2026 16:37:11 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c2b175e73d27749a4a3fec2f6c0fe8e6e61552c28720be4cea4da2b3bc5ad45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2759d040aa3f2bc793c51c8d4e538bda70dcf231aa7b715da3c97496f6de24`

```dockerfile
```

-	Layers:
	-	`sha256:6881f606650ad07a3491313e425bcb924de47c24b8458dd1fd9675cab488ed61`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 3.3 MB (3290467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28696e8013e3fca8643db5028cf34780f250e74f6dd7f3c6221bfe41ae5660f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 26.8 KB (26827 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:alpine3.23`

```console
$ docker pull ghost@sha256:471756274a224437d983ba0abd882d9bd735de33a3a44a9338596ebb2f206f6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:7ae4a92e3a15078a7dfa0a08075ad5f11fef427c2609118bfcfeff93b3d31612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259618465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25429fbab672eed0b8f3a277f7918d863a1985e4eeb891290fa46ece408de127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:01:40 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:01:40 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:40 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:01:44 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:01:44 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:29 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:29 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:38 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:01 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:01 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:01 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:02 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:02 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09459c600bcd1eef9487085767f8f2247a3557fc8fe981ceb901dd2f2f212131`  
		Last Modified: Tue, 23 Jun 2026 19:01:59 GMT  
		Size: 52.3 MB (52313242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9480d20a2dd4b119e790de5e7b11bc0288166b479ec70b8d68e09c41061e777`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 1.3 MB (1262096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90c4239b38aaad5caad9074c5b4a41d0c048e46224d00cf5e51d63a5183f214`  
		Last Modified: Tue, 23 Jun 2026 19:01:57 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f3e997cded7b7d40463182e946f46ef1e4f78fb96e3c1ff719527f4f7034dd`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 821.9 KB (821867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8d75592ebd07b4e54d7ded27a76028469ca88af7a2d5550bb882699a51f390`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 903.9 KB (903942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c30f401c8708bb4fabab812e343204f3ee26bc2a2f5600c80fe86e6db78973`  
		Last Modified: Fri, 10 Jul 2026 16:36:43 GMT  
		Size: 14.5 MB (14451876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0896277d9e7a783907588b01272603dd3d619d6b7c775c8830d7c344531d74`  
		Last Modified: Fri, 10 Jul 2026 16:36:46 GMT  
		Size: 186.0 MB (186019999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3323f39082588878b1033dd714fc6ff118e5f3fdb62e0d78a766d9c3d4f7c41d`  
		Last Modified: Fri, 10 Jul 2026 16:36:44 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:313bcc9dab1340b265a85c4cfd41732816d97378f8dbe9f23ffe8e01e6537882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffda6e553f1b670c997e0fa20d021258be6aaa821473cb2981812b59aae453a4`

```dockerfile
```

-	Layers:
	-	`sha256:1921a80298a1455dcd8b411d1ba7090598a5693602fdd78781fdf727d2c345a6`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 3.3 MB (3290925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3bd9162c2b4a59b2a51ee77d574f4a40db7dd050dc5f83d59d01235597e24b4`  
		Last Modified: Fri, 10 Jul 2026 16:36:42 GMT  
		Size: 26.6 KB (26630 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:cce68a11c22e309e29c15a0af3f639c4c276f43cbbb4613443ab16d3567c2f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259768381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c27a276323ddb8ec744de06d147dbbc36fbe6de6e2e46e0f18786f03e0df3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 19:33:03 GMT
ENV NODE_VERSION=22.23.1
# Tue, 23 Jun 2026 19:33:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="25b5ec8550ca8bac9ade321f8b87e1c1aa6a64020ce34efef0217fe84106794c" OPENSSL_ARCH=linux-x86_64;;         x86) OPENSSL_ARCH=linux-elf;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         ppc64le) OPENSSL_ARCH=linux-ppc64le;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:03 GMT
ENV YARN_VERSION=1.22.22
# Tue, 23 Jun 2026 19:33:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 19:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 19:33:07 GMT
CMD ["node"]
# Fri, 10 Jul 2026 16:35:38 GMT
RUN apk add --no-cache 		bash # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GOSU_VERSION=1.19
# Fri, 10 Jul 2026 16:35:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 10 Jul 2026 16:35:41 GMT
ENV NODE_ENV=production
# Fri, 10 Jul 2026 16:35:41 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Fri, 10 Jul 2026 16:35:52 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Fri, 10 Jul 2026 16:35:52 GMT
ENV GHOST_VERSION=6.52.1
# Fri, 10 Jul 2026 16:36:19 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
WORKDIR /var/lib/ghost
# Fri, 10 Jul 2026 16:36:20 GMT
VOLUME [/var/lib/ghost/content]
# Fri, 10 Jul 2026 16:36:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 10 Jul 2026 16:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Jul 2026 16:36:20 GMT
EXPOSE map[2368/tcp:{}]
# Fri, 10 Jul 2026 16:36:20 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669cca7a7656c07133342b7b1e6ac1b44585834d67726b11dc4fb4e006b30ab6`  
		Last Modified: Tue, 23 Jun 2026 19:33:24 GMT  
		Size: 52.7 MB (52665811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9bd5aab1d649d54d2eb7f6a111e02630dbc561d429f5a213f35ada5601f984`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 1.3 MB (1262968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ce2922713aab9dd2a510c14aae6c3c0d03bd77923d459571e34f79a58deb3`  
		Last Modified: Tue, 23 Jun 2026 19:33:22 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14421d0a093e10d5deedd95598762668f7d1b9affb412917b1a1f3976a016f7`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 891.3 KB (891280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b043855f13ad084a1feb078f0d54d1dba8723b8e431904a8a3f89ae46447ea0f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 858.1 KB (858088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa3a01e4f4d5a2148d3009e4f40941af11c14616ee351386fd70b3bb17d4309`  
		Last Modified: Fri, 10 Jul 2026 16:37:10 GMT  
		Size: 14.5 MB (14453210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db66b9019fd3db9a8a89fc0869eb87b008dd1eaf7fb5beafb1298fac2194c277`  
		Last Modified: Fri, 10 Jul 2026 16:37:13 GMT  
		Size: 185.5 MB (185454144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9152fdd5cb5af93aefff44b72be7b32c40ad9b80f871002484d46e52f76423`  
		Last Modified: Fri, 10 Jul 2026 16:37:11 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c2b175e73d27749a4a3fec2f6c0fe8e6e61552c28720be4cea4da2b3bc5ad45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3317294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2759d040aa3f2bc793c51c8d4e538bda70dcf231aa7b715da3c97496f6de24`

```dockerfile
```

-	Layers:
	-	`sha256:6881f606650ad07a3491313e425bcb924de47c24b8458dd1fd9675cab488ed61`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 3.3 MB (3290467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28696e8013e3fca8643db5028cf34780f250e74f6dd7f3c6221bfe41ae5660f`  
		Last Modified: Fri, 10 Jul 2026 16:37:09 GMT  
		Size: 26.8 KB (26827 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:bookworm`

```console
$ docker pull ghost@sha256:cf1d38b036e17e9997b44617d6252a56f2fea371ec824a708238ef2470f92ec6
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
$ docker pull ghost@sha256:359b72ac06eff96199bbb095f5db49727f1c5230bbcaa31ffcffcba06af9cdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281894962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fe2d72b6795eda912462ff675edfb1ee130d1d24eb5105a01ebe8c4b8a493d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:48:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:48:37 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:37 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:45:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:45:56 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:46:05 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:46:40 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:46:40 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:46:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:46:40 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:46:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33bee2ce77b0c3748e6a8f2b808a5ab1d2ed466d5ee5a9b991cba597bd028e2`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65bd65926c2b38f8a7d518cefa8524e1484182dd6ffba7883654d886b4cfb3`  
		Last Modified: Tue, 14 Jul 2026 01:48:53 GMT  
		Size: 49.9 MB (49937657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392df1351ac2d7628088ee58b248e62a2c1b749e4beb94b7640994df1857c8ca`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 1.7 MB (1712633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437216719022b2853003498de36b055604c6ff1bcee290b912ed44226f2d3d46`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc27d9eacaaab40d411d82a9d0e35da6d9a1fe212ca72a993f3a82211dd1883a`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 1.2 MB (1247572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386773e296da43b1f39ab7b1168ada9d38c27ea0d909959b8ad1392c8f9280d7`  
		Last Modified: Tue, 14 Jul 2026 02:47:25 GMT  
		Size: 14.5 MB (14452543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e332fc9387d572876facda0a0ff2f0d1313f65752198fa7d4a1d19004062ca`  
		Last Modified: Tue, 14 Jul 2026 02:47:28 GMT  
		Size: 186.3 MB (186307585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae2431c22d9e18690c4c1a9131af73d4d676a275c784f7c2276098a21eae5eb`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:9cf9484d5e30b7b188a9dfc75c402c8d44b3ded1fa1818345310aa7562411f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b105caebff35c4e718d3f2a1b17f2e00c47d3abf2b055ba94ba307a20614c`

```dockerfile
```

-	Layers:
	-	`sha256:6e937e48022fbc8f36f660669f2393f18c9d129185ac4b3e0db2d3551ac4ce7b`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 5.5 MB (5502902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89dd05bdfb5e8cf3e84aba393a3e27486d0bb38a129b72b77d7606597b0930d4`  
		Last Modified: Tue, 14 Jul 2026 02:47:23 GMT  
		Size: 26.6 KB (26591 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:0c6132af68a8114561764bdc1a55affb7037135b502ccc6577057827e4610fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284490865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5acc40eec559f3af3ac5ad6c91cf8ac1ed5c4030a58495ad16e84b4cef8aef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:41:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 02:41:54 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 02:42:08 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:42:08 GMT
CMD ["node"]
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 04:31:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:31:59 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 04:32:12 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 04:34:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 04:34:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 04:34:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:34:26 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 04:34:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6222ee32f2bc642288521da26315ded0aae7470b70ea0abe9116ac6aa598c5ca`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ecf953ef99b4922d1b1077cb1d0340c961d751bd90103bb57fb0e6b9a102d0`  
		Last Modified: Tue, 14 Jul 2026 02:42:22 GMT  
		Size: 44.6 MB (44628003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1ea748121dfa1ea1d5143d8aaae3589897492ea1f3f02d498c5ef4f5de2808`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 1.7 MB (1712823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b2416c0f532b822b189b4754c1fa38b12bb706958d3abd48affe6ac80b6c71`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c71fbfaae6d080fecf3f112bdfcd3d93c5bd9a9a610f1730ca318368710113`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 1.2 MB (1214367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1950f4db6035e783f4b2b33413759f0d53e53146cc7c88307558c9cc4fede3a8`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 14.4 MB (14447039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95317e38ed5547623f9d0cf90d1dbd10f0cc016f7767adbf1d0055fd6ffa1497`  
		Last Modified: Tue, 14 Jul 2026 04:35:22 GMT  
		Size: 198.5 MB (198544523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bdc03df01c87f6db0c301af3bb2680ab996fcf7e9327ac4a14785ece0de0e8`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:ba7256160844160b00fb0c9a4b8d40d2a3f11d3b897031c7c68cf0253e08d05a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a780a401171452176559ef629085f84538848dbc480e3cda1c99468571beb99`

```dockerfile
```

-	Layers:
	-	`sha256:e5421cf172579d77371e995a0ba454a1fae495f45533005da541f84bf55635da`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 5.5 MB (5508789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1fab290695b71f437fb5b38c8e8b7452efc15afc34e3b97c9632755f1be716`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 26.7 KB (26730 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1f97dbd5b1605c6b889a7a5a087e827c4197ea9e7ce2aeb7d3e4dc4c33c78b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281096516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554d234e3d02ec706a3f3b25314947b0709f3ef3c9caae7f30ba16f28e2943b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:51:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:51:35 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:51:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:51:48 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:53:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:53:27 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:53:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:54:16 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:54:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:54:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:54:17 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:54:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37f2ae06d60c22e837dcfcee1fa0868a7840e6560333772f0196a0dbe4a221b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bc15716dc9232e0dc3223672fdedb2896c61f14295131b8436d936aaac4536`  
		Last Modified: Tue, 14 Jul 2026 01:52:05 GMT  
		Size: 50.1 MB (50061413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6c1ecf84f2a8e7e77270b7f2d223057290e5c96c0064bcd19e45011d55a07b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 1.7 MB (1712634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5b9e098e658595324f08a1887bd0e4a4f25da7ce64517166e4e0c695a1a99a`  
		Last Modified: Tue, 14 Jul 2026 01:52:04 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91450b407551c6d3faccff1e9f7fd91910532df1a5f9acd25b1526e9814b0fe6`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 1.2 MB (1201457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d000292f170413ca697119a7638ef1bc5cfd3376d276d24188f32141f37622a2`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 14.5 MB (14453529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e0808d121f33d1d00fd6b8d6cc737983b4f48db6c77acc19879135101a09ef`  
		Last Modified: Tue, 14 Jul 2026 02:55:13 GMT  
		Size: 185.5 MB (185545906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcabdfd46b7939ef299dc367da77b60fdd3d3cf872a1497cbaec5b3633db8583`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:a6c73ea343753d4acc6c0bde6038b073bccb43c5e76957b4625db966538ab1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5530063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb49cf1d1b009a6b68dab36cf1e9ff029ad9442025fdcd11544ae088423ebbc`

```dockerfile
```

-	Layers:
	-	`sha256:937a76d691ff51fd1ceb050e0fdc9bba6370653221024fb3ea0e5f4885c2aa20`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 5.5 MB (5503289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc633ccc02f81af880667fd456a875d78b60b5d10f1298b56f71d89b282ddfc`  
		Last Modified: Tue, 14 Jul 2026 02:55:08 GMT  
		Size: 26.8 KB (26774 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:latest`

```console
$ docker pull ghost@sha256:cf1d38b036e17e9997b44617d6252a56f2fea371ec824a708238ef2470f92ec6
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
$ docker pull ghost@sha256:359b72ac06eff96199bbb095f5db49727f1c5230bbcaa31ffcffcba06af9cdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281894962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9fe2d72b6795eda912462ff675edfb1ee130d1d24eb5105a01ebe8c4b8a493d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:47:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:48:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:25 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:48:37 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:37 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:45:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:45:56 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:45:56 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:46:05 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:46:05 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:46:40 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:46:40 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:46:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:46:40 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:46:40 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33bee2ce77b0c3748e6a8f2b808a5ab1d2ed466d5ee5a9b991cba597bd028e2`  
		Last Modified: Tue, 14 Jul 2026 01:47:57 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65bd65926c2b38f8a7d518cefa8524e1484182dd6ffba7883654d886b4cfb3`  
		Last Modified: Tue, 14 Jul 2026 01:48:53 GMT  
		Size: 49.9 MB (49937657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392df1351ac2d7628088ee58b248e62a2c1b749e4beb94b7640994df1857c8ca`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 1.7 MB (1712633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437216719022b2853003498de36b055604c6ff1bcee290b912ed44226f2d3d46`  
		Last Modified: Tue, 14 Jul 2026 01:48:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc27d9eacaaab40d411d82a9d0e35da6d9a1fe212ca72a993f3a82211dd1883a`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 1.2 MB (1247572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386773e296da43b1f39ab7b1168ada9d38c27ea0d909959b8ad1392c8f9280d7`  
		Last Modified: Tue, 14 Jul 2026 02:47:25 GMT  
		Size: 14.5 MB (14452543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e332fc9387d572876facda0a0ff2f0d1313f65752198fa7d4a1d19004062ca`  
		Last Modified: Tue, 14 Jul 2026 02:47:28 GMT  
		Size: 186.3 MB (186307585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae2431c22d9e18690c4c1a9131af73d4d676a275c784f7c2276098a21eae5eb`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:9cf9484d5e30b7b188a9dfc75c402c8d44b3ded1fa1818345310aa7562411f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b105caebff35c4e718d3f2a1b17f2e00c47d3abf2b055ba94ba307a20614c`

```dockerfile
```

-	Layers:
	-	`sha256:6e937e48022fbc8f36f660669f2393f18c9d129185ac4b3e0db2d3551ac4ce7b`  
		Last Modified: Tue, 14 Jul 2026 02:47:24 GMT  
		Size: 5.5 MB (5502902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89dd05bdfb5e8cf3e84aba393a3e27486d0bb38a129b72b77d7606597b0930d4`  
		Last Modified: Tue, 14 Jul 2026 02:47:23 GMT  
		Size: 26.6 KB (26591 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:0c6132af68a8114561764bdc1a55affb7037135b502ccc6577057827e4610fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284490865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5acc40eec559f3af3ac5ad6c91cf8ac1ed5c4030a58495ad16e84b4cef8aef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:41:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 02:41:54 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:41:54 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 02:42:08 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:42:08 GMT
CMD ["node"]
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 04:31:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 04:31:59 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 04:31:59 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 04:32:12 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 04:32:12 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 04:34:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 04:34:26 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 04:34:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:34:26 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 04:34:26 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6222ee32f2bc642288521da26315ded0aae7470b70ea0abe9116ac6aa598c5ca`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ecf953ef99b4922d1b1077cb1d0340c961d751bd90103bb57fb0e6b9a102d0`  
		Last Modified: Tue, 14 Jul 2026 02:42:22 GMT  
		Size: 44.6 MB (44628003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1ea748121dfa1ea1d5143d8aaae3589897492ea1f3f02d498c5ef4f5de2808`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 1.7 MB (1712823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b2416c0f532b822b189b4754c1fa38b12bb706958d3abd48affe6ac80b6c71`  
		Last Modified: Tue, 14 Jul 2026 02:42:21 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c71fbfaae6d080fecf3f112bdfcd3d93c5bd9a9a610f1730ca318368710113`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 1.2 MB (1214367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1950f4db6035e783f4b2b33413759f0d53e53146cc7c88307558c9cc4fede3a8`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 14.4 MB (14447039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95317e38ed5547623f9d0cf90d1dbd10f0cc016f7767adbf1d0055fd6ffa1497`  
		Last Modified: Tue, 14 Jul 2026 04:35:22 GMT  
		Size: 198.5 MB (198544523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bdc03df01c87f6db0c301af3bb2680ab996fcf7e9327ac4a14785ece0de0e8`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:ba7256160844160b00fb0c9a4b8d40d2a3f11d3b897031c7c68cf0253e08d05a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a780a401171452176559ef629085f84538848dbc480e3cda1c99468571beb99`

```dockerfile
```

-	Layers:
	-	`sha256:e5421cf172579d77371e995a0ba454a1fae495f45533005da541f84bf55635da`  
		Last Modified: Tue, 14 Jul 2026 04:35:18 GMT  
		Size: 5.5 MB (5508789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1fab290695b71f437fb5b38c8e8b7452efc15afc34e3b97c9632755f1be716`  
		Last Modified: Tue, 14 Jul 2026 04:35:17 GMT  
		Size: 26.7 KB (26730 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:1f97dbd5b1605c6b889a7a5a087e827c4197ea9e7ce2aeb7d3e4dc4c33c78b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281096516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f554d234e3d02ec706a3f3b25314947b0709f3ef3c9caae7f30ba16f28e2943b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:51:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV NODE_VERSION=22.23.1
# Tue, 14 Jul 2026 01:51:35 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:35 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 01:51:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:51:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:51:48 GMT
CMD ["node"]
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:53:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:53:27 GMT
ENV NODE_ENV=production
# Tue, 14 Jul 2026 02:53:27 GMT
ENV GHOST_CLI_VERSION=1.29.3
# Tue, 14 Jul 2026 02:53:38 GMT
RUN set -eux; 	corepack enable; 	npm install -g "ghost-cli@$GHOST_CLI_VERSION"; 	npm cache clean --force # buildkit
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 14 Jul 2026 02:53:38 GMT
ENV GHOST_VERSION=6.52.1
# Tue, 14 Jul 2026 02:54:16 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
WORKDIR /var/lib/ghost
# Tue, 14 Jul 2026 02:54:17 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 14 Jul 2026 02:54:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:54:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:54:17 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 14 Jul 2026 02:54:17 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37f2ae06d60c22e837dcfcee1fa0868a7840e6560333772f0196a0dbe4a221b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bc15716dc9232e0dc3223672fdedb2896c61f14295131b8436d936aaac4536`  
		Last Modified: Tue, 14 Jul 2026 01:52:05 GMT  
		Size: 50.1 MB (50061413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6c1ecf84f2a8e7e77270b7f2d223057290e5c96c0064bcd19e45011d55a07b`  
		Last Modified: Tue, 14 Jul 2026 01:52:03 GMT  
		Size: 1.7 MB (1712634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5b9e098e658595324f08a1887bd0e4a4f25da7ce64517166e4e0c695a1a99a`  
		Last Modified: Tue, 14 Jul 2026 01:52:04 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91450b407551c6d3faccff1e9f7fd91910532df1a5f9acd25b1526e9814b0fe6`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 1.2 MB (1201457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d000292f170413ca697119a7638ef1bc5cfd3376d276d24188f32141f37622a2`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 14.5 MB (14453529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e0808d121f33d1d00fd6b8d6cc737983b4f48db6c77acc19879135101a09ef`  
		Last Modified: Tue, 14 Jul 2026 02:55:13 GMT  
		Size: 185.5 MB (185545906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcabdfd46b7939ef299dc367da77b60fdd3d3cf872a1497cbaec5b3633db8583`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:a6c73ea343753d4acc6c0bde6038b073bccb43c5e76957b4625db966538ab1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5530063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb49cf1d1b009a6b68dab36cf1e9ff029ad9442025fdcd11544ae088423ebbc`

```dockerfile
```

-	Layers:
	-	`sha256:937a76d691ff51fd1ceb050e0fdc9bba6370653221024fb3ea0e5f4885c2aa20`  
		Last Modified: Tue, 14 Jul 2026 02:55:09 GMT  
		Size: 5.5 MB (5503289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc633ccc02f81af880667fd456a875d78b60b5d10f1298b56f71d89b282ddfc`  
		Last Modified: Tue, 14 Jul 2026 02:55:08 GMT  
		Size: 26.8 KB (26774 bytes)  
		MIME: application/vnd.in-toto+json
