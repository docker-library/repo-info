## `node:lts-alpine3.24`

```console
$ docker pull node@sha256:d32cdf619f63fe0471182d08996dd516c6275bb5fd31ae06e55a570bd9e1ad43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `node:lts-alpine3.24` - linux; amd64

```console
$ docker pull node@sha256:2a49bdf71e9fd965a58c1703fd9ddd205b34e5782b692a72dd1d248abb0beb43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58204379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1746248f2a138f128577ca74d86c9d4a0a17fcc9922c77dfdf92ba7307a4fa3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 03 Aug 2026 20:26:06 GMT
ENV NODE_VERSION=24.19.0
# Mon, 03 Aug 2026 20:26:06 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="ebcb19941bf6a34ada2141727ffda66fb2a4bf315f5c02c8f1fc9e48a2045e06" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:06 GMT
ENV YARN_VERSION=1.22.22
# Mon, 03 Aug 2026 20:26:09 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 03 Aug 2026 20:26:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Aug 2026 20:26:09 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08d42cdba493bec7b21d91857a92221fcd480ebfe48f8da3bbd557218f6b9de6`  
		Last Modified: Mon, 03 Aug 2026 20:26:24 GMT  
		Size: 53.1 MB (53095433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7016f72779c9040cee0836ca5b79ae36c19d053dff298915dbb1927b5b3456`  
		Last Modified: Mon, 03 Aug 2026 20:26:22 GMT  
		Size: 1.3 MB (1262109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27d3f3e3cb67c9f573672ff4d772cac332d144c55b1f4cf92de199f65724bec`  
		Last Modified: Mon, 03 Aug 2026 20:26:22 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:lts-alpine3.24` - unknown; unknown

```console
$ docker pull node@sha256:810f928d01c5fb0285bf4f8f54d1dd92591fa6cb644641174c9902833b2b1f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.5 KB (322527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232c8962410c67fafc7034b4484bc99a7b23233a0e1295c434e1e8f419f982b5`

```dockerfile
```

-	Layers:
	-	`sha256:e77f8c50a32601cb9ea10213e30f6b408a2ee40f4967a006d5283eb5d587f0d6`  
		Last Modified: Mon, 03 Aug 2026 20:26:22 GMT  
		Size: 297.0 KB (296967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eba273d064ca33893f150f54a03bd52cbb69f7e60252ea07019a4003ddbae0c`  
		Last Modified: Mon, 03 Aug 2026 20:26:22 GMT  
		Size: 25.6 KB (25560 bytes)  
		MIME: application/vnd.in-toto+json

### `node:lts-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull node@sha256:0e6f1567e269207c28295276928277a030139cbc5a0fb7d5bd2674f0401a9082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58666530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3ba23292f4c342e7969cc88e1abf816e6d8d6b169472a40848a154c0bc29ace`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 03 Aug 2026 21:03:36 GMT
ENV NODE_VERSION=24.19.0
# Mon, 03 Aug 2026 21:03:36 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="ebcb19941bf6a34ada2141727ffda66fb2a4bf315f5c02c8f1fc9e48a2045e06" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 21:03:36 GMT
ENV YARN_VERSION=1.22.22
# Mon, 03 Aug 2026 21:03:40 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 21:03:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 03 Aug 2026 21:03:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Aug 2026 21:03:40 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f8fbd0bc867c16f58af8042831cf1fcea01ea0362fc0e0e3059513ab508cba`  
		Last Modified: Mon, 03 Aug 2026 21:03:57 GMT  
		Size: 53.2 MB (53220086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d79637ec2545f0ba103fc06e01c231570d0599e2d3a2827915674af3f8db81e`  
		Last Modified: Mon, 03 Aug 2026 21:03:55 GMT  
		Size: 1.3 MB (1262962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7170666875c7e05ff8de96bbdcc595e7b0b741a7174c32ec79cd84641b7e54`  
		Last Modified: Mon, 03 Aug 2026 21:03:55 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:lts-alpine3.24` - unknown; unknown

```console
$ docker pull node@sha256:9659f00aa6e698b5047eed5be9ab3692614b95666004dc93fe33083ea0b8d7df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.2 KB (322196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac9b6dfd86c1eb58f8a7fb6ff2b10d087a43fe2cb8cc56fc7bf7a7c9f38ae4a`

```dockerfile
```

-	Layers:
	-	`sha256:6197933392506347adbdaa89b0226ee95bb74e044b41589e030322f31ae0a2ea`  
		Last Modified: Mon, 03 Aug 2026 21:03:55 GMT  
		Size: 296.4 KB (296445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:305d494bd446a4fba3a80b45b62537c4930d9c8c9e05ad8befdeadacfa34f5fd`  
		Last Modified: Mon, 03 Aug 2026 21:03:55 GMT  
		Size: 25.8 KB (25751 bytes)  
		MIME: application/vnd.in-toto+json

### `node:lts-alpine3.24` - linux; s390x

```console
$ docker pull node@sha256:3e2edb4f8406013a07e8f3b691f2e0f08c7628f2c54e7959e6f5abd0220718cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58840601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7bee6f6d229d6a13874f58b428f212a21da2864644a8aa87495ea111bc63ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 03 Aug 2026 21:23:03 GMT
ENV NODE_VERSION=24.19.0
# Mon, 03 Aug 2026 21:23:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' CHECKSUM="ebcb19941bf6a34ada2141727ffda66fb2a4bf315f5c02c8f1fc9e48a2045e06" OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         s390x) OPENSSL_ARCH=linux-s390x;;         *) ;;       esac   && if [ -n "${CHECKSUM}" ]; then     set -eu;     curl -fsSLO --compressed "https://unofficial-builds.nodejs.org/download/release/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz";     echo "$CHECKSUM  node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" | sha256sum -c -       && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner       && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         gnupg         libgcc         linux-headers         make         python3         py-setuptools     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && rm -f "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 21:23:03 GMT
ENV YARN_VERSION=1.22.22
# Mon, 03 Aug 2026 21:23:07 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn   && yarn --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 21:23:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 03 Aug 2026 21:23:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Aug 2026 21:23:07 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b52696b084364829d00f6b2b0ae937e71e83111e41140d072f8e8e5fcb612bc`  
		Last Modified: Mon, 03 Aug 2026 21:23:30 GMT  
		Size: 53.9 MB (53867839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79a668e032f2683c741bb5e3df3b71f22d6a870c59540efcb2925d103dd4707`  
		Last Modified: Mon, 03 Aug 2026 21:23:29 GMT  
		Size: 1.3 MB (1262997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad26ee6a429a14acc106bd49d53aae70ab12da319c7d641340dbcec8ea613c7d`  
		Last Modified: Mon, 03 Aug 2026 21:23:29 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:lts-alpine3.24` - unknown; unknown

```console
$ docker pull node@sha256:df5e8799e509970b3d9c04e58d07944e36169b87e5df200dad1ae7699c10647f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 KB (321875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7da141bb6be0ec5ea2abcd6791a1947003b652792bc42b665fe713946d39e09`

```dockerfile
```

-	Layers:
	-	`sha256:b564ed7d0f5ab7384785baea5242e4a780b4d6eb644c799a129d0796afb12975`  
		Last Modified: Mon, 03 Aug 2026 21:23:29 GMT  
		Size: 296.3 KB (296316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d5c196d3a5eec9e15ecd0068291d5843aea851d9314d5e84f23c1a66ca6e28f`  
		Last Modified: Mon, 03 Aug 2026 21:23:29 GMT  
		Size: 25.6 KB (25559 bytes)  
		MIME: application/vnd.in-toto+json
