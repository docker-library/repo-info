## `node:26-bookworm-slim`

```console
$ docker pull node@sha256:98708a364706f506eb4beee83c048347fc95bfe253b7563081e41d834123008f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `node:26-bookworm-slim` - linux; amd64

```console
$ docker pull node@sha256:c00614442a3c693109886209462dd1b15462f6726347fa9cb9fc0125ca26f275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83178943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b97d6761bf16f53e69dfbb124d934f7bb9f523564a402b0e5dfa88ac29f6a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 21:17:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 21:17:43 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 21:17:43 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 21:17:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 21:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 21:17:43 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954b07f14746c35e3d9df809391d0c73d1cb57752911fd2958c94b8a87dfd0a8`  
		Last Modified: Wed, 05 Aug 2026 21:17:58 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb36b4433477465c5a6e37fbc27d06e36238861acea6ea183fdc7c0fcc0decf`  
		Last Modified: Wed, 05 Aug 2026 21:17:59 GMT  
		Size: 54.9 MB (54942594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa1b7302c4c5f11311ae6825c227740f581ea2bfeb1ad9ccab2039c2f53fc92`  
		Last Modified: Wed, 05 Aug 2026 21:17:58 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:f34a45ed7a2a6b9af8831c225ff42c5f8ac8386fa22276307f517bd46f40cf41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db1ea7cd876bb225651ea2e4c46a6c96bbf3a6887ac80196f6af09ca70b7be9`

```dockerfile
```

-	Layers:
	-	`sha256:90966a6e25d034728889ff8e9beec01f359d17dd3b6ba6de04f251ab15303987`  
		Last Modified: Wed, 05 Aug 2026 21:17:58 GMT  
		Size: 2.6 MB (2573124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e484622122558c4197578713c72baf9ad1b05e85740878f3b3a15e2501fec55`  
		Last Modified: Wed, 05 Aug 2026 21:17:58 GMT  
		Size: 18.5 KB (18522 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:9e7720738fbcb12e8122beb5194cfa58ab0029c78c3ed39f8986aa68713e31bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83249901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d13c51b9d1a64fc5816a160698a18662666168b6111f14f6dbc4f8fd806839`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 22:06:47 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 22:07:07 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 22:07:07 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 22:07:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 22:07:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 22:07:07 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b98af0bbcecea3ce1365cd9be47a54ee6165278713fae9e4f0c70cd84279801`  
		Last Modified: Wed, 05 Aug 2026 22:07:22 GMT  
		Size: 3.3 KB (3315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c74d69e4f9aa387f36b1bd1e4f2f93938bdbd2a63b8a3432ea76e44705a6626`  
		Last Modified: Wed, 05 Aug 2026 22:07:24 GMT  
		Size: 55.1 MB (55128938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7953de5ca540e518e8dcdc14386117daee234ee5bb374a6a843741c8cc87a129`  
		Last Modified: Wed, 05 Aug 2026 22:07:22 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:2800b0356677b092273c4b9d5eac94e2b742501e75b490aae9a9ab1d34fcc383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac56461a056b43667677f19b85859ed9fa4ff5313fa642a0f2fa2fab2c1bb794`

```dockerfile
```

-	Layers:
	-	`sha256:fd9d09f95e0030c11a06d0e7ecb2ef11350f47f452b3a6e9ed72df590535fcf2`  
		Last Modified: Wed, 05 Aug 2026 22:07:23 GMT  
		Size: 2.6 MB (2573388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cd2cc6775d735698eff16dcef66c2149b6c63a8426db8d2aa1b8e62634318ad`  
		Last Modified: Wed, 05 Aug 2026 22:07:22 GMT  
		Size: 18.7 KB (18653 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm-slim` - linux; ppc64le

```console
$ docker pull node@sha256:d338fed178e82ea5bcd8179c837bb8e1eaab9c3646ae36952674584b2b35c0bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89663324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d03937373a2b92797068a96895dcc00d1869522ef9070a4ea108ae837ce4f7d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:01:39 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 01:02:17 GMT
ENV NODE_VERSION=26.6.0
# Wed, 05 Aug 2026 01:02:17 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 01:02:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:02:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:02:17 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331d2c2c1b97bec0d220a74e04d58068461568a5b97f753263e6c1e42c2958f8`  
		Last Modified: Wed, 05 Aug 2026 01:02:47 GMT  
		Size: 3.3 KB (3310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f075ea129a81328c11861e64d1e7a2b911410b54460f2a57a5b54f07d167382f`  
		Last Modified: Wed, 05 Aug 2026 01:02:49 GMT  
		Size: 57.6 MB (57583244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99376a2fe4a60aa7e8831b7723876f214589e9aecf201346889bc4f7a98c12b`  
		Last Modified: Wed, 05 Aug 2026 01:02:47 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:37757b64af72a022473a1aae3ea528f8e8cd092043869cc509a31765fe75575a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2596060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59adf5a49efa11ab8155634029b8c240c9380c185b489e32f56007c53c34e04d`

```dockerfile
```

-	Layers:
	-	`sha256:861b0fba0c2eb3c6e69d5c947deae18e34a716c01451badfcc43c11ababbbc3b`  
		Last Modified: Wed, 05 Aug 2026 01:02:48 GMT  
		Size: 2.6 MB (2577487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ab84771e30f7967df78f08cec490b8564da35f1c9758ac5a12a163f1b00e1f1`  
		Last Modified: Wed, 05 Aug 2026 01:02:47 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json
