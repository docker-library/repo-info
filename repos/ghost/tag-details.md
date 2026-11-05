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
-	[`ghost:6.75`](#ghost675)
-	[`ghost:6.75-alpine`](#ghost675-alpine)
-	[`ghost:6.75-alpine3.23`](#ghost675-alpine323)
-	[`ghost:6.75-bookworm`](#ghost675-bookworm)
-	[`ghost:6.75-next`](#ghost675-next)
-	[`ghost:6.75-next-alpine`](#ghost675-next-alpine)
-	[`ghost:6.75-next-alpine3.23`](#ghost675-next-alpine323)
-	[`ghost:6.75-next-bookworm`](#ghost675-next-bookworm)
-	[`ghost:6.75.0`](#ghost6750)
-	[`ghost:6.75.0-alpine`](#ghost6750-alpine)
-	[`ghost:6.75.0-alpine3.23`](#ghost6750-alpine323)
-	[`ghost:6.75.0-bookworm`](#ghost6750-bookworm)
-	[`ghost:6.75.0-next`](#ghost6750-next)
-	[`ghost:6.75.0-next-alpine`](#ghost6750-next-alpine)
-	[`ghost:6.75.0-next-alpine3.23`](#ghost6750-next-alpine323)
-	[`ghost:6.75.0-next-bookworm`](#ghost6750-next-bookworm)
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
$ docker pull ghost@sha256:ccb9a94e510b2856f71058e6b1b3a965a5a91e8421acb5be31aa181f67bf18c1
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
$ docker pull ghost@sha256:0c3d0284a46b08f0cc7ab83e33b7f78a592b31bf03ef0a39d7506970de4a9570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217982476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c260de9fd759cb57ecf62d6a0b84f5f7a69d11b59248b723541180ad6103a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:16 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:00 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:00 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:00 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6a56698a26deccaa0ea41c78705480765155b690312e350d42bce46ecdf86036`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 1.2 MB (1248013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e3e1926e7c3de50d673460d2e3f7b6379555fb16d1180db1573ef22b166993`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 10.0 MB (10031626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abe3269d1473f9a9e99ddb4cd72d4899dc6e083d6db2c65ebeee5acc75d9fcc`  
		Last Modified: Thu, 05 Nov 2026 00:01:41 GMT  
		Size: 126.9 MB (126852666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3099a06c38428ed814ba077df1534dca9e8e44e1c133c7c4f93cc930d501e720`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:f86656f0f7fe4fb7cbb137564c26bc9fd7641cf676fa0b7420af4c719439a600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cddfc00038050158deeb82ca257fd8c7bc039774adaa36ac635319353c08629`

```dockerfile
```

-	Layers:
	-	`sha256:fc085e85926a9280fae55483c2f38d3045e5bd74aa42e72b601ec0a8fabfe1ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 4.3 MB (4345000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0e02f4ba1a49f7effe75d6aff9636805b3510a061fa25f7999fc50f859ba5f`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:585407abd80b11dc4779c4b2307fdfc083b1e3e02b8ddaa50ead5545420a5ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216135219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dca3684cbaa1fb196f10294d4264311d54d6d7558473ab9a79b14f34ee2149`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 02:24:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 02:25:11 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:25:11 GMT
CMD ["node"]
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:09 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:09 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:10 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a41bac2f884b2d61e0a804569b04d53e9cfc1f083da293ecd050f799cec3494`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8ba6fdce9bedaea984a7ccda49c889e6447b9c9b1683eef9ef1d7f27e81de4`  
		Last Modified: Wed, 28 Oct 2026 02:25:26 GMT  
		Size: 44.6 MB (44578343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f764380a4475f16e15bc643e4fcdce4d1890345cfa078b218850212f283d8521`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 1.7 MB (1713178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb172d813a498c5fffdb9f74d9cea7e92fad65c8d6228bec919bde34eefe419`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec6093f96354212abbf10d484d2fd0f1505e74ac09d01106210742543666a8c`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 1.2 MB (1214925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea1cea500b591cfcd96386fef522867fe4629a77f815a8b25f98a70e871b6ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:53 GMT  
		Size: 16.6 MB (16624926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859e465eb18261da4f936732e9cab9c19607723e1475825470f6a4d2fef81a31`  
		Last Modified: Thu, 05 Nov 2026 00:01:55 GMT  
		Size: 128.0 MB (128038544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1089d2fd0aa40072a078fa22e167a625d71e7be219693b43e9ab5afbc8b7cd6`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:cc3eb9c81c6c09733bb8f42e13c7e9607326592449e09ec90f66cf24c84f0ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4413866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98390614fd238d075326b6dd3d2d94f3c3accc8152d961fbb74bcb971ea8d033`

```dockerfile
```

-	Layers:
	-	`sha256:4d3f737bc2b845a28960e9e42484f9e4ba92f0527e8a3201fbbdf900d3d814dd`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 4.4 MB (4379040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23bef30709a307bf7160fe3764652d0271125c74d86781b6adc235f5971566e`  
		Last Modified: Thu, 05 Nov 2026 00:01:51 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:635787f2a83283ab80e76f4b1a3420f1b3c59c0bd4b2018d90245f6536cbe052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217372324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd9d5f5ae6726d2aaa6ff62fb75b10ffdd496124d91b77dd9f3cc655655c1f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 04 Nov 2026 23:59:18 GMT
ENV NODE_ENV=production
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 04 Nov 2026 23:59:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_VERSION=6.75.0
# Wed, 04 Nov 2026 23:59:57 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Nov 2026 23:59:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Nov 2026 23:59:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 23:59:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 04 Nov 2026 23:59:58 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:43cdd0465c6411698e58a00737bdfb2c3e12c15f6cefd6d2527c0a681973dba0`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 10.0 MB (10031306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d82619c9357f9a28e9dfdc925a94816eca1831c3c79bc1d4415432561f83e8`  
		Last Modified: Thu, 05 Nov 2026 00:00:45 GMT  
		Size: 126.3 MB (126260877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbefd2bbb7214e8c453eb02f04bda194c59d6d8431d9c216ed4169468e34999`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:8cbdaf581a1bbae9778f859b3b38d52d0fd576cd674a2b591e6576169650907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9fb457301269094a620b75d1caf9712bd048403722f11b0b3ab81f96e0a9a0`

```dockerfile
```

-	Layers:
	-	`sha256:9f47fc757294960fd1428bbbdda9dfa9b208b39e25fdc3859ccf6f8adc88ae09`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 4.3 MB (4344292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3cf3b85aa48ef1e66ed011dea0a86b515571895124e011d6aa38e7c7a49105c`  
		Last Modified: Thu, 05 Nov 2026 00:00:40 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-alpine`

```console
$ docker pull ghost@sha256:bea7100f19d83b23c234fd8ad94a90505552f7b0f5f307b079907c1fd03dbdf7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7b8e1775bebb36cc41b26ee0c255163e554b2d2b28d248d12604b607c59607e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199610067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a17b26951b83939f859f1e2b2187b74671155b221c26be4506346d8e54f04`
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
# Thu, 05 Nov 2026 00:01:50 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:02:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:02:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:12 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:12 GMT
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
	-	`sha256:9b0ad060b6893f8af58c45b1557f369d2418dd624e1a8159ae299688ebe167f9`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 822.2 KB (822225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c3e5557dd0bfa781aab57187fcac791f967a38587098b2f9999dd9f7e6f2bf`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 904.1 KB (904095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c430f1225650c9cd8795044726756744be5039ea952c04a7a678994ecc9c6d0`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 9.6 MB (9579119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577867912a16658291bc8abf7eb979d268321b6b8118bbeeef61c798453b55a1`  
		Last Modified: Thu, 05 Nov 2026 00:02:51 GMT  
		Size: 127.1 MB (127108355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549ec51cb72ee0eb4aed1e877b352e388e95f817a99329e0a520f638364f544`  
		Last Modified: Thu, 05 Nov 2026 00:02:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c3910994fc8f0a5028ddadea5e982974cdfa01e60dfe0c30a0328d2b43681369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2168815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635518a305c0ed57e21443189693564cd9a7895372b434dd441c6456cc230601`

```dockerfile
```

-	Layers:
	-	`sha256:78c2cc0a5f77d94290ef2715c20a70d2235e77296f06a14e53b4475843096fc7`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 2.1 MB (2134906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a84402de96acc695430ad4a94135d24aa9f4b05fab4f41b38386b2201ecd2c`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a5635d22b6a33c838b5f36813d0b0379e02e3cd909e52100c0510a3d176eb32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199011209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303614ec8b1ed1726722af1eaaa7c30c164a7b3c7e3d496a8f0f8b842740f8b4`
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
# Thu, 05 Nov 2026 00:07:27 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:07:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:07:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:07:50 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:07:51 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:07:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:07:51 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:07:51 GMT
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
	-	`sha256:6dbe1497e2e656d55a4d7d49363623f085ae09b6d80a5f9241ff9b1d37725596`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 891.2 KB (891209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021059ea9ba7f0fbb294ddb98c71fb0720bb0d86595e0869d4ff61cef287a339`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 857.7 KB (857699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e3a24b2f95d1f101d1667e6eb94e043f721d905b9dd8c88292eaf19ca1daa6`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 9.6 MB (9579597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0030502cbd7e40248f65e37a7d3a4efdd1192f9f87378883e418682702d8adf`  
		Last Modified: Thu, 05 Nov 2026 00:08:35 GMT  
		Size: 126.7 MB (126687895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbe7404f40b17311d72a2701c823ea2d06c28c37cd23ff55d7abf365e024e1c`  
		Last Modified: Thu, 05 Nov 2026 00:08:33 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c8241feb19e64fbb94dcec929296e447f89935c931a2f8d02dade6fe4d66634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2167459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd9ae0793838fb813c30c96f56f6cce7dbe6e9a5effbed48d62e321e18f29`

```dockerfile
```

-	Layers:
	-	`sha256:06e6128b8d8b48cc937913290be00d51769ab62aebe32b76aa8417133d44dbdf`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 2.1 MB (2133353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293d9534c699448d92a3e75369390498b05419e7ef7dd9f163a3e98429a57827`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-alpine3.23`

```console
$ docker pull ghost@sha256:bea7100f19d83b23c234fd8ad94a90505552f7b0f5f307b079907c1fd03dbdf7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:7b8e1775bebb36cc41b26ee0c255163e554b2d2b28d248d12604b607c59607e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199610067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a17b26951b83939f859f1e2b2187b74671155b221c26be4506346d8e54f04`
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
# Thu, 05 Nov 2026 00:01:50 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:02:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:02:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:12 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:12 GMT
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
	-	`sha256:9b0ad060b6893f8af58c45b1557f369d2418dd624e1a8159ae299688ebe167f9`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 822.2 KB (822225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c3e5557dd0bfa781aab57187fcac791f967a38587098b2f9999dd9f7e6f2bf`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 904.1 KB (904095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c430f1225650c9cd8795044726756744be5039ea952c04a7a678994ecc9c6d0`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 9.6 MB (9579119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577867912a16658291bc8abf7eb979d268321b6b8118bbeeef61c798453b55a1`  
		Last Modified: Thu, 05 Nov 2026 00:02:51 GMT  
		Size: 127.1 MB (127108355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549ec51cb72ee0eb4aed1e877b352e388e95f817a99329e0a520f638364f544`  
		Last Modified: Thu, 05 Nov 2026 00:02:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c3910994fc8f0a5028ddadea5e982974cdfa01e60dfe0c30a0328d2b43681369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2168815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635518a305c0ed57e21443189693564cd9a7895372b434dd441c6456cc230601`

```dockerfile
```

-	Layers:
	-	`sha256:78c2cc0a5f77d94290ef2715c20a70d2235e77296f06a14e53b4475843096fc7`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 2.1 MB (2134906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a84402de96acc695430ad4a94135d24aa9f4b05fab4f41b38386b2201ecd2c`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a5635d22b6a33c838b5f36813d0b0379e02e3cd909e52100c0510a3d176eb32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199011209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303614ec8b1ed1726722af1eaaa7c30c164a7b3c7e3d496a8f0f8b842740f8b4`
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
# Thu, 05 Nov 2026 00:07:27 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:07:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:07:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:07:50 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:07:51 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:07:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:07:51 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:07:51 GMT
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
	-	`sha256:6dbe1497e2e656d55a4d7d49363623f085ae09b6d80a5f9241ff9b1d37725596`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 891.2 KB (891209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021059ea9ba7f0fbb294ddb98c71fb0720bb0d86595e0869d4ff61cef287a339`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 857.7 KB (857699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e3a24b2f95d1f101d1667e6eb94e043f721d905b9dd8c88292eaf19ca1daa6`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 9.6 MB (9579597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0030502cbd7e40248f65e37a7d3a4efdd1192f9f87378883e418682702d8adf`  
		Last Modified: Thu, 05 Nov 2026 00:08:35 GMT  
		Size: 126.7 MB (126687895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbe7404f40b17311d72a2701c823ea2d06c28c37cd23ff55d7abf365e024e1c`  
		Last Modified: Thu, 05 Nov 2026 00:08:33 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c8241feb19e64fbb94dcec929296e447f89935c931a2f8d02dade6fe4d66634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2167459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd9ae0793838fb813c30c96f56f6cce7dbe6e9a5effbed48d62e321e18f29`

```dockerfile
```

-	Layers:
	-	`sha256:06e6128b8d8b48cc937913290be00d51769ab62aebe32b76aa8417133d44dbdf`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 2.1 MB (2133353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293d9534c699448d92a3e75369390498b05419e7ef7dd9f163a3e98429a57827`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-bookworm`

```console
$ docker pull ghost@sha256:ccb9a94e510b2856f71058e6b1b3a965a5a91e8421acb5be31aa181f67bf18c1
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
$ docker pull ghost@sha256:0c3d0284a46b08f0cc7ab83e33b7f78a592b31bf03ef0a39d7506970de4a9570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217982476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c260de9fd759cb57ecf62d6a0b84f5f7a69d11b59248b723541180ad6103a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:16 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:00 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:00 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:00 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6a56698a26deccaa0ea41c78705480765155b690312e350d42bce46ecdf86036`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 1.2 MB (1248013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e3e1926e7c3de50d673460d2e3f7b6379555fb16d1180db1573ef22b166993`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 10.0 MB (10031626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abe3269d1473f9a9e99ddb4cd72d4899dc6e083d6db2c65ebeee5acc75d9fcc`  
		Last Modified: Thu, 05 Nov 2026 00:01:41 GMT  
		Size: 126.9 MB (126852666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3099a06c38428ed814ba077df1534dca9e8e44e1c133c7c4f93cc930d501e720`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:f86656f0f7fe4fb7cbb137564c26bc9fd7641cf676fa0b7420af4c719439a600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cddfc00038050158deeb82ca257fd8c7bc039774adaa36ac635319353c08629`

```dockerfile
```

-	Layers:
	-	`sha256:fc085e85926a9280fae55483c2f38d3045e5bd74aa42e72b601ec0a8fabfe1ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 4.3 MB (4345000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0e02f4ba1a49f7effe75d6aff9636805b3510a061fa25f7999fc50f859ba5f`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:585407abd80b11dc4779c4b2307fdfc083b1e3e02b8ddaa50ead5545420a5ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216135219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dca3684cbaa1fb196f10294d4264311d54d6d7558473ab9a79b14f34ee2149`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 02:24:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 02:25:11 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:25:11 GMT
CMD ["node"]
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:09 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:09 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:10 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a41bac2f884b2d61e0a804569b04d53e9cfc1f083da293ecd050f799cec3494`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8ba6fdce9bedaea984a7ccda49c889e6447b9c9b1683eef9ef1d7f27e81de4`  
		Last Modified: Wed, 28 Oct 2026 02:25:26 GMT  
		Size: 44.6 MB (44578343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f764380a4475f16e15bc643e4fcdce4d1890345cfa078b218850212f283d8521`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 1.7 MB (1713178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb172d813a498c5fffdb9f74d9cea7e92fad65c8d6228bec919bde34eefe419`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec6093f96354212abbf10d484d2fd0f1505e74ac09d01106210742543666a8c`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 1.2 MB (1214925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea1cea500b591cfcd96386fef522867fe4629a77f815a8b25f98a70e871b6ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:53 GMT  
		Size: 16.6 MB (16624926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859e465eb18261da4f936732e9cab9c19607723e1475825470f6a4d2fef81a31`  
		Last Modified: Thu, 05 Nov 2026 00:01:55 GMT  
		Size: 128.0 MB (128038544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1089d2fd0aa40072a078fa22e167a625d71e7be219693b43e9ab5afbc8b7cd6`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:cc3eb9c81c6c09733bb8f42e13c7e9607326592449e09ec90f66cf24c84f0ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4413866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98390614fd238d075326b6dd3d2d94f3c3accc8152d961fbb74bcb971ea8d033`

```dockerfile
```

-	Layers:
	-	`sha256:4d3f737bc2b845a28960e9e42484f9e4ba92f0527e8a3201fbbdf900d3d814dd`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 4.4 MB (4379040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23bef30709a307bf7160fe3764652d0271125c74d86781b6adc235f5971566e`  
		Last Modified: Thu, 05 Nov 2026 00:01:51 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:635787f2a83283ab80e76f4b1a3420f1b3c59c0bd4b2018d90245f6536cbe052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217372324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd9d5f5ae6726d2aaa6ff62fb75b10ffdd496124d91b77dd9f3cc655655c1f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 04 Nov 2026 23:59:18 GMT
ENV NODE_ENV=production
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 04 Nov 2026 23:59:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_VERSION=6.75.0
# Wed, 04 Nov 2026 23:59:57 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Nov 2026 23:59:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Nov 2026 23:59:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 23:59:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 04 Nov 2026 23:59:58 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:43cdd0465c6411698e58a00737bdfb2c3e12c15f6cefd6d2527c0a681973dba0`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 10.0 MB (10031306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d82619c9357f9a28e9dfdc925a94816eca1831c3c79bc1d4415432561f83e8`  
		Last Modified: Thu, 05 Nov 2026 00:00:45 GMT  
		Size: 126.3 MB (126260877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbefd2bbb7214e8c453eb02f04bda194c59d6d8431d9c216ed4169468e34999`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:8cbdaf581a1bbae9778f859b3b38d52d0fd576cd674a2b591e6576169650907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9fb457301269094a620b75d1caf9712bd048403722f11b0b3ab81f96e0a9a0`

```dockerfile
```

-	Layers:
	-	`sha256:9f47fc757294960fd1428bbbdda9dfa9b208b39e25fdc3859ccf6f8adc88ae09`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 4.3 MB (4344292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3cf3b85aa48ef1e66ed011dea0a86b515571895124e011d6aa38e7c7a49105c`  
		Last Modified: Thu, 05 Nov 2026 00:00:40 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-next`

```console
$ docker pull ghost@sha256:cb2f5ce805f68c8fc5e93ff6a6e6bc102022beaf2f990c55f31ebd6cddab4049
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next` - linux; amd64

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

### `ghost:6-next` - unknown; unknown

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

### `ghost:6-next` - linux; arm64 variant v8

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

### `ghost:6-next` - unknown; unknown

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

## `ghost:6-next-alpine`

```console
$ docker pull ghost@sha256:0328e3af17e07ddc53a79e2b3247610a0eabd347a7fc9f37e3fb17100efcba72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c3dccb17c3dc5ec4036dfc68f18b5c28280b03a5cedb333d05ee37c581fc436a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130287982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0414c7a3b7ff6ca04979b4a72f3c50992a01b22ab2837b470e0e799ce0f27bf5`
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
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:03:24 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:03:25 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:03:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:03:25 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:03:25 GMT
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
	-	`sha256:f294e3e6c40fec493f200ac3b389bf9a8130619fcba0e8df9d0792ff786fa8d6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 901.4 KB (901417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7f6075dc31ff946855a836b3200b469f549910832a803522fdc7e63ac155b6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d183de298007dc787f7663456f4f17916eae3e715eeeeea6b4d73cf726ed729a`  
		Last Modified: Thu, 05 Nov 2026 00:03:47 GMT  
		Size: 68.2 MB (68187547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f2b26d5d919d73543b5c2335d8ea9fd5f2675f4c25672b0585e9a7fb705af4`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d955df8b009b4c25b3548987ec1b30d61d1ee584949ffacc5d959737ed5e438`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07de7a8e63e164666a5ec8dcb80f84ccfe1cd6b5c0261d7e48e4e1c661fb88e`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:3e7b0d90725ad86568a97913820f5bcbe39b56568b06007b5d95339c7823b89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1755532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7669086190fa3aa8c9f0ae9eece71a5ac07a223059cd2d22536d6a750536f94`

```dockerfile
```

-	Layers:
	-	`sha256:6aee70f121d870aac07d011fb1b00ef753e389d53e45c26a3dd5eaa66b947dca`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 1.7 MB (1722441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f29647960096cc4519c7d36dfc39fb4af2778477351666a0297420f1ea47380`  
		Last Modified: Thu, 05 Nov 2026 00:03:44 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:d564ecf9e7e1ab68f922c240ade199b2e9773652df05e73cd43c8955dfe33fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129572704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5adb5e504996c184cbd2c95e440b14c368f9d5f46d21f4ed069784830af64d`
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
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:02:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:10 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:02:11 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:02:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:11 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:11 GMT
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
	-	`sha256:90dddfe121a1e54d96ced13c86cad9f561b42f1e4961caaca10cd85db16a2172`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 854.0 KB (854019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589ea241631b6a6378d2f984b29555299f5e16532358525ee34a5a20e70a573c`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93a3835a9f6659a1374ffa0294d76c4d20604d243e340d71d3adc2d0d5ecc1b`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 67.7 MB (67721129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b5548e507907e1ee75f072e130860eb107d50303f2b2c41ffafc0d7df3ceea`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c2996078aabbad323d53e628f736a69c01cda341cc3a0c9bc441bc7a0000d7`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b2285719b826e0ce195e2eeafff837cb753a706351d6e71d7e5dab973479c8`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:b70b75c5d430639e618545618e6261d61c05ceb9e00a36a97439306b11f6a217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1754428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bbc0e44f2f478803d104605b387c735050cd27ba8fead055055c0e9f1a1e0a`

```dockerfile
```

-	Layers:
	-	`sha256:847eb8923bab0c280ca89eb2e3996bba3672c7c3b534537844489989a0b349f3`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 1.7 MB (1721140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90fab51f47e40a28c0ad655cb168aa6740c1e9048d4633e75a0f153ccfc7488`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-next-alpine3.23`

```console
$ docker pull ghost@sha256:0328e3af17e07ddc53a79e2b3247610a0eabd347a7fc9f37e3fb17100efcba72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:c3dccb17c3dc5ec4036dfc68f18b5c28280b03a5cedb333d05ee37c581fc436a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130287982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0414c7a3b7ff6ca04979b4a72f3c50992a01b22ab2837b470e0e799ce0f27bf5`
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
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:03:24 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:03:25 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:03:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:03:25 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:03:25 GMT
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
	-	`sha256:f294e3e6c40fec493f200ac3b389bf9a8130619fcba0e8df9d0792ff786fa8d6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 901.4 KB (901417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7f6075dc31ff946855a836b3200b469f549910832a803522fdc7e63ac155b6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d183de298007dc787f7663456f4f17916eae3e715eeeeea6b4d73cf726ed729a`  
		Last Modified: Thu, 05 Nov 2026 00:03:47 GMT  
		Size: 68.2 MB (68187547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f2b26d5d919d73543b5c2335d8ea9fd5f2675f4c25672b0585e9a7fb705af4`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d955df8b009b4c25b3548987ec1b30d61d1ee584949ffacc5d959737ed5e438`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07de7a8e63e164666a5ec8dcb80f84ccfe1cd6b5c0261d7e48e4e1c661fb88e`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:3e7b0d90725ad86568a97913820f5bcbe39b56568b06007b5d95339c7823b89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1755532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7669086190fa3aa8c9f0ae9eece71a5ac07a223059cd2d22536d6a750536f94`

```dockerfile
```

-	Layers:
	-	`sha256:6aee70f121d870aac07d011fb1b00ef753e389d53e45c26a3dd5eaa66b947dca`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 1.7 MB (1722441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f29647960096cc4519c7d36dfc39fb4af2778477351666a0297420f1ea47380`  
		Last Modified: Thu, 05 Nov 2026 00:03:44 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:d564ecf9e7e1ab68f922c240ade199b2e9773652df05e73cd43c8955dfe33fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129572704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5adb5e504996c184cbd2c95e440b14c368f9d5f46d21f4ed069784830af64d`
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
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:02:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:10 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:02:11 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:02:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:11 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:11 GMT
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
	-	`sha256:90dddfe121a1e54d96ced13c86cad9f561b42f1e4961caaca10cd85db16a2172`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 854.0 KB (854019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589ea241631b6a6378d2f984b29555299f5e16532358525ee34a5a20e70a573c`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93a3835a9f6659a1374ffa0294d76c4d20604d243e340d71d3adc2d0d5ecc1b`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 67.7 MB (67721129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b5548e507907e1ee75f072e130860eb107d50303f2b2c41ffafc0d7df3ceea`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c2996078aabbad323d53e628f736a69c01cda341cc3a0c9bc441bc7a0000d7`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b2285719b826e0ce195e2eeafff837cb753a706351d6e71d7e5dab973479c8`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:b70b75c5d430639e618545618e6261d61c05ceb9e00a36a97439306b11f6a217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1754428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bbc0e44f2f478803d104605b387c735050cd27ba8fead055055c0e9f1a1e0a`

```dockerfile
```

-	Layers:
	-	`sha256:847eb8923bab0c280ca89eb2e3996bba3672c7c3b534537844489989a0b349f3`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 1.7 MB (1721140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90fab51f47e40a28c0ad655cb168aa6740c1e9048d4633e75a0f153ccfc7488`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-next-bookworm`

```console
$ docker pull ghost@sha256:cb2f5ce805f68c8fc5e93ff6a6e6bc102022beaf2f990c55f31ebd6cddab4049
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-bookworm` - linux; amd64

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

### `ghost:6-next-bookworm` - unknown; unknown

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

### `ghost:6-next-bookworm` - linux; arm64 variant v8

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

### `ghost:6-next-bookworm` - unknown; unknown

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

## `ghost:6.75`

```console
$ docker pull ghost@sha256:ccb9a94e510b2856f71058e6b1b3a965a5a91e8421acb5be31aa181f67bf18c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75` - linux; amd64

```console
$ docker pull ghost@sha256:0c3d0284a46b08f0cc7ab83e33b7f78a592b31bf03ef0a39d7506970de4a9570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217982476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c260de9fd759cb57ecf62d6a0b84f5f7a69d11b59248b723541180ad6103a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:16 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:00 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:00 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:00 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6a56698a26deccaa0ea41c78705480765155b690312e350d42bce46ecdf86036`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 1.2 MB (1248013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e3e1926e7c3de50d673460d2e3f7b6379555fb16d1180db1573ef22b166993`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 10.0 MB (10031626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abe3269d1473f9a9e99ddb4cd72d4899dc6e083d6db2c65ebeee5acc75d9fcc`  
		Last Modified: Thu, 05 Nov 2026 00:01:41 GMT  
		Size: 126.9 MB (126852666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3099a06c38428ed814ba077df1534dca9e8e44e1c133c7c4f93cc930d501e720`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75` - unknown; unknown

```console
$ docker pull ghost@sha256:f86656f0f7fe4fb7cbb137564c26bc9fd7641cf676fa0b7420af4c719439a600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cddfc00038050158deeb82ca257fd8c7bc039774adaa36ac635319353c08629`

```dockerfile
```

-	Layers:
	-	`sha256:fc085e85926a9280fae55483c2f38d3045e5bd74aa42e72b601ec0a8fabfe1ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 4.3 MB (4345000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0e02f4ba1a49f7effe75d6aff9636805b3510a061fa25f7999fc50f859ba5f`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75` - linux; arm variant v7

```console
$ docker pull ghost@sha256:585407abd80b11dc4779c4b2307fdfc083b1e3e02b8ddaa50ead5545420a5ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216135219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dca3684cbaa1fb196f10294d4264311d54d6d7558473ab9a79b14f34ee2149`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 02:24:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 02:25:11 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:25:11 GMT
CMD ["node"]
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:09 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:09 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:10 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a41bac2f884b2d61e0a804569b04d53e9cfc1f083da293ecd050f799cec3494`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8ba6fdce9bedaea984a7ccda49c889e6447b9c9b1683eef9ef1d7f27e81de4`  
		Last Modified: Wed, 28 Oct 2026 02:25:26 GMT  
		Size: 44.6 MB (44578343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f764380a4475f16e15bc643e4fcdce4d1890345cfa078b218850212f283d8521`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 1.7 MB (1713178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb172d813a498c5fffdb9f74d9cea7e92fad65c8d6228bec919bde34eefe419`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec6093f96354212abbf10d484d2fd0f1505e74ac09d01106210742543666a8c`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 1.2 MB (1214925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea1cea500b591cfcd96386fef522867fe4629a77f815a8b25f98a70e871b6ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:53 GMT  
		Size: 16.6 MB (16624926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859e465eb18261da4f936732e9cab9c19607723e1475825470f6a4d2fef81a31`  
		Last Modified: Thu, 05 Nov 2026 00:01:55 GMT  
		Size: 128.0 MB (128038544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1089d2fd0aa40072a078fa22e167a625d71e7be219693b43e9ab5afbc8b7cd6`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75` - unknown; unknown

```console
$ docker pull ghost@sha256:cc3eb9c81c6c09733bb8f42e13c7e9607326592449e09ec90f66cf24c84f0ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4413866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98390614fd238d075326b6dd3d2d94f3c3accc8152d961fbb74bcb971ea8d033`

```dockerfile
```

-	Layers:
	-	`sha256:4d3f737bc2b845a28960e9e42484f9e4ba92f0527e8a3201fbbdf900d3d814dd`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 4.4 MB (4379040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23bef30709a307bf7160fe3764652d0271125c74d86781b6adc235f5971566e`  
		Last Modified: Thu, 05 Nov 2026 00:01:51 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:635787f2a83283ab80e76f4b1a3420f1b3c59c0bd4b2018d90245f6536cbe052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217372324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd9d5f5ae6726d2aaa6ff62fb75b10ffdd496124d91b77dd9f3cc655655c1f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 04 Nov 2026 23:59:18 GMT
ENV NODE_ENV=production
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 04 Nov 2026 23:59:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_VERSION=6.75.0
# Wed, 04 Nov 2026 23:59:57 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Nov 2026 23:59:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Nov 2026 23:59:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 23:59:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 04 Nov 2026 23:59:58 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:43cdd0465c6411698e58a00737bdfb2c3e12c15f6cefd6d2527c0a681973dba0`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 10.0 MB (10031306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d82619c9357f9a28e9dfdc925a94816eca1831c3c79bc1d4415432561f83e8`  
		Last Modified: Thu, 05 Nov 2026 00:00:45 GMT  
		Size: 126.3 MB (126260877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbefd2bbb7214e8c453eb02f04bda194c59d6d8431d9c216ed4169468e34999`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75` - unknown; unknown

```console
$ docker pull ghost@sha256:8cbdaf581a1bbae9778f859b3b38d52d0fd576cd674a2b591e6576169650907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9fb457301269094a620b75d1caf9712bd048403722f11b0b3ab81f96e0a9a0`

```dockerfile
```

-	Layers:
	-	`sha256:9f47fc757294960fd1428bbbdda9dfa9b208b39e25fdc3859ccf6f8adc88ae09`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 4.3 MB (4344292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3cf3b85aa48ef1e66ed011dea0a86b515571895124e011d6aa38e7c7a49105c`  
		Last Modified: Thu, 05 Nov 2026 00:00:40 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75-alpine`

```console
$ docker pull ghost@sha256:bea7100f19d83b23c234fd8ad94a90505552f7b0f5f307b079907c1fd03dbdf7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7b8e1775bebb36cc41b26ee0c255163e554b2d2b28d248d12604b607c59607e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199610067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a17b26951b83939f859f1e2b2187b74671155b221c26be4506346d8e54f04`
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
# Thu, 05 Nov 2026 00:01:50 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:02:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:02:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:12 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:12 GMT
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
	-	`sha256:9b0ad060b6893f8af58c45b1557f369d2418dd624e1a8159ae299688ebe167f9`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 822.2 KB (822225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c3e5557dd0bfa781aab57187fcac791f967a38587098b2f9999dd9f7e6f2bf`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 904.1 KB (904095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c430f1225650c9cd8795044726756744be5039ea952c04a7a678994ecc9c6d0`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 9.6 MB (9579119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577867912a16658291bc8abf7eb979d268321b6b8118bbeeef61c798453b55a1`  
		Last Modified: Thu, 05 Nov 2026 00:02:51 GMT  
		Size: 127.1 MB (127108355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549ec51cb72ee0eb4aed1e877b352e388e95f817a99329e0a520f638364f544`  
		Last Modified: Thu, 05 Nov 2026 00:02:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c3910994fc8f0a5028ddadea5e982974cdfa01e60dfe0c30a0328d2b43681369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2168815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635518a305c0ed57e21443189693564cd9a7895372b434dd441c6456cc230601`

```dockerfile
```

-	Layers:
	-	`sha256:78c2cc0a5f77d94290ef2715c20a70d2235e77296f06a14e53b4475843096fc7`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 2.1 MB (2134906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a84402de96acc695430ad4a94135d24aa9f4b05fab4f41b38386b2201ecd2c`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a5635d22b6a33c838b5f36813d0b0379e02e3cd909e52100c0510a3d176eb32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199011209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303614ec8b1ed1726722af1eaaa7c30c164a7b3c7e3d496a8f0f8b842740f8b4`
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
# Thu, 05 Nov 2026 00:07:27 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:07:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:07:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:07:50 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:07:51 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:07:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:07:51 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:07:51 GMT
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
	-	`sha256:6dbe1497e2e656d55a4d7d49363623f085ae09b6d80a5f9241ff9b1d37725596`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 891.2 KB (891209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021059ea9ba7f0fbb294ddb98c71fb0720bb0d86595e0869d4ff61cef287a339`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 857.7 KB (857699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e3a24b2f95d1f101d1667e6eb94e043f721d905b9dd8c88292eaf19ca1daa6`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 9.6 MB (9579597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0030502cbd7e40248f65e37a7d3a4efdd1192f9f87378883e418682702d8adf`  
		Last Modified: Thu, 05 Nov 2026 00:08:35 GMT  
		Size: 126.7 MB (126687895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbe7404f40b17311d72a2701c823ea2d06c28c37cd23ff55d7abf365e024e1c`  
		Last Modified: Thu, 05 Nov 2026 00:08:33 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c8241feb19e64fbb94dcec929296e447f89935c931a2f8d02dade6fe4d66634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2167459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd9ae0793838fb813c30c96f56f6cce7dbe6e9a5effbed48d62e321e18f29`

```dockerfile
```

-	Layers:
	-	`sha256:06e6128b8d8b48cc937913290be00d51769ab62aebe32b76aa8417133d44dbdf`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 2.1 MB (2133353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293d9534c699448d92a3e75369390498b05419e7ef7dd9f163a3e98429a57827`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75-alpine3.23`

```console
$ docker pull ghost@sha256:bea7100f19d83b23c234fd8ad94a90505552f7b0f5f307b079907c1fd03dbdf7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:7b8e1775bebb36cc41b26ee0c255163e554b2d2b28d248d12604b607c59607e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199610067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a17b26951b83939f859f1e2b2187b74671155b221c26be4506346d8e54f04`
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
# Thu, 05 Nov 2026 00:01:50 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:02:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:02:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:12 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:12 GMT
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
	-	`sha256:9b0ad060b6893f8af58c45b1557f369d2418dd624e1a8159ae299688ebe167f9`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 822.2 KB (822225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c3e5557dd0bfa781aab57187fcac791f967a38587098b2f9999dd9f7e6f2bf`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 904.1 KB (904095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c430f1225650c9cd8795044726756744be5039ea952c04a7a678994ecc9c6d0`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 9.6 MB (9579119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577867912a16658291bc8abf7eb979d268321b6b8118bbeeef61c798453b55a1`  
		Last Modified: Thu, 05 Nov 2026 00:02:51 GMT  
		Size: 127.1 MB (127108355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549ec51cb72ee0eb4aed1e877b352e388e95f817a99329e0a520f638364f544`  
		Last Modified: Thu, 05 Nov 2026 00:02:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c3910994fc8f0a5028ddadea5e982974cdfa01e60dfe0c30a0328d2b43681369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2168815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635518a305c0ed57e21443189693564cd9a7895372b434dd441c6456cc230601`

```dockerfile
```

-	Layers:
	-	`sha256:78c2cc0a5f77d94290ef2715c20a70d2235e77296f06a14e53b4475843096fc7`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 2.1 MB (2134906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a84402de96acc695430ad4a94135d24aa9f4b05fab4f41b38386b2201ecd2c`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a5635d22b6a33c838b5f36813d0b0379e02e3cd909e52100c0510a3d176eb32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199011209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303614ec8b1ed1726722af1eaaa7c30c164a7b3c7e3d496a8f0f8b842740f8b4`
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
# Thu, 05 Nov 2026 00:07:27 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:07:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:07:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:07:50 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:07:51 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:07:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:07:51 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:07:51 GMT
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
	-	`sha256:6dbe1497e2e656d55a4d7d49363623f085ae09b6d80a5f9241ff9b1d37725596`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 891.2 KB (891209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021059ea9ba7f0fbb294ddb98c71fb0720bb0d86595e0869d4ff61cef287a339`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 857.7 KB (857699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e3a24b2f95d1f101d1667e6eb94e043f721d905b9dd8c88292eaf19ca1daa6`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 9.6 MB (9579597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0030502cbd7e40248f65e37a7d3a4efdd1192f9f87378883e418682702d8adf`  
		Last Modified: Thu, 05 Nov 2026 00:08:35 GMT  
		Size: 126.7 MB (126687895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbe7404f40b17311d72a2701c823ea2d06c28c37cd23ff55d7abf365e024e1c`  
		Last Modified: Thu, 05 Nov 2026 00:08:33 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c8241feb19e64fbb94dcec929296e447f89935c931a2f8d02dade6fe4d66634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2167459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd9ae0793838fb813c30c96f56f6cce7dbe6e9a5effbed48d62e321e18f29`

```dockerfile
```

-	Layers:
	-	`sha256:06e6128b8d8b48cc937913290be00d51769ab62aebe32b76aa8417133d44dbdf`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 2.1 MB (2133353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293d9534c699448d92a3e75369390498b05419e7ef7dd9f163a3e98429a57827`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75-bookworm`

```console
$ docker pull ghost@sha256:ccb9a94e510b2856f71058e6b1b3a965a5a91e8421acb5be31aa181f67bf18c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:0c3d0284a46b08f0cc7ab83e33b7f78a592b31bf03ef0a39d7506970de4a9570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217982476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c260de9fd759cb57ecf62d6a0b84f5f7a69d11b59248b723541180ad6103a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:16 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:00 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:00 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:00 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6a56698a26deccaa0ea41c78705480765155b690312e350d42bce46ecdf86036`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 1.2 MB (1248013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e3e1926e7c3de50d673460d2e3f7b6379555fb16d1180db1573ef22b166993`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 10.0 MB (10031626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abe3269d1473f9a9e99ddb4cd72d4899dc6e083d6db2c65ebeee5acc75d9fcc`  
		Last Modified: Thu, 05 Nov 2026 00:01:41 GMT  
		Size: 126.9 MB (126852666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3099a06c38428ed814ba077df1534dca9e8e44e1c133c7c4f93cc930d501e720`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:f86656f0f7fe4fb7cbb137564c26bc9fd7641cf676fa0b7420af4c719439a600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cddfc00038050158deeb82ca257fd8c7bc039774adaa36ac635319353c08629`

```dockerfile
```

-	Layers:
	-	`sha256:fc085e85926a9280fae55483c2f38d3045e5bd74aa42e72b601ec0a8fabfe1ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 4.3 MB (4345000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0e02f4ba1a49f7effe75d6aff9636805b3510a061fa25f7999fc50f859ba5f`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:585407abd80b11dc4779c4b2307fdfc083b1e3e02b8ddaa50ead5545420a5ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216135219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dca3684cbaa1fb196f10294d4264311d54d6d7558473ab9a79b14f34ee2149`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 02:24:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 02:25:11 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:25:11 GMT
CMD ["node"]
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:09 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:09 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:10 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a41bac2f884b2d61e0a804569b04d53e9cfc1f083da293ecd050f799cec3494`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8ba6fdce9bedaea984a7ccda49c889e6447b9c9b1683eef9ef1d7f27e81de4`  
		Last Modified: Wed, 28 Oct 2026 02:25:26 GMT  
		Size: 44.6 MB (44578343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f764380a4475f16e15bc643e4fcdce4d1890345cfa078b218850212f283d8521`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 1.7 MB (1713178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb172d813a498c5fffdb9f74d9cea7e92fad65c8d6228bec919bde34eefe419`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec6093f96354212abbf10d484d2fd0f1505e74ac09d01106210742543666a8c`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 1.2 MB (1214925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea1cea500b591cfcd96386fef522867fe4629a77f815a8b25f98a70e871b6ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:53 GMT  
		Size: 16.6 MB (16624926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859e465eb18261da4f936732e9cab9c19607723e1475825470f6a4d2fef81a31`  
		Last Modified: Thu, 05 Nov 2026 00:01:55 GMT  
		Size: 128.0 MB (128038544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1089d2fd0aa40072a078fa22e167a625d71e7be219693b43e9ab5afbc8b7cd6`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:cc3eb9c81c6c09733bb8f42e13c7e9607326592449e09ec90f66cf24c84f0ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4413866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98390614fd238d075326b6dd3d2d94f3c3accc8152d961fbb74bcb971ea8d033`

```dockerfile
```

-	Layers:
	-	`sha256:4d3f737bc2b845a28960e9e42484f9e4ba92f0527e8a3201fbbdf900d3d814dd`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 4.4 MB (4379040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23bef30709a307bf7160fe3764652d0271125c74d86781b6adc235f5971566e`  
		Last Modified: Thu, 05 Nov 2026 00:01:51 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:635787f2a83283ab80e76f4b1a3420f1b3c59c0bd4b2018d90245f6536cbe052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217372324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd9d5f5ae6726d2aaa6ff62fb75b10ffdd496124d91b77dd9f3cc655655c1f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 04 Nov 2026 23:59:18 GMT
ENV NODE_ENV=production
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 04 Nov 2026 23:59:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_VERSION=6.75.0
# Wed, 04 Nov 2026 23:59:57 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Nov 2026 23:59:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Nov 2026 23:59:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 23:59:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 04 Nov 2026 23:59:58 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:43cdd0465c6411698e58a00737bdfb2c3e12c15f6cefd6d2527c0a681973dba0`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 10.0 MB (10031306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d82619c9357f9a28e9dfdc925a94816eca1831c3c79bc1d4415432561f83e8`  
		Last Modified: Thu, 05 Nov 2026 00:00:45 GMT  
		Size: 126.3 MB (126260877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbefd2bbb7214e8c453eb02f04bda194c59d6d8431d9c216ed4169468e34999`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:8cbdaf581a1bbae9778f859b3b38d52d0fd576cd674a2b591e6576169650907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9fb457301269094a620b75d1caf9712bd048403722f11b0b3ab81f96e0a9a0`

```dockerfile
```

-	Layers:
	-	`sha256:9f47fc757294960fd1428bbbdda9dfa9b208b39e25fdc3859ccf6f8adc88ae09`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 4.3 MB (4344292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3cf3b85aa48ef1e66ed011dea0a86b515571895124e011d6aa38e7c7a49105c`  
		Last Modified: Thu, 05 Nov 2026 00:00:40 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75-next`

```console
$ docker pull ghost@sha256:cb2f5ce805f68c8fc5e93ff6a6e6bc102022beaf2f990c55f31ebd6cddab4049
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75-next` - linux; amd64

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

### `ghost:6.75-next` - unknown; unknown

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

### `ghost:6.75-next` - linux; arm64 variant v8

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

### `ghost:6.75-next` - unknown; unknown

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

## `ghost:6.75-next-alpine`

```console
$ docker pull ghost@sha256:0328e3af17e07ddc53a79e2b3247610a0eabd347a7fc9f37e3fb17100efcba72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75-next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c3dccb17c3dc5ec4036dfc68f18b5c28280b03a5cedb333d05ee37c581fc436a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130287982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0414c7a3b7ff6ca04979b4a72f3c50992a01b22ab2837b470e0e799ce0f27bf5`
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
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:03:24 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:03:25 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:03:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:03:25 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:03:25 GMT
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
	-	`sha256:f294e3e6c40fec493f200ac3b389bf9a8130619fcba0e8df9d0792ff786fa8d6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 901.4 KB (901417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7f6075dc31ff946855a836b3200b469f549910832a803522fdc7e63ac155b6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d183de298007dc787f7663456f4f17916eae3e715eeeeea6b4d73cf726ed729a`  
		Last Modified: Thu, 05 Nov 2026 00:03:47 GMT  
		Size: 68.2 MB (68187547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f2b26d5d919d73543b5c2335d8ea9fd5f2675f4c25672b0585e9a7fb705af4`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d955df8b009b4c25b3548987ec1b30d61d1ee584949ffacc5d959737ed5e438`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07de7a8e63e164666a5ec8dcb80f84ccfe1cd6b5c0261d7e48e4e1c661fb88e`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:3e7b0d90725ad86568a97913820f5bcbe39b56568b06007b5d95339c7823b89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1755532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7669086190fa3aa8c9f0ae9eece71a5ac07a223059cd2d22536d6a750536f94`

```dockerfile
```

-	Layers:
	-	`sha256:6aee70f121d870aac07d011fb1b00ef753e389d53e45c26a3dd5eaa66b947dca`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 1.7 MB (1722441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f29647960096cc4519c7d36dfc39fb4af2778477351666a0297420f1ea47380`  
		Last Modified: Thu, 05 Nov 2026 00:03:44 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75-next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:d564ecf9e7e1ab68f922c240ade199b2e9773652df05e73cd43c8955dfe33fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129572704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5adb5e504996c184cbd2c95e440b14c368f9d5f46d21f4ed069784830af64d`
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
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:02:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:10 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:02:11 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:02:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:11 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:11 GMT
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
	-	`sha256:90dddfe121a1e54d96ced13c86cad9f561b42f1e4961caaca10cd85db16a2172`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 854.0 KB (854019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589ea241631b6a6378d2f984b29555299f5e16532358525ee34a5a20e70a573c`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93a3835a9f6659a1374ffa0294d76c4d20604d243e340d71d3adc2d0d5ecc1b`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 67.7 MB (67721129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b5548e507907e1ee75f072e130860eb107d50303f2b2c41ffafc0d7df3ceea`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c2996078aabbad323d53e628f736a69c01cda341cc3a0c9bc441bc7a0000d7`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b2285719b826e0ce195e2eeafff837cb753a706351d6e71d7e5dab973479c8`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:b70b75c5d430639e618545618e6261d61c05ceb9e00a36a97439306b11f6a217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1754428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bbc0e44f2f478803d104605b387c735050cd27ba8fead055055c0e9f1a1e0a`

```dockerfile
```

-	Layers:
	-	`sha256:847eb8923bab0c280ca89eb2e3996bba3672c7c3b534537844489989a0b349f3`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 1.7 MB (1721140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90fab51f47e40a28c0ad655cb168aa6740c1e9048d4633e75a0f153ccfc7488`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75-next-alpine3.23`

```console
$ docker pull ghost@sha256:0328e3af17e07ddc53a79e2b3247610a0eabd347a7fc9f37e3fb17100efcba72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75-next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:c3dccb17c3dc5ec4036dfc68f18b5c28280b03a5cedb333d05ee37c581fc436a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130287982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0414c7a3b7ff6ca04979b4a72f3c50992a01b22ab2837b470e0e799ce0f27bf5`
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
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:03:24 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:03:25 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:03:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:03:25 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:03:25 GMT
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
	-	`sha256:f294e3e6c40fec493f200ac3b389bf9a8130619fcba0e8df9d0792ff786fa8d6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 901.4 KB (901417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7f6075dc31ff946855a836b3200b469f549910832a803522fdc7e63ac155b6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d183de298007dc787f7663456f4f17916eae3e715eeeeea6b4d73cf726ed729a`  
		Last Modified: Thu, 05 Nov 2026 00:03:47 GMT  
		Size: 68.2 MB (68187547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f2b26d5d919d73543b5c2335d8ea9fd5f2675f4c25672b0585e9a7fb705af4`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d955df8b009b4c25b3548987ec1b30d61d1ee584949ffacc5d959737ed5e438`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07de7a8e63e164666a5ec8dcb80f84ccfe1cd6b5c0261d7e48e4e1c661fb88e`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:3e7b0d90725ad86568a97913820f5bcbe39b56568b06007b5d95339c7823b89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1755532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7669086190fa3aa8c9f0ae9eece71a5ac07a223059cd2d22536d6a750536f94`

```dockerfile
```

-	Layers:
	-	`sha256:6aee70f121d870aac07d011fb1b00ef753e389d53e45c26a3dd5eaa66b947dca`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 1.7 MB (1722441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f29647960096cc4519c7d36dfc39fb4af2778477351666a0297420f1ea47380`  
		Last Modified: Thu, 05 Nov 2026 00:03:44 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75-next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:d564ecf9e7e1ab68f922c240ade199b2e9773652df05e73cd43c8955dfe33fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129572704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5adb5e504996c184cbd2c95e440b14c368f9d5f46d21f4ed069784830af64d`
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
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:02:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:10 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:02:11 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:02:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:11 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:11 GMT
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
	-	`sha256:90dddfe121a1e54d96ced13c86cad9f561b42f1e4961caaca10cd85db16a2172`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 854.0 KB (854019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589ea241631b6a6378d2f984b29555299f5e16532358525ee34a5a20e70a573c`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93a3835a9f6659a1374ffa0294d76c4d20604d243e340d71d3adc2d0d5ecc1b`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 67.7 MB (67721129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b5548e507907e1ee75f072e130860eb107d50303f2b2c41ffafc0d7df3ceea`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c2996078aabbad323d53e628f736a69c01cda341cc3a0c9bc441bc7a0000d7`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b2285719b826e0ce195e2eeafff837cb753a706351d6e71d7e5dab973479c8`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:b70b75c5d430639e618545618e6261d61c05ceb9e00a36a97439306b11f6a217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1754428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bbc0e44f2f478803d104605b387c735050cd27ba8fead055055c0e9f1a1e0a`

```dockerfile
```

-	Layers:
	-	`sha256:847eb8923bab0c280ca89eb2e3996bba3672c7c3b534537844489989a0b349f3`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 1.7 MB (1721140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90fab51f47e40a28c0ad655cb168aa6740c1e9048d4633e75a0f153ccfc7488`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75-next-bookworm`

```console
$ docker pull ghost@sha256:cb2f5ce805f68c8fc5e93ff6a6e6bc102022beaf2f990c55f31ebd6cddab4049
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75-next-bookworm` - linux; amd64

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

### `ghost:6.75-next-bookworm` - unknown; unknown

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

### `ghost:6.75-next-bookworm` - linux; arm64 variant v8

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

### `ghost:6.75-next-bookworm` - unknown; unknown

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

## `ghost:6.75.0`

```console
$ docker pull ghost@sha256:ccb9a94e510b2856f71058e6b1b3a965a5a91e8421acb5be31aa181f67bf18c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75.0` - linux; amd64

```console
$ docker pull ghost@sha256:0c3d0284a46b08f0cc7ab83e33b7f78a592b31bf03ef0a39d7506970de4a9570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217982476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c260de9fd759cb57ecf62d6a0b84f5f7a69d11b59248b723541180ad6103a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:16 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:00 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:00 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:00 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6a56698a26deccaa0ea41c78705480765155b690312e350d42bce46ecdf86036`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 1.2 MB (1248013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e3e1926e7c3de50d673460d2e3f7b6379555fb16d1180db1573ef22b166993`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 10.0 MB (10031626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abe3269d1473f9a9e99ddb4cd72d4899dc6e083d6db2c65ebeee5acc75d9fcc`  
		Last Modified: Thu, 05 Nov 2026 00:01:41 GMT  
		Size: 126.9 MB (126852666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3099a06c38428ed814ba077df1534dca9e8e44e1c133c7c4f93cc930d501e720`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0` - unknown; unknown

```console
$ docker pull ghost@sha256:f86656f0f7fe4fb7cbb137564c26bc9fd7641cf676fa0b7420af4c719439a600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cddfc00038050158deeb82ca257fd8c7bc039774adaa36ac635319353c08629`

```dockerfile
```

-	Layers:
	-	`sha256:fc085e85926a9280fae55483c2f38d3045e5bd74aa42e72b601ec0a8fabfe1ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 4.3 MB (4345000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0e02f4ba1a49f7effe75d6aff9636805b3510a061fa25f7999fc50f859ba5f`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75.0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:585407abd80b11dc4779c4b2307fdfc083b1e3e02b8ddaa50ead5545420a5ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216135219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dca3684cbaa1fb196f10294d4264311d54d6d7558473ab9a79b14f34ee2149`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 02:24:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 02:25:11 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:25:11 GMT
CMD ["node"]
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:09 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:09 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:10 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a41bac2f884b2d61e0a804569b04d53e9cfc1f083da293ecd050f799cec3494`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8ba6fdce9bedaea984a7ccda49c889e6447b9c9b1683eef9ef1d7f27e81de4`  
		Last Modified: Wed, 28 Oct 2026 02:25:26 GMT  
		Size: 44.6 MB (44578343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f764380a4475f16e15bc643e4fcdce4d1890345cfa078b218850212f283d8521`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 1.7 MB (1713178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb172d813a498c5fffdb9f74d9cea7e92fad65c8d6228bec919bde34eefe419`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec6093f96354212abbf10d484d2fd0f1505e74ac09d01106210742543666a8c`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 1.2 MB (1214925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea1cea500b591cfcd96386fef522867fe4629a77f815a8b25f98a70e871b6ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:53 GMT  
		Size: 16.6 MB (16624926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859e465eb18261da4f936732e9cab9c19607723e1475825470f6a4d2fef81a31`  
		Last Modified: Thu, 05 Nov 2026 00:01:55 GMT  
		Size: 128.0 MB (128038544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1089d2fd0aa40072a078fa22e167a625d71e7be219693b43e9ab5afbc8b7cd6`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0` - unknown; unknown

```console
$ docker pull ghost@sha256:cc3eb9c81c6c09733bb8f42e13c7e9607326592449e09ec90f66cf24c84f0ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4413866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98390614fd238d075326b6dd3d2d94f3c3accc8152d961fbb74bcb971ea8d033`

```dockerfile
```

-	Layers:
	-	`sha256:4d3f737bc2b845a28960e9e42484f9e4ba92f0527e8a3201fbbdf900d3d814dd`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 4.4 MB (4379040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23bef30709a307bf7160fe3764652d0271125c74d86781b6adc235f5971566e`  
		Last Modified: Thu, 05 Nov 2026 00:01:51 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75.0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:635787f2a83283ab80e76f4b1a3420f1b3c59c0bd4b2018d90245f6536cbe052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217372324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd9d5f5ae6726d2aaa6ff62fb75b10ffdd496124d91b77dd9f3cc655655c1f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 04 Nov 2026 23:59:18 GMT
ENV NODE_ENV=production
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 04 Nov 2026 23:59:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_VERSION=6.75.0
# Wed, 04 Nov 2026 23:59:57 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Nov 2026 23:59:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Nov 2026 23:59:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 23:59:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 04 Nov 2026 23:59:58 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:43cdd0465c6411698e58a00737bdfb2c3e12c15f6cefd6d2527c0a681973dba0`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 10.0 MB (10031306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d82619c9357f9a28e9dfdc925a94816eca1831c3c79bc1d4415432561f83e8`  
		Last Modified: Thu, 05 Nov 2026 00:00:45 GMT  
		Size: 126.3 MB (126260877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbefd2bbb7214e8c453eb02f04bda194c59d6d8431d9c216ed4169468e34999`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0` - unknown; unknown

```console
$ docker pull ghost@sha256:8cbdaf581a1bbae9778f859b3b38d52d0fd576cd674a2b591e6576169650907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9fb457301269094a620b75d1caf9712bd048403722f11b0b3ab81f96e0a9a0`

```dockerfile
```

-	Layers:
	-	`sha256:9f47fc757294960fd1428bbbdda9dfa9b208b39e25fdc3859ccf6f8adc88ae09`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 4.3 MB (4344292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3cf3b85aa48ef1e66ed011dea0a86b515571895124e011d6aa38e7c7a49105c`  
		Last Modified: Thu, 05 Nov 2026 00:00:40 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75.0-alpine`

```console
$ docker pull ghost@sha256:bea7100f19d83b23c234fd8ad94a90505552f7b0f5f307b079907c1fd03dbdf7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75.0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7b8e1775bebb36cc41b26ee0c255163e554b2d2b28d248d12604b607c59607e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199610067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a17b26951b83939f859f1e2b2187b74671155b221c26be4506346d8e54f04`
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
# Thu, 05 Nov 2026 00:01:50 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:02:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:02:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:12 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:12 GMT
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
	-	`sha256:9b0ad060b6893f8af58c45b1557f369d2418dd624e1a8159ae299688ebe167f9`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 822.2 KB (822225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c3e5557dd0bfa781aab57187fcac791f967a38587098b2f9999dd9f7e6f2bf`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 904.1 KB (904095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c430f1225650c9cd8795044726756744be5039ea952c04a7a678994ecc9c6d0`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 9.6 MB (9579119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577867912a16658291bc8abf7eb979d268321b6b8118bbeeef61c798453b55a1`  
		Last Modified: Thu, 05 Nov 2026 00:02:51 GMT  
		Size: 127.1 MB (127108355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549ec51cb72ee0eb4aed1e877b352e388e95f817a99329e0a520f638364f544`  
		Last Modified: Thu, 05 Nov 2026 00:02:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c3910994fc8f0a5028ddadea5e982974cdfa01e60dfe0c30a0328d2b43681369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2168815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635518a305c0ed57e21443189693564cd9a7895372b434dd441c6456cc230601`

```dockerfile
```

-	Layers:
	-	`sha256:78c2cc0a5f77d94290ef2715c20a70d2235e77296f06a14e53b4475843096fc7`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 2.1 MB (2134906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a84402de96acc695430ad4a94135d24aa9f4b05fab4f41b38386b2201ecd2c`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75.0-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a5635d22b6a33c838b5f36813d0b0379e02e3cd909e52100c0510a3d176eb32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199011209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303614ec8b1ed1726722af1eaaa7c30c164a7b3c7e3d496a8f0f8b842740f8b4`
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
# Thu, 05 Nov 2026 00:07:27 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:07:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:07:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:07:50 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:07:51 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:07:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:07:51 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:07:51 GMT
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
	-	`sha256:6dbe1497e2e656d55a4d7d49363623f085ae09b6d80a5f9241ff9b1d37725596`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 891.2 KB (891209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021059ea9ba7f0fbb294ddb98c71fb0720bb0d86595e0869d4ff61cef287a339`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 857.7 KB (857699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e3a24b2f95d1f101d1667e6eb94e043f721d905b9dd8c88292eaf19ca1daa6`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 9.6 MB (9579597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0030502cbd7e40248f65e37a7d3a4efdd1192f9f87378883e418682702d8adf`  
		Last Modified: Thu, 05 Nov 2026 00:08:35 GMT  
		Size: 126.7 MB (126687895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbe7404f40b17311d72a2701c823ea2d06c28c37cd23ff55d7abf365e024e1c`  
		Last Modified: Thu, 05 Nov 2026 00:08:33 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c8241feb19e64fbb94dcec929296e447f89935c931a2f8d02dade6fe4d66634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2167459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd9ae0793838fb813c30c96f56f6cce7dbe6e9a5effbed48d62e321e18f29`

```dockerfile
```

-	Layers:
	-	`sha256:06e6128b8d8b48cc937913290be00d51769ab62aebe32b76aa8417133d44dbdf`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 2.1 MB (2133353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293d9534c699448d92a3e75369390498b05419e7ef7dd9f163a3e98429a57827`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75.0-alpine3.23`

```console
$ docker pull ghost@sha256:bea7100f19d83b23c234fd8ad94a90505552f7b0f5f307b079907c1fd03dbdf7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75.0-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:7b8e1775bebb36cc41b26ee0c255163e554b2d2b28d248d12604b607c59607e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199610067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a17b26951b83939f859f1e2b2187b74671155b221c26be4506346d8e54f04`
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
# Thu, 05 Nov 2026 00:01:50 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:02:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:02:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:12 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:12 GMT
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
	-	`sha256:9b0ad060b6893f8af58c45b1557f369d2418dd624e1a8159ae299688ebe167f9`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 822.2 KB (822225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c3e5557dd0bfa781aab57187fcac791f967a38587098b2f9999dd9f7e6f2bf`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 904.1 KB (904095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c430f1225650c9cd8795044726756744be5039ea952c04a7a678994ecc9c6d0`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 9.6 MB (9579119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577867912a16658291bc8abf7eb979d268321b6b8118bbeeef61c798453b55a1`  
		Last Modified: Thu, 05 Nov 2026 00:02:51 GMT  
		Size: 127.1 MB (127108355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549ec51cb72ee0eb4aed1e877b352e388e95f817a99329e0a520f638364f544`  
		Last Modified: Thu, 05 Nov 2026 00:02:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c3910994fc8f0a5028ddadea5e982974cdfa01e60dfe0c30a0328d2b43681369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2168815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635518a305c0ed57e21443189693564cd9a7895372b434dd441c6456cc230601`

```dockerfile
```

-	Layers:
	-	`sha256:78c2cc0a5f77d94290ef2715c20a70d2235e77296f06a14e53b4475843096fc7`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 2.1 MB (2134906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a84402de96acc695430ad4a94135d24aa9f4b05fab4f41b38386b2201ecd2c`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75.0-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a5635d22b6a33c838b5f36813d0b0379e02e3cd909e52100c0510a3d176eb32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199011209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303614ec8b1ed1726722af1eaaa7c30c164a7b3c7e3d496a8f0f8b842740f8b4`
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
# Thu, 05 Nov 2026 00:07:27 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:07:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:07:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:07:50 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:07:51 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:07:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:07:51 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:07:51 GMT
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
	-	`sha256:6dbe1497e2e656d55a4d7d49363623f085ae09b6d80a5f9241ff9b1d37725596`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 891.2 KB (891209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021059ea9ba7f0fbb294ddb98c71fb0720bb0d86595e0869d4ff61cef287a339`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 857.7 KB (857699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e3a24b2f95d1f101d1667e6eb94e043f721d905b9dd8c88292eaf19ca1daa6`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 9.6 MB (9579597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0030502cbd7e40248f65e37a7d3a4efdd1192f9f87378883e418682702d8adf`  
		Last Modified: Thu, 05 Nov 2026 00:08:35 GMT  
		Size: 126.7 MB (126687895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbe7404f40b17311d72a2701c823ea2d06c28c37cd23ff55d7abf365e024e1c`  
		Last Modified: Thu, 05 Nov 2026 00:08:33 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c8241feb19e64fbb94dcec929296e447f89935c931a2f8d02dade6fe4d66634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2167459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd9ae0793838fb813c30c96f56f6cce7dbe6e9a5effbed48d62e321e18f29`

```dockerfile
```

-	Layers:
	-	`sha256:06e6128b8d8b48cc937913290be00d51769ab62aebe32b76aa8417133d44dbdf`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 2.1 MB (2133353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293d9534c699448d92a3e75369390498b05419e7ef7dd9f163a3e98429a57827`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75.0-bookworm`

```console
$ docker pull ghost@sha256:ccb9a94e510b2856f71058e6b1b3a965a5a91e8421acb5be31aa181f67bf18c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75.0-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:0c3d0284a46b08f0cc7ab83e33b7f78a592b31bf03ef0a39d7506970de4a9570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217982476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c260de9fd759cb57ecf62d6a0b84f5f7a69d11b59248b723541180ad6103a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:16 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:00 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:00 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:00 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6a56698a26deccaa0ea41c78705480765155b690312e350d42bce46ecdf86036`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 1.2 MB (1248013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e3e1926e7c3de50d673460d2e3f7b6379555fb16d1180db1573ef22b166993`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 10.0 MB (10031626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abe3269d1473f9a9e99ddb4cd72d4899dc6e083d6db2c65ebeee5acc75d9fcc`  
		Last Modified: Thu, 05 Nov 2026 00:01:41 GMT  
		Size: 126.9 MB (126852666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3099a06c38428ed814ba077df1534dca9e8e44e1c133c7c4f93cc930d501e720`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:f86656f0f7fe4fb7cbb137564c26bc9fd7641cf676fa0b7420af4c719439a600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cddfc00038050158deeb82ca257fd8c7bc039774adaa36ac635319353c08629`

```dockerfile
```

-	Layers:
	-	`sha256:fc085e85926a9280fae55483c2f38d3045e5bd74aa42e72b601ec0a8fabfe1ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 4.3 MB (4345000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0e02f4ba1a49f7effe75d6aff9636805b3510a061fa25f7999fc50f859ba5f`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75.0-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:585407abd80b11dc4779c4b2307fdfc083b1e3e02b8ddaa50ead5545420a5ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216135219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dca3684cbaa1fb196f10294d4264311d54d6d7558473ab9a79b14f34ee2149`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 02:24:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 02:25:11 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:25:11 GMT
CMD ["node"]
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:09 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:09 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:10 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a41bac2f884b2d61e0a804569b04d53e9cfc1f083da293ecd050f799cec3494`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8ba6fdce9bedaea984a7ccda49c889e6447b9c9b1683eef9ef1d7f27e81de4`  
		Last Modified: Wed, 28 Oct 2026 02:25:26 GMT  
		Size: 44.6 MB (44578343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f764380a4475f16e15bc643e4fcdce4d1890345cfa078b218850212f283d8521`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 1.7 MB (1713178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb172d813a498c5fffdb9f74d9cea7e92fad65c8d6228bec919bde34eefe419`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec6093f96354212abbf10d484d2fd0f1505e74ac09d01106210742543666a8c`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 1.2 MB (1214925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea1cea500b591cfcd96386fef522867fe4629a77f815a8b25f98a70e871b6ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:53 GMT  
		Size: 16.6 MB (16624926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859e465eb18261da4f936732e9cab9c19607723e1475825470f6a4d2fef81a31`  
		Last Modified: Thu, 05 Nov 2026 00:01:55 GMT  
		Size: 128.0 MB (128038544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1089d2fd0aa40072a078fa22e167a625d71e7be219693b43e9ab5afbc8b7cd6`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:cc3eb9c81c6c09733bb8f42e13c7e9607326592449e09ec90f66cf24c84f0ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4413866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98390614fd238d075326b6dd3d2d94f3c3accc8152d961fbb74bcb971ea8d033`

```dockerfile
```

-	Layers:
	-	`sha256:4d3f737bc2b845a28960e9e42484f9e4ba92f0527e8a3201fbbdf900d3d814dd`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 4.4 MB (4379040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23bef30709a307bf7160fe3764652d0271125c74d86781b6adc235f5971566e`  
		Last Modified: Thu, 05 Nov 2026 00:01:51 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:635787f2a83283ab80e76f4b1a3420f1b3c59c0bd4b2018d90245f6536cbe052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217372324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd9d5f5ae6726d2aaa6ff62fb75b10ffdd496124d91b77dd9f3cc655655c1f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 04 Nov 2026 23:59:18 GMT
ENV NODE_ENV=production
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 04 Nov 2026 23:59:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_VERSION=6.75.0
# Wed, 04 Nov 2026 23:59:57 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Nov 2026 23:59:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Nov 2026 23:59:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 23:59:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 04 Nov 2026 23:59:58 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:43cdd0465c6411698e58a00737bdfb2c3e12c15f6cefd6d2527c0a681973dba0`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 10.0 MB (10031306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d82619c9357f9a28e9dfdc925a94816eca1831c3c79bc1d4415432561f83e8`  
		Last Modified: Thu, 05 Nov 2026 00:00:45 GMT  
		Size: 126.3 MB (126260877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbefd2bbb7214e8c453eb02f04bda194c59d6d8431d9c216ed4169468e34999`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:8cbdaf581a1bbae9778f859b3b38d52d0fd576cd674a2b591e6576169650907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9fb457301269094a620b75d1caf9712bd048403722f11b0b3ab81f96e0a9a0`

```dockerfile
```

-	Layers:
	-	`sha256:9f47fc757294960fd1428bbbdda9dfa9b208b39e25fdc3859ccf6f8adc88ae09`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 4.3 MB (4344292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3cf3b85aa48ef1e66ed011dea0a86b515571895124e011d6aa38e7c7a49105c`  
		Last Modified: Thu, 05 Nov 2026 00:00:40 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75.0-next`

```console
$ docker pull ghost@sha256:cb2f5ce805f68c8fc5e93ff6a6e6bc102022beaf2f990c55f31ebd6cddab4049
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75.0-next` - linux; amd64

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

### `ghost:6.75.0-next` - unknown; unknown

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

### `ghost:6.75.0-next` - linux; arm64 variant v8

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

### `ghost:6.75.0-next` - unknown; unknown

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

## `ghost:6.75.0-next-alpine`

```console
$ docker pull ghost@sha256:0328e3af17e07ddc53a79e2b3247610a0eabd347a7fc9f37e3fb17100efcba72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75.0-next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c3dccb17c3dc5ec4036dfc68f18b5c28280b03a5cedb333d05ee37c581fc436a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130287982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0414c7a3b7ff6ca04979b4a72f3c50992a01b22ab2837b470e0e799ce0f27bf5`
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
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:03:24 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:03:25 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:03:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:03:25 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:03:25 GMT
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
	-	`sha256:f294e3e6c40fec493f200ac3b389bf9a8130619fcba0e8df9d0792ff786fa8d6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 901.4 KB (901417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7f6075dc31ff946855a836b3200b469f549910832a803522fdc7e63ac155b6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d183de298007dc787f7663456f4f17916eae3e715eeeeea6b4d73cf726ed729a`  
		Last Modified: Thu, 05 Nov 2026 00:03:47 GMT  
		Size: 68.2 MB (68187547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f2b26d5d919d73543b5c2335d8ea9fd5f2675f4c25672b0585e9a7fb705af4`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d955df8b009b4c25b3548987ec1b30d61d1ee584949ffacc5d959737ed5e438`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07de7a8e63e164666a5ec8dcb80f84ccfe1cd6b5c0261d7e48e4e1c661fb88e`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:3e7b0d90725ad86568a97913820f5bcbe39b56568b06007b5d95339c7823b89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1755532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7669086190fa3aa8c9f0ae9eece71a5ac07a223059cd2d22536d6a750536f94`

```dockerfile
```

-	Layers:
	-	`sha256:6aee70f121d870aac07d011fb1b00ef753e389d53e45c26a3dd5eaa66b947dca`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 1.7 MB (1722441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f29647960096cc4519c7d36dfc39fb4af2778477351666a0297420f1ea47380`  
		Last Modified: Thu, 05 Nov 2026 00:03:44 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75.0-next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:d564ecf9e7e1ab68f922c240ade199b2e9773652df05e73cd43c8955dfe33fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129572704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5adb5e504996c184cbd2c95e440b14c368f9d5f46d21f4ed069784830af64d`
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
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:02:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:10 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:02:11 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:02:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:11 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:11 GMT
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
	-	`sha256:90dddfe121a1e54d96ced13c86cad9f561b42f1e4961caaca10cd85db16a2172`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 854.0 KB (854019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589ea241631b6a6378d2f984b29555299f5e16532358525ee34a5a20e70a573c`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93a3835a9f6659a1374ffa0294d76c4d20604d243e340d71d3adc2d0d5ecc1b`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 67.7 MB (67721129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b5548e507907e1ee75f072e130860eb107d50303f2b2c41ffafc0d7df3ceea`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c2996078aabbad323d53e628f736a69c01cda341cc3a0c9bc441bc7a0000d7`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b2285719b826e0ce195e2eeafff837cb753a706351d6e71d7e5dab973479c8`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:b70b75c5d430639e618545618e6261d61c05ceb9e00a36a97439306b11f6a217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1754428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bbc0e44f2f478803d104605b387c735050cd27ba8fead055055c0e9f1a1e0a`

```dockerfile
```

-	Layers:
	-	`sha256:847eb8923bab0c280ca89eb2e3996bba3672c7c3b534537844489989a0b349f3`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 1.7 MB (1721140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90fab51f47e40a28c0ad655cb168aa6740c1e9048d4633e75a0f153ccfc7488`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75.0-next-alpine3.23`

```console
$ docker pull ghost@sha256:0328e3af17e07ddc53a79e2b3247610a0eabd347a7fc9f37e3fb17100efcba72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75.0-next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:c3dccb17c3dc5ec4036dfc68f18b5c28280b03a5cedb333d05ee37c581fc436a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130287982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0414c7a3b7ff6ca04979b4a72f3c50992a01b22ab2837b470e0e799ce0f27bf5`
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
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:03:24 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:03:25 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:03:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:03:25 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:03:25 GMT
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
	-	`sha256:f294e3e6c40fec493f200ac3b389bf9a8130619fcba0e8df9d0792ff786fa8d6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 901.4 KB (901417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7f6075dc31ff946855a836b3200b469f549910832a803522fdc7e63ac155b6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d183de298007dc787f7663456f4f17916eae3e715eeeeea6b4d73cf726ed729a`  
		Last Modified: Thu, 05 Nov 2026 00:03:47 GMT  
		Size: 68.2 MB (68187547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f2b26d5d919d73543b5c2335d8ea9fd5f2675f4c25672b0585e9a7fb705af4`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d955df8b009b4c25b3548987ec1b30d61d1ee584949ffacc5d959737ed5e438`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07de7a8e63e164666a5ec8dcb80f84ccfe1cd6b5c0261d7e48e4e1c661fb88e`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:3e7b0d90725ad86568a97913820f5bcbe39b56568b06007b5d95339c7823b89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1755532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7669086190fa3aa8c9f0ae9eece71a5ac07a223059cd2d22536d6a750536f94`

```dockerfile
```

-	Layers:
	-	`sha256:6aee70f121d870aac07d011fb1b00ef753e389d53e45c26a3dd5eaa66b947dca`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 1.7 MB (1722441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f29647960096cc4519c7d36dfc39fb4af2778477351666a0297420f1ea47380`  
		Last Modified: Thu, 05 Nov 2026 00:03:44 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.75.0-next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:d564ecf9e7e1ab68f922c240ade199b2e9773652df05e73cd43c8955dfe33fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129572704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5adb5e504996c184cbd2c95e440b14c368f9d5f46d21f4ed069784830af64d`
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
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:02:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:10 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:02:11 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:02:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:11 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:11 GMT
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
	-	`sha256:90dddfe121a1e54d96ced13c86cad9f561b42f1e4961caaca10cd85db16a2172`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 854.0 KB (854019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589ea241631b6a6378d2f984b29555299f5e16532358525ee34a5a20e70a573c`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93a3835a9f6659a1374ffa0294d76c4d20604d243e340d71d3adc2d0d5ecc1b`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 67.7 MB (67721129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b5548e507907e1ee75f072e130860eb107d50303f2b2c41ffafc0d7df3ceea`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c2996078aabbad323d53e628f736a69c01cda341cc3a0c9bc441bc7a0000d7`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b2285719b826e0ce195e2eeafff837cb753a706351d6e71d7e5dab973479c8`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.75.0-next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:b70b75c5d430639e618545618e6261d61c05ceb9e00a36a97439306b11f6a217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1754428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bbc0e44f2f478803d104605b387c735050cd27ba8fead055055c0e9f1a1e0a`

```dockerfile
```

-	Layers:
	-	`sha256:847eb8923bab0c280ca89eb2e3996bba3672c7c3b534537844489989a0b349f3`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 1.7 MB (1721140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90fab51f47e40a28c0ad655cb168aa6740c1e9048d4633e75a0f153ccfc7488`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.75.0-next-bookworm`

```console
$ docker pull ghost@sha256:cb2f5ce805f68c8fc5e93ff6a6e6bc102022beaf2f990c55f31ebd6cddab4049
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.75.0-next-bookworm` - linux; amd64

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

### `ghost:6.75.0-next-bookworm` - unknown; unknown

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

### `ghost:6.75.0-next-bookworm` - linux; arm64 variant v8

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

### `ghost:6.75.0-next-bookworm` - unknown; unknown

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

## `ghost:alpine`

```console
$ docker pull ghost@sha256:bea7100f19d83b23c234fd8ad94a90505552f7b0f5f307b079907c1fd03dbdf7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:7b8e1775bebb36cc41b26ee0c255163e554b2d2b28d248d12604b607c59607e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199610067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a17b26951b83939f859f1e2b2187b74671155b221c26be4506346d8e54f04`
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
# Thu, 05 Nov 2026 00:01:50 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:02:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:02:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:12 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:12 GMT
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
	-	`sha256:9b0ad060b6893f8af58c45b1557f369d2418dd624e1a8159ae299688ebe167f9`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 822.2 KB (822225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c3e5557dd0bfa781aab57187fcac791f967a38587098b2f9999dd9f7e6f2bf`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 904.1 KB (904095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c430f1225650c9cd8795044726756744be5039ea952c04a7a678994ecc9c6d0`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 9.6 MB (9579119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577867912a16658291bc8abf7eb979d268321b6b8118bbeeef61c798453b55a1`  
		Last Modified: Thu, 05 Nov 2026 00:02:51 GMT  
		Size: 127.1 MB (127108355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549ec51cb72ee0eb4aed1e877b352e388e95f817a99329e0a520f638364f544`  
		Last Modified: Thu, 05 Nov 2026 00:02:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c3910994fc8f0a5028ddadea5e982974cdfa01e60dfe0c30a0328d2b43681369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2168815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635518a305c0ed57e21443189693564cd9a7895372b434dd441c6456cc230601`

```dockerfile
```

-	Layers:
	-	`sha256:78c2cc0a5f77d94290ef2715c20a70d2235e77296f06a14e53b4475843096fc7`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 2.1 MB (2134906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a84402de96acc695430ad4a94135d24aa9f4b05fab4f41b38386b2201ecd2c`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a5635d22b6a33c838b5f36813d0b0379e02e3cd909e52100c0510a3d176eb32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199011209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303614ec8b1ed1726722af1eaaa7c30c164a7b3c7e3d496a8f0f8b842740f8b4`
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
# Thu, 05 Nov 2026 00:07:27 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:07:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:07:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:07:50 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:07:51 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:07:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:07:51 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:07:51 GMT
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
	-	`sha256:6dbe1497e2e656d55a4d7d49363623f085ae09b6d80a5f9241ff9b1d37725596`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 891.2 KB (891209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021059ea9ba7f0fbb294ddb98c71fb0720bb0d86595e0869d4ff61cef287a339`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 857.7 KB (857699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e3a24b2f95d1f101d1667e6eb94e043f721d905b9dd8c88292eaf19ca1daa6`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 9.6 MB (9579597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0030502cbd7e40248f65e37a7d3a4efdd1192f9f87378883e418682702d8adf`  
		Last Modified: Thu, 05 Nov 2026 00:08:35 GMT  
		Size: 126.7 MB (126687895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbe7404f40b17311d72a2701c823ea2d06c28c37cd23ff55d7abf365e024e1c`  
		Last Modified: Thu, 05 Nov 2026 00:08:33 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:c8241feb19e64fbb94dcec929296e447f89935c931a2f8d02dade6fe4d66634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2167459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd9ae0793838fb813c30c96f56f6cce7dbe6e9a5effbed48d62e321e18f29`

```dockerfile
```

-	Layers:
	-	`sha256:06e6128b8d8b48cc937913290be00d51769ab62aebe32b76aa8417133d44dbdf`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 2.1 MB (2133353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293d9534c699448d92a3e75369390498b05419e7ef7dd9f163a3e98429a57827`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:alpine3.23`

```console
$ docker pull ghost@sha256:bea7100f19d83b23c234fd8ad94a90505552f7b0f5f307b079907c1fd03dbdf7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:7b8e1775bebb36cc41b26ee0c255163e554b2d2b28d248d12604b607c59607e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199610067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a17b26951b83939f859f1e2b2187b74671155b221c26be4506346d8e54f04`
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
# Thu, 05 Nov 2026 00:01:50 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:52 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:01:52 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:02:12 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:02:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:12 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:12 GMT
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
	-	`sha256:9b0ad060b6893f8af58c45b1557f369d2418dd624e1a8159ae299688ebe167f9`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 822.2 KB (822225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c3e5557dd0bfa781aab57187fcac791f967a38587098b2f9999dd9f7e6f2bf`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 904.1 KB (904095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c430f1225650c9cd8795044726756744be5039ea952c04a7a678994ecc9c6d0`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 9.6 MB (9579119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577867912a16658291bc8abf7eb979d268321b6b8118bbeeef61c798453b55a1`  
		Last Modified: Thu, 05 Nov 2026 00:02:51 GMT  
		Size: 127.1 MB (127108355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549ec51cb72ee0eb4aed1e877b352e388e95f817a99329e0a520f638364f544`  
		Last Modified: Thu, 05 Nov 2026 00:02:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c3910994fc8f0a5028ddadea5e982974cdfa01e60dfe0c30a0328d2b43681369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2168815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635518a305c0ed57e21443189693564cd9a7895372b434dd441c6456cc230601`

```dockerfile
```

-	Layers:
	-	`sha256:78c2cc0a5f77d94290ef2715c20a70d2235e77296f06a14e53b4475843096fc7`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 2.1 MB (2134906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a84402de96acc695430ad4a94135d24aa9f4b05fab4f41b38386b2201ecd2c`  
		Last Modified: Thu, 05 Nov 2026 00:02:48 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:a5635d22b6a33c838b5f36813d0b0379e02e3cd909e52100c0510a3d176eb32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.0 MB (199011209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303614ec8b1ed1726722af1eaaa7c30c164a7b3c7e3d496a8f0f8b842740f8b4`
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
# Thu, 05 Nov 2026 00:07:27 GMT
RUN apk add --no-cache 		bash # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:07:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:07:30 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:07:30 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:07:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:07:35 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:07:50 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:07:51 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:07:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:07:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:07:51 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:07:51 GMT
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
	-	`sha256:6dbe1497e2e656d55a4d7d49363623f085ae09b6d80a5f9241ff9b1d37725596`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 891.2 KB (891209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021059ea9ba7f0fbb294ddb98c71fb0720bb0d86595e0869d4ff61cef287a339`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 857.7 KB (857699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e3a24b2f95d1f101d1667e6eb94e043f721d905b9dd8c88292eaf19ca1daa6`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 9.6 MB (9579597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0030502cbd7e40248f65e37a7d3a4efdd1192f9f87378883e418682702d8adf`  
		Last Modified: Thu, 05 Nov 2026 00:08:35 GMT  
		Size: 126.7 MB (126687895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbe7404f40b17311d72a2701c823ea2d06c28c37cd23ff55d7abf365e024e1c`  
		Last Modified: Thu, 05 Nov 2026 00:08:33 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:c8241feb19e64fbb94dcec929296e447f89935c931a2f8d02dade6fe4d66634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2167459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd9ae0793838fb813c30c96f56f6cce7dbe6e9a5effbed48d62e321e18f29`

```dockerfile
```

-	Layers:
	-	`sha256:06e6128b8d8b48cc937913290be00d51769ab62aebe32b76aa8417133d44dbdf`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 2.1 MB (2133353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293d9534c699448d92a3e75369390498b05419e7ef7dd9f163a3e98429a57827`  
		Last Modified: Thu, 05 Nov 2026 00:08:32 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:bookworm`

```console
$ docker pull ghost@sha256:ccb9a94e510b2856f71058e6b1b3a965a5a91e8421acb5be31aa181f67bf18c1
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
$ docker pull ghost@sha256:0c3d0284a46b08f0cc7ab83e33b7f78a592b31bf03ef0a39d7506970de4a9570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217982476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c260de9fd759cb57ecf62d6a0b84f5f7a69d11b59248b723541180ad6103a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:16 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:00 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:00 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:00 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6a56698a26deccaa0ea41c78705480765155b690312e350d42bce46ecdf86036`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 1.2 MB (1248013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e3e1926e7c3de50d673460d2e3f7b6379555fb16d1180db1573ef22b166993`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 10.0 MB (10031626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abe3269d1473f9a9e99ddb4cd72d4899dc6e083d6db2c65ebeee5acc75d9fcc`  
		Last Modified: Thu, 05 Nov 2026 00:01:41 GMT  
		Size: 126.9 MB (126852666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3099a06c38428ed814ba077df1534dca9e8e44e1c133c7c4f93cc930d501e720`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:f86656f0f7fe4fb7cbb137564c26bc9fd7641cf676fa0b7420af4c719439a600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cddfc00038050158deeb82ca257fd8c7bc039774adaa36ac635319353c08629`

```dockerfile
```

-	Layers:
	-	`sha256:fc085e85926a9280fae55483c2f38d3045e5bd74aa42e72b601ec0a8fabfe1ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 4.3 MB (4345000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0e02f4ba1a49f7effe75d6aff9636805b3510a061fa25f7999fc50f859ba5f`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:585407abd80b11dc4779c4b2307fdfc083b1e3e02b8ddaa50ead5545420a5ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216135219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dca3684cbaa1fb196f10294d4264311d54d6d7558473ab9a79b14f34ee2149`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 02:24:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 02:25:11 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:25:11 GMT
CMD ["node"]
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:09 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:09 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:10 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a41bac2f884b2d61e0a804569b04d53e9cfc1f083da293ecd050f799cec3494`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8ba6fdce9bedaea984a7ccda49c889e6447b9c9b1683eef9ef1d7f27e81de4`  
		Last Modified: Wed, 28 Oct 2026 02:25:26 GMT  
		Size: 44.6 MB (44578343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f764380a4475f16e15bc643e4fcdce4d1890345cfa078b218850212f283d8521`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 1.7 MB (1713178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb172d813a498c5fffdb9f74d9cea7e92fad65c8d6228bec919bde34eefe419`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec6093f96354212abbf10d484d2fd0f1505e74ac09d01106210742543666a8c`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 1.2 MB (1214925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea1cea500b591cfcd96386fef522867fe4629a77f815a8b25f98a70e871b6ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:53 GMT  
		Size: 16.6 MB (16624926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859e465eb18261da4f936732e9cab9c19607723e1475825470f6a4d2fef81a31`  
		Last Modified: Thu, 05 Nov 2026 00:01:55 GMT  
		Size: 128.0 MB (128038544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1089d2fd0aa40072a078fa22e167a625d71e7be219693b43e9ab5afbc8b7cd6`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:cc3eb9c81c6c09733bb8f42e13c7e9607326592449e09ec90f66cf24c84f0ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4413866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98390614fd238d075326b6dd3d2d94f3c3accc8152d961fbb74bcb971ea8d033`

```dockerfile
```

-	Layers:
	-	`sha256:4d3f737bc2b845a28960e9e42484f9e4ba92f0527e8a3201fbbdf900d3d814dd`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 4.4 MB (4379040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23bef30709a307bf7160fe3764652d0271125c74d86781b6adc235f5971566e`  
		Last Modified: Thu, 05 Nov 2026 00:01:51 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:635787f2a83283ab80e76f4b1a3420f1b3c59c0bd4b2018d90245f6536cbe052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217372324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd9d5f5ae6726d2aaa6ff62fb75b10ffdd496124d91b77dd9f3cc655655c1f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 04 Nov 2026 23:59:18 GMT
ENV NODE_ENV=production
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 04 Nov 2026 23:59:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_VERSION=6.75.0
# Wed, 04 Nov 2026 23:59:57 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Nov 2026 23:59:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Nov 2026 23:59:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 23:59:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 04 Nov 2026 23:59:58 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:43cdd0465c6411698e58a00737bdfb2c3e12c15f6cefd6d2527c0a681973dba0`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 10.0 MB (10031306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d82619c9357f9a28e9dfdc925a94816eca1831c3c79bc1d4415432561f83e8`  
		Last Modified: Thu, 05 Nov 2026 00:00:45 GMT  
		Size: 126.3 MB (126260877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbefd2bbb7214e8c453eb02f04bda194c59d6d8431d9c216ed4169468e34999`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:8cbdaf581a1bbae9778f859b3b38d52d0fd576cd674a2b591e6576169650907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9fb457301269094a620b75d1caf9712bd048403722f11b0b3ab81f96e0a9a0`

```dockerfile
```

-	Layers:
	-	`sha256:9f47fc757294960fd1428bbbdda9dfa9b208b39e25fdc3859ccf6f8adc88ae09`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 4.3 MB (4344292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3cf3b85aa48ef1e66ed011dea0a86b515571895124e011d6aa38e7c7a49105c`  
		Last Modified: Thu, 05 Nov 2026 00:00:40 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:latest`

```console
$ docker pull ghost@sha256:ccb9a94e510b2856f71058e6b1b3a965a5a91e8421acb5be31aa181f67bf18c1
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
$ docker pull ghost@sha256:0c3d0284a46b08f0cc7ab83e33b7f78a592b31bf03ef0a39d7506970de4a9570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217982476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c260de9fd759cb57ecf62d6a0b84f5f7a69d11b59248b723541180ad6103a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:16 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:16 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:31 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:00 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:00 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:00 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6a56698a26deccaa0ea41c78705480765155b690312e350d42bce46ecdf86036`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 1.2 MB (1248013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e3e1926e7c3de50d673460d2e3f7b6379555fb16d1180db1573ef22b166993`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 10.0 MB (10031626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abe3269d1473f9a9e99ddb4cd72d4899dc6e083d6db2c65ebeee5acc75d9fcc`  
		Last Modified: Thu, 05 Nov 2026 00:01:41 GMT  
		Size: 126.9 MB (126852666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3099a06c38428ed814ba077df1534dca9e8e44e1c133c7c4f93cc930d501e720`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:f86656f0f7fe4fb7cbb137564c26bc9fd7641cf676fa0b7420af4c719439a600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cddfc00038050158deeb82ca257fd8c7bc039774adaa36ac635319353c08629`

```dockerfile
```

-	Layers:
	-	`sha256:fc085e85926a9280fae55483c2f38d3045e5bd74aa42e72b601ec0a8fabfe1ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 4.3 MB (4345000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca0e02f4ba1a49f7effe75d6aff9636805b3510a061fa25f7999fc50f859ba5f`  
		Last Modified: Thu, 05 Nov 2026 00:01:38 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:585407abd80b11dc4779c4b2307fdfc083b1e3e02b8ddaa50ead5545420a5ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216135219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dca3684cbaa1fb196f10294d4264311d54d6d7558473ab9a79b14f34ee2149`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 02:24:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:24:58 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 02:25:11 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:25:11 GMT
CMD ["node"]
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:00:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:00:09 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Thu, 05 Nov 2026 00:00:09 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Thu, 05 Nov 2026 00:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 05 Nov 2026 00:00:28 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:09 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
WORKDIR /var/lib/ghost
# Thu, 05 Nov 2026 00:01:10 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 05 Nov 2026 00:01:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:01:10 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:01:10 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a41bac2f884b2d61e0a804569b04d53e9cfc1f083da293ecd050f799cec3494`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8ba6fdce9bedaea984a7ccda49c889e6447b9c9b1683eef9ef1d7f27e81de4`  
		Last Modified: Wed, 28 Oct 2026 02:25:26 GMT  
		Size: 44.6 MB (44578343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f764380a4475f16e15bc643e4fcdce4d1890345cfa078b218850212f283d8521`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 1.7 MB (1713178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb172d813a498c5fffdb9f74d9cea7e92fad65c8d6228bec919bde34eefe419`  
		Last Modified: Wed, 28 Oct 2026 02:25:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec6093f96354212abbf10d484d2fd0f1505e74ac09d01106210742543666a8c`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 1.2 MB (1214925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea1cea500b591cfcd96386fef522867fe4629a77f815a8b25f98a70e871b6ae`  
		Last Modified: Thu, 05 Nov 2026 00:01:53 GMT  
		Size: 16.6 MB (16624926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859e465eb18261da4f936732e9cab9c19607723e1475825470f6a4d2fef81a31`  
		Last Modified: Thu, 05 Nov 2026 00:01:55 GMT  
		Size: 128.0 MB (128038544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1089d2fd0aa40072a078fa22e167a625d71e7be219693b43e9ab5afbc8b7cd6`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:cc3eb9c81c6c09733bb8f42e13c7e9607326592449e09ec90f66cf24c84f0ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4413866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98390614fd238d075326b6dd3d2d94f3c3accc8152d961fbb74bcb971ea8d033`

```dockerfile
```

-	Layers:
	-	`sha256:4d3f737bc2b845a28960e9e42484f9e4ba92f0527e8a3201fbbdf900d3d814dd`  
		Last Modified: Thu, 05 Nov 2026 00:01:52 GMT  
		Size: 4.4 MB (4379040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23bef30709a307bf7160fe3764652d0271125c74d86781b6adc235f5971566e`  
		Last Modified: Thu, 05 Nov 2026 00:01:51 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:635787f2a83283ab80e76f4b1a3420f1b3c59c0bd4b2018d90245f6536cbe052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217372324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd9d5f5ae6726d2aaa6ff62fb75b10ffdd496124d91b77dd9f3cc655655c1f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 04 Nov 2026 23:59:18 GMT
ENV NODE_ENV=production
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 04 Nov 2026 23:59:18 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 04 Nov 2026 23:59:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 04 Nov 2026 23:59:31 GMT
ENV GHOST_VERSION=6.75.0
# Wed, 04 Nov 2026 23:59:57 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
WORKDIR /var/lib/ghost
# Wed, 04 Nov 2026 23:59:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 04 Nov 2026 23:59:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 23:59:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 23:59:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 04 Nov 2026 23:59:58 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:43cdd0465c6411698e58a00737bdfb2c3e12c15f6cefd6d2527c0a681973dba0`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 10.0 MB (10031306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d82619c9357f9a28e9dfdc925a94816eca1831c3c79bc1d4415432561f83e8`  
		Last Modified: Thu, 05 Nov 2026 00:00:45 GMT  
		Size: 126.3 MB (126260877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbefd2bbb7214e8c453eb02f04bda194c59d6d8431d9c216ed4169468e34999`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 545.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:8cbdaf581a1bbae9778f859b3b38d52d0fd576cd674a2b591e6576169650907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4379162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9fb457301269094a620b75d1caf9712bd048403722f11b0b3ab81f96e0a9a0`

```dockerfile
```

-	Layers:
	-	`sha256:9f47fc757294960fd1428bbbdda9dfa9b208b39e25fdc3859ccf6f8adc88ae09`  
		Last Modified: Thu, 05 Nov 2026 00:00:41 GMT  
		Size: 4.3 MB (4344292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3cf3b85aa48ef1e66ed011dea0a86b515571895124e011d6aa38e7c7a49105c`  
		Last Modified: Thu, 05 Nov 2026 00:00:40 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:next`

```console
$ docker pull ghost@sha256:cb2f5ce805f68c8fc5e93ff6a6e6bc102022beaf2f990c55f31ebd6cddab4049
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next` - linux; amd64

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

### `ghost:next` - unknown; unknown

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

### `ghost:next` - linux; arm64 variant v8

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

### `ghost:next` - unknown; unknown

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

## `ghost:next-alpine`

```console
$ docker pull ghost@sha256:0328e3af17e07ddc53a79e2b3247610a0eabd347a7fc9f37e3fb17100efcba72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:c3dccb17c3dc5ec4036dfc68f18b5c28280b03a5cedb333d05ee37c581fc436a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130287982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0414c7a3b7ff6ca04979b4a72f3c50992a01b22ab2837b470e0e799ce0f27bf5`
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
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:03:24 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:03:25 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:03:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:03:25 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:03:25 GMT
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
	-	`sha256:f294e3e6c40fec493f200ac3b389bf9a8130619fcba0e8df9d0792ff786fa8d6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 901.4 KB (901417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7f6075dc31ff946855a836b3200b469f549910832a803522fdc7e63ac155b6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d183de298007dc787f7663456f4f17916eae3e715eeeeea6b4d73cf726ed729a`  
		Last Modified: Thu, 05 Nov 2026 00:03:47 GMT  
		Size: 68.2 MB (68187547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f2b26d5d919d73543b5c2335d8ea9fd5f2675f4c25672b0585e9a7fb705af4`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d955df8b009b4c25b3548987ec1b30d61d1ee584949ffacc5d959737ed5e438`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07de7a8e63e164666a5ec8dcb80f84ccfe1cd6b5c0261d7e48e4e1c661fb88e`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:3e7b0d90725ad86568a97913820f5bcbe39b56568b06007b5d95339c7823b89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1755532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7669086190fa3aa8c9f0ae9eece71a5ac07a223059cd2d22536d6a750536f94`

```dockerfile
```

-	Layers:
	-	`sha256:6aee70f121d870aac07d011fb1b00ef753e389d53e45c26a3dd5eaa66b947dca`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 1.7 MB (1722441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f29647960096cc4519c7d36dfc39fb4af2778477351666a0297420f1ea47380`  
		Last Modified: Thu, 05 Nov 2026 00:03:44 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:d564ecf9e7e1ab68f922c240ade199b2e9773652df05e73cd43c8955dfe33fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129572704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5adb5e504996c184cbd2c95e440b14c368f9d5f46d21f4ed069784830af64d`
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
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:02:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:10 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:02:11 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:02:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:11 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:11 GMT
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
	-	`sha256:90dddfe121a1e54d96ced13c86cad9f561b42f1e4961caaca10cd85db16a2172`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 854.0 KB (854019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589ea241631b6a6378d2f984b29555299f5e16532358525ee34a5a20e70a573c`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93a3835a9f6659a1374ffa0294d76c4d20604d243e340d71d3adc2d0d5ecc1b`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 67.7 MB (67721129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b5548e507907e1ee75f072e130860eb107d50303f2b2c41ffafc0d7df3ceea`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c2996078aabbad323d53e628f736a69c01cda341cc3a0c9bc441bc7a0000d7`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b2285719b826e0ce195e2eeafff837cb753a706351d6e71d7e5dab973479c8`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:b70b75c5d430639e618545618e6261d61c05ceb9e00a36a97439306b11f6a217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1754428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bbc0e44f2f478803d104605b387c735050cd27ba8fead055055c0e9f1a1e0a`

```dockerfile
```

-	Layers:
	-	`sha256:847eb8923bab0c280ca89eb2e3996bba3672c7c3b534537844489989a0b349f3`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 1.7 MB (1721140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90fab51f47e40a28c0ad655cb168aa6740c1e9048d4633e75a0f153ccfc7488`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:next-alpine3.23`

```console
$ docker pull ghost@sha256:0328e3af17e07ddc53a79e2b3247610a0eabd347a7fc9f37e3fb17100efcba72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:c3dccb17c3dc5ec4036dfc68f18b5c28280b03a5cedb333d05ee37c581fc436a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130287982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0414c7a3b7ff6ca04979b4a72f3c50992a01b22ab2837b470e0e799ce0f27bf5`
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
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:03:12 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:03:12 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:03:24 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:03:25 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:03:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:03:25 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:03:25 GMT
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
	-	`sha256:f294e3e6c40fec493f200ac3b389bf9a8130619fcba0e8df9d0792ff786fa8d6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 901.4 KB (901417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7f6075dc31ff946855a836b3200b469f549910832a803522fdc7e63ac155b6`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d183de298007dc787f7663456f4f17916eae3e715eeeeea6b4d73cf726ed729a`  
		Last Modified: Thu, 05 Nov 2026 00:03:47 GMT  
		Size: 68.2 MB (68187547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f2b26d5d919d73543b5c2335d8ea9fd5f2675f4c25672b0585e9a7fb705af4`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d955df8b009b4c25b3548987ec1b30d61d1ee584949ffacc5d959737ed5e438`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07de7a8e63e164666a5ec8dcb80f84ccfe1cd6b5c0261d7e48e4e1c661fb88e`  
		Last Modified: Thu, 05 Nov 2026 00:03:46 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:3e7b0d90725ad86568a97913820f5bcbe39b56568b06007b5d95339c7823b89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1755532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7669086190fa3aa8c9f0ae9eece71a5ac07a223059cd2d22536d6a750536f94`

```dockerfile
```

-	Layers:
	-	`sha256:6aee70f121d870aac07d011fb1b00ef753e389d53e45c26a3dd5eaa66b947dca`  
		Last Modified: Thu, 05 Nov 2026 00:03:45 GMT  
		Size: 1.7 MB (1722441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f29647960096cc4519c7d36dfc39fb4af2778477351666a0297420f1ea47380`  
		Last Modified: Thu, 05 Nov 2026 00:03:44 GMT  
		Size: 33.1 KB (33091 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:d564ecf9e7e1ab68f922c240ade199b2e9773652df05e73cd43c8955dfe33fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129572704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5adb5e504996c184cbd2c95e440b14c368f9d5f46d21f4ed069784830af64d`
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
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .gosu-deps ca-certificates dpkg gnupg; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	addgroup -g 1000 ghost; 	adduser -u 1000 -G ghost -h /home/ghost -s /bin/sh -H -D ghost # buildkit
# Thu, 05 Nov 2026 00:01:57 GMT
ENV NODE_ENV=production
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_INSTALL=/home/ghost
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_VERSION=6.75.0
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.75.0/ghost-6.75.0.tgz
# Thu, 05 Nov 2026 00:01:57 GMT
ENV GHOST_SHA256=e8abc257261b845c67bc9602c26aa6286aa34a3ce7da5efc9b2a2426fc7c7e6e
# Thu, 05 Nov 2026 00:02:10 GMT
RUN set -eux; 	corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Thu, 05 Nov 2026 00:02:10 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
WORKDIR /home/ghost
# Thu, 05 Nov 2026 00:02:11 GMT
VOLUME [/home/ghost/content]
# Thu, 05 Nov 2026 00:02:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 00:02:11 GMT
EXPOSE map[2368/tcp:{}]
# Thu, 05 Nov 2026 00:02:11 GMT
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
	-	`sha256:90dddfe121a1e54d96ced13c86cad9f561b42f1e4961caaca10cd85db16a2172`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 854.0 KB (854019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589ea241631b6a6378d2f984b29555299f5e16532358525ee34a5a20e70a573c`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93a3835a9f6659a1374ffa0294d76c4d20604d243e340d71d3adc2d0d5ecc1b`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 67.7 MB (67721129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b5548e507907e1ee75f072e130860eb107d50303f2b2c41ffafc0d7df3ceea`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c2996078aabbad323d53e628f736a69c01cda341cc3a0c9bc441bc7a0000d7`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b2285719b826e0ce195e2eeafff837cb753a706351d6e71d7e5dab973479c8`  
		Last Modified: Thu, 05 Nov 2026 00:02:34 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:b70b75c5d430639e618545618e6261d61c05ceb9e00a36a97439306b11f6a217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1754428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bbc0e44f2f478803d104605b387c735050cd27ba8fead055055c0e9f1a1e0a`

```dockerfile
```

-	Layers:
	-	`sha256:847eb8923bab0c280ca89eb2e3996bba3672c7c3b534537844489989a0b349f3`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 1.7 MB (1721140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90fab51f47e40a28c0ad655cb168aa6740c1e9048d4633e75a0f153ccfc7488`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 33.3 KB (33288 bytes)  
		MIME: application/vnd.in-toto+json

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
