## `node:26-bookworm-slim`

```console
$ docker pull node@sha256:e999d087492c7227c85adc70574cf9d3cce774c3e6d7b8dfe473ee6b142c8f2c
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
$ docker pull node@sha256:bdb2e94ba8f4682ae02b4da47998a891ecda9d6afdc54a19bdb79e1a07cb859d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83032898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963fce70d6ba45f0dfa2b108aa14dea2b251fd5e152ed928dfbb1194dfc611b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 08 Jul 2026 16:55:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 16:56:04 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 16:56:04 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 16:56:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:56:04 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8291b090a33e52c373f546d1f411e4c32c24d478363654e2feaef6387b35b4`  
		Last Modified: Wed, 08 Jul 2026 16:56:18 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7fea6928da04fcbe092f74429a76689fa38c732936f310a4a43a25093edb26`  
		Last Modified: Wed, 08 Jul 2026 16:56:20 GMT  
		Size: 54.8 MB (54791498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559cb846c8a7760d1c1ce4f4ead8725ed976bc10655f41408037ac130b38d3e5`  
		Last Modified: Wed, 08 Jul 2026 16:56:18 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:940651912b83232a789c69bd1fcb532c7effd09ebba5547191ace3b78b489311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e32de437d6c4101c42c018354eccc178dbded8f403489f8cddc5c154bdff9f`

```dockerfile
```

-	Layers:
	-	`sha256:9f53ae7f52d4cf8430cfddd6375e06a3c4bdc3d566b3e7e36e9c4a8a1b57ac4e`  
		Last Modified: Wed, 08 Jul 2026 16:56:19 GMT  
		Size: 2.6 MB (2573044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb7d148cb8372fc60e0c2655f7f34898ee05eeb0b366dba25e0a79b3d6553478`  
		Last Modified: Wed, 08 Jul 2026 16:56:19 GMT  
		Size: 18.9 KB (18870 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:69d64972f123de0f576e81f7960816502e64b9c723a7c875262f137b6376264a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83123390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:128734042ab3e76d54f8766ded832ef64178813c4c8080dce75e3bfeffa1bfe4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 08 Jul 2026 16:56:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 16:56:21 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 16:56:21 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 16:56:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:56:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:56:21 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca951f584ff4267f2e9af9351915dc0a84784f95148cc0a673a9d6a496ecb46`  
		Last Modified: Wed, 08 Jul 2026 16:56:37 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b480567c9b88bc238c969ff849b17e02a56843226913e62df06ea9de7c46560c`  
		Last Modified: Wed, 08 Jul 2026 16:56:38 GMT  
		Size: 55.0 MB (54997212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1d524b36d0784daaa11df0c632c2ee1cfc88f4ffad66216e96c5e28d8e7701`  
		Last Modified: Wed, 08 Jul 2026 16:56:37 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:0664441a2126fd35db30bcd80b8af3027ac41b24a4917fadcab7416676c1d74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45591fe25a5d85f6674450d4d1696e665cbc86258571aeed4fab2f52c7387b91`

```dockerfile
```

-	Layers:
	-	`sha256:e61ed062a3683c7b005ddbcf5db88387a71d32beea058966d3fd4dae105c829f`  
		Last Modified: Wed, 08 Jul 2026 16:56:37 GMT  
		Size: 2.6 MB (2573308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b729de04702deb05b090176ba0d19b88436715ed9e81037e49ad5b568363e8b2`  
		Last Modified: Wed, 08 Jul 2026 16:56:37 GMT  
		Size: 19.0 KB (19001 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm-slim` - linux; ppc64le

```console
$ docker pull node@sha256:c3da27b32cda51ddb4e2959ee59fab9382b0cfa099113c5f3fd6d90085109aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89584129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa81904e901bfb049865a67a97e3fed886e33e064df04b0ec076c85c8b381ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 08 Jul 2026 17:26:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 17:27:21 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 17:27:21 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 17:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 17:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 17:27:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7521c74466cc8b339d934c0bef4e6a03f9b9f1f059c2047562a8edbd6698d82c`  
		Last Modified: Wed, 08 Jul 2026 17:27:54 GMT  
		Size: 3.3 KB (3315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cef46f1392c5489240eb606f110009ccc298dad3da5b3e896182b82024f532f`  
		Last Modified: Wed, 08 Jul 2026 17:27:56 GMT  
		Size: 57.5 MB (57498388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:073f1fb02a1dced5184f2be893df700df762977fbf71cabd866e3055c11cb537`  
		Last Modified: Wed, 08 Jul 2026 17:27:55 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:8278e2d9865705526588602cf08e0a540356c414db49e15a7054bb4b47af081b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2596329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2dc0ca7211bc0c5931cfc6c8200e37def783a35e1b8dd4daf7de18292c10507`

```dockerfile
```

-	Layers:
	-	`sha256:157ab729e7e99bef6ce80ac9cd354324182771b22e05ad9fb0622f8afd77f8e1`  
		Last Modified: Wed, 08 Jul 2026 17:27:55 GMT  
		Size: 2.6 MB (2577407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d28ddce2093dbd7ac7216130f419943741e9d7bfd771350df5be3381ae2be47`  
		Last Modified: Wed, 08 Jul 2026 17:27:54 GMT  
		Size: 18.9 KB (18922 bytes)  
		MIME: application/vnd.in-toto+json
