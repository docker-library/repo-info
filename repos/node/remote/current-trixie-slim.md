## `node:current-trixie-slim`

```console
$ docker pull node@sha256:5adad64f9a1fca2d51972caa65983634c8a774eb300d72b20f7f2a0f60368072
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

### `node:current-trixie-slim` - linux; amd64

```console
$ docker pull node@sha256:6f3406bb40734a2cbe3c78c3a5d9a467113b41b7a4c653a8d0534a276c67afdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85740076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865e4e317234b410f60fe13f31ed4d62fb078819afbf5e64566951532c7687db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:28 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:41:48 GMT
ENV NODE_VERSION=26.13.0
# Thu, 05 Nov 2026 07:41:48 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:41:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:41:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:41:48 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e5aae5bdd3e1957bb639d1672c645f6e7e9b5f68a15f327a9f2672515d7c40`  
		Last Modified: Thu, 05 Nov 2026 07:42:01 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9bef032521d6c7a201c1fdfdf135ff3b47c9b9f7dd49ee8cc456d8bbd70d14`  
		Last Modified: Thu, 05 Nov 2026 07:42:03 GMT  
		Size: 55.9 MB (55880183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513be7fbd56f1d7020b35174d5307c950c4f79068c5ab33156534a955827c925`  
		Last Modified: Thu, 05 Nov 2026 07:42:01 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:0d200ae3093e641e69c731c1ba8df67c01a81566643cd40517f9a4cdf2043360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2229908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a4153a01c410c310e1c976a689a3255dd9955462ecf1bb8aa24b28d652f165`

```dockerfile
```

-	Layers:
	-	`sha256:4c2d538517ba5dca4bc3bd1ec2bed19e3867eb2f72855ee99f81c8113277b5a8`  
		Last Modified: Thu, 05 Nov 2026 07:42:02 GMT  
		Size: 2.2 MB (2208728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a47909288d807d9bf0925bf0f4eba7fd48e4eb70da3080e637bc9420e08a921`  
		Last Modified: Thu, 05 Nov 2026 07:42:01 GMT  
		Size: 21.2 KB (21180 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:09d555867f72716747921204358450bf0cd9799f293541927fbdf97ce9aee750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86148547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25938db6341a583e952319c5fbc5cb8bb151c72a0d6f243a559113c1953a04b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:45:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 07:45:46 GMT
ENV NODE_VERSION=26.13.0
# Thu, 05 Nov 2026 07:45:46 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 07:45:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 07:45:46 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b2da1709529d6122034d40ac77c97af17f7d7089b4d660241031abce0830c4`  
		Last Modified: Thu, 05 Nov 2026 07:46:01 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3f368ff08b469e668f0e6f4cd368fa8e80862214d8c1c4dccbee7b56e10ad3`  
		Last Modified: Thu, 05 Nov 2026 07:46:03 GMT  
		Size: 55.9 MB (55930750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adec7d77fb80e6fa258cd5b36b65ba56df89020534db0ba080d8cfb410a80d0`  
		Last Modified: Thu, 05 Nov 2026 07:46:01 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:1f7b2e43197efbbb6765ea8261a6de2d50a11264d2f76962fb07b1770bf047df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2230518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a314dc50ad3c2568693ec7cdd3cfd6c4a287fb5fe8447fc63ddf289621d78d56`

```dockerfile
```

-	Layers:
	-	`sha256:bce6c2b9b981b19e6d975e2a6cc74ed8448b1be6a74bc170477dcb7f30004b76`  
		Last Modified: Thu, 05 Nov 2026 07:46:01 GMT  
		Size: 2.2 MB (2209099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4016a5fc9b68c73901f34a609898a9a2909f3f6871e69b68c95d4895dfd34d6b`  
		Last Modified: Thu, 05 Nov 2026 07:46:01 GMT  
		Size: 21.4 KB (21419 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-trixie-slim` - linux; ppc64le

```console
$ docker pull node@sha256:b675313f4ec8dd83fee41700d07c651dbf128867ea0638edda2e808859be5412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91672756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0f047dfbbd320c9f7a8155a1ed57de52c79a1c8aee33432c5fc0c1c6b2bc08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:16:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 10:17:25 GMT
ENV NODE_VERSION=26.13.0
# Thu, 05 Nov 2026 10:17:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 10:17:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 10:17:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 10:17:26 GMT
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
	-	`sha256:be195dc1f5632e944b4e3203affcdc7e0cddf5dfdf3283ea90bac5ccab5ca81e`  
		Last Modified: Thu, 05 Nov 2026 10:18:20 GMT  
		Size: 58.0 MB (58001349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf5391f493b5e753a4d1a73a03cee556611ccd7c0e8f8c87f34b5c9751bcb87`  
		Last Modified: Thu, 05 Nov 2026 10:18:18 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:112cc1b0508b5dd9b6e5f30eedf4316ee1a34bcc5405d893515a92be250f4fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2233594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee22f1b025832924816c631a46789bdf09c263702db81b92b4750428cbe37eb9`

```dockerfile
```

-	Layers:
	-	`sha256:c03a418b0ae6c66f614c255ade9a4ae887f784ebd39b7299805f70d1d00587e3`  
		Last Modified: Thu, 05 Nov 2026 10:18:19 GMT  
		Size: 2.2 MB (2212308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b00e381fea9ea931bd1dac830f97d1ecf4921a08549f138265068b25323fc21`  
		Last Modified: Thu, 05 Nov 2026 10:18:19 GMT  
		Size: 21.3 KB (21286 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-trixie-slim` - linux; s390x

```console
$ docker pull node@sha256:f6240060c97226d53c2dbb0351f89494ae3b39a3f74f3c11fd2c4c5a55792f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87814904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b801ce4539b47249127dbac13d58578bff4c0cff5a23b5c96fa54b23098494f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:00:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 08:01:01 GMT
ENV NODE_VERSION=26.13.0
# Thu, 05 Nov 2026 08:01:01 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 08:01:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:01:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:01:01 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3930c5ba04862a5cdeafb9d6853db70c6646ae91c078cb66288c2570ad69cb80`  
		Last Modified: Thu, 05 Nov 2026 08:01:27 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a3e94a2db545031902f3f5a6d168383d001aeac455a556cf86c320b36f9c3bb`  
		Last Modified: Thu, 05 Nov 2026 08:01:28 GMT  
		Size: 57.9 MB (57887030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b02f21bceffdcb86ed2a31da361d404313f6ee912943bcf0844820826f3b30`  
		Last Modified: Thu, 05 Nov 2026 08:01:27 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:c4d1ff7fae59d2fb83c6f905dc9beb94d49ecbcbb92d0ffaae8ef56bdb99efa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2231354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec248c9cb4291bd4cc9eca7af0d4c8bd4edf11f949fdd8427f174ea3c46032d`

```dockerfile
```

-	Layers:
	-	`sha256:f1069ec64bdc8b56aa5e81cd4c160e0c05017434e0e04c09101eea575f896bf8`  
		Last Modified: Thu, 05 Nov 2026 08:01:27 GMT  
		Size: 2.2 MB (2210174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88339cb90da48be3321e9c8f05297e077d79c7aed56afc8c911a5dfe99fdbf1a`  
		Last Modified: Thu, 05 Nov 2026 08:01:27 GMT  
		Size: 21.2 KB (21180 bytes)  
		MIME: application/vnd.in-toto+json
