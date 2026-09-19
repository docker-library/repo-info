## `node:trixie-slim`

```console
$ docker pull node@sha256:22b3cc989075195170b6dfe874c2bd3fcf9e00d7d20c76ee87ac79b622d274b2
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
$ docker pull node@sha256:15608e38be44c66501537f1806dcde1a11c399bed6e404aec0cbdde8b673bb06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.3 MB (85349972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6caf91ae70fc4003d6a832ce6f209bb215bcff7882cb21ba54e29f4a0431749b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:48:11 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:31 GMT
ENV NODE_VERSION=26.9.0
# Sat, 19 Sep 2026 00:48:31 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:31 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de1fdb19012e1e6f1cddbd5054441820125f47ec1b79d68ceab015d21723c34`  
		Last Modified: Sat, 19 Sep 2026 00:48:44 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b84e2bf2466eded4a252a19ac6440b36198875b7833bd73cda7898a4eba0424`  
		Last Modified: Sat, 19 Sep 2026 00:48:46 GMT  
		Size: 55.5 MB (55515796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45717597883616f551336303ba9aa9e184add8a4b0f0269cc6bc8e6db01c7a1`  
		Last Modified: Sat, 19 Sep 2026 00:48:44 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:636503c15f45a3ef49c3e5fd4baa2c996b91cda2cef5cf3524be23b8d183e8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2227488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457b279f14ff74234b20a9dcaf60650774c19ddfcd323023ee14494d1878a8e2`

```dockerfile
```

-	Layers:
	-	`sha256:35fc370ab038d0c7f909a927a0917063094fecd280c272c217d8624fc0537f7c`  
		Last Modified: Sat, 19 Sep 2026 00:48:45 GMT  
		Size: 2.2 MB (2207482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19c4e5447c3bdf14c9894828fb76d630e4a33db665bbe6ebb0691941ea11ce31`  
		Last Modified: Sat, 19 Sep 2026 00:48:44 GMT  
		Size: 20.0 KB (20006 bytes)  
		MIME: application/vnd.in-toto+json

### `node:trixie-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:0e8905dee5e180601a4b5778dd4ddf0c08c53a4f9147ef561b7aed7ebdb371f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85814844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8246793759ece40631d4e36970b5301fa07f79f55d15917c85e861e6911714`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:51:04 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:51:26 GMT
ENV NODE_VERSION=26.9.0
# Sat, 19 Sep 2026 00:51:26 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:51:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:51:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:51:26 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a281488e6895512d956eb57cb4423f85abca8a41bbfa138489744a52daf6b085`  
		Last Modified: Sat, 19 Sep 2026 00:51:42 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f35ea29efde0abaf5e13bbea2f0a0a52623d8b43d9689c03880de815e5286b7`  
		Last Modified: Sat, 19 Sep 2026 00:51:43 GMT  
		Size: 55.6 MB (55621392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf7d03190f7bf8a81a0302ca2d9078077f86528cb4779020ba7a2d985433dfe`  
		Last Modified: Sat, 19 Sep 2026 00:51:42 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:4aae0b66b6bdbd12a495cefb7e942f86cf3c48de94f4df076ec0bfd1474b3352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2228003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42759a8a00d194cf85deba87f24592bfbcfb3d95e39482fd596cbc13fc0d5bcc`

```dockerfile
```

-	Layers:
	-	`sha256:76404dee0c7dfd51078a6e400a36b945f88219b6fdfa5e8199a88a783973ed28`  
		Last Modified: Sat, 19 Sep 2026 00:51:42 GMT  
		Size: 2.2 MB (2207805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e0bde07a3842d939514fad3ae03b5a373ff939ce8a58ed854d0b754a10d094d`  
		Last Modified: Sat, 19 Sep 2026 00:51:42 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `node:trixie-slim` - linux; ppc64le

```console
$ docker pull node@sha256:165313af8b1910fc441d64c4724d60794d86e6ef41c1882ee9400123b3de0eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94511335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76c25995f947065f2596562049fb947bc75b883761588048683e16e84a968f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 17:01:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 16 Sep 2026 22:37:07 GMT
ENV NODE_VERSION=26.9.0
# Wed, 16 Sep 2026 22:37:07 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 16 Sep 2026 22:37:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 22:37:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 22:37:08 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3832a4a44819c7c50ce44dd306ccfd9443fb44c9b31f79ec1e6862325c142b`  
		Last Modified: Thu, 27 Aug 2026 17:03:22 GMT  
		Size: 3.3 KB (3316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc34f7d58408068a7083eac57759208bb02f34551c66f5edb1c88fd2c9fc522`  
		Last Modified: Wed, 16 Sep 2026 22:37:44 GMT  
		Size: 60.9 MB (60892110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9180bd29847cf3935107a3d263e480f3cb682b5e6fe433fe284c77b95cc37e`  
		Last Modified: Wed, 16 Sep 2026 22:37:42 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:f24c89f970e6b70a78459a4086386e991b94db440152767fa8980bc9ca2b3182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2225417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bfdea6f415837720e1c22e70059452b555be97c26ea9a560280ba034bd886a7`

```dockerfile
```

-	Layers:
	-	`sha256:da74710102384324f8961327771ae300e81d57a018a0388e8adc0326e76d0b83`  
		Last Modified: Wed, 16 Sep 2026 22:37:42 GMT  
		Size: 2.2 MB (2205328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fafe56df3a223d98c18fb6b8395258baca4f244ae54caffdd54e84f07a1bd151`  
		Last Modified: Wed, 16 Sep 2026 22:37:42 GMT  
		Size: 20.1 KB (20089 bytes)  
		MIME: application/vnd.in-toto+json

### `node:trixie-slim` - linux; s390x

```console
$ docker pull node@sha256:f147e4004627c58f5005a86f9011c9e763ec894b0720c0d2d428a9d15970f80e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90065242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9867783b1d3bab76ee482c21f9fcc62ea014a6d05bc46ddbba793cdeac569350`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 17:00:31 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 17 Sep 2026 21:34:59 GMT
ENV NODE_VERSION=26.9.0
# Thu, 17 Sep 2026 21:34:59 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 17 Sep 2026 21:34:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:34:59 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4cf02d6f3b11f73ee889ae682291964288a4afd637b293ec115fa779405f651`  
		Last Modified: Thu, 27 Aug 2026 17:03:34 GMT  
		Size: 3.3 KB (3316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45c8d4c226080c5a80d403eb744bdc34c656f87491f6dc7e07afde6e13ca1ed`  
		Last Modified: Thu, 17 Sep 2026 21:35:24 GMT  
		Size: 60.2 MB (60193758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0201f9c35cf983e3898e78a57db2c4474ca01974d93d4a17b8ff8f6742ef8b77`  
		Last Modified: Thu, 17 Sep 2026 21:35:23 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:2a50301855d9a1036e89e2bbf8bf2193171a11d318912bc9750a3b907126fff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2223225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fcdbf58126ba36f5df458b51577ed1b8453ba8dc4ff69e612e3efd00e9fa29e`

```dockerfile
```

-	Layers:
	-	`sha256:ef93a78aa59b58317ddf3558ef1698efbb7e1020cafeaef6665560c975e20567`  
		Last Modified: Thu, 17 Sep 2026 21:35:23 GMT  
		Size: 2.2 MB (2203218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1284425cdb67114c1b0a7da8e002e5f6feb85e2b99efcd34bbfa0a46b8bddac1`  
		Last Modified: Thu, 17 Sep 2026 21:35:23 GMT  
		Size: 20.0 KB (20007 bytes)  
		MIME: application/vnd.in-toto+json
