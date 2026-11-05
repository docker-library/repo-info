## `node:24-trixie-slim`

```console
$ docker pull node@sha256:0820eaa85e07d0490446dd01d14707e17e6108a36988cf374899cd057eb3812d
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

### `node:24-trixie-slim` - linux; amd64

```console
$ docker pull node@sha256:947528b072c170d980592b851c802155d84dcad60d3f550b8a0451b84d65dabd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82694973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf58836e700785240cff4787c1ce11bb1db20e56916495d7572f34a736b810b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:41:55 GMT
ENV NODE_VERSION=24.22.2
# Thu, 05 Nov 2026 07:41:55 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:41:55 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:42:08 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:42:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:42:08 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61684b79cc4e0d0eda19b3e34198aa71c17c597bba7838947a16b85f9844ae6`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 3.3 KB (3310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4d5252e23fd2b658b9106604fbb37c7999c8cbe7bb7fb300d1aee6133a084b`  
		Last Modified: Thu, 05 Nov 2026 07:42:23 GMT  
		Size: 51.1 MB (51117488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a483d5c661ce84823e196b6a81dc60f398becf506df97cc76f06a50eb05d1dce`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 1.7 MB (1717595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cbe557daffd1b176212eb4525d977ef2f8c216a3004238f40b427301c762bc`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:24-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:5d073c3a4d688dff83d049c66810a44bf38742ea1d5a5b07d4601ed3bb814a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2230040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d2ccb1d93c1a36846de131a033ba2aab5a1b91780f49bc79e94d714f93036ec`

```dockerfile
```

-	Layers:
	-	`sha256:bd29f1123c9e98bada33187ae0a9a14f7d186006628b7d57fd0ec9d0243db99f`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 2.2 MB (2204746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e94656e16ce0cf2bbfec90af88353f23ad818b8f2c93574de33abdaae8dfa69e`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 25.3 KB (25294 bytes)  
		MIME: application/vnd.in-toto+json

### `node:24-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:6bf5010c9b37bcb8a580b99181dcc73344e15a2fb8d8345af13a81fd89d9db71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83033255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a17754e5fe4c8ffe6205f2d86e99e12d9cb521faf11df78637654fed92e7b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:45:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:59 GMT
ENV NODE_VERSION=24.22.2
# Thu, 05 Nov 2026 07:45:59 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:59 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 07:46:14 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:46:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:46:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:46:14 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a758b81b96c4c9897981a00f7ef456962822ab387f19f92341752f3bfb3f6858`  
		Last Modified: Thu, 05 Nov 2026 07:46:29 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7563ec2b1e1c2a5da5fad54b56b873db629c64719696638abf68837dc1e730`  
		Last Modified: Thu, 05 Nov 2026 07:46:30 GMT  
		Size: 51.1 MB (51097671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d434f3e5cfd30f8f4a4556452f1064f2262727ec40e210c6ad2c7bd1faaa79`  
		Last Modified: Thu, 05 Nov 2026 07:46:29 GMT  
		Size: 1.7 MB (1717787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b71b723771157c8bb078361ef2f7892e7b47721f74188e045ce33361f9ee389`  
		Last Modified: Thu, 05 Nov 2026 07:46:29 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:24-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:9ea6c914e8234b91fe353ce2a691edd3bfcdf36e76909cfed34a42f97ef51d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2230424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef9e96fa8489323b3a3bfabb9ba4b394d372a236658465f7083bc8659cd69f3`

```dockerfile
```

-	Layers:
	-	`sha256:46883e7d8907eeec611bfe8ce92ce134526de81dfffebc734356827125483df9`  
		Last Modified: Thu, 05 Nov 2026 07:46:29 GMT  
		Size: 2.2 MB (2204996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0b739a9ec58b9aef64547eb4b12f31110eae0e3678598c6f788f287f8501549`  
		Last Modified: Thu, 05 Nov 2026 07:46:28 GMT  
		Size: 25.4 KB (25428 bytes)  
		MIME: application/vnd.in-toto+json

### `node:24-trixie-slim` - linux; ppc64le

```console
$ docker pull node@sha256:d9f729f3e4ea56763b026c27b90a003e7afa895f6256785fc5f8ae432063fe93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89454809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e5f8e6b074e27819c5b5e5884a857b94e707d7371f8b22c1f8525cb1e6c39c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:16:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 10:20:04 GMT
ENV NODE_VERSION=24.22.2
# Thu, 05 Nov 2026 10:20:04 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 10:20:04 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 10:21:19 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 10:21:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 10:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 10:21:19 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c894882465db25274b490d67a87c4d7574e73cdb9f937c6f4b5fc228c5e09b46`  
		Last Modified: Thu, 05 Nov 2026 10:18:19 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf246e9fdbbcbdda8a636fb4496925f42dc2a318e201fae45eb1225d42c855e0`  
		Last Modified: Thu, 05 Nov 2026 10:21:55 GMT  
		Size: 54.1 MB (54065452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e845bea4813643dfb78b6fdc30f6f64e9ae32fbb9311179e6bb311e739d1b7`  
		Last Modified: Thu, 05 Nov 2026 10:21:53 GMT  
		Size: 1.7 MB (1717954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e1626d6c6ae04fe7513844ee3a523675fb7ca02864612b4456abac6a481c60`  
		Last Modified: Thu, 05 Nov 2026 10:21:53 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:24-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:cdbbab3b5f4785145e2581adbed95320ab9c06e36edaea63427cf9f53704d802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2233599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86bb0304e4e16c420ff527a7d6e3474e5187683fb109cf159d9802e40cd55f2`

```dockerfile
```

-	Layers:
	-	`sha256:250431f753adcff062892144552b0f74b3af0bc6a9275b7bc2a58311432e9ee0`  
		Last Modified: Thu, 05 Nov 2026 10:21:53 GMT  
		Size: 2.2 MB (2208257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba7615164f2e6b00616862c827c767c8ddae3249fe55f699fe8840122d02f6e9`  
		Last Modified: Thu, 05 Nov 2026 10:21:53 GMT  
		Size: 25.3 KB (25342 bytes)  
		MIME: application/vnd.in-toto+json

### `node:24-trixie-slim` - linux; s390x

```console
$ docker pull node@sha256:ef60851d7f45ccd49deaf07bc3ab8093185823608dff208b81ed2f5ae593c433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82317183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9402e97873b16edd40578b5654dd41caf048258d5357872c70785bc659d060be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:01:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 08:02:24 GMT
ENV NODE_VERSION=24.22.2
# Thu, 05 Nov 2026 08:02:24 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:02:24 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 08:02:40 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:02:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:02:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:02:40 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1312717255b87f531ee126397dc94576b20eb349e0f6f4a3d359d517cb0ab816`  
		Last Modified: Thu, 05 Nov 2026 08:03:03 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b22d98843aa66a0479cbca764baac2a36c63e56ab7c77801d0c5bed666a68ae9`  
		Last Modified: Thu, 05 Nov 2026 08:03:04 GMT  
		Size: 50.7 MB (50671388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac12afa5d6acb6ffa0ad4a9082520433bef0ae55a3889255c876d1b1dbafd18`  
		Last Modified: Thu, 05 Nov 2026 08:03:04 GMT  
		Size: 1.7 MB (1717921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372522664bfd060f7fde6cb71941f72cc72dcc1901fab2f9e182c80015863b7c`  
		Last Modified: Thu, 05 Nov 2026 08:03:03 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:24-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:84cffe25d7b14a5ad2a7ef110aab2382c9cb42d0d79315cb11ebfe208c1f7fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2231487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9b044c1b65b7efdc13fc8ddcd392beaaf3ae388d0a72187510f01b8de18be8`

```dockerfile
```

-	Layers:
	-	`sha256:fa57943bbf0ffcbf405507ad6fc615652f8c8543499a070e4d447d0b3e55da3e`  
		Last Modified: Thu, 05 Nov 2026 08:03:03 GMT  
		Size: 2.2 MB (2206193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4571f6122ca21a5ff2cd05c0e939d0f1e858b3c2249064a2b1b6a002e04eddea`  
		Last Modified: Thu, 05 Nov 2026 08:03:03 GMT  
		Size: 25.3 KB (25294 bytes)  
		MIME: application/vnd.in-toto+json
