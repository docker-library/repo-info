## `node:alpine3.23`

```console
$ docker pull node@sha256:ce3cc39fe3b8b2602d3b1c4d63d301e46b48c550ecb627869853ddcdda418b63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:alpine3.23` - linux; amd64

```console
$ docker pull node@sha256:beb1f82448d01c14c85266ee5ea8cca055e1e2dbf3880bbfcc6de85838f38c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63388493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fed88d7b2df95a15e8a38be9a2bd2c70159bdc0c7e94d8eb7853f90431a32b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 21:15:43 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 21:15:43 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="0608f9dcffe4daeef082255f5cba6047c7b82eb57a7ab168a0e9bd459823f74b" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 21:15:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 21:15:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 21:15:43 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef6ae3c4e5ea16e4706011fd52a65e5e682ebb657bc8b587d3ae27730b4acae`  
		Last Modified: Wed, 05 Aug 2026 21:15:59 GMT  
		Size: 59.5 MB (59543622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004cd5130b2ffe7493c324e2a05dbec929cbc2ab2cd641662218ceac99b9a510`  
		Last Modified: Wed, 05 Aug 2026 21:15:57 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:alpine3.23` - unknown; unknown

```console
$ docker pull node@sha256:97ccdcc36456e5481ce4f097d1fa0c5e31117f462ead821aea8cc1401a19f616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.9 KB (311865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:663d73c9a0400bea1734668388a0f2187032db61a454945630dbc285d537d786`

```dockerfile
```

-	Layers:
	-	`sha256:2014d38d80a4f05813f0d72baa7b267cc57003ffe5ad0000b019d02b79312bf4`  
		Last Modified: Wed, 05 Aug 2026 21:15:57 GMT  
		Size: 292.9 KB (292879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c0577a3908d1c21ce5308c29d4000b3ba1f4998c3bccb7262ba3a049188d320`  
		Last Modified: Wed, 05 Aug 2026 21:15:57 GMT  
		Size: 19.0 KB (18986 bytes)  
		MIME: application/vnd.in-toto+json

### `node:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull node@sha256:0b88f68083e0d252401044f3a1b0b244f7d863134eb523e2c8012535f47b2d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64102868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe63eb86a858380ca4671435a58bbd6de04ba1a825a3e32c6c4844799c46bdfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 22:54:10 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 22:54:10 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="0608f9dcffe4daeef082255f5cba6047c7b82eb57a7ab168a0e9bd459823f74b" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 22:54:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 22:54:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 22:54:10 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b5888bb58fa89aeb4f8d0687bda287b83819d646bb5b55f2cdef16bd64d4d9`  
		Last Modified: Wed, 05 Aug 2026 22:54:27 GMT  
		Size: 59.9 MB (59920563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c94583ccd429d665d30dc29d62b40ef12730810e7f620d30b3157a527984b6`  
		Last Modified: Wed, 05 Aug 2026 22:54:25 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:alpine3.23` - unknown; unknown

```console
$ docker pull node@sha256:17b3f8006aad3ce041ee401882c6e5c928434accaf23f4a279f5e5a3d97f6ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.4 KB (311399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6bbdf1ac31c39f2b5e0e0fb62f92d3f9ffdd47f2ccee34e9b045ac46d99f695`

```dockerfile
```

-	Layers:
	-	`sha256:c8f020876a98c7eb984a08ada74fe8f8f9e1f01339bb098e690128ee9ab7fba7`  
		Last Modified: Wed, 05 Aug 2026 22:54:25 GMT  
		Size: 292.3 KB (292297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b86167677a6d8edce3573be136827be5caccfe4b050c244c437d8a0ca986616`  
		Last Modified: Wed, 05 Aug 2026 22:54:25 GMT  
		Size: 19.1 KB (19102 bytes)  
		MIME: application/vnd.in-toto+json
