## `node:alpine3.23`

```console
$ docker pull node@sha256:b1f4228f07d424dbf2f50e605b4981816e240e640a49f27ec85fab72f00c14b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:alpine3.23` - linux; amd64

```console
$ docker pull node@sha256:7bcd70e9756255abad404ad14866a56d0938601a3a8cc7719e5fc57a0439cc55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62798101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705c4e3ec16115b8418978e14f24283fb8bfc348db0767d3d78d71c8c0d8b503`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 11:34:31 GMT
ENV NODE_VERSION=26.12.1
# Wed, 21 Oct 2026 11:34:31 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:34:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:34:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:34:31 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42bbc44c99a433d1c0bef1b4ea1fb544c567241ed1745553ee9fbe5992e71f45`  
		Last Modified: Wed, 21 Oct 2026 11:34:45 GMT  
		Size: 58.9 MB (58949153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc23eb195b41067bea99826004e778aa21698a3f9167fa59c499b2926869a131`  
		Last Modified: Wed, 21 Oct 2026 11:34:43 GMT  
		Size: 441.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:alpine3.23` - unknown; unknown

```console
$ docker pull node@sha256:e2c14670e3f1f692ebec74753f51d19c779db21402549b2f831bf5c49f61a257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.4 KB (314395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83e9fc09e623fcd9af4329e3b935ccf4ca8bedfdee0cece87c3c46c24f0fda9`

```dockerfile
```

-	Layers:
	-	`sha256:5a37d4203eebfd6ea79528ed92600f529d2afc88314147d7ffec1e370d5237c8`  
		Last Modified: Wed, 21 Oct 2026 11:34:43 GMT  
		Size: 294.8 KB (294844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ab7ab767e65315627f464a566caf00805c5622d57bdb3e301250eeedf18e5c3`  
		Last Modified: Wed, 21 Oct 2026 11:34:43 GMT  
		Size: 19.6 KB (19551 bytes)  
		MIME: application/vnd.in-toto+json

### `node:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull node@sha256:3de0ef246e573972829f28649b084ffa5afd9667255387cb5d8d7b13dfd27e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68028865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f621f58993a78a464a12dc0d76b691d2f5faeb6a5d0ec85d01229baa90d055`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:22:11 GMT
ENV NODE_VERSION=26.12.1
# Wed, 21 Oct 2026 12:22:11 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 12:22:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:22:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:22:11 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe166b1e31a2417809f5cce51de8e26c71f15ab0523e182cdf3676f28d79d1a`  
		Last Modified: Wed, 21 Oct 2026 12:22:29 GMT  
		Size: 63.8 MB (63842364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c588d338ab1f7841a615b721e1938f01857ba91a8b76a8a236da3a56a48e96c5`  
		Last Modified: Wed, 21 Oct 2026 12:22:27 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:alpine3.23` - unknown; unknown

```console
$ docker pull node@sha256:870ca8cccbbcb0c3bdaa83c236b8755c7d2f3465a87db8e4ba15ba890c82c9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.9 KB (313927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0d7e4af66d3e614329126bafae5ca9725be156fea1764cb373bfb319e25a64`

```dockerfile
```

-	Layers:
	-	`sha256:b86ddcaa0a1fae78b429777e469b1f9f6d6d3b8ae1434b2a898ac717b5d8cac8`  
		Last Modified: Wed, 21 Oct 2026 12:22:27 GMT  
		Size: 294.3 KB (294262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ede4179b2457fc7e2e8667866cb63d1c8fb00614fdbfafae36f59d030ebb70a4`  
		Last Modified: Wed, 21 Oct 2026 12:22:27 GMT  
		Size: 19.7 KB (19665 bytes)  
		MIME: application/vnd.in-toto+json
