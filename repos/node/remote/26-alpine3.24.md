## `node:26-alpine3.24`

```console
$ docker pull node@sha256:2c45bdcbf63561a54da9549612084b43ca309854a4110c87857d609ddeb61c9e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:26-alpine3.24` - linux; amd64

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

### `node:26-alpine3.24` - unknown; unknown

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

### `node:26-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull node@sha256:c03e84ae7877e8dc6890ea104b874dd34ab1c7aec960c245b23d0bdbd16afa7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64390110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f768672b5c53e81540970199f8a4a878b9dcbb29fbdfa8357765aa58348fe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:24:09 GMT
ENV NODE_VERSION=26.9.0
# Wed, 16 Sep 2026 23:24:09 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="75482fd18104cd6e789a5653eb78b5d1a98cb49d8d9bf1d1b56bc4f30928886f" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) echo "unsupported architecture"; exit 1 ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 16 Sep 2026 23:24:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 23:24:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 23:24:09 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b108e090adca0f8d42a7335a92e1e7795ae87b713d17cfd4b0ee3cea4dd5edf`  
		Last Modified: Wed, 16 Sep 2026 23:24:27 GMT  
		Size: 60.2 MB (60206626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470a1c8b4213e23886fbf6a9bc52cbee317c7c41ebdb6b6b726240fe57f17855`  
		Last Modified: Wed, 16 Sep 2026 23:24:25 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-alpine3.24` - unknown; unknown

```console
$ docker pull node@sha256:d9cec54eeb78fba39b4427714b9bdbee3f88c93c83692781ad77b7559b9a0998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.5 KB (314492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1f8358b50074f280c897d5d4fa5b27f1514210dedb3ad7406929c359f41c5d`

```dockerfile
```

-	Layers:
	-	`sha256:7ea4d0704e71aaba77fcdc0c3e9cc3baf0b004277c3366f0a966eb994fc09ecd`  
		Last Modified: Wed, 16 Sep 2026 23:24:25 GMT  
		Size: 293.9 KB (293871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20ba90edc45a341988d2e51e301152cd9a7c2457420cd14a16e5470b2adc9671`  
		Last Modified: Wed, 16 Sep 2026 23:24:25 GMT  
		Size: 20.6 KB (20621 bytes)  
		MIME: application/vnd.in-toto+json
