## `node:current-alpine`

```console
$ docker pull node@sha256:d1afba4b9c2edf2dcc56684c90e6c670309eecbc558b9d4bc7f530efb9934b43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:current-alpine` - linux; amd64

```console
$ docker pull node@sha256:74e32a02a8c5ca8f07a1eb730ff037e27180856fcd93565354ca04872f3dae83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63896018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016b3a44fcc6fc0d8e54e4b33826ddac5adef9a3e736823c8e0f44de04469d28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 22:33:57 GMT
ENV NODE_VERSION=26.9.0
# Wed, 16 Sep 2026 22:33:57 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="75482fd18104cd6e789a5653eb78b5d1a98cb49d8d9bf1d1b56bc4f30928886f" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 16 Sep 2026 22:33:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 22:33:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 22:33:57 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ba99fcdbe2f38557130b8adc922ea6ecbbb7bc94a3ec683fae551762738a36`  
		Last Modified: Wed, 16 Sep 2026 22:34:13 GMT  
		Size: 60.0 MB (60049175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cceba8c6417d1f105c005b788b66f5d0b4e20e0ae73a3c67690733722c38b1`  
		Last Modified: Wed, 16 Sep 2026 22:34:11 GMT  
		Size: 452.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-alpine` - unknown; unknown

```console
$ docker pull node@sha256:09eb10967a2d35901e75065036eaa41cf461bcdfdc4db4494fdeca9d5fbc8414
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.8 KB (314838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdab3634058d3da4995c543ffe7acb618bf681f24ec0e21718f410af21dcead6`

```dockerfile
```

-	Layers:
	-	`sha256:0d62f545a3761eb3ec3900114aee2e3451f11e10c0eba5770f34e0f7558fc6af`  
		Last Modified: Wed, 16 Sep 2026 22:34:11 GMT  
		Size: 294.4 KB (294393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2736a34825e9a7453baaa0160061226a624aa5c1483708f09519cdf22da2ef0`  
		Last Modified: Wed, 16 Sep 2026 22:34:11 GMT  
		Size: 20.4 KB (20445 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-alpine` - linux; arm64 variant v8

```console
$ docker pull node@sha256:8fc85550e31834928b2df54a31a83baf0cec237ad41a335f78a70866d6c245d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.4 MB (67430421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a038a3c7f612a77709391bb9794acca9801e95dae71a74debba63c4e39e97c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:37:02 GMT
ENV NODE_VERSION=26.9.0
# Thu, 17 Sep 2026 22:37:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="75482fd18104cd6e789a5653eb78b5d1a98cb49d8d9bf1d1b56bc4f30928886f" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Thu, 17 Sep 2026 22:37:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:37:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:37:02 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde15936520ce3d0acb2839f3ce1f1fcd325b1e008d02bed6880555ba34a9a5e`  
		Last Modified: Thu, 17 Sep 2026 22:37:19 GMT  
		Size: 63.2 MB (63242316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52fadd254842b4d05299da39da6acbe74044ef5bf6e2f135ba645fdc5ee203ba`  
		Last Modified: Thu, 17 Sep 2026 22:37:18 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-alpine` - unknown; unknown

```console
$ docker pull node@sha256:f5dd212ff6962e46b5cca47561b0ce4382d4e90da2eb4e77e051edf3466c9fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.5 KB (314492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86272bc6e3a5c840b3fa62c9bf7e6658271f729290b7680f047276f4cf3e0951`

```dockerfile
```

-	Layers:
	-	`sha256:28b5d5f466860a7e98d69bdac27514e37e786169ca2b62d97d2ae75494e0a078`  
		Last Modified: Thu, 17 Sep 2026 22:37:17 GMT  
		Size: 293.9 KB (293871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ec88fb89d3bd366600ed8822cb7f573da6d50398d80e5b3a8ba8ae096e467d9`  
		Last Modified: Thu, 17 Sep 2026 22:37:18 GMT  
		Size: 20.6 KB (20621 bytes)  
		MIME: application/vnd.in-toto+json
