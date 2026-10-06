## `node:jod-trixie-slim`

```console
$ docker pull node@sha256:154ba2f4d6fec323d28e4f4bb86bba4677f1223391a1979cf521304e03a98dfa
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

### `node:jod-trixie-slim` - linux; amd64

```console
$ docker pull node@sha256:6b25e0bf3aaee33c18ba3c5d1b71646df1ba485a2a5500fd8376a3be3d110812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81440568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fa0248c1b6b4303e9ed05abb383712863dad09356bb1dd454106ce83078c6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:45:16 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 01:45:38 GMT
ENV NODE_VERSION=22.23.3
# Tue, 06 Oct 2026 01:45:38 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 01:45:38 GMT
ENV YARN_VERSION=1.22.22
# Tue, 06 Oct 2026 01:45:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 01:45:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:45:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:45:56 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35b9854453484eb4b8d836e6555ef413afdaf1660faec1c77c685a37aa74216`  
		Last Modified: Tue, 06 Oct 2026 01:46:11 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3017dcfd1197fbc307ea81e6a482ce555f0e9b2e3b36d61015db78611b22ab`  
		Last Modified: Tue, 06 Oct 2026 01:46:13 GMT  
		Size: 49.9 MB (49875867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5bfc00e35f00ffb05af2b15dcb408c6b418d94cdda09e6621336e159922fb67`  
		Last Modified: Tue, 06 Oct 2026 01:46:11 GMT  
		Size: 1.7 MB (1717594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a21341009fa15dc1477fe0ded951f23c4958462102712c0a825b1f32bf301cd`  
		Last Modified: Tue, 06 Oct 2026 01:46:11 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:a94b64712a40203f0c2ce6887d2f28728e37986381108bedd1a760013a974d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2299195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305e7c9ac60f09a07a295cb7bbd98c10eecbe9d530637bf5166fa34a11bccb9f`

```dockerfile
```

-	Layers:
	-	`sha256:92f5705291de047aa22035d9242b4f760eeac0ebb7021d8f90aef5acf24e7c92`  
		Last Modified: Tue, 06 Oct 2026 01:46:12 GMT  
		Size: 2.3 MB (2273837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d613f9f5c810f185463bdaa22bebe4d865610eaabd9b36bb1e1ec975e8c4fe1d`  
		Last Modified: Tue, 06 Oct 2026 01:46:11 GMT  
		Size: 25.4 KB (25358 bytes)  
		MIME: application/vnd.in-toto+json

### `node:jod-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull node@sha256:f22490670fc15c203cd0c22f60743087edd81ae53a19fd428fdccb277586c300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81918098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccfb0e66ff5caacbec21f40d45bb7ac17ff29f843bbd0b38e833879caa5785ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:48:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 01:48:37 GMT
ENV NODE_VERSION=22.23.3
# Tue, 06 Oct 2026 01:48:37 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 01:48:37 GMT
ENV YARN_VERSION=1.22.22
# Tue, 06 Oct 2026 01:48:51 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 01:48:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:48:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:48:51 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de01eede37591e4f0439a57b652c0e45946a77eb3be363f9651eeda2510e57d`  
		Last Modified: Tue, 06 Oct 2026 01:49:06 GMT  
		Size: 3.3 KB (3309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d61e047cc80bf6c6272ae75385fab02af283e731ad14ed4e2bfab4d03fbba9e`  
		Last Modified: Tue, 06 Oct 2026 01:49:08 GMT  
		Size: 50.0 MB (49996286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3b58e2ca2512341bd0aedba23d47fa145755c683a238d7c52758e1eb6082fe`  
		Last Modified: Tue, 06 Oct 2026 01:49:06 GMT  
		Size: 1.7 MB (1717772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f16f4ed8dadf86d16c40607bc003d0c197d49409b83e000ec4142edb748b2d4`  
		Last Modified: Tue, 06 Oct 2026 01:49:06 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:fa63de4cdc2fa1bc2a95a22812c7e0c0ccdc0e41086075354e6f7fe2d3049ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2299579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3e57c5600ce0707d3413dce551192fa488b936219811e6f5523de40e39fe3f`

```dockerfile
```

-	Layers:
	-	`sha256:5b0d12bdda5b0dcbd1888cea0433b102fefbd2fc8af8fed095fe119755e9c3ed`  
		Last Modified: Tue, 06 Oct 2026 01:49:06 GMT  
		Size: 2.3 MB (2274087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa0e14e4b6eb420d84bf44b69c22b6fae522c0578c70218b10a9352695760b9`  
		Last Modified: Tue, 06 Oct 2026 01:49:06 GMT  
		Size: 25.5 KB (25492 bytes)  
		MIME: application/vnd.in-toto+json

### `node:jod-trixie-slim` - linux; ppc64le

```console
$ docker pull node@sha256:bec466d4c9b797a36dae1a80ac98a5fe313c328b63c2c56bbf1f45bdf440fca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88241871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5601176eedd2993fa0905e3f41b25a71595d2ffa7729d6dfade42dfabe59b879`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:48:01 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 04:53:32 GMT
ENV NODE_VERSION=22.23.3
# Tue, 06 Oct 2026 04:53:32 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:53:32 GMT
ENV YARN_VERSION=1.22.22
# Tue, 06 Oct 2026 04:54:06 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:54:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:54:06 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b134d30747a7c8296d8c7ff9a41fc5f863b5b6dae1e8645e0d1f5d3a25c03fa`  
		Last Modified: Tue, 06 Oct 2026 04:49:47 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84988ae6e5652c813c742af0eccc0c8fdf559defe7ac09f8a2503e640f5c880`  
		Last Modified: Tue, 06 Oct 2026 04:54:44 GMT  
		Size: 52.9 MB (52868796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8606e7d7c8141ab44bcb45ab43fe8ba33e69a9427a361a57a404a16d2063f80`  
		Last Modified: Tue, 06 Oct 2026 04:54:43 GMT  
		Size: 1.7 MB (1717715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82593f80d52c4d8c5b5e157fdbb06ac9dbee89d2bf4fcdffcdb43a53ebc6769`  
		Last Modified: Tue, 06 Oct 2026 04:54:42 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:a97fbdc4eeaf9d345a1144115d266e10c20a0ffdbbfe1365c012a944f2f39782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb94fbee7a4a62ea486438976bd2136f73a062eaf332ed5508dd4d3b7808fbf`

```dockerfile
```

-	Layers:
	-	`sha256:f76b7e13caf83896071ebd02b50df18888242e47981b1bb9d41e9e0eaf9efef8`  
		Last Modified: Tue, 06 Oct 2026 04:54:42 GMT  
		Size: 2.3 MB (2277348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b82ce25b8c77c14b587ec0818d1b2226f08c9e2b3725b39fc2bb6f8d70247923`  
		Last Modified: Tue, 06 Oct 2026 04:54:42 GMT  
		Size: 25.4 KB (25406 bytes)  
		MIME: application/vnd.in-toto+json

### `node:jod-trixie-slim` - linux; s390x

```console
$ docker pull node@sha256:6253c09ebdb83ded014562c593eccaeaf6e6073f8c17e369e22edb15532dd00e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81664659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8c38b50e17a233a415206d9b2bcf981121643e9d9cc2e968130462cda48acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:00:35 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 02:01:49 GMT
ENV NODE_VERSION=22.23.3
# Tue, 06 Oct 2026 02:01:49 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD       A363A499291CBBC940DD62E41F10027AF002F8B0     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 02:01:49 GMT
ENV YARN_VERSION=1.22.22
# Tue, 06 Oct 2026 02:02:00 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 02:02:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:02:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:02:00 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09b6d8b194f627c36aa804c7ea4e33549d8f6d5b0da8e07090fb07e4cb67a50`  
		Last Modified: Tue, 06 Oct 2026 02:01:15 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6e1af505ca505f4c3169986a7f06bf185a86f53f9f11e2ca37413739bdc345`  
		Last Modified: Tue, 06 Oct 2026 02:02:21 GMT  
		Size: 50.0 MB (50033706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc133e8c311801f6783fa051df6139c9a88948ec1d80f243c9cfc7b220f2407`  
		Last Modified: Tue, 06 Oct 2026 02:02:21 GMT  
		Size: 1.7 MB (1717945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55200f064a4242bd6ef1641f1b86a0c58da6b25e6ff286dc5d3e2399896b26f7`  
		Last Modified: Tue, 06 Oct 2026 02:02:21 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod-trixie-slim` - unknown; unknown

```console
$ docker pull node@sha256:a6712b9b83169c80e45a2d6c7c6c9900cef2199c5a9c557d03ddc0513768c7ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2300642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c458122d8c3107a5ff8f2c3431e22fd5ebc06d34a251bfceff76c7b1f3b640d`

```dockerfile
```

-	Layers:
	-	`sha256:384ebf16929e3a9061bc53a6a6eda7a483e68a27e494614b4f2d871e31a3736b`  
		Last Modified: Tue, 06 Oct 2026 02:02:21 GMT  
		Size: 2.3 MB (2275284 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28e185191b25cab3c7c768f1323a94351e327a342701d068a5a1a65f3cc0620f`  
		Last Modified: Tue, 06 Oct 2026 02:02:20 GMT  
		Size: 25.4 KB (25358 bytes)  
		MIME: application/vnd.in-toto+json
