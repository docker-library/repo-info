## `node:current-bullseye-slim`

```console
$ docker pull node@sha256:f422c39c7bcf66b27069df685287a0d253b44dec6af9e321a0c40323762bb085
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:current-bullseye-slim` - linux; amd64

```console
$ docker pull node@sha256:13cb632cdbe9540783fa868f7f8d30c2ef6230572db21094941b884db3d499d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85229713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aede62806522c6e18af8df84e0d02a600ea9e335d215dafba3d6714c5927d93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 21:19:05 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 21:19:25 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 21:19:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 21:19:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 21:19:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 21:19:25 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb4d4d2b24beb2b52b72c181d231e91f6ac7459ed9450e27597003b0bb2150a`  
		Last Modified: Wed, 05 Aug 2026 21:19:40 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ab901b252504f4551e330070a41d4c658b28f3ba6f56279399e32eeb19a2ec`  
		Last Modified: Wed, 05 Aug 2026 21:19:41 GMT  
		Size: 55.0 MB (54965575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c39c36a05f2d3bbcd11b2561541f57ec417581226c198d34deb6bc8cd8474a0`  
		Last Modified: Wed, 05 Aug 2026 21:19:40 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-bullseye-slim` - unknown; unknown

```console
$ docker pull node@sha256:8bb1fc9a9995cf3b167529b6b206de7edba6ee8f5bf5a2a0383c3c511f17c1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2898883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9b59c62fbc0c2642f7a3ec5e4316e4e3eb1cfbc133aa851026cf2426481f77`

```dockerfile
```

-	Layers:
	-	`sha256:240ad986a00c87908f763e52e795c662b41569c61bcc3200bc071186084b543d`  
		Last Modified: Wed, 05 Aug 2026 21:19:40 GMT  
		Size: 2.9 MB (2880546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c172c734ff5b071f7526594c37f289a28216a61c930681d86f6573b2a8bb47cd`  
		Last Modified: Wed, 05 Aug 2026 21:19:40 GMT  
		Size: 18.3 KB (18337 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:a772d10549a0ca3e1d20a9b191d2316eabf66bdc626d3b831f5ddef2a6b94ed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83906041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159e4eabd7f869db15dc543675d076eaa7e3e11df823dd33b375567099edef12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 22:07:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 22:07:25 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 22:07:25 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 22:07:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 22:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 22:07:25 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88a074ba9677b3197ff93d9085ace56785b084c8e9fb8f78661929fb5dffcfe`  
		Last Modified: Wed, 05 Aug 2026 22:07:41 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef30cba06fc26efe9294be61cca8e87cf2fc7bc6ab333673a598831d739c63b`  
		Last Modified: Wed, 05 Aug 2026 22:07:42 GMT  
		Size: 55.2 MB (55152609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1890f559e2284e21f2021bce78343eccd10300cc93877eae8da6bf48b659e3`  
		Last Modified: Wed, 05 Aug 2026 22:07:41 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-bullseye-slim` - unknown; unknown

```console
$ docker pull node@sha256:423f96687292eec851259d4a6e61be011536aa40c05dff22c1947c63ee58fb59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2899278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d944c935c98da75672bc19d53bc41e21c53b20a645ce0ec2b4e3aff01779725`

```dockerfile
```

-	Layers:
	-	`sha256:6a3f0b041f57f435f0f14b57c802b6a132bcc76b29b3c98525968bae8bc59f71`  
		Last Modified: Wed, 05 Aug 2026 22:07:41 GMT  
		Size: 2.9 MB (2880810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25caeb05ac6ea0e902695fb6827684ca14fecbebe0e954fc4e9d8d1e17ec75d3`  
		Last Modified: Wed, 05 Aug 2026 22:07:41 GMT  
		Size: 18.5 KB (18468 bytes)  
		MIME: application/vnd.in-toto+json
