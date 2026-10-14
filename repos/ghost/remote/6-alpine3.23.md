## `ghost:6-alpine3.23`

```console
$ docker pull ghost@sha256:879d5214b00b325195992ee96daf539994b4ac7e040615319ddf6b64842199e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:e388abb383fe213f696b021e073f20f5c56ab83a3ece7e6c266bb554058398f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209530515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16bd0f51f68a606000a0be3b470b073d2977a89d29e715f4c7d62054a068de98`
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
# Tue, 13 Oct 2026 21:05:26 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 13 Oct 2026 21:05:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 13 Oct 2026 21:05:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 13 Oct 2026 21:05:28 GMT
ENV NODE_ENV=production
# Tue, 13 Oct 2026 21:05:28 GMT
ENV GHOST_CLI_VERSION=1.33.4
# Tue, 13 Oct 2026 21:05:28 GMT
ENV GHOST_CLI_SHA=630700fa3443b0f522dbbe7f1fe1fdc80d38fc48
# Tue, 13 Oct 2026 21:05:28 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 13 Oct 2026 21:05:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.2'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 13 Oct 2026 21:05:33 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 13 Oct 2026 21:05:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 13 Oct 2026 21:05:33 GMT
ENV GHOST_VERSION=6.70.0
# Tue, 13 Oct 2026 21:05:49 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 13 Oct 2026 21:05:49 GMT
WORKDIR /var/lib/ghost
# Tue, 13 Oct 2026 21:05:49 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 13 Oct 2026 21:05:49 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 21:05:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:05:49 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 13 Oct 2026 21:05:49 GMT
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
	-	`sha256:ca2fe0eac3f36b1e0b27960dc3438578ff42e8ee4458401225a2dc5f7b9962a9`  
		Last Modified: Tue, 13 Oct 2026 21:06:28 GMT  
		Size: 821.7 KB (821740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4cd06785f2e167cae6f19cc7f49e51ee25988364c48d00ff0154c22d2b3bab`  
		Last Modified: Tue, 13 Oct 2026 21:06:28 GMT  
		Size: 904.5 KB (904475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82162560ec3dae532726b210f52a733ba7209c8c160c1ca5ced1fa97fd1c2dd`  
		Last Modified: Tue, 13 Oct 2026 21:06:28 GMT  
		Size: 9.4 MB (9408345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02594dc4bb2eb24006b025f9832e9b203b66c05040387fe9149487971565cd07`  
		Last Modified: Tue, 13 Oct 2026 21:06:31 GMT  
		Size: 137.8 MB (137838948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c1c81d7a6fcf25fad1c76e39a5801c826bce128a20f3832274c656709b6ad22`  
		Last Modified: Tue, 13 Oct 2026 21:06:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:4560f0e674a8006784e06077360b84d3076b1b5d2c70424aac954ccb561e22f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2335496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2296ca51bdc5a25e9cc6e10d1b2e015185d285d6717707f1b1e75edf5056120c`

```dockerfile
```

-	Layers:
	-	`sha256:ac7a5cd1e945aacd7991a37ef6b4f83619ecfc119b8ac52f834c52954738feb7`  
		Last Modified: Tue, 13 Oct 2026 21:06:28 GMT  
		Size: 2.3 MB (2301587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee6b833ea55c4633f57e0e7ccab4ca2d79fe4b28d2e18579f3c397d027b17b4c`  
		Last Modified: Tue, 13 Oct 2026 21:06:28 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:65b7a07cb8d901463daf686db595b5ccf16ba242c35af6b0d438f63e3e8ed674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209516092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef3971e77158717f414b5cfb70a5e7e49db731feb0f5b5760a5ecb604ffaa91`
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
# Tue, 13 Oct 2026 21:03:52 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 13 Oct 2026 21:03:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 13 Oct 2026 21:03:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 13 Oct 2026 21:03:55 GMT
ENV NODE_ENV=production
# Tue, 13 Oct 2026 21:03:55 GMT
ENV GHOST_CLI_VERSION=1.33.4
# Tue, 13 Oct 2026 21:03:55 GMT
ENV GHOST_CLI_SHA=630700fa3443b0f522dbbe7f1fe1fdc80d38fc48
# Tue, 13 Oct 2026 21:03:55 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 13 Oct 2026 21:04:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.2'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 13 Oct 2026 21:04:01 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 13 Oct 2026 21:04:01 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 13 Oct 2026 21:04:01 GMT
ENV GHOST_VERSION=6.70.0
# Tue, 13 Oct 2026 21:04:19 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 13 Oct 2026 21:04:19 GMT
WORKDIR /var/lib/ghost
# Tue, 13 Oct 2026 21:04:19 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 13 Oct 2026 21:04:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 21:04:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Oct 2026 21:04:19 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 13 Oct 2026 21:04:19 GMT
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
	-	`sha256:9dd3b91b49a9dead052a58a6eca1edd7e219a8e3201cf6694b449dad99a9c2d6`  
		Last Modified: Tue, 13 Oct 2026 21:05:04 GMT  
		Size: 891.2 KB (891173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3cf184c020c45c71d62d5abaf9510bbc0957c31704c4266698cda57b43467e`  
		Last Modified: Tue, 13 Oct 2026 21:05:04 GMT  
		Size: 859.9 KB (859932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ae03d0d638d6bd9e3623a15befa2930873ae5cac59ceea7528c9d4f9dc4751`  
		Last Modified: Tue, 13 Oct 2026 21:05:04 GMT  
		Size: 9.4 MB (9409478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5ba3d775e38ef21a2bd85185b941b5cb83e39a91d23e6a5c721027f0a4f680f`  
		Last Modified: Tue, 13 Oct 2026 21:05:07 GMT  
		Size: 137.4 MB (137449854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7e9f15bb848a612a65ad5d7d7c3d6e247454ea7a4a08f66cef43b498327a25`  
		Last Modified: Tue, 13 Oct 2026 21:05:05 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:5b783115f4d27fd04fbb7cd1eb23472e22ac1009442e43b29aa7a6fd9b5b2502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8acb31a7d5316f0a5b684bbf196c6bdc583568a54aea87bac10fae0017e9d5c`

```dockerfile
```

-	Layers:
	-	`sha256:3a4ba2a476ff3cd16e2d2b1bf93d2889844abb290183e82fcadbb3d15b92126d`  
		Last Modified: Tue, 13 Oct 2026 21:05:03 GMT  
		Size: 2.3 MB (2300024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a18e919009cb5d67c7c02a81407708a77757b0f9f36ad1bdffcffa717d0a2be`  
		Last Modified: Tue, 13 Oct 2026 21:05:03 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json
