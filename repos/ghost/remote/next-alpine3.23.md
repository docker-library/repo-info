## `ghost:next-alpine3.23`

```console
$ docker pull ghost@sha256:8c64751fc43a8eb79b8f5d1011a54d781c137f2ea7bbd007a805ab096eaa7af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:2560660fdf0601a8d38dd41792564156cb1abfe6d9fb1ed4d89df860252ee946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155142298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17381048f5276d40010acc1793745c707bc494d9a59580af64ab1d3379f0bff0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 18:43:14 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:14 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:14 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:19 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:19 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:15:16 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:15:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:15:16 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Wed, 11 Nov 2026 19:15:16 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:15:16 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 11 Nov 2026 19:15:16 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 11 Nov 2026 19:15:16 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:15:16 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Wed, 11 Nov 2026 19:15:16 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Wed, 11 Nov 2026 19:15:31 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:15:31 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 11 Nov 2026 19:15:31 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 11 Nov 2026 19:15:31 GMT
WORKDIR /home/ghost
# Wed, 11 Nov 2026 19:15:31 GMT
VOLUME [/home/ghost/content]
# Wed, 11 Nov 2026 19:15:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:15:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:15:31 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:15:31 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e30bea26e0d67cd3559466256b405142a5e6b52f9cba1cdcad0e5bfc611218`  
		Last Modified: Wed, 11 Nov 2026 18:43:34 GMT  
		Size: 56.1 MB (56107436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b62420d447b606d3488e8097b54006686b092811a1fb71e38c17f6d8a69e813`  
		Last Modified: Wed, 11 Nov 2026 18:43:33 GMT  
		Size: 1.3 MB (1262407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf4dc5563aa082d7082e8c74714923513b0028053b6ee13ebd0387968cd635a`  
		Last Modified: Wed, 11 Nov 2026 18:43:32 GMT  
		Size: 442.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98dbddaa29b7a94f3faab2bc15d0014d9d4bb699af9a3a10726302c7ec45c97b`  
		Last Modified: Wed, 11 Nov 2026 19:15:54 GMT  
		Size: 901.4 KB (901392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f3e64394b145276349fc4e192bb50594301d7b8795488f10bb1cc3f36a7b15`  
		Last Modified: Wed, 11 Nov 2026 19:15:54 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997c9ed93d6a63201b091e5860df84cc4a6d1e044c9451f9201de18e26c56e4`  
		Last Modified: Wed, 11 Nov 2026 19:15:57 GMT  
		Size: 93.0 MB (93014713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66963ee649b6a778eb5d69468803ae9632a8b836e46aa327b2f5d32c1dd20d3`  
		Last Modified: Wed, 11 Nov 2026 19:15:54 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67857e335ecab9e580ade6a0236be1e027aceab9af9e432ecc04e36b41cf4813`  
		Last Modified: Wed, 11 Nov 2026 19:15:56 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464d0eb779e070d0bf1eb83db7e7cc5f1047bf81007bcb12cf26fb02b32a2773`  
		Last Modified: Wed, 11 Nov 2026 19:15:56 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:ef3ccd9107a675902bd20a95ba98521d667d47307151b2750a600452dc43a531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 MB (1910470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9acb62e6c020e13ea63b5f02f9ebd177a7213487c53b5b02771a642ef70990`

```dockerfile
```

-	Layers:
	-	`sha256:e3696a94a538615ee08a77825e6fd222aa63a96d4447f2bbfe3a877fcba75e3e`  
		Last Modified: Wed, 11 Nov 2026 19:15:54 GMT  
		Size: 1.9 MB (1877379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56f4a2c394f0aefa2f0ed30bad78c32651a959dd8daf30add31845c1cbe24c3e`  
		Last Modified: Wed, 11 Nov 2026 19:15:54 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:70961fb887ea8d23e37cbb96032c0729c15af291594991583327ca1978b388e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153353494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c5e89360832bf9882141680f737289d3d57d879af3687496482af2ed7feb66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:51:12 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 19:51:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         arm*) OPENSSL_ARCH=linux-armv4;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 19:51:12 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 19:51:16 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 19:51:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:51:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:51:16 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:14:24 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:14:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:14:25 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Tue, 10 Nov 2026 21:14:25 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:14:25 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 10 Nov 2026 21:14:25 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 10 Nov 2026 21:14:25 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:14:25 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Tue, 10 Nov 2026 21:14:25 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Tue, 10 Nov 2026 21:14:39 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:14:39 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 10 Nov 2026 21:14:39 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 10 Nov 2026 21:14:39 GMT
WORKDIR /home/ghost
# Tue, 10 Nov 2026 21:14:39 GMT
VOLUME [/home/ghost/content]
# Tue, 10 Nov 2026 21:14:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:14:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:14:39 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:14:39 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14089fc98577961ac471b7522d8bde06ed7015e46045a70aa1a44de584e01025`  
		Last Modified: Thu, 05 Nov 2026 19:51:32 GMT  
		Size: 55.5 MB (55534878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296582d8de11e7b1ebe66aed687c10fb62412d701f20d73b7f4071cc21cc301f`  
		Last Modified: Thu, 05 Nov 2026 19:51:31 GMT  
		Size: 1.3 MB (1262911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfec1e5359b744b21ec5955981ca2f7487c40571679ac553c6c72a0bf31a625`  
		Last Modified: Thu, 05 Nov 2026 19:51:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7328d6529bd947e2316ef3554179329b17fa4ed90fe404a05aa0f60c432795`  
		Last Modified: Tue, 10 Nov 2026 21:15:04 GMT  
		Size: 854.0 KB (854016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a71c89746022c1caf146377cabfc3a27d76a2a0a7b51edc12bafc5ea2bfeea`  
		Last Modified: Tue, 10 Nov 2026 21:15:04 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7092f57557b0263791d40104fd4908f03d709c9c6ba613d22e94d44f5c14ac`  
		Last Modified: Tue, 10 Nov 2026 21:15:06 GMT  
		Size: 91.5 MB (91507704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ede4ed50e62fe500fa332831218f0fbcc41761c9819f3724c65f613b126bcb6`  
		Last Modified: Tue, 10 Nov 2026 21:15:03 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd10506fa7ca478c5ecdde0cf414348602648f119ba0456e5bd5a069ca06b4b`  
		Last Modified: Tue, 10 Nov 2026 21:15:05 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804a8a44d0aea4460af79aca73d4aefff0d2d16a7cdbe937475f8be932ae208a`  
		Last Modified: Tue, 10 Nov 2026 21:15:05 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:be9f8c016bd87acc349e11c0a1cd1a79f9e552ed49d3e7df4ce9bb6edb4256f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 MB (1909394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30124dea94e3c61973149a4d0d2827f97647621da8e6e481908dc66a2c723b48`

```dockerfile
```

-	Layers:
	-	`sha256:a84dfd9744d3bb5e38f9c4aec6149f71bd6481d2bd1d9eb87c79ed1bb45b603c`  
		Last Modified: Tue, 10 Nov 2026 21:15:04 GMT  
		Size: 1.9 MB (1876106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3627367c64e64f8cc4d80a5f0cd23c72fd9bfb954fcdf67994306fc8f425106c`  
		Last Modified: Tue, 10 Nov 2026 21:15:03 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json
