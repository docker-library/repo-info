## `node:26-bookworm-slim`

```console
$ docker pull node@sha256:c8fedd782bcd1b68d8a7d1ed2577b5f820eba820871323f605292651ff11e3c6
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
$ docker pull node@sha256:9402381626b1bdfd82fb258a5cbb50976be43f81b538a7f8aa9e6fdc9ec79224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83710914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20995be0a8d50b280106e3556b16c4448d6befba26e2052380bd88d4f8c859d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 22:34:02 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 16 Sep 2026 22:34:21 GMT
ENV NODE_VERSION=26.9.0
# Wed, 16 Sep 2026 22:34:21 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 16 Sep 2026 22:34:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 22:34:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 22:34:21 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e669e259b211c016f5f2b0aa7247cccce76d2f2e300f6e90df2c4cf303e43df`  
		Last Modified: Wed, 16 Sep 2026 22:34:35 GMT  
		Size: 3.3 KB (3316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f297fb0cd074e0fe0cb18350302bf3a8145e9c0be1c9c759e6735d1a83f771`  
		Last Modified: Wed, 16 Sep 2026 22:34:37 GMT  
		Size: 55.5 MB (55474496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8352230f2c740f059b5231dd8fa405ed914bed8edd51bff57914210f2f6371cd`  
		Last Modified: Wed, 16 Sep 2026 22:34:36 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:2758533b71bb272774ef20cb0e11430b450add02cd371af8580e020a91de7179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f184d7781cfa1294d1ac3f8e3a4897e31edd8f03b87ba64ad0ce5b282814811`

```dockerfile
```

-	Layers:
	-	`sha256:837fbeb28fe8e19a0126987529e051b6e3685be9a78ba608b2d59492d507eeee`  
		Last Modified: Wed, 16 Sep 2026 22:34:35 GMT  
		Size: 2.6 MB (2573126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bb65344d949b1907239a926f479780a25a8a3e5aaafabe9fcf19037dfb8dc3`  
		Last Modified: Wed, 16 Sep 2026 22:34:35 GMT  
		Size: 18.4 KB (18371 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:435d8d1b3ff422d0241d69095750d52a22e3d688ad55b40f9c9b7b2eedc5b33a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83695199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb328da7d1c342b3f542dc65fbd377cf5a4823d5df01f47ea3bd888f57618b4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 22:33:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 16 Sep 2026 22:33:38 GMT
ENV NODE_VERSION=26.9.0
# Wed, 16 Sep 2026 22:33:38 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 16 Sep 2026 22:33:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 22:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 22:33:38 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf83c92b4e16162707141322a577e4c224104da9952109f019978340fa70185`  
		Last Modified: Wed, 16 Sep 2026 22:33:54 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f15457aefbdf14cac134acb9b32add334fa4180932e14b3ac07c5d5ab7c7864`  
		Last Modified: Wed, 16 Sep 2026 22:33:56 GMT  
		Size: 55.6 MB (55574149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5faa26ecadd112a8b911ce2f540b860bb65df2beb33c3b504cb584e0a76aa358`  
		Last Modified: Wed, 16 Sep 2026 22:33:54 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:af2cb26fbc39d03efca116c4d8a8964366b09dd066b2f9c3e93b141e6516af88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d482cab7c3e89220fca75847522bb79a6d0b7abdd7ac6ddd618f24fc910439d`

```dockerfile
```

-	Layers:
	-	`sha256:f604e37d0dda877d2f41fccc93b24dd2f58d4c7c831b053f758be8e900dfa8d6`  
		Last Modified: Wed, 16 Sep 2026 22:33:55 GMT  
		Size: 2.6 MB (2573390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:145e028da9f6adf524d97b8b80b4fc114789d49d64cd03fe2bbe186c3a218bf9`  
		Last Modified: Wed, 16 Sep 2026 22:33:54 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm-slim` - linux; ppc64le

```console
$ docker pull node@sha256:3dabb885f15fb5678f0c0d12ae05a79abf42c82c5d77d5cdf1ed55f5620f9c78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89725329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8acf3c328e80a9e8e8b655fb9ef8a1d097ad5beaa2bf4d6dc63d72a57e4971b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 27 Aug 2026 16:59:54 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 16 Sep 2026 22:35:32 GMT
ENV NODE_VERSION=26.9.0
# Wed, 16 Sep 2026 22:35:32 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 16 Sep 2026 22:35:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 22:35:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 22:35:32 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83194b9ea8ad0a73637a243f19a1ac93d26366e5a6cb581c3541f3026cbad7d3`  
		Last Modified: Thu, 27 Aug 2026 17:01:19 GMT  
		Size: 3.3 KB (3315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ac1b68aae3df5cfc198b5d867d1117ff4360f39cd1bc82751f1de7fc979795`  
		Last Modified: Wed, 16 Sep 2026 22:36:06 GMT  
		Size: 57.6 MB (57645088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1cde530d6a47f8e9e105b938fb18b58a2f5ecc0684b0e0329bdbb3064a10ce7`  
		Last Modified: Wed, 16 Sep 2026 22:36:05 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:70dab3a535e7702e0a3f10cc15242e91cd0b880c931f8f0e2169b5f8fc7d35cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2595912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996a29f3b5f314898e129fdf4e61499d2f33f6d6a4c45849508be60e710ac86c`

```dockerfile
```

-	Layers:
	-	`sha256:11f4b5a27c72afce5d974ef03d2676bb8e832ffeda68f390224ffac0cb082ab2`  
		Last Modified: Wed, 16 Sep 2026 22:36:05 GMT  
		Size: 2.6 MB (2577489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:750355a30012774e257dee01d66d0472f328779a7e0049ff3cbe8e106e7e3e81`  
		Last Modified: Wed, 16 Sep 2026 22:36:05 GMT  
		Size: 18.4 KB (18423 bytes)  
		MIME: application/vnd.in-toto+json
