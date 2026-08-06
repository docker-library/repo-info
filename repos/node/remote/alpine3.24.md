## `node:alpine3.24`

```console
$ docker pull node@sha256:aadf416b2cdce311a8811ba3f0608a61b77dbf997500e2eafe781b51f6a0b019
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:alpine3.24` - linux; amd64

```console
$ docker pull node@sha256:b4fea132199070b0c8ea9ac66f363fe2cd6d1e4f994e61d8c87976c2157a1b8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63390439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa2b223ab7954b77a61e69c08176a2ba6ad3d224f9c39836cdf92b481e934ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 21:16:12 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 21:16:12 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="0608f9dcffe4daeef082255f5cba6047c7b82eb57a7ab168a0e9bd459823f74b" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 21:16:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 21:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 21:16:12 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980cfb24908e4da2444eb9cf1c517eeabe5e86ab6c315a412c5a8ddc79e3ad13`  
		Last Modified: Wed, 05 Aug 2026 21:16:28 GMT  
		Size: 59.5 MB (59543597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887132affef0f9632d561c27c0e569db467a5e06c90038df426fccab79542658`  
		Last Modified: Wed, 05 Aug 2026 21:16:26 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:alpine3.24` - unknown; unknown

```console
$ docker pull node@sha256:6557e0c37474a845e09eb8de85687c76f08209242b9630148248e2e0092398f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.9 KB (314893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a3f490b5a428e1dda9a9bcfe33338e887a3f5a78542bc86bf4a3d794fc3248`

```dockerfile
```

-	Layers:
	-	`sha256:0e84cc208ca74f5a667ab59df46fa26940daeedf5db0d254a8cf4a7169ba3535`  
		Last Modified: Wed, 05 Aug 2026 21:16:26 GMT  
		Size: 294.4 KB (294391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9a4e6a057f0b493d0ed45e7a4ae23c8b1fdfadd7d68827195ea7a3f99eab500`  
		Last Modified: Wed, 05 Aug 2026 21:16:26 GMT  
		Size: 20.5 KB (20502 bytes)  
		MIME: application/vnd.in-toto+json

### `node:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull node@sha256:d778881fd638833a2a0ed0fbb30577718729ab08112776dea4555eb5551826da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63914757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7ec1a7e19f7eb3a39415b7c7eda941eaa37a84e2585b6a0392160518865b97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 22:55:26 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 22:55:26 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="0608f9dcffe4daeef082255f5cba6047c7b82eb57a7ab168a0e9bd459823f74b" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 22:55:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 22:55:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 22:55:26 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe34b9d21249d04ce53feb0883e303b4acae33de173d1c818879a5b5d901436`  
		Last Modified: Wed, 05 Aug 2026 22:55:43 GMT  
		Size: 59.7 MB (59731275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbcbfcfce5fbe403d4aeb1ed33e075030f6ba71a2da7991006551f7471c67607`  
		Last Modified: Wed, 05 Aug 2026 22:55:41 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:alpine3.24` - unknown; unknown

```console
$ docker pull node@sha256:dfdf8282c95f78da26b0e6bb53ef264ca08846bbdcf0593f0da2b32afb2ab753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.5 KB (314547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf64753de416198e4058791730b34571e29e9736530f8962f6fb8c101192270f`

```dockerfile
```

-	Layers:
	-	`sha256:88059f434f026763e185558c07ab316b77f40c4d0847c5d3b4a8f73d94d9dd5b`  
		Last Modified: Wed, 05 Aug 2026 22:55:41 GMT  
		Size: 293.9 KB (293869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78f8c42770e7fef1016af419f0e3eaa0582039e445f1317922a250375c3de0cd`  
		Last Modified: Wed, 05 Aug 2026 22:55:41 GMT  
		Size: 20.7 KB (20678 bytes)  
		MIME: application/vnd.in-toto+json
