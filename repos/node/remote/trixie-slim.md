## `node:trixie-slim`

```console
$ docker pull node@sha256:ffc78385a788964bb3cbab5e434ff79a10bdc25b8ae6db03fe5fe6cb14053c09
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `node:trixie-slim` - linux; amd64

```console
$ docker pull node@sha256:62063bd1c3bcd5d11f75f27b4c4a46e852ccc5467f5869c6fb699f513239b310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84626114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2820bbfbe3bdd2d01caa5067b3f79f968ee245a40342bce19f6aeeb27827015`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 08 Jul 2026 16:55:53 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 16:56:14 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 16:56:14 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 16:56:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:56:14 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c4aca5775b095000da32129c71cf548806d3502b0fb7c52a72b30427026207`  
		Last Modified: Wed, 08 Jul 2026 16:56:29 GMT  
		Size: 3.3 KB (3315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ee579345f44148fa8aea16a977864155b4b9777e78907f64fcb73a50397f3c`  
		Last Modified: Wed, 08 Jul 2026 16:56:31 GMT  
		Size: 54.8 MB (54836932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b197e9f0e4968fe97d1bdcd182a4e3a878a00fe705b50fffac82540caf27f58`  
		Last Modified: Wed, 08 Jul 2026 16:56:29 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:444be9982828f38a2e94d6e1bb4cc275df3bce0a25ed88ffa4c69de050e100fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2221826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2d8cc0a135c8a21255c714ebdfb65171a157c5543c9e71f6be09b96ce96611`

```dockerfile
```

-	Layers:
	-	`sha256:42a0ce8def79ac46adef86987d33f43d1c778f78e70c3d66f76361e3bb0666d5`  
		Last Modified: Wed, 08 Jul 2026 16:56:29 GMT  
		Size: 2.2 MB (2201492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:571eabd31d7dcd4851bc4c35edede32ec00a6a7f2152548c62bd293742933af2`  
		Last Modified: Wed, 08 Jul 2026 16:56:29 GMT  
		Size: 20.3 KB (20334 bytes)  
		MIME: application/vnd.in-toto+json

### `node:trixie-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:e941d00ba409549d5499a1fa6e73435ed8549043af2af51ac26960a23cb8888a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85187638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50728be1f17049fa3291829527cf8aed0997c2876e6cc4e9a7d8cbe1f0d5517b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 08 Jul 2026 16:56:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 16:56:29 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 16:56:29 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 16:56:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:56:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:56:29 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7968e560a2d43c479b64baf37ac02ccaecbd661be9b10b88698df1ec0de3297d`  
		Last Modified: Wed, 08 Jul 2026 16:56:44 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d55b736cbca9ffbbeafa5eadf9a9e72a1603b6d51347e06743fb72e7ba68fa`  
		Last Modified: Wed, 08 Jul 2026 16:56:45 GMT  
		Size: 55.0 MB (55035328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab0d5c691a9583da53ad7ca3c53984fcfc188fceba66e8257dde2c47389b6cc`  
		Last Modified: Wed, 08 Jul 2026 16:56:44 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:de5fbbfa04fb996c476f4d02dff2748f2d089fc4760c1e5b2fccfb911fe540e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2222340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760ec1ef12363d9cd2c69a479f4d7a89eb851c0be8b81280676e4b23a05c7c78`

```dockerfile
```

-	Layers:
	-	`sha256:84809100a6b2f28f6ff88529ca26bb982189a008d7f841c0bbb3603fb770442b`  
		Last Modified: Wed, 08 Jul 2026 16:56:44 GMT  
		Size: 2.2 MB (2201815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bdf9ebb9035f588aa309a0e520ff7eceb487def2b27415b8dff65eb96342994`  
		Last Modified: Wed, 08 Jul 2026 16:56:44 GMT  
		Size: 20.5 KB (20525 bytes)  
		MIME: application/vnd.in-toto+json

### `node:trixie-slim` - linux; ppc64le

```console
$ docker pull node@sha256:175d29b2bdd844a2485395cc368992aeb3dafd06bbd6fb3d70845582ab83215f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91146629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df289c9210b33d03729855260c6d499f7351a12a40172d3303e90aa898ad88fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 08 Jul 2026 17:28:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 17:28:51 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 17:28:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 17:28:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 17:28:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 17:28:51 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3225371c4512bcbae3a943e84676cab80d2aaed103beeebe906ea4638538e09`  
		Last Modified: Wed, 08 Jul 2026 17:29:21 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972fadd5a3bcb5bf7846be5a2c901a82ec241db7dbde364425c2c0618f32dcdf`  
		Last Modified: Wed, 08 Jul 2026 17:29:24 GMT  
		Size: 57.5 MB (57536477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb7ca8d99699d9719dd801f7ecdc763abcd533a32dd16fcc986bab8176e32b`  
		Last Modified: Wed, 08 Jul 2026 17:29:22 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:292b33578f7a9b4421f6097821e7d6e37050898e22200079b3b4270debe455c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2225464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4759559ff7b8be70bdb53dd4b970e3d567e906037c75f2e31548f8eeb2cd9217`

```dockerfile
```

-	Layers:
	-	`sha256:760af9dbb47dd8e3e00f57c10b00f0c649eece935534eabb1c4513446ddf9ead`  
		Last Modified: Wed, 08 Jul 2026 17:29:22 GMT  
		Size: 2.2 MB (2205048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9c66f891358a3b1ccee8dadd642440eb34bb6f9a6a98a7682328a6fac39cfb7`  
		Last Modified: Wed, 08 Jul 2026 17:29:21 GMT  
		Size: 20.4 KB (20416 bytes)  
		MIME: application/vnd.in-toto+json

### `node:trixie-slim` - linux; s390x

```console
$ docker pull node@sha256:07038ed76a790258e4f30eb1edfcea4cea8680982b79001c48d374dd3a77f612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86697303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d175f219ab1567ec4f3bdad3caafc002f18e4b5d55faa9be5d948a5c2a6aadf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 08 Jul 2026 17:22:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 17:22:39 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 17:22:39 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 17:22:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 17:22:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 17:22:39 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfd0929fd457c21430d7fd988a7eb21e9efbc9e8c02dce8eb268b41ba62b8d7`  
		Last Modified: Wed, 08 Jul 2026 17:23:11 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9bc6f9bc54623a58bcb780e02c4480e4e5bbd0d1ac8ee94dfeaed7798362af`  
		Last Modified: Wed, 08 Jul 2026 17:23:12 GMT  
		Size: 56.8 MB (56842161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e492b949e8905e898e5f709ecbb7680716f13db36053595fdfb492dde190a62d`  
		Last Modified: Wed, 08 Jul 2026 17:23:11 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:d6c2d4700f9f45f35b4f011fd17a55fbe080f141e3636aa683e6f7f5a8a43244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2223272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0850fd57aead2ba71720210e858395dbb06b61aab1fec5c803725f1a20169e`

```dockerfile
```

-	Layers:
	-	`sha256:9f68f984f9a531a9399b679f8ede2fe21ac8a32ca9bfc263115ce610a57fca59`  
		Last Modified: Wed, 08 Jul 2026 17:23:11 GMT  
		Size: 2.2 MB (2202938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9001558595ba060c646569a9fed3c6cb259e69e7f057b820a48a41f8f272411d`  
		Last Modified: Wed, 08 Jul 2026 17:23:11 GMT  
		Size: 20.3 KB (20334 bytes)  
		MIME: application/vnd.in-toto+json
