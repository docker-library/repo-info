## `ghost:next-bookworm`

```console
$ docker pull ghost@sha256:cb2f5ce805f68c8fc5e93ff6a6e6bc102022beaf2f990c55f31ebd6cddab4049
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:cde721b77b1745c37cbfe9f88980bdc34de01b441ac4ed82b2223d86acea08fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152598444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112219035e09ffd3c4bf60b2b4afe868e49ec5ac00e7d6559050eb494b48865a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 01:43:46 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 01:43:46 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 01:43:46 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 01:43:58 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 01:43:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:58 GMT
CMD ["node"]
# Thu, 05 Nov 2026 00:03:21 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:03:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:03:21 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Thu, 05 Nov 2026 00:03:21 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:03:21 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:03:21 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:03:21 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:03:21 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:03:21 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:03:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:03:39 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:03:39 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:03:39 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:03:39 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:03:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:03:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:03:39 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:03:39 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:709e8267cebf108d59c4e6e386882a5c79c10bbe11ecd02c6ed9ed4efa5b905d`  
		Last Modified: Wed, 28 Oct 2026 01:44:12 GMT  
		Size: 3.3 KB (3315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df736340692d217b57cd447c94f978f9a91ce3e8805b225e78374eae3aff864c`  
		Last Modified: Wed, 28 Oct 2026 01:44:13 GMT  
		Size: 49.9 MB (49885461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22dd8aef5082b9de7fb037db9c398ee2822c5c81cc5cbb63bb32a46a5decdb1`  
		Last Modified: Wed, 28 Oct 2026 01:44:12 GMT  
		Size: 1.7 MB (1712934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bee45faaffff77eee1e3d151cc650b854df28523ea01e5a2dcc0327da8793a9`  
		Last Modified: Wed, 28 Oct 2026 01:44:12 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b9ef9a9f1bd9e4ca008ba616f9fe6581cd1e116b7dd7d62bd0e03f949ca483`  
		Last Modified: Thu, 05 Nov 2026 00:03:59 GMT  
		Size: 1.2 MB (1248015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772c5abcb95bc7dc59442ab9e557ece278017da2a43cd8bc98648ab8b43802c4`  
		Last Modified: Thu, 05 Nov 2026 00:03:59 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4e8a39e4b0efa8f9e1b638e5b8476f1929283034e37bb13fff64e9df8bae417`  
		Last Modified: Thu, 05 Nov 2026 00:04:01 GMT  
		Size: 71.5 MB (71497199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313e05cff53fbbb563ae44e8acf20267ad40af5b8361b18fd4409a9d7d27f855`  
		Last Modified: Thu, 05 Nov 2026 00:03:59 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9acc83df430f7d4054be73157b83941d19c1ad9fb7b5ed37411a8d81187ed9`  
		Last Modified: Thu, 05 Nov 2026 00:04:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffad7a4ca1f1bafb06a577df6af8597e29e4e10e5f45e51315051ba79acb26b`  
		Last Modified: Thu, 05 Nov 2026 00:04:01 GMT  
		Size: 1.8 KB (1834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:3d2f19e46f501ed485be413bba50a7ff7a1a711b96926fe07b65e7d5cb8852ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4155712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5f4e94852f2a3d4ec194eb8e5040167da6c9e36dd9d54343454e19768cda51`

```dockerfile
```

-	Layers:
	-	`sha256:397fc65f6183393284ef2797009e7fdb49f665df00d15ddd0f88b633daa2e5b3`  
		Last Modified: Thu, 05 Nov 2026 00:04:00 GMT  
		Size: 4.1 MB (4118705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c44089f4612b10c54778705d0219ba58b9924126ca513c5b9802c26f266e50a`  
		Last Modified: Thu, 05 Nov 2026 00:03:59 GMT  
		Size: 37.0 KB (37007 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:104f12954cd7d9768a96fabc478170e6ddc36e265b1e15cd847645b06f4f4694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151862562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d56038d53a1e819985718e16104aa97be63e1942922595c3ed9738fb82a31c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:46:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 01:47:08 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 01:47:08 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 01:47:08 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 01:47:21 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 01:47:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:47:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:47:21 GMT
CMD ["node"]
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GOSU_VERSION=1.19
# Wed, 04 Nov 2026 23:59:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:04 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Thu, 05 Nov 2026 00:01:04 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:04 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:01:04 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:01:04 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:04 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:01:04 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:01:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:23 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:01:24 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:01:24 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:01:24 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:01:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:24 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:24 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0bdc66dfeb4c7283e40f1f46a1662ee123f3e458fa5c623a3e2a1004965aef`  
		Last Modified: Wed, 28 Oct 2026 01:47:35 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e63a7271991470b0a9849dc0d952b2ca1c9f534475f4839c46af8807661ff3`  
		Last Modified: Wed, 28 Oct 2026 01:47:37 GMT  
		Size: 50.0 MB (50022790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983c66c071395f3f0a95f10bb5f6207e7f2847cc45f0b2561e1157ab9eaed872`  
		Last Modified: Wed, 28 Oct 2026 01:47:35 GMT  
		Size: 1.7 MB (1713009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467306870dd09052af75210e4783437fa9d2e718b28c3ebe4fe1db92cf96f3d0`  
		Last Modified: Wed, 28 Oct 2026 01:47:35 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52bfe42165cbf16163615eb23273f9d7f440293eeda4c30ec44bada6c9fffd67`  
		Last Modified: Thu, 05 Nov 2026 00:00:40 GMT  
		Size: 1.2 MB (1202055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac5da81ff6c9cadad62afab4362a9c983c7a6503b069ceff43d6a30140c6060`  
		Last Modified: Thu, 05 Nov 2026 00:01:46 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe950e2d0b5f282fac897cfed644d4f7afb3539ec05a0ba29d48a0d3cb7915c`  
		Last Modified: Thu, 05 Nov 2026 00:01:48 GMT  
		Size: 70.8 MB (70779371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b53810c6088389f631b370ecbbf8afb7053a92bc04d2b9a3f8fec3acf567f3`  
		Last Modified: Thu, 05 Nov 2026 00:01:46 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20291eda0c6e40b916a4bcf01280a85e99e1f52d7d27d3f24a7e18f89e24b30`  
		Last Modified: Thu, 05 Nov 2026 00:01:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262924368b5496ae0f01a3dc5502db1dad4945406bcd823e38f7fd3d2dae8030`  
		Last Modified: Thu, 05 Nov 2026 00:01:48 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:f64b2d08012af6f9e82d7b263f827a792f9cbb38e8c92249934cb01dcf9e43a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4155460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce3744d3ef60bdb89b93ecad5fc440c9a225f701836adfb353b98a612a67bfd`

```dockerfile
```

-	Layers:
	-	`sha256:e7b60e6a2cec906af8be93501d1a51234fc9922f2a83884f2338e42dcce43762`  
		Last Modified: Thu, 05 Nov 2026 00:01:47 GMT  
		Size: 4.1 MB (4118255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51cbfccb141cbcddfe45eef47a8254d9f0710a510e2731ecb74633a807015988`  
		Last Modified: Thu, 05 Nov 2026 00:01:46 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json
