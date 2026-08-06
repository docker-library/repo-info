## `node:current-trixie-slim`

```console
$ docker pull node@sha256:3da386ce626509488d4631d71ae67b8009ec12481eda55539e1f611eca98fd77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `node:current-trixie-slim` - linux; amd64

```console
$ docker pull node@sha256:0a83d7979d0b593faabfa8c6003bf0b33800e62a796242d4df40d80e1871aead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84775079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9223c31312db5abf6e474e470292699ba3e9fa7271e5a1c135a73183767c74f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 21:20:33 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 21:20:55 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 21:20:55 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 21:20:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 21:20:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 21:20:55 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4a8c7cc27228d19bf93ee788cfed9691f2a92d3bb77cc0c3e7fb030be0f8a1`  
		Last Modified: Wed, 05 Aug 2026 21:21:10 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c9efab965003d621af176578c05b99364bb7619050f27890097d6777bf4b7d`  
		Last Modified: Wed, 05 Aug 2026 21:21:12 GMT  
		Size: 55.0 MB (54990553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916915c03d8da19aab942acd714549ff1e3bb70a07d3c4e346fae0f194755921`  
		Last Modified: Wed, 05 Aug 2026 21:21:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:cc3a78c4fda1415ff2cfbdeff0f3800e6062c689aedea670a9366d7e68329d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2221734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409a66ba370255242de05c6eba3f9508a35f903ade57b33b632eb5799cb8d520`

```dockerfile
```

-	Layers:
	-	`sha256:9ca4c6e855440b08dae5862b4b8d9ef44b28c93cce1b7533a1f724ef2f4fe78a`  
		Last Modified: Wed, 05 Aug 2026 21:21:10 GMT  
		Size: 2.2 MB (2201572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb81037e6b8badaf5c226e8f0ee2f60ae30c491ca9415b27bcfa36388ca369cc`  
		Last Modified: Wed, 05 Aug 2026 21:21:10 GMT  
		Size: 20.2 KB (20162 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:359eb650a101aff020949bca649efe5a1731e9ff777437412cd497916c482c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.3 MB (85320171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14410bc2179c232a86a2487f6ffd2620b554f92c16f30227216e57abc8dd9aed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 22:07:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 22:07:56 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 22:07:56 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 22:07:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 22:07:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 22:07:56 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36ca9edf971846f85f6e9b1a893427debe182d7137c9f6038ac53d3055d9895`  
		Last Modified: Wed, 05 Aug 2026 22:08:11 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ae2f162f2be04e2b6f0ba6ab672a2840644419af65a67bbe4f157bf2cac63e`  
		Last Modified: Wed, 05 Aug 2026 22:08:13 GMT  
		Size: 55.2 MB (55172804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43a6b2791c243e325bbe8edff585759b46c298fba2958a67eda8b994f3a379a`  
		Last Modified: Wed, 05 Aug 2026 22:08:11 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:5ef4919d3dd4ed9a294034ad5e7411f403167aff062f287d36b796c15594668b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2222248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0056e2e82c54ed1e0844fd5b5c42a322daaad21f3070ca7aa9a4247e0e047e16`

```dockerfile
```

-	Layers:
	-	`sha256:63e9e25ebdebbbf8c09df5769ec2ac52852de393930e55c5bc17acae8dbeec04`  
		Last Modified: Wed, 05 Aug 2026 22:08:11 GMT  
		Size: 2.2 MB (2201895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1a4ae51c1b4fbb745cf6871a26ef5f80b6fda2a08f09406c3442fa051bcfd9c`  
		Last Modified: Wed, 05 Aug 2026 22:08:11 GMT  
		Size: 20.4 KB (20353 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-trixie-slim` - linux; ppc64le

```console
$ docker pull node@sha256:5c09b463eb5e221500c711b8c4489c0d2bc8216a1dcf98ce0c7ae7be0f890938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.2 MB (91226696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60dec31eab1af1ec506e9451df2d5b0e6633cc2f985162dcd3f1d8a2b3c2a3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:38:52 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 05:39:37 GMT
ENV NODE_VERSION=26.6.0
# Wed, 05 Aug 2026 05:39:37 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 05:39:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 05:39:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 05:39:37 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7c3237c42ad683c3d5aea690f67cb4f6e02ea8447dcb5e1167bf55b01f3a70`  
		Last Modified: Wed, 05 Aug 2026 05:40:08 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9500bfb22ae090079cc5d21ee9b72b7a0947cce3bdf94f70a2b10f96cfee3dc9`  
		Last Modified: Wed, 05 Aug 2026 05:40:10 GMT  
		Size: 57.6 MB (57621591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fb6049ea68d923fc560129a91b9eaa73de48745e40f8bc464a631e01ab022b`  
		Last Modified: Wed, 05 Aug 2026 05:40:08 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:6065d56547f3ca4519b0822ee6552ffea56027e7fd937d647265af7a4176da46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2225372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ef5b900653f9dc78c76926259bd712494e525b299e1b04f3d91ccb4c6bc494`

```dockerfile
```

-	Layers:
	-	`sha256:90c76bd29e68458fee09a09fbfeab7ba811989e1f867278d253e46f65c832713`  
		Last Modified: Wed, 05 Aug 2026 05:40:08 GMT  
		Size: 2.2 MB (2205128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47ad1c5e978313e14673ee79b44aa64d6821ada40b0246de2e130dc57d982ba4`  
		Last Modified: Wed, 05 Aug 2026 05:40:08 GMT  
		Size: 20.2 KB (20244 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-trixie-slim` - linux; s390x

```console
$ docker pull node@sha256:95e32db72a070e86c64f0e8e986108f08aa71544d76b07d7e40a140f3deb62db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86836504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1625b4296507c4363616175d1b2700c69e6342049517609c4c19cf679d15d771`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:36 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 21:55:14 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 21:55:14 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 21:55:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 21:55:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 21:55:15 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5986d46430bb546b82ec3bbaa129ccfe2da557065304851c9cf1a173fac5a4e8`  
		Last Modified: Wed, 05 Aug 2026 01:09:24 GMT  
		Size: 3.3 KB (3314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423e2d8495f08f2b055737164008a35a374a61df54dc5482bcb0fe41de85868c`  
		Last Modified: Wed, 05 Aug 2026 21:55:48 GMT  
		Size: 57.0 MB (56986168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd994b672ad1a84bf3314fdb3c2849ed65b250e2a60ad10fde366528d295fc2`  
		Last Modified: Wed, 05 Aug 2026 21:55:46 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:d74185f7e5f978f7ffb14d726f7bc7b90be7bab52e3da131fd3e655e56c972bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2223180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1abdecc476850a411db7189488f1369c54d5a3c5a741878538337cdfaceeed01`

```dockerfile
```

-	Layers:
	-	`sha256:6b05102097acd82d2c4947466e22b4cc9ec693f67abb51d9337fc711fa2b0fe4`  
		Last Modified: Wed, 05 Aug 2026 21:55:46 GMT  
		Size: 2.2 MB (2203018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d6e5407dfc363e4d020ca881b6f4e2067b3900804201ac26226ab9ece374bef`  
		Last Modified: Wed, 05 Aug 2026 21:55:46 GMT  
		Size: 20.2 KB (20162 bytes)  
		MIME: application/vnd.in-toto+json
