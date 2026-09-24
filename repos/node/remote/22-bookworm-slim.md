## `node:22-bookworm-slim`

```console
$ docker pull node@sha256:43ac6c60b8f89723f746e8a92ce91abd5017e627ce1ddfe4238355d3a30b772c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `node:22-bookworm-slim` - linux; amd64

```console
$ docker pull node@sha256:25330af3531fb5e23318554a0aa911125b6e91b1b777edf7655501d207c067a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79792241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f8ba583a884279252779bbe221bf1ff2c61cf236cc973f8ca97676ae6d07f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

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

### `node:22-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:f8342d9106226d308a838e63e0cab94886b8ac0b6e7529f1d57f6fbee2db4f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2668763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df627dd917bcafa66e9bffa54a3a1cc3b7fc8eb5509848b52d358f3d83dc03ec`

```dockerfile
```

-	Layers:
	-	`sha256:cb27e1c60dff1778a251d502be735e8a9421206c4b25ce52ae2ca9c112221884`  
		Last Modified: Wed, 23 Sep 2026 21:10:38 GMT  
		Size: 2.6 MB (2642175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62d63e03d3914b0561e7045d9d260d0c97cb4a67d87739ddfc1fa4f706f627a3`  
		Last Modified: Wed, 23 Sep 2026 21:10:37 GMT  
		Size: 26.6 KB (26588 bytes)  
		MIME: application/vnd.in-toto+json

### `node:22-bookworm-slim` - linux; arm variant v7

```console
$ docker pull node@sha256:ab55e297a4ae34b33149bcbee3f7f43481aa684cb786ce778049dd8350355e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70189690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d624e9faa72b2d8367a7c286042d146c937d100fe9089168edb30c7dd6360d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

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

### `node:22-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:bbd0b1af2534a1c7680edfd12a1eb18a97483292f306f795617998767cc3a773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2674711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc036704c210fc270be91c90ebdb0d68f29271932f6721a82a62cb7dc9419879`

```dockerfile
```

-	Layers:
	-	`sha256:71a6d75a70949a956f0f497a8371d7c425b2340426b8b3fdbd62c2af46859064`  
		Last Modified: Wed, 23 Sep 2026 21:11:11 GMT  
		Size: 2.6 MB (2647985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:224c443bb88d314b82125355da70e533b817bcd5d25b60c382f06781ada735f3`  
		Last Modified: Wed, 23 Sep 2026 21:11:11 GMT  
		Size: 26.7 KB (26726 bytes)  
		MIME: application/vnd.in-toto+json

### `node:22-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:a0ddbc73510e98f5e824fd64266ffe1c2c343ba9cf260d95ca2985ad632a3f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79803972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78175922b1739c305f3832562c569a07cbc0005b39db6b97a4a3ac328b9fae94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

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

### `node:22-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:264154d3022c26a7d8b719c367ce4f3c4b35ac876eb006080a3fe5dc28367f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2669244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60d4db1389a9ecf5da94630c3df7a94dc1ec2b43a0bda1f7f7f0539c4c3c55b`

```dockerfile
```

-	Layers:
	-	`sha256:792bb61beb91a2d3fdda2dc36de8cf2fccd77e9ea0d5325c31bed97847408dfb`  
		Last Modified: Wed, 23 Sep 2026 21:10:58 GMT  
		Size: 2.6 MB (2642474 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bffeab763936a3fe59e2723f20760b0bd8a72c9835ad416f0785117f1d028e61`  
		Last Modified: Wed, 23 Sep 2026 21:10:58 GMT  
		Size: 26.8 KB (26770 bytes)  
		MIME: application/vnd.in-toto+json

### `node:22-bookworm-slim` - linux; ppc64le

```console
$ docker pull node@sha256:d88d3a26e72e15f1c234d66cf22743967631f656bdc69274c917767edf9d5b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86626552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c67887cc28fa47a19c9b32f0144a9fce878d1c7420b8666e44a91ab1297b09f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 19:54:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 23 Sep 2026 21:08:14 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:08:14 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:14 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:08:43 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:08:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:08:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:08:44 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34bda0506aaa5b7f65f3141aef4d4f2ffd83b81472ff5bb71675ab8ee647d5c3`  
		Last Modified: Tue, 22 Sep 2026 19:55:43 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f607e0c673da988e0bc59c1cee28c2ae3a8de87f1d5b4ae2b125f8c0d11dc5`  
		Last Modified: Wed, 23 Sep 2026 21:09:23 GMT  
		Size: 52.8 MB (52826063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39efe6938599b5d405f6636b6f29d61d5211a02fb1fe14afdaa3d52e723239d4`  
		Last Modified: Wed, 23 Sep 2026 21:09:22 GMT  
		Size: 1.7 MB (1713165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa6a6183831f6c691865877a0aeeade11da3e61e32634294c732525eade881f9`  
		Last Modified: Wed, 23 Sep 2026 21:09:22 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:22-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:424deb9d767e9bf33b4be571d7ceb8d554e0613a7ecefd95c8be537a85f96934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2673207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae35cce4f08bbcecf29d4c6cbdba0e3a4595397e09bbc5108ad6585a214b5b9`

```dockerfile
```

-	Layers:
	-	`sha256:e11162f419f8e4875d4fe54d7ff2783137106d038b8772cfcf9fb54cbe12f33c`  
		Last Modified: Wed, 23 Sep 2026 21:09:22 GMT  
		Size: 2.6 MB (2646547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f67a202aea78b0a2e4d055c677010a99942530c0ac73484cd2da60c638bcec8`  
		Last Modified: Wed, 23 Sep 2026 21:09:22 GMT  
		Size: 26.7 KB (26660 bytes)  
		MIME: application/vnd.in-toto+json
