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
-	[`ghost:6.76`](#ghost676)
-	[`ghost:6.76-alpine`](#ghost676-alpine)
-	[`ghost:6.76-alpine3.23`](#ghost676-alpine323)
-	[`ghost:6.76-bookworm`](#ghost676-bookworm)
-	[`ghost:6.76-next`](#ghost676-next)
-	[`ghost:6.76-next-alpine`](#ghost676-next-alpine)
-	[`ghost:6.76-next-alpine3.23`](#ghost676-next-alpine323)
-	[`ghost:6.76-next-bookworm`](#ghost676-next-bookworm)
-	[`ghost:6.76.0`](#ghost6760)
-	[`ghost:6.76.0-alpine`](#ghost6760-alpine)
-	[`ghost:6.76.0-alpine3.23`](#ghost6760-alpine323)
-	[`ghost:6.76.0-bookworm`](#ghost6760-bookworm)
-	[`ghost:6.76.0-next`](#ghost6760-next)
-	[`ghost:6.76.0-next-alpine`](#ghost6760-next-alpine)
-	[`ghost:6.76.0-next-alpine3.23`](#ghost6760-next-alpine323)
-	[`ghost:6.76.0-next-bookworm`](#ghost6760-next-bookworm)
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
$ docker pull ghost@sha256:37014cd0638a188e7282821c1239b954c9ddcdf44a055b966b8191ee85bdbbef
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
$ docker pull ghost@sha256:61848c9dd686ed181b7dbfddbb5161181181ab226fd97046acd3cef6dae04a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249923808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85a88adb542f3f7ffacac167adf015a4d1f8759ac52033204546739e3182534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:13 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:58 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f37111331aa2d264f7b5c95ecfd42abc50186fab26057b9b8ad9d9289027761`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 1.2 MB (1248040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67de912fe1246ef1e592075495980fc12e5f11334cdea8237c357abf8a48187b`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 10.0 MB (10031389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2582c08f01c15ff4079849e5d5f6f1e3d3a59e7ed85bb83da6dc4f9504096c`  
		Last Modified: Wed, 11 Nov 2026 19:15:46 GMT  
		Size: 158.8 MB (158775234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7835ef71b115ac370019e3d38f8b7154d3180ed0bdb62e456b164c4e723edd22`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:be6f48077e54e3cf3d99df2cf17c9381d851af1d123464600793713cfce64547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1c792b412f4cf2c3165fdb59489d5f6d5237a378db9f0b5d29471f816747ae`

```dockerfile
```

-	Layers:
	-	`sha256:de433100ac2cf6f4e34b2c3d532eb0ab4a81e3dfaafa69f2289ff407e16e29e7`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 4.5 MB (4500301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8780cbfc2e3c6315ed803804e4d113f5767636a12fdedb3aaa12bb4ab9f1f0e5`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2cf8ef847711f91ea8d4b6d4a033327e0ea6edb5418cba595e4cb040433159bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247486863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3b9426f45a16f0f27dec38bbd0759a3c031d26ba1e5a8e444060f3d599a8ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 08:21:33 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 08:21:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:21:48 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:39 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e53114d797d7e1943850242da63f62beb64f7451cab23ec125c98919a6bcc`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b83f98ffeb84a41878c3c1b7fadd284c6382b857812a56ab6c821d3f44917b8`  
		Last Modified: Thu, 05 Nov 2026 08:22:02 GMT  
		Size: 44.6 MB (44578323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7491dbca47b03dc4f5b08775d176ad366d86112ef0ea41fe871a8c14f48c9222`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 1.7 MB (1713191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbdfd5255f131b87e556696b1113f9d6440609ab9bdcbf4da43b34118b1ff84`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f688d7a3b3967248491751b8a3a4818db14abd2b266de69671ed51aa4c6aa77`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 1.2 MB (1214880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb744a9ffc03b866e2350ff77214cb4d666db1c421563fd6730de60b8cb8e2cf`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 16.6 MB (16624263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f6e10f63fc841565a2e9780a0bd967774dad3c9b917d988a5651ef45c57c29`  
		Last Modified: Tue, 10 Nov 2026 21:14:32 GMT  
		Size: 159.4 MB (159390514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3147d77c04193dfc71b5f4c01a0542bbd218bc3801e70b4e58be758cae3c1a`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:11c7efa66633bda0ff4f9ccc6a93e9f696dfc027c84cada23ffee5f16ef77f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4567682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3c499575fc88329729542230699c47ad65b797dcc26cb3ab8d6f2214c8f98c`

```dockerfile
```

-	Layers:
	-	`sha256:677a1bf5851116d25f5b85fd8343193d1b891521b6ed7ad31fd47712e9caf591`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 4.5 MB (4532856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d954a78a3634a24f6bcc73e29d411f9f24156fd01dee103543714fcf96f263`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7f7ce0f8dcd7ba0aac8e758f13017e18d5474f6c55cd8e0623ca2f9f51fe604b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248220410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813db46c458a90d43c1461c2586dc2f7b194741cfba9d3099df33882c73fc636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:40 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:24 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:24 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:24 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d1c6d3ef439c866082cbea867d8f5778b39e4e94c5245f2ecbefdbfb775bc7`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 1.2 MB (1202025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee04b696f43b23a5d029c1094033b8ef7e8a1599891f21f9bc37b35cb839611`  
		Last Modified: Tue, 10 Nov 2026 21:14:11 GMT  
		Size: 10.0 MB (10031293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0d30d415603e4defe6f3f1c2748189239b0aca89162b6c286af186be791474`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 157.1 MB (157102515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf9bd66f761dfab7ecbe9d9012196b2b9a18836265b4b7b47eade2c1f17b4d6`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6` - unknown; unknown

```console
$ docker pull ghost@sha256:74b8b4ff640f8d00099c3b305c07bc6404055ad087775848f0a40202d12c1013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289066d31a3a255d74fb916d6d182d29b8551a3f43eadb897e8334337c6b9f43`

```dockerfile
```

-	Layers:
	-	`sha256:714c12375aa76414b9f0564bca14dd985790181bb8912847dd9617636c1822e0`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 4.5 MB (4499621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:171ca1352810bbf3a8bfcb20945108950fa7afbc124390262998da2afe8bdbfb`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-alpine`

```console
$ docker pull ghost@sha256:471a5012d9ab392fe1622665f47dee4bdd12c5c0bbae1565b703f78b83c5e0bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:219b3c91a5f1616bac89a6ed15dd75a1d092866ccca97a88e13e91987739eca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231542621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3f4a22aaf349c05d92126c5f3628c7a1dcf346b10493d36e61418e428e03c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 11 Nov 2026 19:14:04 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:26 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:26 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:57e9d28ba8bf7c4dc9eb48ccf8ad3f56ec663569af48594863e1baa50c23d151`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 822.2 KB (822210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a83959a9fac0cac07f18a2d86d353bbd25dfc7bf60ecedb9218f1d82f08e64`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 904.1 KB (904069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fabda39e877f203b4f0d6aee684b3bc04dee5cbf5d3492ee22f58689e5d647`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 9.6 MB (9578997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3be2fcf7f650c4d4527a36d02cbb915e2ffe8c45dc8d1be4bb4ef7a333779b8`  
		Last Modified: Wed, 11 Nov 2026 19:15:06 GMT  
		Size: 159.0 MB (159013901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43cf33272f6802699b9dbe6478622ced7a1b910d74df0a17f60295b2e6ae3e2`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:0a1adbcadccc1149938e664e123678844ff2e82214b8a722078ad03ae381a935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd49d3191b1f6f6e72b6cfc9503ec3aa3104fd7568aa19f2b19db079f7bdc8cd`

```dockerfile
```

-	Layers:
	-	`sha256:c71e1884a6c85763e0646a0521a0fa30d7b5f58f06e0d41e0c598275bd752dad`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 2.3 MB (2290215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85f71c7ec9c334bbd3b6c5d6dde7540c4a15972b5901f5e159c4affbae05643c`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e05d641633f2d183fcf59667f635ca89191886e7590e222d66f268cf98674c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229830267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac096011dbbf5419ff0ef464317e4cd2c6815a442130727205cea01bbc5add24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 10 Nov 2026 21:13:17 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:13:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6d824f8a8f40aac1b2bb12a6e20c33b2987e01f1617a62605f5f7ba449be4faf`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 891.2 KB (891202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8afa22447ddb6c06f91a3039eac933de77e4df3aa84103c19d8bc838cf9837a3`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 857.7 KB (857683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e821d147887ab8abd6211fcc451792920d8cad0b18ecc452ff169d38cba96cc5`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 9.6 MB (9579659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda7ee672db7e2116f667738af2e916cd2cd419887215b617094a2101296049f`  
		Last Modified: Tue, 10 Nov 2026 21:14:31 GMT  
		Size: 157.5 MB (157512695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c30c142f2bfc5857c6063294c656d04dc84d669392dfaa4d8abc96107c03d3`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:3c36f4ec3b30f8f2f57a2a3b4f9554a4de47d2aea76098a142bc05b69817c3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2322796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd75bcfadf79f571cb1325187620965b771410a093b2943056957354cebd86c3`

```dockerfile
```

-	Layers:
	-	`sha256:36d16426b51001bd5cdd531dc588cf09b0b8ee6f6bd9607f1a8edd0133eedb49`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 2.3 MB (2288690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fc3e6e7083e69b29ad23e3e516aa3942699a7a1d30f779c5d004f1222c7fd7c`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-alpine3.23`

```console
$ docker pull ghost@sha256:471a5012d9ab392fe1622665f47dee4bdd12c5c0bbae1565b703f78b83c5e0bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:219b3c91a5f1616bac89a6ed15dd75a1d092866ccca97a88e13e91987739eca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231542621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3f4a22aaf349c05d92126c5f3628c7a1dcf346b10493d36e61418e428e03c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 11 Nov 2026 19:14:04 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:26 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:26 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:57e9d28ba8bf7c4dc9eb48ccf8ad3f56ec663569af48594863e1baa50c23d151`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 822.2 KB (822210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a83959a9fac0cac07f18a2d86d353bbd25dfc7bf60ecedb9218f1d82f08e64`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 904.1 KB (904069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fabda39e877f203b4f0d6aee684b3bc04dee5cbf5d3492ee22f58689e5d647`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 9.6 MB (9578997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3be2fcf7f650c4d4527a36d02cbb915e2ffe8c45dc8d1be4bb4ef7a333779b8`  
		Last Modified: Wed, 11 Nov 2026 19:15:06 GMT  
		Size: 159.0 MB (159013901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43cf33272f6802699b9dbe6478622ced7a1b910d74df0a17f60295b2e6ae3e2`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:0a1adbcadccc1149938e664e123678844ff2e82214b8a722078ad03ae381a935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd49d3191b1f6f6e72b6cfc9503ec3aa3104fd7568aa19f2b19db079f7bdc8cd`

```dockerfile
```

-	Layers:
	-	`sha256:c71e1884a6c85763e0646a0521a0fa30d7b5f58f06e0d41e0c598275bd752dad`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 2.3 MB (2290215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85f71c7ec9c334bbd3b6c5d6dde7540c4a15972b5901f5e159c4affbae05643c`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e05d641633f2d183fcf59667f635ca89191886e7590e222d66f268cf98674c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229830267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac096011dbbf5419ff0ef464317e4cd2c6815a442130727205cea01bbc5add24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 10 Nov 2026 21:13:17 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:13:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6d824f8a8f40aac1b2bb12a6e20c33b2987e01f1617a62605f5f7ba449be4faf`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 891.2 KB (891202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8afa22447ddb6c06f91a3039eac933de77e4df3aa84103c19d8bc838cf9837a3`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 857.7 KB (857683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e821d147887ab8abd6211fcc451792920d8cad0b18ecc452ff169d38cba96cc5`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 9.6 MB (9579659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda7ee672db7e2116f667738af2e916cd2cd419887215b617094a2101296049f`  
		Last Modified: Tue, 10 Nov 2026 21:14:31 GMT  
		Size: 157.5 MB (157512695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c30c142f2bfc5857c6063294c656d04dc84d669392dfaa4d8abc96107c03d3`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:3c36f4ec3b30f8f2f57a2a3b4f9554a4de47d2aea76098a142bc05b69817c3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2322796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd75bcfadf79f571cb1325187620965b771410a093b2943056957354cebd86c3`

```dockerfile
```

-	Layers:
	-	`sha256:36d16426b51001bd5cdd531dc588cf09b0b8ee6f6bd9607f1a8edd0133eedb49`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 2.3 MB (2288690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fc3e6e7083e69b29ad23e3e516aa3942699a7a1d30f779c5d004f1222c7fd7c`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-bookworm`

```console
$ docker pull ghost@sha256:37014cd0638a188e7282821c1239b954c9ddcdf44a055b966b8191ee85bdbbef
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
$ docker pull ghost@sha256:61848c9dd686ed181b7dbfddbb5161181181ab226fd97046acd3cef6dae04a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249923808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85a88adb542f3f7ffacac167adf015a4d1f8759ac52033204546739e3182534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:13 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:58 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f37111331aa2d264f7b5c95ecfd42abc50186fab26057b9b8ad9d9289027761`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 1.2 MB (1248040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67de912fe1246ef1e592075495980fc12e5f11334cdea8237c357abf8a48187b`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 10.0 MB (10031389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2582c08f01c15ff4079849e5d5f6f1e3d3a59e7ed85bb83da6dc4f9504096c`  
		Last Modified: Wed, 11 Nov 2026 19:15:46 GMT  
		Size: 158.8 MB (158775234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7835ef71b115ac370019e3d38f8b7154d3180ed0bdb62e456b164c4e723edd22`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:be6f48077e54e3cf3d99df2cf17c9381d851af1d123464600793713cfce64547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1c792b412f4cf2c3165fdb59489d5f6d5237a378db9f0b5d29471f816747ae`

```dockerfile
```

-	Layers:
	-	`sha256:de433100ac2cf6f4e34b2c3d532eb0ab4a81e3dfaafa69f2289ff407e16e29e7`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 4.5 MB (4500301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8780cbfc2e3c6315ed803804e4d113f5767636a12fdedb3aaa12bb4ab9f1f0e5`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2cf8ef847711f91ea8d4b6d4a033327e0ea6edb5418cba595e4cb040433159bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247486863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3b9426f45a16f0f27dec38bbd0759a3c031d26ba1e5a8e444060f3d599a8ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 08:21:33 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 08:21:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:21:48 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:39 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e53114d797d7e1943850242da63f62beb64f7451cab23ec125c98919a6bcc`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b83f98ffeb84a41878c3c1b7fadd284c6382b857812a56ab6c821d3f44917b8`  
		Last Modified: Thu, 05 Nov 2026 08:22:02 GMT  
		Size: 44.6 MB (44578323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7491dbca47b03dc4f5b08775d176ad366d86112ef0ea41fe871a8c14f48c9222`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 1.7 MB (1713191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbdfd5255f131b87e556696b1113f9d6440609ab9bdcbf4da43b34118b1ff84`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f688d7a3b3967248491751b8a3a4818db14abd2b266de69671ed51aa4c6aa77`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 1.2 MB (1214880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb744a9ffc03b866e2350ff77214cb4d666db1c421563fd6730de60b8cb8e2cf`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 16.6 MB (16624263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f6e10f63fc841565a2e9780a0bd967774dad3c9b917d988a5651ef45c57c29`  
		Last Modified: Tue, 10 Nov 2026 21:14:32 GMT  
		Size: 159.4 MB (159390514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3147d77c04193dfc71b5f4c01a0542bbd218bc3801e70b4e58be758cae3c1a`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:11c7efa66633bda0ff4f9ccc6a93e9f696dfc027c84cada23ffee5f16ef77f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4567682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3c499575fc88329729542230699c47ad65b797dcc26cb3ab8d6f2214c8f98c`

```dockerfile
```

-	Layers:
	-	`sha256:677a1bf5851116d25f5b85fd8343193d1b891521b6ed7ad31fd47712e9caf591`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 4.5 MB (4532856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d954a78a3634a24f6bcc73e29d411f9f24156fd01dee103543714fcf96f263`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7f7ce0f8dcd7ba0aac8e758f13017e18d5474f6c55cd8e0623ca2f9f51fe604b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248220410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813db46c458a90d43c1461c2586dc2f7b194741cfba9d3099df33882c73fc636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:40 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:24 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:24 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:24 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d1c6d3ef439c866082cbea867d8f5778b39e4e94c5245f2ecbefdbfb775bc7`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 1.2 MB (1202025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee04b696f43b23a5d029c1094033b8ef7e8a1599891f21f9bc37b35cb839611`  
		Last Modified: Tue, 10 Nov 2026 21:14:11 GMT  
		Size: 10.0 MB (10031293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0d30d415603e4defe6f3f1c2748189239b0aca89162b6c286af186be791474`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 157.1 MB (157102515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf9bd66f761dfab7ecbe9d9012196b2b9a18836265b4b7b47eade2c1f17b4d6`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:74b8b4ff640f8d00099c3b305c07bc6404055ad087775848f0a40202d12c1013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289066d31a3a255d74fb916d6d182d29b8551a3f43eadb897e8334337c6b9f43`

```dockerfile
```

-	Layers:
	-	`sha256:714c12375aa76414b9f0564bca14dd985790181bb8912847dd9617636c1822e0`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 4.5 MB (4499621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:171ca1352810bbf3a8bfcb20945108950fa7afbc124390262998da2afe8bdbfb`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-next`

```console
$ docker pull ghost@sha256:e2c5ec6bc9a062811d71a8baa1d4abd32b8ec24e899c7d23433995aa70f231f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next` - linux; amd64

```console
$ docker pull ghost@sha256:5d5d0304578ee615eb960ca2e415326d857352f95ba39b6c544c749cf482c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177481827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69caa1553d46bc58beaee8aa4b16e9760b749aa13ae2749e311ff900d859563a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Wed, 11 Nov 2026 19:14:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
WORKDIR /home/ghost
# Wed, 11 Nov 2026 19:14:36 GMT
VOLUME [/home/ghost/content]
# Wed, 11 Nov 2026 19:14:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:36 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:36 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91b521b14237e750217469e795fcd6eda0ecb66d56485d3505c2c5adc1df688`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 MB (1248029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d8ec91525147b9fe26cefeafb3a6ed7cc6435b37794001bbf3d1019d3681c8`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e42c0f42eb006a7ef0b12ece1b628079935a88fdd44c1d4655ac6932e13918c`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 96.4 MB (96361604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9188bdbcefdc61304a74d8729b8b55ddd1debb56074197a43dfd255f3fb80`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849f1ff0edce5cbff37afddeba7712cef06e1c8726313abf559e1b7722bd496`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1704cdd9b379bcadbe267b46e3f8c1cdcfdcc617255bac09888efff4453e5f`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next` - unknown; unknown

```console
$ docker pull ghost@sha256:f4ad60374654f3557fbfa327dd2583244f087f451a576ebf5d43e30f4bd89e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ee4881266f7869bb818e9689f83980ed4aa8c9eababec7a566c8bef2d778b9`

```dockerfile
```

-	Layers:
	-	`sha256:d02d7e4d4c1404f7dacdd5fb6ac52e6c44952ba084e5aef01c6439fea19e9639`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 4.3 MB (4273635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81215f57d74f9254b33394b214e2c978a481e58c311902319ae79c6d77616e0d`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b2f9a62b28f12aaec4a4f6a5dbdaa049740798b95a71447d540abeba91eedb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175651495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec0ce91517d718552807eab739030ba9aba24888486e0563eb3380829aaa68e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:13:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Tue, 10 Nov 2026 21:13:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
WORKDIR /home/ghost
# Tue, 10 Nov 2026 21:13:48 GMT
VOLUME [/home/ghost/content]
# Tue, 10 Nov 2026 21:13:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:48 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:48 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7fac24b400089ae4cb16eceea43dc929d6be5ecf904f378ae0a798778e5a17`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 MB (1202072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f32e180bc50706bf5696bb7240bea682f0b13343cc7789b87c081cb8b861294`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d70e2620206d6eda5291057edadbb0e07d2c467c327adb639140a34ae8c5f`  
		Last Modified: Tue, 10 Nov 2026 21:14:17 GMT  
		Size: 94.6 MB (94561789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795b8eb3b88e011a111294222008afa895b85fdc742502293fc0302a5c877590`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b635a5edeb9e769aa20a3a906a5847c4b33bac82cff2864e90397623cb6b05a4`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322c44484fbe849f1f994086f161f93201e1462289b2e74b5c41f5853508a3e5`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next` - unknown; unknown

```console
$ docker pull ghost@sha256:c9866d4f8cf32d1218269d07868dd45c2cc3074849892228a1dab3785504fce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6810070d113e95f5e0fbf36c3f8182a2f4a73cf50f68cfd70483f413003691c5`

```dockerfile
```

-	Layers:
	-	`sha256:5db15e3cf19d794a77f0f4bb60a1e4b529ee2494ec1beb6cb5a36777a497cc54`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 4.3 MB (4273213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cca0bb4e155bec127b905cef592a31d0d8a964dc554f396acecbe58676982c3`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6-next-alpine`

```console
$ docker pull ghost@sha256:8c64751fc43a8eb79b8f5d1011a54d781c137f2ea7bbd007a805ab096eaa7af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-alpine` - linux; amd64

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

### `ghost:6-next-alpine` - unknown; unknown

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

### `ghost:6-next-alpine` - linux; arm64 variant v8

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

### `ghost:6-next-alpine` - unknown; unknown

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

## `ghost:6-next-alpine3.23`

```console
$ docker pull ghost@sha256:8c64751fc43a8eb79b8f5d1011a54d781c137f2ea7bbd007a805ab096eaa7af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-alpine3.23` - linux; amd64

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

### `ghost:6-next-alpine3.23` - unknown; unknown

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

### `ghost:6-next-alpine3.23` - linux; arm64 variant v8

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

### `ghost:6-next-alpine3.23` - unknown; unknown

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

## `ghost:6-next-bookworm`

```console
$ docker pull ghost@sha256:e2c5ec6bc9a062811d71a8baa1d4abd32b8ec24e899c7d23433995aa70f231f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6-next-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:5d5d0304578ee615eb960ca2e415326d857352f95ba39b6c544c749cf482c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177481827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69caa1553d46bc58beaee8aa4b16e9760b749aa13ae2749e311ff900d859563a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Wed, 11 Nov 2026 19:14:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
WORKDIR /home/ghost
# Wed, 11 Nov 2026 19:14:36 GMT
VOLUME [/home/ghost/content]
# Wed, 11 Nov 2026 19:14:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:36 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:36 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91b521b14237e750217469e795fcd6eda0ecb66d56485d3505c2c5adc1df688`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 MB (1248029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d8ec91525147b9fe26cefeafb3a6ed7cc6435b37794001bbf3d1019d3681c8`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e42c0f42eb006a7ef0b12ece1b628079935a88fdd44c1d4655ac6932e13918c`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 96.4 MB (96361604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9188bdbcefdc61304a74d8729b8b55ddd1debb56074197a43dfd255f3fb80`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849f1ff0edce5cbff37afddeba7712cef06e1c8726313abf559e1b7722bd496`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1704cdd9b379bcadbe267b46e3f8c1cdcfdcc617255bac09888efff4453e5f`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:f4ad60374654f3557fbfa327dd2583244f087f451a576ebf5d43e30f4bd89e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ee4881266f7869bb818e9689f83980ed4aa8c9eababec7a566c8bef2d778b9`

```dockerfile
```

-	Layers:
	-	`sha256:d02d7e4d4c1404f7dacdd5fb6ac52e6c44952ba084e5aef01c6439fea19e9639`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 4.3 MB (4273635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81215f57d74f9254b33394b214e2c978a481e58c311902319ae79c6d77616e0d`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6-next-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b2f9a62b28f12aaec4a4f6a5dbdaa049740798b95a71447d540abeba91eedb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175651495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec0ce91517d718552807eab739030ba9aba24888486e0563eb3380829aaa68e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:13:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Tue, 10 Nov 2026 21:13:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
WORKDIR /home/ghost
# Tue, 10 Nov 2026 21:13:48 GMT
VOLUME [/home/ghost/content]
# Tue, 10 Nov 2026 21:13:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:48 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:48 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7fac24b400089ae4cb16eceea43dc929d6be5ecf904f378ae0a798778e5a17`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 MB (1202072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f32e180bc50706bf5696bb7240bea682f0b13343cc7789b87c081cb8b861294`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d70e2620206d6eda5291057edadbb0e07d2c467c327adb639140a34ae8c5f`  
		Last Modified: Tue, 10 Nov 2026 21:14:17 GMT  
		Size: 94.6 MB (94561789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795b8eb3b88e011a111294222008afa895b85fdc742502293fc0302a5c877590`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b635a5edeb9e769aa20a3a906a5847c4b33bac82cff2864e90397623cb6b05a4`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322c44484fbe849f1f994086f161f93201e1462289b2e74b5c41f5853508a3e5`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:c9866d4f8cf32d1218269d07868dd45c2cc3074849892228a1dab3785504fce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6810070d113e95f5e0fbf36c3f8182a2f4a73cf50f68cfd70483f413003691c5`

```dockerfile
```

-	Layers:
	-	`sha256:5db15e3cf19d794a77f0f4bb60a1e4b529ee2494ec1beb6cb5a36777a497cc54`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 4.3 MB (4273213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cca0bb4e155bec127b905cef592a31d0d8a964dc554f396acecbe58676982c3`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76`

```console
$ docker pull ghost@sha256:37014cd0638a188e7282821c1239b954c9ddcdf44a055b966b8191ee85bdbbef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76` - linux; amd64

```console
$ docker pull ghost@sha256:61848c9dd686ed181b7dbfddbb5161181181ab226fd97046acd3cef6dae04a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249923808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85a88adb542f3f7ffacac167adf015a4d1f8759ac52033204546739e3182534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:13 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:58 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f37111331aa2d264f7b5c95ecfd42abc50186fab26057b9b8ad9d9289027761`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 1.2 MB (1248040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67de912fe1246ef1e592075495980fc12e5f11334cdea8237c357abf8a48187b`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 10.0 MB (10031389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2582c08f01c15ff4079849e5d5f6f1e3d3a59e7ed85bb83da6dc4f9504096c`  
		Last Modified: Wed, 11 Nov 2026 19:15:46 GMT  
		Size: 158.8 MB (158775234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7835ef71b115ac370019e3d38f8b7154d3180ed0bdb62e456b164c4e723edd22`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76` - unknown; unknown

```console
$ docker pull ghost@sha256:be6f48077e54e3cf3d99df2cf17c9381d851af1d123464600793713cfce64547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1c792b412f4cf2c3165fdb59489d5f6d5237a378db9f0b5d29471f816747ae`

```dockerfile
```

-	Layers:
	-	`sha256:de433100ac2cf6f4e34b2c3d532eb0ab4a81e3dfaafa69f2289ff407e16e29e7`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 4.5 MB (4500301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8780cbfc2e3c6315ed803804e4d113f5767636a12fdedb3aaa12bb4ab9f1f0e5`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2cf8ef847711f91ea8d4b6d4a033327e0ea6edb5418cba595e4cb040433159bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247486863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3b9426f45a16f0f27dec38bbd0759a3c031d26ba1e5a8e444060f3d599a8ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 08:21:33 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 08:21:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:21:48 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:39 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e53114d797d7e1943850242da63f62beb64f7451cab23ec125c98919a6bcc`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b83f98ffeb84a41878c3c1b7fadd284c6382b857812a56ab6c821d3f44917b8`  
		Last Modified: Thu, 05 Nov 2026 08:22:02 GMT  
		Size: 44.6 MB (44578323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7491dbca47b03dc4f5b08775d176ad366d86112ef0ea41fe871a8c14f48c9222`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 1.7 MB (1713191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbdfd5255f131b87e556696b1113f9d6440609ab9bdcbf4da43b34118b1ff84`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f688d7a3b3967248491751b8a3a4818db14abd2b266de69671ed51aa4c6aa77`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 1.2 MB (1214880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb744a9ffc03b866e2350ff77214cb4d666db1c421563fd6730de60b8cb8e2cf`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 16.6 MB (16624263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f6e10f63fc841565a2e9780a0bd967774dad3c9b917d988a5651ef45c57c29`  
		Last Modified: Tue, 10 Nov 2026 21:14:32 GMT  
		Size: 159.4 MB (159390514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3147d77c04193dfc71b5f4c01a0542bbd218bc3801e70b4e58be758cae3c1a`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76` - unknown; unknown

```console
$ docker pull ghost@sha256:11c7efa66633bda0ff4f9ccc6a93e9f696dfc027c84cada23ffee5f16ef77f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4567682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3c499575fc88329729542230699c47ad65b797dcc26cb3ab8d6f2214c8f98c`

```dockerfile
```

-	Layers:
	-	`sha256:677a1bf5851116d25f5b85fd8343193d1b891521b6ed7ad31fd47712e9caf591`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 4.5 MB (4532856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d954a78a3634a24f6bcc73e29d411f9f24156fd01dee103543714fcf96f263`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7f7ce0f8dcd7ba0aac8e758f13017e18d5474f6c55cd8e0623ca2f9f51fe604b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248220410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813db46c458a90d43c1461c2586dc2f7b194741cfba9d3099df33882c73fc636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:40 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:24 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:24 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:24 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d1c6d3ef439c866082cbea867d8f5778b39e4e94c5245f2ecbefdbfb775bc7`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 1.2 MB (1202025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee04b696f43b23a5d029c1094033b8ef7e8a1599891f21f9bc37b35cb839611`  
		Last Modified: Tue, 10 Nov 2026 21:14:11 GMT  
		Size: 10.0 MB (10031293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0d30d415603e4defe6f3f1c2748189239b0aca89162b6c286af186be791474`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 157.1 MB (157102515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf9bd66f761dfab7ecbe9d9012196b2b9a18836265b4b7b47eade2c1f17b4d6`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76` - unknown; unknown

```console
$ docker pull ghost@sha256:74b8b4ff640f8d00099c3b305c07bc6404055ad087775848f0a40202d12c1013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289066d31a3a255d74fb916d6d182d29b8551a3f43eadb897e8334337c6b9f43`

```dockerfile
```

-	Layers:
	-	`sha256:714c12375aa76414b9f0564bca14dd985790181bb8912847dd9617636c1822e0`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 4.5 MB (4499621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:171ca1352810bbf3a8bfcb20945108950fa7afbc124390262998da2afe8bdbfb`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76-alpine`

```console
$ docker pull ghost@sha256:471a5012d9ab392fe1622665f47dee4bdd12c5c0bbae1565b703f78b83c5e0bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:219b3c91a5f1616bac89a6ed15dd75a1d092866ccca97a88e13e91987739eca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231542621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3f4a22aaf349c05d92126c5f3628c7a1dcf346b10493d36e61418e428e03c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 11 Nov 2026 19:14:04 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:26 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:26 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:57e9d28ba8bf7c4dc9eb48ccf8ad3f56ec663569af48594863e1baa50c23d151`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 822.2 KB (822210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a83959a9fac0cac07f18a2d86d353bbd25dfc7bf60ecedb9218f1d82f08e64`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 904.1 KB (904069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fabda39e877f203b4f0d6aee684b3bc04dee5cbf5d3492ee22f58689e5d647`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 9.6 MB (9578997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3be2fcf7f650c4d4527a36d02cbb915e2ffe8c45dc8d1be4bb4ef7a333779b8`  
		Last Modified: Wed, 11 Nov 2026 19:15:06 GMT  
		Size: 159.0 MB (159013901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43cf33272f6802699b9dbe6478622ced7a1b910d74df0a17f60295b2e6ae3e2`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:0a1adbcadccc1149938e664e123678844ff2e82214b8a722078ad03ae381a935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd49d3191b1f6f6e72b6cfc9503ec3aa3104fd7568aa19f2b19db079f7bdc8cd`

```dockerfile
```

-	Layers:
	-	`sha256:c71e1884a6c85763e0646a0521a0fa30d7b5f58f06e0d41e0c598275bd752dad`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 2.3 MB (2290215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85f71c7ec9c334bbd3b6c5d6dde7540c4a15972b5901f5e159c4affbae05643c`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e05d641633f2d183fcf59667f635ca89191886e7590e222d66f268cf98674c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229830267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac096011dbbf5419ff0ef464317e4cd2c6815a442130727205cea01bbc5add24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 10 Nov 2026 21:13:17 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:13:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6d824f8a8f40aac1b2bb12a6e20c33b2987e01f1617a62605f5f7ba449be4faf`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 891.2 KB (891202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8afa22447ddb6c06f91a3039eac933de77e4df3aa84103c19d8bc838cf9837a3`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 857.7 KB (857683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e821d147887ab8abd6211fcc451792920d8cad0b18ecc452ff169d38cba96cc5`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 9.6 MB (9579659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda7ee672db7e2116f667738af2e916cd2cd419887215b617094a2101296049f`  
		Last Modified: Tue, 10 Nov 2026 21:14:31 GMT  
		Size: 157.5 MB (157512695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c30c142f2bfc5857c6063294c656d04dc84d669392dfaa4d8abc96107c03d3`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:3c36f4ec3b30f8f2f57a2a3b4f9554a4de47d2aea76098a142bc05b69817c3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2322796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd75bcfadf79f571cb1325187620965b771410a093b2943056957354cebd86c3`

```dockerfile
```

-	Layers:
	-	`sha256:36d16426b51001bd5cdd531dc588cf09b0b8ee6f6bd9607f1a8edd0133eedb49`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 2.3 MB (2288690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fc3e6e7083e69b29ad23e3e516aa3942699a7a1d30f779c5d004f1222c7fd7c`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76-alpine3.23`

```console
$ docker pull ghost@sha256:471a5012d9ab392fe1622665f47dee4bdd12c5c0bbae1565b703f78b83c5e0bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:219b3c91a5f1616bac89a6ed15dd75a1d092866ccca97a88e13e91987739eca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231542621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3f4a22aaf349c05d92126c5f3628c7a1dcf346b10493d36e61418e428e03c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 11 Nov 2026 19:14:04 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:26 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:26 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:57e9d28ba8bf7c4dc9eb48ccf8ad3f56ec663569af48594863e1baa50c23d151`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 822.2 KB (822210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a83959a9fac0cac07f18a2d86d353bbd25dfc7bf60ecedb9218f1d82f08e64`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 904.1 KB (904069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fabda39e877f203b4f0d6aee684b3bc04dee5cbf5d3492ee22f58689e5d647`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 9.6 MB (9578997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3be2fcf7f650c4d4527a36d02cbb915e2ffe8c45dc8d1be4bb4ef7a333779b8`  
		Last Modified: Wed, 11 Nov 2026 19:15:06 GMT  
		Size: 159.0 MB (159013901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43cf33272f6802699b9dbe6478622ced7a1b910d74df0a17f60295b2e6ae3e2`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:0a1adbcadccc1149938e664e123678844ff2e82214b8a722078ad03ae381a935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd49d3191b1f6f6e72b6cfc9503ec3aa3104fd7568aa19f2b19db079f7bdc8cd`

```dockerfile
```

-	Layers:
	-	`sha256:c71e1884a6c85763e0646a0521a0fa30d7b5f58f06e0d41e0c598275bd752dad`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 2.3 MB (2290215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85f71c7ec9c334bbd3b6c5d6dde7540c4a15972b5901f5e159c4affbae05643c`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e05d641633f2d183fcf59667f635ca89191886e7590e222d66f268cf98674c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229830267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac096011dbbf5419ff0ef464317e4cd2c6815a442130727205cea01bbc5add24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 10 Nov 2026 21:13:17 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:13:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6d824f8a8f40aac1b2bb12a6e20c33b2987e01f1617a62605f5f7ba449be4faf`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 891.2 KB (891202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8afa22447ddb6c06f91a3039eac933de77e4df3aa84103c19d8bc838cf9837a3`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 857.7 KB (857683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e821d147887ab8abd6211fcc451792920d8cad0b18ecc452ff169d38cba96cc5`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 9.6 MB (9579659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda7ee672db7e2116f667738af2e916cd2cd419887215b617094a2101296049f`  
		Last Modified: Tue, 10 Nov 2026 21:14:31 GMT  
		Size: 157.5 MB (157512695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c30c142f2bfc5857c6063294c656d04dc84d669392dfaa4d8abc96107c03d3`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:3c36f4ec3b30f8f2f57a2a3b4f9554a4de47d2aea76098a142bc05b69817c3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2322796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd75bcfadf79f571cb1325187620965b771410a093b2943056957354cebd86c3`

```dockerfile
```

-	Layers:
	-	`sha256:36d16426b51001bd5cdd531dc588cf09b0b8ee6f6bd9607f1a8edd0133eedb49`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 2.3 MB (2288690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fc3e6e7083e69b29ad23e3e516aa3942699a7a1d30f779c5d004f1222c7fd7c`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76-bookworm`

```console
$ docker pull ghost@sha256:37014cd0638a188e7282821c1239b954c9ddcdf44a055b966b8191ee85bdbbef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:61848c9dd686ed181b7dbfddbb5161181181ab226fd97046acd3cef6dae04a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249923808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85a88adb542f3f7ffacac167adf015a4d1f8759ac52033204546739e3182534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:13 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:58 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f37111331aa2d264f7b5c95ecfd42abc50186fab26057b9b8ad9d9289027761`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 1.2 MB (1248040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67de912fe1246ef1e592075495980fc12e5f11334cdea8237c357abf8a48187b`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 10.0 MB (10031389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2582c08f01c15ff4079849e5d5f6f1e3d3a59e7ed85bb83da6dc4f9504096c`  
		Last Modified: Wed, 11 Nov 2026 19:15:46 GMT  
		Size: 158.8 MB (158775234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7835ef71b115ac370019e3d38f8b7154d3180ed0bdb62e456b164c4e723edd22`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:be6f48077e54e3cf3d99df2cf17c9381d851af1d123464600793713cfce64547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1c792b412f4cf2c3165fdb59489d5f6d5237a378db9f0b5d29471f816747ae`

```dockerfile
```

-	Layers:
	-	`sha256:de433100ac2cf6f4e34b2c3d532eb0ab4a81e3dfaafa69f2289ff407e16e29e7`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 4.5 MB (4500301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8780cbfc2e3c6315ed803804e4d113f5767636a12fdedb3aaa12bb4ab9f1f0e5`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2cf8ef847711f91ea8d4b6d4a033327e0ea6edb5418cba595e4cb040433159bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247486863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3b9426f45a16f0f27dec38bbd0759a3c031d26ba1e5a8e444060f3d599a8ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 08:21:33 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 08:21:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:21:48 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:39 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e53114d797d7e1943850242da63f62beb64f7451cab23ec125c98919a6bcc`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b83f98ffeb84a41878c3c1b7fadd284c6382b857812a56ab6c821d3f44917b8`  
		Last Modified: Thu, 05 Nov 2026 08:22:02 GMT  
		Size: 44.6 MB (44578323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7491dbca47b03dc4f5b08775d176ad366d86112ef0ea41fe871a8c14f48c9222`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 1.7 MB (1713191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbdfd5255f131b87e556696b1113f9d6440609ab9bdcbf4da43b34118b1ff84`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f688d7a3b3967248491751b8a3a4818db14abd2b266de69671ed51aa4c6aa77`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 1.2 MB (1214880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb744a9ffc03b866e2350ff77214cb4d666db1c421563fd6730de60b8cb8e2cf`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 16.6 MB (16624263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f6e10f63fc841565a2e9780a0bd967774dad3c9b917d988a5651ef45c57c29`  
		Last Modified: Tue, 10 Nov 2026 21:14:32 GMT  
		Size: 159.4 MB (159390514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3147d77c04193dfc71b5f4c01a0542bbd218bc3801e70b4e58be758cae3c1a`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:11c7efa66633bda0ff4f9ccc6a93e9f696dfc027c84cada23ffee5f16ef77f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4567682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3c499575fc88329729542230699c47ad65b797dcc26cb3ab8d6f2214c8f98c`

```dockerfile
```

-	Layers:
	-	`sha256:677a1bf5851116d25f5b85fd8343193d1b891521b6ed7ad31fd47712e9caf591`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 4.5 MB (4532856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d954a78a3634a24f6bcc73e29d411f9f24156fd01dee103543714fcf96f263`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7f7ce0f8dcd7ba0aac8e758f13017e18d5474f6c55cd8e0623ca2f9f51fe604b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248220410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813db46c458a90d43c1461c2586dc2f7b194741cfba9d3099df33882c73fc636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:40 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:24 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:24 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:24 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d1c6d3ef439c866082cbea867d8f5778b39e4e94c5245f2ecbefdbfb775bc7`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 1.2 MB (1202025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee04b696f43b23a5d029c1094033b8ef7e8a1599891f21f9bc37b35cb839611`  
		Last Modified: Tue, 10 Nov 2026 21:14:11 GMT  
		Size: 10.0 MB (10031293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0d30d415603e4defe6f3f1c2748189239b0aca89162b6c286af186be791474`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 157.1 MB (157102515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf9bd66f761dfab7ecbe9d9012196b2b9a18836265b4b7b47eade2c1f17b4d6`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:74b8b4ff640f8d00099c3b305c07bc6404055ad087775848f0a40202d12c1013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289066d31a3a255d74fb916d6d182d29b8551a3f43eadb897e8334337c6b9f43`

```dockerfile
```

-	Layers:
	-	`sha256:714c12375aa76414b9f0564bca14dd985790181bb8912847dd9617636c1822e0`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 4.5 MB (4499621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:171ca1352810bbf3a8bfcb20945108950fa7afbc124390262998da2afe8bdbfb`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76-next`

```console
$ docker pull ghost@sha256:e2c5ec6bc9a062811d71a8baa1d4abd32b8ec24e899c7d23433995aa70f231f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76-next` - linux; amd64

```console
$ docker pull ghost@sha256:5d5d0304578ee615eb960ca2e415326d857352f95ba39b6c544c749cf482c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177481827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69caa1553d46bc58beaee8aa4b16e9760b749aa13ae2749e311ff900d859563a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Wed, 11 Nov 2026 19:14:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
WORKDIR /home/ghost
# Wed, 11 Nov 2026 19:14:36 GMT
VOLUME [/home/ghost/content]
# Wed, 11 Nov 2026 19:14:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:36 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:36 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91b521b14237e750217469e795fcd6eda0ecb66d56485d3505c2c5adc1df688`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 MB (1248029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d8ec91525147b9fe26cefeafb3a6ed7cc6435b37794001bbf3d1019d3681c8`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e42c0f42eb006a7ef0b12ece1b628079935a88fdd44c1d4655ac6932e13918c`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 96.4 MB (96361604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9188bdbcefdc61304a74d8729b8b55ddd1debb56074197a43dfd255f3fb80`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849f1ff0edce5cbff37afddeba7712cef06e1c8726313abf559e1b7722bd496`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1704cdd9b379bcadbe267b46e3f8c1cdcfdcc617255bac09888efff4453e5f`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-next` - unknown; unknown

```console
$ docker pull ghost@sha256:f4ad60374654f3557fbfa327dd2583244f087f451a576ebf5d43e30f4bd89e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ee4881266f7869bb818e9689f83980ed4aa8c9eababec7a566c8bef2d778b9`

```dockerfile
```

-	Layers:
	-	`sha256:d02d7e4d4c1404f7dacdd5fb6ac52e6c44952ba084e5aef01c6439fea19e9639`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 4.3 MB (4273635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81215f57d74f9254b33394b214e2c978a481e58c311902319ae79c6d77616e0d`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76-next` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b2f9a62b28f12aaec4a4f6a5dbdaa049740798b95a71447d540abeba91eedb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175651495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec0ce91517d718552807eab739030ba9aba24888486e0563eb3380829aaa68e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:13:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Tue, 10 Nov 2026 21:13:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
WORKDIR /home/ghost
# Tue, 10 Nov 2026 21:13:48 GMT
VOLUME [/home/ghost/content]
# Tue, 10 Nov 2026 21:13:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:48 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:48 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7fac24b400089ae4cb16eceea43dc929d6be5ecf904f378ae0a798778e5a17`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 MB (1202072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f32e180bc50706bf5696bb7240bea682f0b13343cc7789b87c081cb8b861294`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d70e2620206d6eda5291057edadbb0e07d2c467c327adb639140a34ae8c5f`  
		Last Modified: Tue, 10 Nov 2026 21:14:17 GMT  
		Size: 94.6 MB (94561789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795b8eb3b88e011a111294222008afa895b85fdc742502293fc0302a5c877590`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b635a5edeb9e769aa20a3a906a5847c4b33bac82cff2864e90397623cb6b05a4`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322c44484fbe849f1f994086f161f93201e1462289b2e74b5c41f5853508a3e5`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-next` - unknown; unknown

```console
$ docker pull ghost@sha256:c9866d4f8cf32d1218269d07868dd45c2cc3074849892228a1dab3785504fce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6810070d113e95f5e0fbf36c3f8182a2f4a73cf50f68cfd70483f413003691c5`

```dockerfile
```

-	Layers:
	-	`sha256:5db15e3cf19d794a77f0f4bb60a1e4b529ee2494ec1beb6cb5a36777a497cc54`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 4.3 MB (4273213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cca0bb4e155bec127b905cef592a31d0d8a964dc554f396acecbe58676982c3`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76-next-alpine`

```console
$ docker pull ghost@sha256:8c64751fc43a8eb79b8f5d1011a54d781c137f2ea7bbd007a805ab096eaa7af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76-next-alpine` - linux; amd64

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

### `ghost:6.76-next-alpine` - unknown; unknown

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

### `ghost:6.76-next-alpine` - linux; arm64 variant v8

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

### `ghost:6.76-next-alpine` - unknown; unknown

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

## `ghost:6.76-next-alpine3.23`

```console
$ docker pull ghost@sha256:8c64751fc43a8eb79b8f5d1011a54d781c137f2ea7bbd007a805ab096eaa7af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76-next-alpine3.23` - linux; amd64

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

### `ghost:6.76-next-alpine3.23` - unknown; unknown

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

### `ghost:6.76-next-alpine3.23` - linux; arm64 variant v8

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

### `ghost:6.76-next-alpine3.23` - unknown; unknown

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

## `ghost:6.76-next-bookworm`

```console
$ docker pull ghost@sha256:e2c5ec6bc9a062811d71a8baa1d4abd32b8ec24e899c7d23433995aa70f231f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76-next-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:5d5d0304578ee615eb960ca2e415326d857352f95ba39b6c544c749cf482c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177481827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69caa1553d46bc58beaee8aa4b16e9760b749aa13ae2749e311ff900d859563a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Wed, 11 Nov 2026 19:14:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
WORKDIR /home/ghost
# Wed, 11 Nov 2026 19:14:36 GMT
VOLUME [/home/ghost/content]
# Wed, 11 Nov 2026 19:14:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:36 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:36 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91b521b14237e750217469e795fcd6eda0ecb66d56485d3505c2c5adc1df688`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 MB (1248029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d8ec91525147b9fe26cefeafb3a6ed7cc6435b37794001bbf3d1019d3681c8`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e42c0f42eb006a7ef0b12ece1b628079935a88fdd44c1d4655ac6932e13918c`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 96.4 MB (96361604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9188bdbcefdc61304a74d8729b8b55ddd1debb56074197a43dfd255f3fb80`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849f1ff0edce5cbff37afddeba7712cef06e1c8726313abf559e1b7722bd496`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1704cdd9b379bcadbe267b46e3f8c1cdcfdcc617255bac09888efff4453e5f`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:f4ad60374654f3557fbfa327dd2583244f087f451a576ebf5d43e30f4bd89e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ee4881266f7869bb818e9689f83980ed4aa8c9eababec7a566c8bef2d778b9`

```dockerfile
```

-	Layers:
	-	`sha256:d02d7e4d4c1404f7dacdd5fb6ac52e6c44952ba084e5aef01c6439fea19e9639`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 4.3 MB (4273635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81215f57d74f9254b33394b214e2c978a481e58c311902319ae79c6d77616e0d`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76-next-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b2f9a62b28f12aaec4a4f6a5dbdaa049740798b95a71447d540abeba91eedb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175651495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec0ce91517d718552807eab739030ba9aba24888486e0563eb3380829aaa68e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:13:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Tue, 10 Nov 2026 21:13:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
WORKDIR /home/ghost
# Tue, 10 Nov 2026 21:13:48 GMT
VOLUME [/home/ghost/content]
# Tue, 10 Nov 2026 21:13:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:48 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:48 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7fac24b400089ae4cb16eceea43dc929d6be5ecf904f378ae0a798778e5a17`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 MB (1202072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f32e180bc50706bf5696bb7240bea682f0b13343cc7789b87c081cb8b861294`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d70e2620206d6eda5291057edadbb0e07d2c467c327adb639140a34ae8c5f`  
		Last Modified: Tue, 10 Nov 2026 21:14:17 GMT  
		Size: 94.6 MB (94561789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795b8eb3b88e011a111294222008afa895b85fdc742502293fc0302a5c877590`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b635a5edeb9e769aa20a3a906a5847c4b33bac82cff2864e90397623cb6b05a4`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322c44484fbe849f1f994086f161f93201e1462289b2e74b5c41f5853508a3e5`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:c9866d4f8cf32d1218269d07868dd45c2cc3074849892228a1dab3785504fce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6810070d113e95f5e0fbf36c3f8182a2f4a73cf50f68cfd70483f413003691c5`

```dockerfile
```

-	Layers:
	-	`sha256:5db15e3cf19d794a77f0f4bb60a1e4b529ee2494ec1beb6cb5a36777a497cc54`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 4.3 MB (4273213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cca0bb4e155bec127b905cef592a31d0d8a964dc554f396acecbe58676982c3`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76.0`

```console
$ docker pull ghost@sha256:37014cd0638a188e7282821c1239b954c9ddcdf44a055b966b8191ee85bdbbef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76.0` - linux; amd64

```console
$ docker pull ghost@sha256:61848c9dd686ed181b7dbfddbb5161181181ab226fd97046acd3cef6dae04a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249923808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85a88adb542f3f7ffacac167adf015a4d1f8759ac52033204546739e3182534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:13 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:58 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f37111331aa2d264f7b5c95ecfd42abc50186fab26057b9b8ad9d9289027761`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 1.2 MB (1248040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67de912fe1246ef1e592075495980fc12e5f11334cdea8237c357abf8a48187b`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 10.0 MB (10031389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2582c08f01c15ff4079849e5d5f6f1e3d3a59e7ed85bb83da6dc4f9504096c`  
		Last Modified: Wed, 11 Nov 2026 19:15:46 GMT  
		Size: 158.8 MB (158775234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7835ef71b115ac370019e3d38f8b7154d3180ed0bdb62e456b164c4e723edd22`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0` - unknown; unknown

```console
$ docker pull ghost@sha256:be6f48077e54e3cf3d99df2cf17c9381d851af1d123464600793713cfce64547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1c792b412f4cf2c3165fdb59489d5f6d5237a378db9f0b5d29471f816747ae`

```dockerfile
```

-	Layers:
	-	`sha256:de433100ac2cf6f4e34b2c3d532eb0ab4a81e3dfaafa69f2289ff407e16e29e7`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 4.5 MB (4500301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8780cbfc2e3c6315ed803804e4d113f5767636a12fdedb3aaa12bb4ab9f1f0e5`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76.0` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2cf8ef847711f91ea8d4b6d4a033327e0ea6edb5418cba595e4cb040433159bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247486863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3b9426f45a16f0f27dec38bbd0759a3c031d26ba1e5a8e444060f3d599a8ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 08:21:33 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 08:21:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:21:48 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:39 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e53114d797d7e1943850242da63f62beb64f7451cab23ec125c98919a6bcc`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b83f98ffeb84a41878c3c1b7fadd284c6382b857812a56ab6c821d3f44917b8`  
		Last Modified: Thu, 05 Nov 2026 08:22:02 GMT  
		Size: 44.6 MB (44578323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7491dbca47b03dc4f5b08775d176ad366d86112ef0ea41fe871a8c14f48c9222`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 1.7 MB (1713191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbdfd5255f131b87e556696b1113f9d6440609ab9bdcbf4da43b34118b1ff84`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f688d7a3b3967248491751b8a3a4818db14abd2b266de69671ed51aa4c6aa77`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 1.2 MB (1214880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb744a9ffc03b866e2350ff77214cb4d666db1c421563fd6730de60b8cb8e2cf`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 16.6 MB (16624263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f6e10f63fc841565a2e9780a0bd967774dad3c9b917d988a5651ef45c57c29`  
		Last Modified: Tue, 10 Nov 2026 21:14:32 GMT  
		Size: 159.4 MB (159390514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3147d77c04193dfc71b5f4c01a0542bbd218bc3801e70b4e58be758cae3c1a`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0` - unknown; unknown

```console
$ docker pull ghost@sha256:11c7efa66633bda0ff4f9ccc6a93e9f696dfc027c84cada23ffee5f16ef77f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4567682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3c499575fc88329729542230699c47ad65b797dcc26cb3ab8d6f2214c8f98c`

```dockerfile
```

-	Layers:
	-	`sha256:677a1bf5851116d25f5b85fd8343193d1b891521b6ed7ad31fd47712e9caf591`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 4.5 MB (4532856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d954a78a3634a24f6bcc73e29d411f9f24156fd01dee103543714fcf96f263`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76.0` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7f7ce0f8dcd7ba0aac8e758f13017e18d5474f6c55cd8e0623ca2f9f51fe604b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248220410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813db46c458a90d43c1461c2586dc2f7b194741cfba9d3099df33882c73fc636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:40 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:24 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:24 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:24 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d1c6d3ef439c866082cbea867d8f5778b39e4e94c5245f2ecbefdbfb775bc7`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 1.2 MB (1202025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee04b696f43b23a5d029c1094033b8ef7e8a1599891f21f9bc37b35cb839611`  
		Last Modified: Tue, 10 Nov 2026 21:14:11 GMT  
		Size: 10.0 MB (10031293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0d30d415603e4defe6f3f1c2748189239b0aca89162b6c286af186be791474`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 157.1 MB (157102515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf9bd66f761dfab7ecbe9d9012196b2b9a18836265b4b7b47eade2c1f17b4d6`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0` - unknown; unknown

```console
$ docker pull ghost@sha256:74b8b4ff640f8d00099c3b305c07bc6404055ad087775848f0a40202d12c1013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289066d31a3a255d74fb916d6d182d29b8551a3f43eadb897e8334337c6b9f43`

```dockerfile
```

-	Layers:
	-	`sha256:714c12375aa76414b9f0564bca14dd985790181bb8912847dd9617636c1822e0`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 4.5 MB (4499621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:171ca1352810bbf3a8bfcb20945108950fa7afbc124390262998da2afe8bdbfb`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76.0-alpine`

```console
$ docker pull ghost@sha256:471a5012d9ab392fe1622665f47dee4bdd12c5c0bbae1565b703f78b83c5e0bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76.0-alpine` - linux; amd64

```console
$ docker pull ghost@sha256:219b3c91a5f1616bac89a6ed15dd75a1d092866ccca97a88e13e91987739eca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231542621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3f4a22aaf349c05d92126c5f3628c7a1dcf346b10493d36e61418e428e03c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 11 Nov 2026 19:14:04 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:26 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:26 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:57e9d28ba8bf7c4dc9eb48ccf8ad3f56ec663569af48594863e1baa50c23d151`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 822.2 KB (822210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a83959a9fac0cac07f18a2d86d353bbd25dfc7bf60ecedb9218f1d82f08e64`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 904.1 KB (904069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fabda39e877f203b4f0d6aee684b3bc04dee5cbf5d3492ee22f58689e5d647`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 9.6 MB (9578997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3be2fcf7f650c4d4527a36d02cbb915e2ffe8c45dc8d1be4bb4ef7a333779b8`  
		Last Modified: Wed, 11 Nov 2026 19:15:06 GMT  
		Size: 159.0 MB (159013901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43cf33272f6802699b9dbe6478622ced7a1b910d74df0a17f60295b2e6ae3e2`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:0a1adbcadccc1149938e664e123678844ff2e82214b8a722078ad03ae381a935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd49d3191b1f6f6e72b6cfc9503ec3aa3104fd7568aa19f2b19db079f7bdc8cd`

```dockerfile
```

-	Layers:
	-	`sha256:c71e1884a6c85763e0646a0521a0fa30d7b5f58f06e0d41e0c598275bd752dad`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 2.3 MB (2290215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85f71c7ec9c334bbd3b6c5d6dde7540c4a15972b5901f5e159c4affbae05643c`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76.0-alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e05d641633f2d183fcf59667f635ca89191886e7590e222d66f268cf98674c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229830267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac096011dbbf5419ff0ef464317e4cd2c6815a442130727205cea01bbc5add24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 10 Nov 2026 21:13:17 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:13:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6d824f8a8f40aac1b2bb12a6e20c33b2987e01f1617a62605f5f7ba449be4faf`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 891.2 KB (891202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8afa22447ddb6c06f91a3039eac933de77e4df3aa84103c19d8bc838cf9837a3`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 857.7 KB (857683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e821d147887ab8abd6211fcc451792920d8cad0b18ecc452ff169d38cba96cc5`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 9.6 MB (9579659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda7ee672db7e2116f667738af2e916cd2cd419887215b617094a2101296049f`  
		Last Modified: Tue, 10 Nov 2026 21:14:31 GMT  
		Size: 157.5 MB (157512695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c30c142f2bfc5857c6063294c656d04dc84d669392dfaa4d8abc96107c03d3`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:3c36f4ec3b30f8f2f57a2a3b4f9554a4de47d2aea76098a142bc05b69817c3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2322796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd75bcfadf79f571cb1325187620965b771410a093b2943056957354cebd86c3`

```dockerfile
```

-	Layers:
	-	`sha256:36d16426b51001bd5cdd531dc588cf09b0b8ee6f6bd9607f1a8edd0133eedb49`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 2.3 MB (2288690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fc3e6e7083e69b29ad23e3e516aa3942699a7a1d30f779c5d004f1222c7fd7c`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76.0-alpine3.23`

```console
$ docker pull ghost@sha256:471a5012d9ab392fe1622665f47dee4bdd12c5c0bbae1565b703f78b83c5e0bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76.0-alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:219b3c91a5f1616bac89a6ed15dd75a1d092866ccca97a88e13e91987739eca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231542621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3f4a22aaf349c05d92126c5f3628c7a1dcf346b10493d36e61418e428e03c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 11 Nov 2026 19:14:04 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:26 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:26 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:57e9d28ba8bf7c4dc9eb48ccf8ad3f56ec663569af48594863e1baa50c23d151`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 822.2 KB (822210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a83959a9fac0cac07f18a2d86d353bbd25dfc7bf60ecedb9218f1d82f08e64`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 904.1 KB (904069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fabda39e877f203b4f0d6aee684b3bc04dee5cbf5d3492ee22f58689e5d647`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 9.6 MB (9578997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3be2fcf7f650c4d4527a36d02cbb915e2ffe8c45dc8d1be4bb4ef7a333779b8`  
		Last Modified: Wed, 11 Nov 2026 19:15:06 GMT  
		Size: 159.0 MB (159013901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43cf33272f6802699b9dbe6478622ced7a1b910d74df0a17f60295b2e6ae3e2`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:0a1adbcadccc1149938e664e123678844ff2e82214b8a722078ad03ae381a935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd49d3191b1f6f6e72b6cfc9503ec3aa3104fd7568aa19f2b19db079f7bdc8cd`

```dockerfile
```

-	Layers:
	-	`sha256:c71e1884a6c85763e0646a0521a0fa30d7b5f58f06e0d41e0c598275bd752dad`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 2.3 MB (2290215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85f71c7ec9c334bbd3b6c5d6dde7540c4a15972b5901f5e159c4affbae05643c`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76.0-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e05d641633f2d183fcf59667f635ca89191886e7590e222d66f268cf98674c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229830267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac096011dbbf5419ff0ef464317e4cd2c6815a442130727205cea01bbc5add24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 10 Nov 2026 21:13:17 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:13:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6d824f8a8f40aac1b2bb12a6e20c33b2987e01f1617a62605f5f7ba449be4faf`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 891.2 KB (891202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8afa22447ddb6c06f91a3039eac933de77e4df3aa84103c19d8bc838cf9837a3`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 857.7 KB (857683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e821d147887ab8abd6211fcc451792920d8cad0b18ecc452ff169d38cba96cc5`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 9.6 MB (9579659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda7ee672db7e2116f667738af2e916cd2cd419887215b617094a2101296049f`  
		Last Modified: Tue, 10 Nov 2026 21:14:31 GMT  
		Size: 157.5 MB (157512695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c30c142f2bfc5857c6063294c656d04dc84d669392dfaa4d8abc96107c03d3`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:3c36f4ec3b30f8f2f57a2a3b4f9554a4de47d2aea76098a142bc05b69817c3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2322796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd75bcfadf79f571cb1325187620965b771410a093b2943056957354cebd86c3`

```dockerfile
```

-	Layers:
	-	`sha256:36d16426b51001bd5cdd531dc588cf09b0b8ee6f6bd9607f1a8edd0133eedb49`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 2.3 MB (2288690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fc3e6e7083e69b29ad23e3e516aa3942699a7a1d30f779c5d004f1222c7fd7c`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76.0-bookworm`

```console
$ docker pull ghost@sha256:37014cd0638a188e7282821c1239b954c9ddcdf44a055b966b8191ee85bdbbef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76.0-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:61848c9dd686ed181b7dbfddbb5161181181ab226fd97046acd3cef6dae04a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249923808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85a88adb542f3f7ffacac167adf015a4d1f8759ac52033204546739e3182534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:13 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:58 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f37111331aa2d264f7b5c95ecfd42abc50186fab26057b9b8ad9d9289027761`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 1.2 MB (1248040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67de912fe1246ef1e592075495980fc12e5f11334cdea8237c357abf8a48187b`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 10.0 MB (10031389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2582c08f01c15ff4079849e5d5f6f1e3d3a59e7ed85bb83da6dc4f9504096c`  
		Last Modified: Wed, 11 Nov 2026 19:15:46 GMT  
		Size: 158.8 MB (158775234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7835ef71b115ac370019e3d38f8b7154d3180ed0bdb62e456b164c4e723edd22`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:be6f48077e54e3cf3d99df2cf17c9381d851af1d123464600793713cfce64547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1c792b412f4cf2c3165fdb59489d5f6d5237a378db9f0b5d29471f816747ae`

```dockerfile
```

-	Layers:
	-	`sha256:de433100ac2cf6f4e34b2c3d532eb0ab4a81e3dfaafa69f2289ff407e16e29e7`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 4.5 MB (4500301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8780cbfc2e3c6315ed803804e4d113f5767636a12fdedb3aaa12bb4ab9f1f0e5`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76.0-bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2cf8ef847711f91ea8d4b6d4a033327e0ea6edb5418cba595e4cb040433159bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247486863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3b9426f45a16f0f27dec38bbd0759a3c031d26ba1e5a8e444060f3d599a8ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 08:21:33 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 08:21:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:21:48 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:39 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e53114d797d7e1943850242da63f62beb64f7451cab23ec125c98919a6bcc`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b83f98ffeb84a41878c3c1b7fadd284c6382b857812a56ab6c821d3f44917b8`  
		Last Modified: Thu, 05 Nov 2026 08:22:02 GMT  
		Size: 44.6 MB (44578323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7491dbca47b03dc4f5b08775d176ad366d86112ef0ea41fe871a8c14f48c9222`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 1.7 MB (1713191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbdfd5255f131b87e556696b1113f9d6440609ab9bdcbf4da43b34118b1ff84`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f688d7a3b3967248491751b8a3a4818db14abd2b266de69671ed51aa4c6aa77`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 1.2 MB (1214880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb744a9ffc03b866e2350ff77214cb4d666db1c421563fd6730de60b8cb8e2cf`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 16.6 MB (16624263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f6e10f63fc841565a2e9780a0bd967774dad3c9b917d988a5651ef45c57c29`  
		Last Modified: Tue, 10 Nov 2026 21:14:32 GMT  
		Size: 159.4 MB (159390514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3147d77c04193dfc71b5f4c01a0542bbd218bc3801e70b4e58be758cae3c1a`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:11c7efa66633bda0ff4f9ccc6a93e9f696dfc027c84cada23ffee5f16ef77f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4567682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3c499575fc88329729542230699c47ad65b797dcc26cb3ab8d6f2214c8f98c`

```dockerfile
```

-	Layers:
	-	`sha256:677a1bf5851116d25f5b85fd8343193d1b891521b6ed7ad31fd47712e9caf591`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 4.5 MB (4532856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d954a78a3634a24f6bcc73e29d411f9f24156fd01dee103543714fcf96f263`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7f7ce0f8dcd7ba0aac8e758f13017e18d5474f6c55cd8e0623ca2f9f51fe604b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248220410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813db46c458a90d43c1461c2586dc2f7b194741cfba9d3099df33882c73fc636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:40 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:24 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:24 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:24 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d1c6d3ef439c866082cbea867d8f5778b39e4e94c5245f2ecbefdbfb775bc7`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 1.2 MB (1202025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee04b696f43b23a5d029c1094033b8ef7e8a1599891f21f9bc37b35cb839611`  
		Last Modified: Tue, 10 Nov 2026 21:14:11 GMT  
		Size: 10.0 MB (10031293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0d30d415603e4defe6f3f1c2748189239b0aca89162b6c286af186be791474`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 157.1 MB (157102515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf9bd66f761dfab7ecbe9d9012196b2b9a18836265b4b7b47eade2c1f17b4d6`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:74b8b4ff640f8d00099c3b305c07bc6404055ad087775848f0a40202d12c1013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289066d31a3a255d74fb916d6d182d29b8551a3f43eadb897e8334337c6b9f43`

```dockerfile
```

-	Layers:
	-	`sha256:714c12375aa76414b9f0564bca14dd985790181bb8912847dd9617636c1822e0`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 4.5 MB (4499621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:171ca1352810bbf3a8bfcb20945108950fa7afbc124390262998da2afe8bdbfb`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76.0-next`

```console
$ docker pull ghost@sha256:e2c5ec6bc9a062811d71a8baa1d4abd32b8ec24e899c7d23433995aa70f231f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76.0-next` - linux; amd64

```console
$ docker pull ghost@sha256:5d5d0304578ee615eb960ca2e415326d857352f95ba39b6c544c749cf482c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177481827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69caa1553d46bc58beaee8aa4b16e9760b749aa13ae2749e311ff900d859563a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Wed, 11 Nov 2026 19:14:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
WORKDIR /home/ghost
# Wed, 11 Nov 2026 19:14:36 GMT
VOLUME [/home/ghost/content]
# Wed, 11 Nov 2026 19:14:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:36 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:36 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91b521b14237e750217469e795fcd6eda0ecb66d56485d3505c2c5adc1df688`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 MB (1248029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d8ec91525147b9fe26cefeafb3a6ed7cc6435b37794001bbf3d1019d3681c8`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e42c0f42eb006a7ef0b12ece1b628079935a88fdd44c1d4655ac6932e13918c`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 96.4 MB (96361604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9188bdbcefdc61304a74d8729b8b55ddd1debb56074197a43dfd255f3fb80`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849f1ff0edce5cbff37afddeba7712cef06e1c8726313abf559e1b7722bd496`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1704cdd9b379bcadbe267b46e3f8c1cdcfdcc617255bac09888efff4453e5f`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-next` - unknown; unknown

```console
$ docker pull ghost@sha256:f4ad60374654f3557fbfa327dd2583244f087f451a576ebf5d43e30f4bd89e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ee4881266f7869bb818e9689f83980ed4aa8c9eababec7a566c8bef2d778b9`

```dockerfile
```

-	Layers:
	-	`sha256:d02d7e4d4c1404f7dacdd5fb6ac52e6c44952ba084e5aef01c6439fea19e9639`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 4.3 MB (4273635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81215f57d74f9254b33394b214e2c978a481e58c311902319ae79c6d77616e0d`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76.0-next` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b2f9a62b28f12aaec4a4f6a5dbdaa049740798b95a71447d540abeba91eedb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175651495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec0ce91517d718552807eab739030ba9aba24888486e0563eb3380829aaa68e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:13:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Tue, 10 Nov 2026 21:13:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
WORKDIR /home/ghost
# Tue, 10 Nov 2026 21:13:48 GMT
VOLUME [/home/ghost/content]
# Tue, 10 Nov 2026 21:13:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:48 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:48 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7fac24b400089ae4cb16eceea43dc929d6be5ecf904f378ae0a798778e5a17`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 MB (1202072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f32e180bc50706bf5696bb7240bea682f0b13343cc7789b87c081cb8b861294`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d70e2620206d6eda5291057edadbb0e07d2c467c327adb639140a34ae8c5f`  
		Last Modified: Tue, 10 Nov 2026 21:14:17 GMT  
		Size: 94.6 MB (94561789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795b8eb3b88e011a111294222008afa895b85fdc742502293fc0302a5c877590`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b635a5edeb9e769aa20a3a906a5847c4b33bac82cff2864e90397623cb6b05a4`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322c44484fbe849f1f994086f161f93201e1462289b2e74b5c41f5853508a3e5`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-next` - unknown; unknown

```console
$ docker pull ghost@sha256:c9866d4f8cf32d1218269d07868dd45c2cc3074849892228a1dab3785504fce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6810070d113e95f5e0fbf36c3f8182a2f4a73cf50f68cfd70483f413003691c5`

```dockerfile
```

-	Layers:
	-	`sha256:5db15e3cf19d794a77f0f4bb60a1e4b529ee2494ec1beb6cb5a36777a497cc54`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 4.3 MB (4273213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cca0bb4e155bec127b905cef592a31d0d8a964dc554f396acecbe58676982c3`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:6.76.0-next-alpine`

```console
$ docker pull ghost@sha256:8c64751fc43a8eb79b8f5d1011a54d781c137f2ea7bbd007a805ab096eaa7af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76.0-next-alpine` - linux; amd64

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

### `ghost:6.76.0-next-alpine` - unknown; unknown

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

### `ghost:6.76.0-next-alpine` - linux; arm64 variant v8

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

### `ghost:6.76.0-next-alpine` - unknown; unknown

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

## `ghost:6.76.0-next-alpine3.23`

```console
$ docker pull ghost@sha256:8c64751fc43a8eb79b8f5d1011a54d781c137f2ea7bbd007a805ab096eaa7af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76.0-next-alpine3.23` - linux; amd64

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

### `ghost:6.76.0-next-alpine3.23` - unknown; unknown

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

### `ghost:6.76.0-next-alpine3.23` - linux; arm64 variant v8

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

### `ghost:6.76.0-next-alpine3.23` - unknown; unknown

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

## `ghost:6.76.0-next-bookworm`

```console
$ docker pull ghost@sha256:e2c5ec6bc9a062811d71a8baa1d4abd32b8ec24e899c7d23433995aa70f231f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:6.76.0-next-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:5d5d0304578ee615eb960ca2e415326d857352f95ba39b6c544c749cf482c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177481827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69caa1553d46bc58beaee8aa4b16e9760b749aa13ae2749e311ff900d859563a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Wed, 11 Nov 2026 19:14:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
WORKDIR /home/ghost
# Wed, 11 Nov 2026 19:14:36 GMT
VOLUME [/home/ghost/content]
# Wed, 11 Nov 2026 19:14:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:36 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:36 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91b521b14237e750217469e795fcd6eda0ecb66d56485d3505c2c5adc1df688`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 MB (1248029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d8ec91525147b9fe26cefeafb3a6ed7cc6435b37794001bbf3d1019d3681c8`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e42c0f42eb006a7ef0b12ece1b628079935a88fdd44c1d4655ac6932e13918c`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 96.4 MB (96361604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9188bdbcefdc61304a74d8729b8b55ddd1debb56074197a43dfd255f3fb80`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849f1ff0edce5cbff37afddeba7712cef06e1c8726313abf559e1b7722bd496`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1704cdd9b379bcadbe267b46e3f8c1cdcfdcc617255bac09888efff4453e5f`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:f4ad60374654f3557fbfa327dd2583244f087f451a576ebf5d43e30f4bd89e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ee4881266f7869bb818e9689f83980ed4aa8c9eababec7a566c8bef2d778b9`

```dockerfile
```

-	Layers:
	-	`sha256:d02d7e4d4c1404f7dacdd5fb6ac52e6c44952ba084e5aef01c6439fea19e9639`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 4.3 MB (4273635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81215f57d74f9254b33394b214e2c978a481e58c311902319ae79c6d77616e0d`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:6.76.0-next-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b2f9a62b28f12aaec4a4f6a5dbdaa049740798b95a71447d540abeba91eedb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175651495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec0ce91517d718552807eab739030ba9aba24888486e0563eb3380829aaa68e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:13:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Tue, 10 Nov 2026 21:13:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
WORKDIR /home/ghost
# Tue, 10 Nov 2026 21:13:48 GMT
VOLUME [/home/ghost/content]
# Tue, 10 Nov 2026 21:13:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:48 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:48 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7fac24b400089ae4cb16eceea43dc929d6be5ecf904f378ae0a798778e5a17`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 MB (1202072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f32e180bc50706bf5696bb7240bea682f0b13343cc7789b87c081cb8b861294`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d70e2620206d6eda5291057edadbb0e07d2c467c327adb639140a34ae8c5f`  
		Last Modified: Tue, 10 Nov 2026 21:14:17 GMT  
		Size: 94.6 MB (94561789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795b8eb3b88e011a111294222008afa895b85fdc742502293fc0302a5c877590`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b635a5edeb9e769aa20a3a906a5847c4b33bac82cff2864e90397623cb6b05a4`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322c44484fbe849f1f994086f161f93201e1462289b2e74b5c41f5853508a3e5`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:6.76.0-next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:c9866d4f8cf32d1218269d07868dd45c2cc3074849892228a1dab3785504fce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6810070d113e95f5e0fbf36c3f8182a2f4a73cf50f68cfd70483f413003691c5`

```dockerfile
```

-	Layers:
	-	`sha256:5db15e3cf19d794a77f0f4bb60a1e4b529ee2494ec1beb6cb5a36777a497cc54`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 4.3 MB (4273213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cca0bb4e155bec127b905cef592a31d0d8a964dc554f396acecbe58676982c3`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:alpine`

```console
$ docker pull ghost@sha256:471a5012d9ab392fe1622665f47dee4bdd12c5c0bbae1565b703f78b83c5e0bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:alpine` - linux; amd64

```console
$ docker pull ghost@sha256:219b3c91a5f1616bac89a6ed15dd75a1d092866ccca97a88e13e91987739eca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231542621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3f4a22aaf349c05d92126c5f3628c7a1dcf346b10493d36e61418e428e03c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 11 Nov 2026 19:14:04 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:26 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:26 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:57e9d28ba8bf7c4dc9eb48ccf8ad3f56ec663569af48594863e1baa50c23d151`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 822.2 KB (822210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a83959a9fac0cac07f18a2d86d353bbd25dfc7bf60ecedb9218f1d82f08e64`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 904.1 KB (904069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fabda39e877f203b4f0d6aee684b3bc04dee5cbf5d3492ee22f58689e5d647`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 9.6 MB (9578997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3be2fcf7f650c4d4527a36d02cbb915e2ffe8c45dc8d1be4bb4ef7a333779b8`  
		Last Modified: Wed, 11 Nov 2026 19:15:06 GMT  
		Size: 159.0 MB (159013901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43cf33272f6802699b9dbe6478622ced7a1b910d74df0a17f60295b2e6ae3e2`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:0a1adbcadccc1149938e664e123678844ff2e82214b8a722078ad03ae381a935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd49d3191b1f6f6e72b6cfc9503ec3aa3104fd7568aa19f2b19db079f7bdc8cd`

```dockerfile
```

-	Layers:
	-	`sha256:c71e1884a6c85763e0646a0521a0fa30d7b5f58f06e0d41e0c598275bd752dad`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 2.3 MB (2290215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85f71c7ec9c334bbd3b6c5d6dde7540c4a15972b5901f5e159c4affbae05643c`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:alpine` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e05d641633f2d183fcf59667f635ca89191886e7590e222d66f268cf98674c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229830267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac096011dbbf5419ff0ef464317e4cd2c6815a442130727205cea01bbc5add24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 10 Nov 2026 21:13:17 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:13:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6d824f8a8f40aac1b2bb12a6e20c33b2987e01f1617a62605f5f7ba449be4faf`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 891.2 KB (891202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8afa22447ddb6c06f91a3039eac933de77e4df3aa84103c19d8bc838cf9837a3`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 857.7 KB (857683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e821d147887ab8abd6211fcc451792920d8cad0b18ecc452ff169d38cba96cc5`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 9.6 MB (9579659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda7ee672db7e2116f667738af2e916cd2cd419887215b617094a2101296049f`  
		Last Modified: Tue, 10 Nov 2026 21:14:31 GMT  
		Size: 157.5 MB (157512695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c30c142f2bfc5857c6063294c656d04dc84d669392dfaa4d8abc96107c03d3`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine` - unknown; unknown

```console
$ docker pull ghost@sha256:3c36f4ec3b30f8f2f57a2a3b4f9554a4de47d2aea76098a142bc05b69817c3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2322796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd75bcfadf79f571cb1325187620965b771410a093b2943056957354cebd86c3`

```dockerfile
```

-	Layers:
	-	`sha256:36d16426b51001bd5cdd531dc588cf09b0b8ee6f6bd9607f1a8edd0133eedb49`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 2.3 MB (2288690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fc3e6e7083e69b29ad23e3e516aa3942699a7a1d30f779c5d004f1222c7fd7c`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:alpine3.23`

```console
$ docker pull ghost@sha256:471a5012d9ab392fe1622665f47dee4bdd12c5c0bbae1565b703f78b83c5e0bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:alpine3.23` - linux; amd64

```console
$ docker pull ghost@sha256:219b3c91a5f1616bac89a6ed15dd75a1d092866ccca97a88e13e91987739eca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231542621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3f4a22aaf349c05d92126c5f3628c7a1dcf346b10493d36e61418e428e03c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Wed, 11 Nov 2026 19:14:04 GMT
RUN apk add --no-cache 		bash # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:07 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:07 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:10 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:26 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:26 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:57e9d28ba8bf7c4dc9eb48ccf8ad3f56ec663569af48594863e1baa50c23d151`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 822.2 KB (822210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a83959a9fac0cac07f18a2d86d353bbd25dfc7bf60ecedb9218f1d82f08e64`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 904.1 KB (904069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fabda39e877f203b4f0d6aee684b3bc04dee5cbf5d3492ee22f58689e5d647`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 9.6 MB (9578997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3be2fcf7f650c4d4527a36d02cbb915e2ffe8c45dc8d1be4bb4ef7a333779b8`  
		Last Modified: Wed, 11 Nov 2026 19:15:06 GMT  
		Size: 159.0 MB (159013901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43cf33272f6802699b9dbe6478622ced7a1b910d74df0a17f60295b2e6ae3e2`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:0a1adbcadccc1149938e664e123678844ff2e82214b8a722078ad03ae381a935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd49d3191b1f6f6e72b6cfc9503ec3aa3104fd7568aa19f2b19db079f7bdc8cd`

```dockerfile
```

-	Layers:
	-	`sha256:c71e1884a6c85763e0646a0521a0fa30d7b5f58f06e0d41e0c598275bd752dad`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 2.3 MB (2290215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85f71c7ec9c334bbd3b6c5d6dde7540c4a15972b5901f5e159c4affbae05643c`  
		Last Modified: Wed, 11 Nov 2026 19:15:02 GMT  
		Size: 33.9 KB (33909 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:e05d641633f2d183fcf59667f635ca89191886e7590e222d66f268cf98674c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229830267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac096011dbbf5419ff0ef464317e4cd2c6815a442130727205cea01bbc5add24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

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
# Tue, 10 Nov 2026 21:13:17 GMT
RUN apk add --no-cache 		bash # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:20 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:13:20 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:13:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .ghost-cli-deps git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apk del --no-network .ghost-cli-deps; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:13:25 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		apk add --no-cache --virtual .build-deps-ghost g++ linux-headers make python3 py3-setuptools; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apk del --no-network .build-deps-ghost; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
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
	-	`sha256:6d824f8a8f40aac1b2bb12a6e20c33b2987e01f1617a62605f5f7ba449be4faf`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 891.2 KB (891202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8afa22447ddb6c06f91a3039eac933de77e4df3aa84103c19d8bc838cf9837a3`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 857.7 KB (857683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e821d147887ab8abd6211fcc451792920d8cad0b18ecc452ff169d38cba96cc5`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 9.6 MB (9579659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda7ee672db7e2116f667738af2e916cd2cd419887215b617094a2101296049f`  
		Last Modified: Tue, 10 Nov 2026 21:14:31 GMT  
		Size: 157.5 MB (157512695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c30c142f2bfc5857c6063294c656d04dc84d669392dfaa4d8abc96107c03d3`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:alpine3.23` - unknown; unknown

```console
$ docker pull ghost@sha256:3c36f4ec3b30f8f2f57a2a3b4f9554a4de47d2aea76098a142bc05b69817c3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2322796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd75bcfadf79f571cb1325187620965b771410a093b2943056957354cebd86c3`

```dockerfile
```

-	Layers:
	-	`sha256:36d16426b51001bd5cdd531dc588cf09b0b8ee6f6bd9607f1a8edd0133eedb49`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 2.3 MB (2288690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fc3e6e7083e69b29ad23e3e516aa3942699a7a1d30f779c5d004f1222c7fd7c`  
		Last Modified: Tue, 10 Nov 2026 21:14:27 GMT  
		Size: 34.1 KB (34106 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:bookworm`

```console
$ docker pull ghost@sha256:37014cd0638a188e7282821c1239b954c9ddcdf44a055b966b8191ee85bdbbef
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
$ docker pull ghost@sha256:61848c9dd686ed181b7dbfddbb5161181181ab226fd97046acd3cef6dae04a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249923808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85a88adb542f3f7ffacac167adf015a4d1f8759ac52033204546739e3182534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:13 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:58 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f37111331aa2d264f7b5c95ecfd42abc50186fab26057b9b8ad9d9289027761`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 1.2 MB (1248040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67de912fe1246ef1e592075495980fc12e5f11334cdea8237c357abf8a48187b`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 10.0 MB (10031389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2582c08f01c15ff4079849e5d5f6f1e3d3a59e7ed85bb83da6dc4f9504096c`  
		Last Modified: Wed, 11 Nov 2026 19:15:46 GMT  
		Size: 158.8 MB (158775234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7835ef71b115ac370019e3d38f8b7154d3180ed0bdb62e456b164c4e723edd22`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:be6f48077e54e3cf3d99df2cf17c9381d851af1d123464600793713cfce64547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1c792b412f4cf2c3165fdb59489d5f6d5237a378db9f0b5d29471f816747ae`

```dockerfile
```

-	Layers:
	-	`sha256:de433100ac2cf6f4e34b2c3d532eb0ab4a81e3dfaafa69f2289ff407e16e29e7`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 4.5 MB (4500301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8780cbfc2e3c6315ed803804e4d113f5767636a12fdedb3aaa12bb4ab9f1f0e5`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2cf8ef847711f91ea8d4b6d4a033327e0ea6edb5418cba595e4cb040433159bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247486863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3b9426f45a16f0f27dec38bbd0759a3c031d26ba1e5a8e444060f3d599a8ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 08:21:33 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 08:21:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:21:48 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:39 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e53114d797d7e1943850242da63f62beb64f7451cab23ec125c98919a6bcc`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b83f98ffeb84a41878c3c1b7fadd284c6382b857812a56ab6c821d3f44917b8`  
		Last Modified: Thu, 05 Nov 2026 08:22:02 GMT  
		Size: 44.6 MB (44578323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7491dbca47b03dc4f5b08775d176ad366d86112ef0ea41fe871a8c14f48c9222`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 1.7 MB (1713191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbdfd5255f131b87e556696b1113f9d6440609ab9bdcbf4da43b34118b1ff84`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f688d7a3b3967248491751b8a3a4818db14abd2b266de69671ed51aa4c6aa77`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 1.2 MB (1214880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb744a9ffc03b866e2350ff77214cb4d666db1c421563fd6730de60b8cb8e2cf`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 16.6 MB (16624263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f6e10f63fc841565a2e9780a0bd967774dad3c9b917d988a5651ef45c57c29`  
		Last Modified: Tue, 10 Nov 2026 21:14:32 GMT  
		Size: 159.4 MB (159390514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3147d77c04193dfc71b5f4c01a0542bbd218bc3801e70b4e58be758cae3c1a`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:11c7efa66633bda0ff4f9ccc6a93e9f696dfc027c84cada23ffee5f16ef77f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4567682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3c499575fc88329729542230699c47ad65b797dcc26cb3ab8d6f2214c8f98c`

```dockerfile
```

-	Layers:
	-	`sha256:677a1bf5851116d25f5b85fd8343193d1b891521b6ed7ad31fd47712e9caf591`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 4.5 MB (4532856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d954a78a3634a24f6bcc73e29d411f9f24156fd01dee103543714fcf96f263`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7f7ce0f8dcd7ba0aac8e758f13017e18d5474f6c55cd8e0623ca2f9f51fe604b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248220410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813db46c458a90d43c1461c2586dc2f7b194741cfba9d3099df33882c73fc636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:40 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:24 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:24 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:24 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d1c6d3ef439c866082cbea867d8f5778b39e4e94c5245f2ecbefdbfb775bc7`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 1.2 MB (1202025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee04b696f43b23a5d029c1094033b8ef7e8a1599891f21f9bc37b35cb839611`  
		Last Modified: Tue, 10 Nov 2026 21:14:11 GMT  
		Size: 10.0 MB (10031293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0d30d415603e4defe6f3f1c2748189239b0aca89162b6c286af186be791474`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 157.1 MB (157102515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf9bd66f761dfab7ecbe9d9012196b2b9a18836265b4b7b47eade2c1f17b4d6`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:74b8b4ff640f8d00099c3b305c07bc6404055ad087775848f0a40202d12c1013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289066d31a3a255d74fb916d6d182d29b8551a3f43eadb897e8334337c6b9f43`

```dockerfile
```

-	Layers:
	-	`sha256:714c12375aa76414b9f0564bca14dd985790181bb8912847dd9617636c1822e0`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 4.5 MB (4499621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:171ca1352810bbf3a8bfcb20945108950fa7afbc124390262998da2afe8bdbfb`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:latest`

```console
$ docker pull ghost@sha256:37014cd0638a188e7282821c1239b954c9ddcdf44a055b966b8191ee85bdbbef
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
$ docker pull ghost@sha256:61848c9dd686ed181b7dbfddbb5161181181ab226fd97046acd3cef6dae04a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249923808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85a88adb542f3f7ffacac167adf015a4d1f8759ac52033204546739e3182534`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:13 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Wed, 11 Nov 2026 19:14:13 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Wed, 11 Nov 2026 19:14:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Wed, 11 Nov 2026 19:14:26 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:58 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
WORKDIR /var/lib/ghost
# Wed, 11 Nov 2026 19:14:58 GMT
VOLUME [/var/lib/ghost/content]
# Wed, 11 Nov 2026 19:14:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:58 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:58 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f37111331aa2d264f7b5c95ecfd42abc50186fab26057b9b8ad9d9289027761`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 1.2 MB (1248040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67de912fe1246ef1e592075495980fc12e5f11334cdea8237c357abf8a48187b`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 10.0 MB (10031389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2582c08f01c15ff4079849e5d5f6f1e3d3a59e7ed85bb83da6dc4f9504096c`  
		Last Modified: Wed, 11 Nov 2026 19:15:46 GMT  
		Size: 158.8 MB (158775234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7835ef71b115ac370019e3d38f8b7154d3180ed0bdb62e456b164c4e723edd22`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:be6f48077e54e3cf3d99df2cf17c9381d851af1d123464600793713cfce64547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1c792b412f4cf2c3165fdb59489d5f6d5237a378db9f0b5d29471f816747ae`

```dockerfile
```

-	Layers:
	-	`sha256:de433100ac2cf6f4e34b2c3d532eb0ab4a81e3dfaafa69f2289ff407e16e29e7`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 4.5 MB (4500301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8780cbfc2e3c6315ed803804e4d113f5767636a12fdedb3aaa12bb4ab9f1f0e5`  
		Last Modified: Wed, 11 Nov 2026 19:15:42 GMT  
		Size: 34.7 KB (34688 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:latest` - linux; arm variant v7

```console
$ docker pull ghost@sha256:2cf8ef847711f91ea8d4b6d4a033327e0ea6edb5418cba595e4cb040433159bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247486863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3b9426f45a16f0f27dec38bbd0759a3c031d26ba1e5a8e444060f3d599a8ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 08:21:33 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:33 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 08:21:48 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:21:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:21:48 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:39 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:39 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:58 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:42 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:43 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:43 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:43 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e53114d797d7e1943850242da63f62beb64f7451cab23ec125c98919a6bcc`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b83f98ffeb84a41878c3c1b7fadd284c6382b857812a56ab6c821d3f44917b8`  
		Last Modified: Thu, 05 Nov 2026 08:22:02 GMT  
		Size: 44.6 MB (44578323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7491dbca47b03dc4f5b08775d176ad366d86112ef0ea41fe871a8c14f48c9222`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 1.7 MB (1713191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbdfd5255f131b87e556696b1113f9d6440609ab9bdcbf4da43b34118b1ff84`  
		Last Modified: Thu, 05 Nov 2026 08:22:01 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f688d7a3b3967248491751b8a3a4818db14abd2b266de69671ed51aa4c6aa77`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 1.2 MB (1214880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb744a9ffc03b866e2350ff77214cb4d666db1c421563fd6730de60b8cb8e2cf`  
		Last Modified: Tue, 10 Nov 2026 21:14:29 GMT  
		Size: 16.6 MB (16624263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f6e10f63fc841565a2e9780a0bd967774dad3c9b917d988a5651ef45c57c29`  
		Last Modified: Tue, 10 Nov 2026 21:14:32 GMT  
		Size: 159.4 MB (159390514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3147d77c04193dfc71b5f4c01a0542bbd218bc3801e70b4e58be758cae3c1a`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:11c7efa66633bda0ff4f9ccc6a93e9f696dfc027c84cada23ffee5f16ef77f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4567682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3c499575fc88329729542230699c47ad65b797dcc26cb3ab8d6f2214c8f98c`

```dockerfile
```

-	Layers:
	-	`sha256:677a1bf5851116d25f5b85fd8343193d1b891521b6ed7ad31fd47712e9caf591`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 4.5 MB (4532856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d954a78a3634a24f6bcc73e29d411f9f24156fd01dee103543714fcf96f263`  
		Last Modified: Tue, 10 Nov 2026 21:14:28 GMT  
		Size: 34.8 KB (34826 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:latest` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:7f7ce0f8dcd7ba0aac8e758f13017e18d5474f6c55cd8e0623ca2f9f51fe604b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248220410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813db46c458a90d43c1461c2586dc2f7b194741cfba9d3099df33882c73fc636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:12:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:12:40 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_VERSION=1.34.1
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_SHA=3e98a8696fca1bb521f9cad633103f720d247d2a
# Tue, 10 Nov 2026 21:12:40 GMT
ENV GHOST_CLI_INSTALL=/usr/local/lib/ghost-cli
# Tue, 10 Nov 2026 21:12:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates git; 		if [ "$(node -p 'process.arch')" = 'arm' ]; then 		npm install -g 'pnpm@11.28.9'; 	else 		corepack enable; 	fi; 		export pnpm_config_pm_on_fail=ignore; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		mkdir -p "$GHOST_CLI_INSTALL"; 	cd "$GHOST_CLI_INSTALL"; 	git init --quiet .; 	git remote add origin https://github.com/TryGhost/Ghost-CLI.git; 	git fetch --quiet --depth 1 origin "$GHOST_CLI_SHA"; 	git checkout --quiet FETCH_HEAD; 	[ "$(node -p 'require("./package.json").version')" = "$GHOST_CLI_VERSION" ]; 		pnpm install --prod --frozen-lockfile; 		ln -s "$GHOST_CLI_INSTALL/bin/ghost" /usr/local/bin/ghost; 		rm -rf .git test .github; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		ghost --version # buildkit
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 10 Nov 2026 21:12:53 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:24 GMT
RUN set -eux; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		export pnpm_config_pm_on_fail=ignore; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends g++ make python3; 		gosu node ghost install "$GHOST_VERSION" --db mysql --dbhost mysql --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --no-prompt --ip '::' --port 2368 --url 'http://localhost:2368'; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 	gosu node node -e 'const fs = require("fs"); const f = "config.production.json"; const c = JSON.parse(fs.readFileSync(f)); c.createInDevelopmentTables = false; fs.writeFileSync(f, JSON.stringify(c, null, 2) + "\n");'; 		gosu node ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 	readlink -f "$GHOST_INSTALL/config.development.json"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"; 	chmod 1777 "$GHOST_CONTENT"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		gosu node pnpm store prune; 	gosu node npm cache clean --force; 	npm cache clean --force; 	rm -rf /home/node/.cache/node/corepack /home/node/.cache/node-gyp /home/node/.cache/pnpm; 		cd current; 	gosu node node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
WORKDIR /var/lib/ghost
# Tue, 10 Nov 2026 21:13:24 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 10 Nov 2026 21:13:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:24 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:24 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d1c6d3ef439c866082cbea867d8f5778b39e4e94c5245f2ecbefdbfb775bc7`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 1.2 MB (1202025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee04b696f43b23a5d029c1094033b8ef7e8a1599891f21f9bc37b35cb839611`  
		Last Modified: Tue, 10 Nov 2026 21:14:11 GMT  
		Size: 10.0 MB (10031293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0d30d415603e4defe6f3f1c2748189239b0aca89162b6c286af186be791474`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 157.1 MB (157102515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf9bd66f761dfab7ecbe9d9012196b2b9a18836265b4b7b47eade2c1f17b4d6`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:latest` - unknown; unknown

```console
$ docker pull ghost@sha256:74b8b4ff640f8d00099c3b305c07bc6404055ad087775848f0a40202d12c1013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4534491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289066d31a3a255d74fb916d6d182d29b8551a3f43eadb897e8334337c6b9f43`

```dockerfile
```

-	Layers:
	-	`sha256:714c12375aa76414b9f0564bca14dd985790181bb8912847dd9617636c1822e0`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 4.5 MB (4499621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:171ca1352810bbf3a8bfcb20945108950fa7afbc124390262998da2afe8bdbfb`  
		Last Modified: Tue, 10 Nov 2026 21:14:10 GMT  
		Size: 34.9 KB (34870 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:next`

```console
$ docker pull ghost@sha256:e2c5ec6bc9a062811d71a8baa1d4abd32b8ec24e899c7d23433995aa70f231f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next` - linux; amd64

```console
$ docker pull ghost@sha256:5d5d0304578ee615eb960ca2e415326d857352f95ba39b6c544c749cf482c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177481827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69caa1553d46bc58beaee8aa4b16e9760b749aa13ae2749e311ff900d859563a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Wed, 11 Nov 2026 19:14:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
WORKDIR /home/ghost
# Wed, 11 Nov 2026 19:14:36 GMT
VOLUME [/home/ghost/content]
# Wed, 11 Nov 2026 19:14:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:36 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:36 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91b521b14237e750217469e795fcd6eda0ecb66d56485d3505c2c5adc1df688`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 MB (1248029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d8ec91525147b9fe26cefeafb3a6ed7cc6435b37794001bbf3d1019d3681c8`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e42c0f42eb006a7ef0b12ece1b628079935a88fdd44c1d4655ac6932e13918c`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 96.4 MB (96361604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9188bdbcefdc61304a74d8729b8b55ddd1debb56074197a43dfd255f3fb80`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849f1ff0edce5cbff37afddeba7712cef06e1c8726313abf559e1b7722bd496`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1704cdd9b379bcadbe267b46e3f8c1cdcfdcc617255bac09888efff4453e5f`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next` - unknown; unknown

```console
$ docker pull ghost@sha256:f4ad60374654f3557fbfa327dd2583244f087f451a576ebf5d43e30f4bd89e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ee4881266f7869bb818e9689f83980ed4aa8c9eababec7a566c8bef2d778b9`

```dockerfile
```

-	Layers:
	-	`sha256:d02d7e4d4c1404f7dacdd5fb6ac52e6c44952ba084e5aef01c6439fea19e9639`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 4.3 MB (4273635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81215f57d74f9254b33394b214e2c978a481e58c311902319ae79c6d77616e0d`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b2f9a62b28f12aaec4a4f6a5dbdaa049740798b95a71447d540abeba91eedb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175651495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec0ce91517d718552807eab739030ba9aba24888486e0563eb3380829aaa68e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:13:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Tue, 10 Nov 2026 21:13:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
WORKDIR /home/ghost
# Tue, 10 Nov 2026 21:13:48 GMT
VOLUME [/home/ghost/content]
# Tue, 10 Nov 2026 21:13:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:48 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:48 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7fac24b400089ae4cb16eceea43dc929d6be5ecf904f378ae0a798778e5a17`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 MB (1202072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f32e180bc50706bf5696bb7240bea682f0b13343cc7789b87c081cb8b861294`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d70e2620206d6eda5291057edadbb0e07d2c467c327adb639140a34ae8c5f`  
		Last Modified: Tue, 10 Nov 2026 21:14:17 GMT  
		Size: 94.6 MB (94561789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795b8eb3b88e011a111294222008afa895b85fdc742502293fc0302a5c877590`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b635a5edeb9e769aa20a3a906a5847c4b33bac82cff2864e90397623cb6b05a4`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322c44484fbe849f1f994086f161f93201e1462289b2e74b5c41f5853508a3e5`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next` - unknown; unknown

```console
$ docker pull ghost@sha256:c9866d4f8cf32d1218269d07868dd45c2cc3074849892228a1dab3785504fce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6810070d113e95f5e0fbf36c3f8182a2f4a73cf50f68cfd70483f413003691c5`

```dockerfile
```

-	Layers:
	-	`sha256:5db15e3cf19d794a77f0f4bb60a1e4b529ee2494ec1beb6cb5a36777a497cc54`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 4.3 MB (4273213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cca0bb4e155bec127b905cef592a31d0d8a964dc554f396acecbe58676982c3`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json

## `ghost:next-alpine`

```console
$ docker pull ghost@sha256:8c64751fc43a8eb79b8f5d1011a54d781c137f2ea7bbd007a805ab096eaa7af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-alpine` - linux; amd64

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

### `ghost:next-alpine` - unknown; unknown

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

### `ghost:next-alpine` - linux; arm64 variant v8

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

### `ghost:next-alpine` - unknown; unknown

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

## `ghost:next-bookworm`

```console
$ docker pull ghost@sha256:e2c5ec6bc9a062811d71a8baa1d4abd32b8ec24e899c7d23433995aa70f231f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `ghost:next-bookworm` - linux; amd64

```console
$ docker pull ghost@sha256:5d5d0304578ee615eb960ca2e415326d857352f95ba39b6c544c749cf482c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177481827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69caa1553d46bc58beaee8aa4b16e9760b749aa13ae2749e311ff900d859563a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 11 Nov 2026 18:43:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV NODE_VERSION=22.23.5
# Wed, 11 Nov 2026 18:43:40 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:40 GMT
ENV YARN_VERSION=1.22.22
# Wed, 11 Nov 2026 18:43:57 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:43:57 GMT
CMD ["node"]
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Wed, 11 Nov 2026 19:14:14 GMT
ENV NODE_ENV=production
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_INSTALL=/home/ghost
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_VERSION=6.76.0
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Wed, 11 Nov 2026 19:14:14 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Wed, 11 Nov 2026 19:14:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
WORKDIR /home/ghost
# Wed, 11 Nov 2026 19:14:36 GMT
VOLUME [/home/ghost/content]
# Wed, 11 Nov 2026 19:14:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 19:14:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 19:14:36 GMT
EXPOSE map[2368/tcp:{}]
# Wed, 11 Nov 2026 19:14:36 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076cba098ace87d6950e8fa4cc530bfe59834eba28f30061e8526d6f00bf52c8`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4023204e5b4bcd551170279c40ff58285cc8ea87ddf9ff25cb3713e6ecda79`  
		Last Modified: Wed, 11 Nov 2026 18:44:12 GMT  
		Size: 49.9 MB (49903774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4e8910862263c3bad50c754fb555bbbb7661c41e35ba703ae082ec6749c175`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 1.7 MB (1713055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce880541c96dc730321857781d113e3c75c0cb383f9510300922762006d734e`  
		Last Modified: Wed, 11 Nov 2026 18:44:10 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91b521b14237e750217469e795fcd6eda0ecb66d56485d3505c2c5adc1df688`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 MB (1248029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d8ec91525147b9fe26cefeafb3a6ed7cc6435b37794001bbf3d1019d3681c8`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e42c0f42eb006a7ef0b12ece1b628079935a88fdd44c1d4655ac6932e13918c`  
		Last Modified: Wed, 11 Nov 2026 19:15:04 GMT  
		Size: 96.4 MB (96361604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9188bdbcefdc61304a74d8729b8b55ddd1debb56074197a43dfd255f3fb80`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b849f1ff0edce5cbff37afddeba7712cef06e1c8726313abf559e1b7722bd496`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 146.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1704cdd9b379bcadbe267b46e3f8c1cdcfdcc617255bac09888efff4453e5f`  
		Last Modified: Wed, 11 Nov 2026 19:15:03 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:f4ad60374654f3557fbfa327dd2583244f087f451a576ebf5d43e30f4bd89e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ee4881266f7869bb818e9689f83980ed4aa8c9eababec7a566c8bef2d778b9`

```dockerfile
```

-	Layers:
	-	`sha256:d02d7e4d4c1404f7dacdd5fb6ac52e6c44952ba084e5aef01c6439fea19e9639`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 4.3 MB (4273635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81215f57d74f9254b33394b214e2c978a481e58c311902319ae79c6d77616e0d`  
		Last Modified: Wed, 11 Nov 2026 19:15:01 GMT  
		Size: 37.0 KB (37008 bytes)  
		MIME: application/vnd.in-toto+json

### `ghost:next-bookworm` - linux; arm64 variant v8

```console
$ docker pull ghost@sha256:b2f9a62b28f12aaec4a4f6a5dbdaa049740798b95a71447d540abeba91eedb95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175651495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec0ce91517d718552807eab739030ba9aba24888486e0563eb3380829aaa68e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","index.js"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:45:38 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 07:45:58 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:58 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:12 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:12 GMT
CMD ["node"]
# Tue, 10 Nov 2026 21:13:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 10 Nov 2026 21:13:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates gnupg wget; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
RUN set -eux; 	deluser node; 	rm -rf /home/node; 	groupadd --gid 1000 ghost; 	useradd --uid 1000 --gid 1000 --home-dir /home/ghost --no-create-home --shell /bin/bash ghost # buildkit
# Tue, 10 Nov 2026 21:13:27 GMT
ENV NODE_ENV=production
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_INSTALL=/home/ghost
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_CONTENT=/home/ghost/content
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_VERSION=6.76.0
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_TARBALL=https://github.com/TryGhost/Ghost/releases/download/v6.76.0/ghost-6.76.0.tgz
# Tue, 10 Nov 2026 21:13:27 GMT
ENV GHOST_SHA256=12d70fdf11236dfbaba1259375a1ad223514d05bbca439d06180e33fd87fec5a
# Tue, 10 Nov 2026 21:13:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		corepack enable; 		mkdir -p "$GHOST_INSTALL"; 	chown ghost:ghost "$GHOST_INSTALL"; 	cd "$GHOST_INSTALL"; 		export XDG_CACHE_HOME=/tmp/xdg-cache XDG_DATA_HOME=/tmp/xdg-data; 		gosu ghost wget -O ghost.tgz "$GHOST_TARBALL"; 	echo "$GHOST_SHA256  ghost.tgz" | sha256sum -c -; 	gosu ghost tar --extract --file ghost.tgz; 	rm ghost.tgz; 		gosu ghost pnpm install --prod --frozen-lockfile; 		gosu ghost rm -rf "$GHOST_INSTALL/components"; 		gosu ghost node scripts/prune.mts "$GHOST_INSTALL" --profile=image; 		gosu ghost ln -s config.production.json "$GHOST_INSTALL/config.development.json"; 		gosu ghost mv "$GHOST_INSTALL/content" "$GHOST_INSTALL/content.orig"; 	gosu ghost mkdir -p "$GHOST_INSTALL/content"; 		rm -rf /opt/yarn-*; 	rm -rf /tmp/xdg-cache /tmp/xdg-data; 	npm cache clean --force; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-mark manual ca-certificates > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		node --version; 	gosu ghost node -e 'require("better-sqlite3"); if (!require("@tryghost/image-transform").canTransformFiles()) throw new Error("sharp not installed");' # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
COPY --chown=ghost:ghost config.production.json /home/ghost/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
RUN set -eux; 	chmod 1777 "$GHOST_CONTENT"; 	cd "$GHOST_INSTALL"; 	node -e 'JSON.parse(require("fs").readFileSync("config.production.json"))'; 	[ "$(readlink -f config.development.json)" = "$GHOST_INSTALL/config.production.json" ] # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
WORKDIR /home/ghost
# Tue, 10 Nov 2026 21:13:48 GMT
VOLUME [/home/ghost/content]
# Tue, 10 Nov 2026 21:13:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:13:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:13:48 GMT
EXPOSE map[2368/tcp:{}]
# Tue, 10 Nov 2026 21:13:48 GMT
CMD ["node" "index.js"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa61ef5c242c6db180a0ed0f502d6e39679ac09f0504e8b09b3ee02638eef0`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a044f3bd5c107a96a6d64e052a21386a8b883219b1506ba63e3a70c265825db1`  
		Last Modified: Thu, 05 Nov 2026 07:46:27 GMT  
		Size: 50.0 MB (50022840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ea1952272f50108555fdde5cf18afec7b199fbc4992dec9d1b4b8bb9c34899`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 1.7 MB (1713043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8da3bb2ce20e0a5667f244e4a830d3afec2840aafcb9136e258ac3deb5c9bc2`  
		Last Modified: Thu, 05 Nov 2026 07:46:26 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7fac24b400089ae4cb16eceea43dc929d6be5ecf904f378ae0a798778e5a17`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 MB (1202072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f32e180bc50706bf5696bb7240bea682f0b13343cc7789b87c081cb8b861294`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3d70e2620206d6eda5291057edadbb0e07d2c467c327adb639140a34ae8c5f`  
		Last Modified: Tue, 10 Nov 2026 21:14:17 GMT  
		Size: 94.6 MB (94561789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795b8eb3b88e011a111294222008afa895b85fdc742502293fc0302a5c877590`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b635a5edeb9e769aa20a3a906a5847c4b33bac82cff2864e90397623cb6b05a4`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322c44484fbe849f1f994086f161f93201e1462289b2e74b5c41f5853508a3e5`  
		Last Modified: Tue, 10 Nov 2026 21:14:16 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ghost:next-bookworm` - unknown; unknown

```console
$ docker pull ghost@sha256:c9866d4f8cf32d1218269d07868dd45c2cc3074849892228a1dab3785504fce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6810070d113e95f5e0fbf36c3f8182a2f4a73cf50f68cfd70483f413003691c5`

```dockerfile
```

-	Layers:
	-	`sha256:5db15e3cf19d794a77f0f4bb60a1e4b529ee2494ec1beb6cb5a36777a497cc54`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 4.3 MB (4273213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cca0bb4e155bec127b905cef592a31d0d8a964dc554f396acecbe58676982c3`  
		Last Modified: Tue, 10 Nov 2026 21:14:14 GMT  
		Size: 37.2 KB (37205 bytes)  
		MIME: application/vnd.in-toto+json
