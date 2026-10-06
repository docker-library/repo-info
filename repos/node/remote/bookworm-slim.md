## `node:bookworm-slim`

```console
$ docker pull node@sha256:3ffc19ea878019d9e9ae8971732ad4a03cda44f167107173174b60ed7c65bed3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `node:bookworm-slim` - linux; amd64

```console
$ docker pull node@sha256:cfa005801786b8e38fa220af518e43f5654c53b36af36b4ad5b3049225ee261e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83842684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec71e51c77c110408bf8eabcf5dcb24bd2c5620b708cb4bf0bdca13b75582ce2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:53 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 01:45:13 GMT
ENV NODE_VERSION=26.10.0
# Tue, 06 Oct 2026 01:45:13 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 01:45:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:45:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:13 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f09ccd1f8a0492dd979caaf03522c18bd330ff7a21c240f21859a39fa0bb0b`  
		Last Modified: Tue, 06 Oct 2026 01:45:27 GMT  
		Size: 3.3 KB (3312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5984c3385461a699fc9da2c19090fbdd278661a539f970f1f553016100e3baa7`  
		Last Modified: Tue, 06 Oct 2026 01:45:28 GMT  
		Size: 55.6 MB (55589602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48cbc14096e82efe1d897b2245e5151fa6b909f1af0cf2095b5f78e0436d691`  
		Last Modified: Tue, 06 Oct 2026 01:45:27 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:2efd04cb23cc2f92810d5535cabf66c9f77f6d9ad1abf75191b67ed284d22a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6baa229c3af619ca122ed5af64c760d4a5df8db19e164235ea5db4a38b29aceb`

```dockerfile
```

-	Layers:
	-	`sha256:239cf91a3055ebdfb025a9723fb431eca9948158683ca02cdc52cdf0acac9913`  
		Last Modified: Tue, 06 Oct 2026 01:45:27 GMT  
		Size: 2.6 MB (2573168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5190b286dbb4468d25614fd6773ed94d9d4f7d10475dfabac3d72ad128326795`  
		Last Modified: Tue, 06 Oct 2026 01:45:26 GMT  
		Size: 18.4 KB (18376 bytes)  
		MIME: application/vnd.in-toto+json

### `node:bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:fff5780b02872b018a9537ffd733e95a9753cb79672b39e6233410f1d8652ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83829963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de53e0d49c343d2ca13c6cd127759c51ac60f90cf2c5a4de5a836430a83e196`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:47:52 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 01:48:12 GMT
ENV NODE_VERSION=26.10.0
# Tue, 06 Oct 2026 01:48:12 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 01:48:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:48:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:48:12 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4080fea65c124673623d973aecac5e663386f1c40889c5534fa8b93a6a65ccb`  
		Last Modified: Tue, 06 Oct 2026 01:48:27 GMT  
		Size: 3.3 KB (3310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74922c152f81f27c9421c5841e399716d6634e4755f2eb4e60805bb95c01a8c8`  
		Last Modified: Tue, 06 Oct 2026 01:48:29 GMT  
		Size: 55.7 MB (55689027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a2076c16519d97e5d5a0740d257c66026c7bb14daa04ade1732d17369e7f42`  
		Last Modified: Tue, 06 Oct 2026 01:48:27 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:aebaa857edaae53b37da2520076286440b588352584b5d391fd8aa3b577224d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4da1874221b42f4429b84b9c40c6ddf36d83eedcfe0d3139d3cf7afb100b3a3`

```dockerfile
```

-	Layers:
	-	`sha256:1b51cdf604f96d8f2ddfffeb5e66ddc6542701646572785abdc9b25a05039d45`  
		Last Modified: Tue, 06 Oct 2026 01:48:27 GMT  
		Size: 2.6 MB (2573432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8184676126b809bc02450b338097740a9f6dc45660cd68bbd63f63da83c3d858`  
		Last Modified: Tue, 06 Oct 2026 01:48:27 GMT  
		Size: 18.5 KB (18507 bytes)  
		MIME: application/vnd.in-toto+json

### `node:bookworm-slim` - linux; ppc64le

```console
$ docker pull node@sha256:88c0a06d140c7c0f03c913cdaba0d77b3d00526e99cb6fa901b7b33b7413afaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89854873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da603ab5f26a983558ae19cd0ba9bc2fa6f47b6bf14d80564c8a868aaa8c9bb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:46:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 04:47:20 GMT
ENV NODE_VERSION=26.10.0
# Tue, 06 Oct 2026 04:47:20 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:47:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:47:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:47:21 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9889263fdfdb38fd2500661720ccb31832a3bca99fd1fb5eca2d55c5d1ca3c34`  
		Last Modified: Tue, 06 Oct 2026 04:47:55 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ca2dade520f054ad667669b5110ebaa8d21981ce192b4059be4177b1742ad5`  
		Last Modified: Tue, 06 Oct 2026 04:47:57 GMT  
		Size: 57.8 MB (57758680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e46209d0b612f3b7b7b2b09071c50b16882fff6c61bd712b3fea30b4494fae`  
		Last Modified: Tue, 06 Oct 2026 04:47:55 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:bookworm-slim` - unknown; unknown

```console
$ docker pull node@sha256:e9d2461f427b8092f6ad92a5165bab0f015df0fa55076c7a08783d2df11ab18a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2595959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdac7dba6f34463fd4cbb30c2b62ce42d8c622b879e25372be78e49a62ad8502`

```dockerfile
```

-	Layers:
	-	`sha256:9648d0f31ff593ca6af42c12df402c7711b2de5fe1ddf528c2f8828fde3f9575`  
		Last Modified: Tue, 06 Oct 2026 04:47:56 GMT  
		Size: 2.6 MB (2577531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94fb1e43f344a13a1247aa25703ee8e5a61433c7add1055f6ca25c8e0a16539c`  
		Last Modified: Tue, 06 Oct 2026 04:47:55 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json
