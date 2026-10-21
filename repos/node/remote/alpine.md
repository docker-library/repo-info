## `node:alpine`

```console
$ docker pull node@sha256:9bd229b644e391df00fb989efa732335aefc6170a05d8c163c5c8ca9870da401
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:alpine` - linux; amd64

```console
$ docker pull node@sha256:36fcbf78863f9705538d5acfd5d9dec3f5ceec7d007cb29350cb4bbf7539b214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62940778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559d4dc58f2125aa6d8fc1e1807cd88a70d47d1764c8ea8cffaaf323cbb4f65d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 11:34:17 GMT
ENV NODE_VERSION=26.12.1
# Wed, 21 Oct 2026 11:34:17 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:34:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:34:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:34:17 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aaa392ec283e19696946137ea898985036c7e7b84b0ec2f9558cbd3017a0ce0`  
		Last Modified: Wed, 21 Oct 2026 11:34:33 GMT  
		Size: 59.1 MB (59090597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9350baae2a14b73afffc9ba01281226a389d9a75752c4fba382bea26ea981b3f`  
		Last Modified: Wed, 21 Oct 2026 11:34:31 GMT  
		Size: 443.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:alpine` - unknown; unknown

```console
$ docker pull node@sha256:d6b0162233f4aebc43104fb2aa8fdc706245fab048cb03832a1deb7918d07585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.4 KB (317431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f65a318fe96f148f0486a8a7f6a48d14007ae37aac3e0d45524ca6ac89a1fe`

```dockerfile
```

-	Layers:
	-	`sha256:b43cdc90b0210a4b3c5983987c0c19c96561b59c0b2720b93d3f30328b8a0466`  
		Last Modified: Wed, 21 Oct 2026 11:34:31 GMT  
		Size: 296.4 KB (296360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94aaa246ebc608d74192373987b1ba8c511054055f30456a36a8f24fafb15d07`  
		Last Modified: Wed, 21 Oct 2026 11:34:31 GMT  
		Size: 21.1 KB (21071 bytes)  
		MIME: application/vnd.in-toto+json

### `node:alpine` - linux; arm64 variant v8

```console
$ docker pull node@sha256:a812f4d9b3e7d6c99dccb8cb3a091c823c659f27e0d496760282ffedf16ac075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (67994837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45ea1fc24bea7bf6fc35eda67819c7ef766f98af45f26283c75ed8fdca644ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:26:21 GMT
ENV NODE_VERSION=26.12.1
# Wed, 21 Oct 2026 12:26:21 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libatomic         libstdc++     && apk add --no-cache --virtual .build-deps         gnupg         curl     && ARCH= OPENSSL_ARCH='linux*' && alpineArch="$(apk --print-arch)"       && case "${alpineArch##*-}" in         x86_64) ARCH='x64' OPENSSL_ARCH=linux-x86_64;;         aarch64) OPENSSL_ARCH=linux-aarch64;;         *) echo "unsupported architecture"; exit 1 ;;       esac     && export GNUPGHOME="$(mktemp -d)"     && set -ex     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do         { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||         { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done   && if [ "$ARCH" = "x64" ]; then     curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH-musl.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && ln -s /usr/local/bin/node /usr/local/bin/nodejs;   else     echo "Building from source"     && apk add --no-cache --virtual .build-deps-full         binutils-gold         g++         gcc         libgcc         linux-headers         make         python3         py-setuptools         rust         cargo     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN) V=     && make install     && apk del .build-deps-full     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt;   fi   && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;   && apk del .build-deps   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 12:26:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:26:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:26:21 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f971b0f446671569da04e51b0ae56d018e5a9e4dca1c630960e8312ff917f739`  
		Last Modified: Wed, 21 Oct 2026 12:26:41 GMT  
		Size: 63.8 MB (63806737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8bb05079e87b9830ceadf07ebcf05142c08402d9aeb5f8642b86dc827198d21`  
		Last Modified: Wed, 21 Oct 2026 12:26:39 GMT  
		Size: 441.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:alpine` - unknown; unknown

```console
$ docker pull node@sha256:472d96d1c3149a3a21441ad0d8b681e3cc04e6b2719e3d1e58290f2a9b0c26e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.1 KB (317085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62cf4cd37a3212f4603eb56973d421176fbf586519648b6a7bbd82c32627b76e`

```dockerfile
```

-	Layers:
	-	`sha256:16b35617b7e4be32c613b46957d744568e0da9947eaede043d04ec39967e5d2d`  
		Last Modified: Wed, 21 Oct 2026 12:26:39 GMT  
		Size: 295.8 KB (295838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38a4c1908a68b87e7711c6d7037c480da3e132bb1c04ef81b461ebd636ae7e18`  
		Last Modified: Wed, 21 Oct 2026 12:26:39 GMT  
		Size: 21.2 KB (21247 bytes)  
		MIME: application/vnd.in-toto+json
