## `node:26-bookworm-slim`

```console
$ docker pull node@sha256:3041f464442defe6de36c20b6904b125a6178cfa0a7fc7cc99c0bb5120586f70
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
$ docker pull node@sha256:9d09a088be40a970e2b690a9fb13ad69a0fc529d7b98e9be6a11ba1e9176f0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84099166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfab6925bb84779a291e5a47307188d4a97ea9620384e4fd8ee103d30c10150`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:14 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 01:43:34 GMT
ENV NODE_VERSION=26.12.1
# Wed, 28 Oct 2026 01:43:34 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 01:43:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:43:34 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda6f71c9f5031e5a92ae8b69ebfc15d5192d3faddc7e07e1819cd40576b5cc8`  
		Last Modified: Wed, 28 Oct 2026 01:43:48 GMT  
		Size: 3.3 KB (3313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd40b3a1a7f769425648354dd97ae090711b48200a0cd33d2f9cc4e80dee3d59`  
		Last Modified: Wed, 28 Oct 2026 01:43:49 GMT  
		Size: 55.8 MB (55847967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e537d67d8ec2eb5ae62e715dd6398b238dc802de9d03c6ff93500f28a5d6790`  
		Last Modified: Wed, 28 Oct 2026 01:43:48 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:dd7d4481d63ed5eb493e6cccfed18e73dc18fb4f861eb642398e27ca279ef0af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f181bdd8f7aa74b3a8fafd4ac67a83a83689b1a15eb9d69c52caf6577aa5b1`

```dockerfile
```

-	Layers:
	-	`sha256:6c6ba89f5717c91e23112ec15c30975a396756122af6731327acbcb18c7677d8`  
		Last Modified: Wed, 28 Oct 2026 01:43:48 GMT  
		Size: 2.6 MB (2573168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc1e3a5e1fd517828785935faa81efbc32753a64fcd6edd57c0fae95a4949d5d`  
		Last Modified: Wed, 28 Oct 2026 01:43:48 GMT  
		Size: 18.3 KB (18304 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:a4e3fd25c2bee93019b46bfa0eb40c73b285f773e0bd6b7a81a442152cd0a8fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84034508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c20e659cfc0726c7f107e64e22c772a511d5f6247ba2e008b94734ce39ae54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:33:49 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:34:19 GMT
ENV NODE_VERSION=26.12.1
# Wed, 21 Oct 2026 11:34:19 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:34:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:34:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:34:19 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73729d1f4bfb9ced6c64aeb073ba5e9727abcc1ed841a2b2f25ce8edfb5ccbfc`  
		Last Modified: Wed, 21 Oct 2026 11:34:35 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4327141a2d5ef9643dfe8f22d398ae41dfddd10f8259453d938fa4c325f0b`  
		Last Modified: Wed, 21 Oct 2026 11:34:37 GMT  
		Size: 55.9 MB (55892324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27593ec983a111397b6e21aa1bd84da2176c8fe1346b58d58890f9a5021a6ea2`  
		Last Modified: Wed, 21 Oct 2026 11:34:35 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:336e046dedece504dede0ba2bb93f161cbb480b271ac0d3774e86c7f19d94ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82fa7df7907eee6138d93dc36424abbc7fff4973c404ce6fd159e4c415d71979`

```dockerfile
```

-	Layers:
	-	`sha256:bc4df7e83b5c8be81c289c3138e6876ea854f07fa8a5f7900c676249c70ea147`  
		Last Modified: Wed, 21 Oct 2026 11:34:36 GMT  
		Size: 2.6 MB (2573432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a6a5e0c611224bcc36a925da89b9adb7e2c1ac2a83f529e208d360965b319b`  
		Last Modified: Wed, 21 Oct 2026 11:34:35 GMT  
		Size: 18.4 KB (18435 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm-slim` - linux; ppc64le

```console
$ docker pull node@sha256:7d876dbb1ad60c68b71fa5ea78c65f02db1099b22ee04d009ee9ec338f5b3ea4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90055450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f82c5d483ab4429a2b3daf76fe1272e61414eb44e59e971ebea471285a16d47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 04:28:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 15:43:55 GMT
ENV NODE_VERSION=26.12.1
# Wed, 21 Oct 2026 15:43:55 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 15:43:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:43:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 15:43:56 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df4fffecebead492edba98a76e68d3a7120f74105da657bf799abd8d894e621`  
		Last Modified: Wed, 21 Oct 2026 04:29:54 GMT  
		Size: 3.3 KB (3310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58190f872dd662eddb4cec8c1a7d7f67b06bbe6669ab2eaefc0784351c13e9c`  
		Last Modified: Wed, 21 Oct 2026 15:44:42 GMT  
		Size: 58.0 MB (57958484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56302a96694b8f6297c82bf5bd01d7c2827f6fc201fd69919df11a59957b6b8`  
		Last Modified: Wed, 21 Oct 2026 15:44:40 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:9ad23e2f60f9353d9752d19ae1ffd190b950920d2de156ad2e7734425947e5cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2595887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c55ae7acc7a659b901740f997020abed8c87fd83f7831289b2ce8adb3cd703`

```dockerfile
```

-	Layers:
	-	`sha256:63595e79a04774e87aacfdc207043cc74e1351860b9462d8a23c63e7bb9206ce`  
		Last Modified: Wed, 21 Oct 2026 15:44:40 GMT  
		Size: 2.6 MB (2577531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb2c5670475fe12accecd92fcbefda9b4e49e27078e4ccdbc75f5c94a4a29a99`  
		Last Modified: Wed, 21 Oct 2026 15:44:40 GMT  
		Size: 18.4 KB (18356 bytes)  
		MIME: application/vnd.in-toto+json
