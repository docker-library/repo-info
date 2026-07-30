## `node:current-bullseye-slim`

```console
$ docker pull node@sha256:ae4a1c72d4f9b038ad3894d2fad572a6268e8d9b4a4c971a540c0c08672018ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:current-bullseye-slim` - linux; amd64

```console
$ docker pull node@sha256:d6d00cc120a6d365dfa4044dd140b20bfeae26bc6044db0948d3d0a836d82a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85097626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c23c41df5afc4286c3267932efdd29059e88f4852f9cb3f4f34129621cddd9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 30 Jul 2026 19:04:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 30 Jul 2026 19:04:25 GMT
ENV NODE_VERSION=26.5.1
# Thu, 30 Jul 2026 19:04:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 30 Jul 2026 19:04:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 19:04:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:04:25 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b310d38127e4dbb7b7a7385821f40d35044b0a4b9229bef4bebbfb7a2dd25a76`  
		Last Modified: Thu, 30 Jul 2026 19:04:40 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920f178af812e0437fb7d174eb259be1be298c9c6d27e807d5c08c337e6bbd8f`  
		Last Modified: Thu, 30 Jul 2026 19:04:42 GMT  
		Size: 54.8 MB (54833344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ff6d9be97ed1995299951b6a0ca7b601d31a284641a0d684fd86262b67a800`  
		Last Modified: Thu, 30 Jul 2026 19:04:41 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-bullseye-slim` - unknown; unknown

```console
$ docker pull node@sha256:e701d1e89d11202b12618d7df6f3a103016f3a39fb7b31f860e0c409c38e928a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2899372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e16cfa76a7e52802c17c0c0c474805c35800a59b5eb4c8b6d36d98c25ef0520`

```dockerfile
```

-	Layers:
	-	`sha256:96d7882582c496fef8d11d7ae54a56382b0b023ef098d73c1582fc9b7d2efa05`  
		Last Modified: Thu, 30 Jul 2026 19:04:41 GMT  
		Size: 2.9 MB (2880502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55303977be1960f36a1cc244a4bde24c8a7a92b3f9ce998d65c909628cf4a665`  
		Last Modified: Thu, 30 Jul 2026 19:04:41 GMT  
		Size: 18.9 KB (18870 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:8037307e4f0fbd6abda8b4dfe353d7b0f3b8ff27ca1acb71700df6804ebf0f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83773734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d634f5a9ac728513ef179cb71d3708a3ef203714f2b68ab021b034b487048c93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 30 Jul 2026 19:03:31 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 30 Jul 2026 19:03:50 GMT
ENV NODE_VERSION=26.5.1
# Thu, 30 Jul 2026 19:03:50 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Thu, 30 Jul 2026 19:03:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 19:03:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:03:50 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8802d39ffae872ba068b214ac0d0f03bb98617101b23427da0009950aad3c897`  
		Last Modified: Thu, 30 Jul 2026 19:04:06 GMT  
		Size: 4.1 KB (4079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6dc2abba088187be0b5910e73deedd8fbe859607723bce3171faccc54c69925`  
		Last Modified: Thu, 30 Jul 2026 19:04:08 GMT  
		Size: 55.0 MB (55020221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d20971acc55f9ab5bd5be855c58082006ddae0d55ab7e025149d51ab300eca6`  
		Last Modified: Thu, 30 Jul 2026 19:04:06 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-bullseye-slim` - unknown; unknown

```console
$ docker pull node@sha256:0f24557be7ff7f4a2b181414ba0bf358bca250c2540d7f61bddc3d8955e725e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2899767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77accc065e1c550b5510ac4af4463ae09e1f875f7d4d2acb181f21ea6c7a2e16`

```dockerfile
```

-	Layers:
	-	`sha256:1218d8c9b38bd8b2ba16aadd8fb541b877ffa87ddf366ceaca26ae60256da278`  
		Last Modified: Thu, 30 Jul 2026 19:04:07 GMT  
		Size: 2.9 MB (2880766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36d9bbe5d8da2479e96e8bc365d8cee9a70c94e2ba1159304151a75401bf57b0`  
		Last Modified: Thu, 30 Jul 2026 19:04:06 GMT  
		Size: 19.0 KB (19001 bytes)  
		MIME: application/vnd.in-toto+json
