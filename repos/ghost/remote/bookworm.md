## `ghost:bookworm`

```console
$ docker pull ghost@sha256:72150771aef01e0b4af7787aa62d936b76b108dc6236b10ecee120fb73e2494d
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
$ docker pull ghost@sha256:6f2225c35bda30fa09dc88d64eda834873a95ee9dcd9fee7ed5c3e32c7077690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.9 MB (235887761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed33cf961ef0dc38780a69b1e293c81dd965ea2929464436db045e76a8404956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 15 Sep 2026 22:57:21 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 22:57:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 22:57:21 GMT
ENV NODE_ENV=production
# Tue, 15 Sep 2026 22:57:21 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Tue, 15 Sep 2026 22:57:21 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Tue, 15 Sep 2026 22:57:21 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 15 Sep 2026 22:57:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.26.0'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 15 Sep 2026 22:57:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Sep 2026 22:57:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Sep 2026 22:57:35 GMT
ENV GHOST_VERSION=6.64.0
# Tue, 15 Sep 2026 22:58:04 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 15 Sep 2026 22:58:05 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Sep 2026 22:58:05 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Sep 2026 22:58:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:58:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:58:05 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 15 Sep 2026 22:58:05 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:64188cfdec383ae39371ce969d7c00386578307cc98ce2b3babf718a9b359613`  
		Last Modified: Tue, 15 Sep 2026 22:58:44 GMT  
		Size: 1.2 MB (1247983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20579cb2eaa9a68b20b6c720ae78becbe4cd910c6b94757fc3342fb1ff45cb8d`  
		Last Modified: Tue, 15 Sep 2026 22:58:44 GMT  
		Size: 9.9 MB (9858726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939a227cf3d5b2954b92355d5b16ba1bd2319d1df7246df844d3eef3815182b4`  
		Last Modified: Tue, 15 Sep 2026 22:58:47 GMT  
		Size: 144.9 MB (144892872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6669bdd5e6e5e4cb0433e7844861c0beb9510c1d45fcc7825980e1dc4521d5ac`  
		Last Modified: Tue, 15 Sep 2026 22:58:44 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:0af91c0023fc4e8fd81a82b4ebf7ed405ece5cc71ad7864e46592e50e8d23b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4705232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e4141593a45582d0a8abc2257a7ee75d63e88b77de91767ffb98716635b7c95`

```dockerfile
```

-	Layers:
	-	`sha256:5337df8299547ffe9a28586a6713052314b9e2ce9cb3bb6d2363453a8024569d`  
		Last Modified: Tue, 15 Sep 2026 22:58:44 GMT  
		Size: 4.7 MB (4671327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbed3802de80e3a8d8629870e7d6d1e63c3040075a0184782a5db0370022e809`  
		Last Modified: Tue, 15 Sep 2026 22:58:44 GMT  
		Size: 33.9 KB (33905 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:3285d147884535f3b3c98faccb7dadee6895c073d7ea6875d7a26a66febaa3da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279004765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cfa69edb5e62a3e591491d4ea5d22c28da86d13d9423741689c2eb8e2e15a94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:35:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 25 Aug 2026 01:35:42 GMT
ENV NODE_VERSION=22.23.2
# Tue, 25 Aug 2026 01:35:42 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 01:35:42 GMT
ENV YARN_VERSION=1.22.22
# Tue, 25 Aug 2026 01:35:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 01:35:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:35:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:35:56 GMT
CMD ["node"]
# Tue, 15 Sep 2026 23:17:15 GMT
ENV GOSU_VERSION=1.19
# Tue, 15 Sep 2026 23:17:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 15 Sep 2026 23:17:15 GMT
ENV NODE_ENV=production
# Tue, 15 Sep 2026 23:17:15 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Tue, 15 Sep 2026 23:17:15 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Tue, 15 Sep 2026 23:17:15 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 15 Sep 2026 23:17:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.26.0'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 15 Sep 2026 23:17:43 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 15 Sep 2026 23:17:43 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 15 Sep 2026 23:17:43 GMT
ENV GHOST_VERSION=6.64.0
# Tue, 15 Sep 2026 23:18:41 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 15 Sep 2026 23:18:41 GMT
WORKDIR /var/lib/ghost
# Tue, 15 Sep 2026 23:18:41 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 15 Sep 2026 23:18:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:18:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:18:41 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 15 Sep 2026 23:18:41 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76a60e7a365ce25be97053f92f81bc9aabb2d690c62c2b2b0b1f0c57325c08f`  
		Last Modified: Tue, 25 Aug 2026 01:36:08 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834fbf6b5ef4dfe976afa02a874c8ecdd7178e0963556c040a683f71990b1589`  
		Last Modified: Tue, 25 Aug 2026 01:36:10 GMT  
		Size: 44.6 MB (44633248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159c5b9b01e0edad8dc0d4d708bbe2cb7e46c626590c7c3424444bfd0a9feb28`  
		Last Modified: Tue, 25 Aug 2026 01:36:09 GMT  
		Size: 1.7 MB (1713168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1651d796decd28eed2baf8f4f76d2f990331dfd3d4862cdabb94567f8a0f2ad`  
		Last Modified: Tue, 25 Aug 2026 01:36:09 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee608c29765dbfcc1f4faed73cf0485dfbcee87a757f92b0ae4d3cdda3a5dc8f`  
		Last Modified: Tue, 15 Sep 2026 23:19:33 GMT  
		Size: 1.2 MB (1214847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d98b50e24c04a6657ca7cbc6f47a70d21f3a1f3e5791743d3d990fb5bae602`  
		Last Modified: Tue, 15 Sep 2026 23:19:33 GMT  
		Size: 15.8 MB (15784046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6538186e42dcb5eb7580095e1c6d4ae4b59eca54acf83591b2d0976224d79e`  
		Last Modified: Tue, 15 Sep 2026 23:19:36 GMT  
		Size: 191.7 MB (191715281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176efaa2cace71436a3874b2a298e2a0cab1a2d257f122651b2b5f3782d14af6`  
		Last Modified: Tue, 15 Sep 2026 23:19:33 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:c6a49613fb4bda7c8acafba7bd521764ab4757c84294cccc844f977663c05208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4739382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b20a6ab41d300f1fd0269ca985c0677a993b6825dc4223df9e748c6bec1a10c`

```dockerfile
```

-	Layers:
	-	`sha256:a58177629907d35bb11a9902d4381a76c08ac8079640a7939fe898410198d9a7`  
		Last Modified: Tue, 15 Sep 2026 23:19:33 GMT  
		Size: 4.7 MB (4705335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f457942ce45e4b9bd6a975ef205b5019a872bf2e0569e8831be4ab1533161b31`  
		Last Modified: Tue, 15 Sep 2026 23:19:32 GMT  
		Size: 34.0 KB (34047 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:37b5dbfcc5692e44a18525bcbd67ab4c2110639984eb4921b706d1e2ab5894d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235279757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949b201d416a7b1f3f552cc5690f72fc3c5df92ca9cced85153959a04202494b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:49:28 GMT
ENV GHOST_CLI_VERSION=1.32.5
# Sat, 19 Sep 2026 01:49:28 GMT
ENV GHOST_CLI_SHA=fc075c355680270c6dfb62af4120ea0a29299280
# Sat, 19 Sep 2026 01:49:28 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Sat, 19 Sep 2026 01:49:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.26.0'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Sat, 19 Sep 2026 01:49:43 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Sat, 19 Sep 2026 01:49:43 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Sat, 19 Sep 2026 01:49:43 GMT
ENV GHOST_VERSION=6.64.0
# Sat, 19 Sep 2026 01:50:15 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Sat, 19 Sep 2026 01:50:16 GMT
WORKDIR /var/lib/ghost
# Sat, 19 Sep 2026 01:50:16 GMT
VOLUME [/var/lib/ghost/content]
# Sat, 19 Sep 2026 01:50:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:50:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:50:16 GMT
EXPOSE map[2368/tcp:{}]
# Sat, 19 Sep 2026 01:50:16 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:03e67ce92593d3fb976395bfa51dc85902f74d150ddafbdda8c0bf2b75bd32cd`  
		Last Modified: Sat, 19 Sep 2026 01:51:03 GMT  
		Size: 1.2 MB (1202003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e1f71138dac13fa2340f543a952568d0b6d2006cab2b9914b9cf6783122fe1`  
		Last Modified: Sat, 19 Sep 2026 01:51:04 GMT  
		Size: 9.9 MB (9858771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2244c7268716a4a858c1af3866eb947824d7173ee74508135673d3c0b7148fc2`  
		Last Modified: Sat, 19 Sep 2026 01:51:07 GMT  
		Size: 144.3 MB (144320447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614ed926baf39a7cabd256de60e4f7da1ce89f1a28140fb2891522ec51f2ad00`  
		Last Modified: Sat, 19 Sep 2026 01:51:03 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:f406b9fef78fe35e6f9f0d4e8f87a80172ee3ff6842cf51ef5f6120da14b563e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4704732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8156ed33d65947a72c47c753527f2edf9b84a1803891e6c86f4bace3a94f81a`

```dockerfile
```

-	Layers:
	-	`sha256:914960735537727474cb34723a3aaf5911afd2b8c83d56ea598cc35f6b142d66`  
		Last Modified: Sat, 19 Sep 2026 01:51:03 GMT  
		Size: 4.7 MB (4670645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dd3bdaf4c0e20d82e74af0d387875aad3131c93645d096f64e91fc308fb1fca`  
		Last Modified: Sat, 19 Sep 2026 01:51:03 GMT  
		Size: 34.1 KB (34087 bytes)  
		MIME: application/vnd.in-toto+json
