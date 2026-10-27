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
