## `node:trixie`

```console
$ docker pull node@sha256:926d6cafec97f338577041890465522f70fe74aa6fe4b021a4fd7f87a5996b25
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

### `node:trixie` - linux; amd64

```console
$ docker pull node@sha256:3d156c5a4948eb7b0f281b2300175950ded96fc5516ee537e9bfbb8ad8a8b3ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.4 MB (442394221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f49a06759a843e2cadcadc1b61d5ffe525645904c1c59fb0e4c5e44eb4e74ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 08 Jul 2026 16:56:03 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 16:56:14 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 16:56:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 16:56:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:56:14 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0252e6abaf0ff12562710faa97dc617e372a424bf144947f39dcb38700423e9f`  
		Last Modified: Wed, 24 Jun 2026 03:18:31 GMT  
		Size: 236.2 MB (236248824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cd38be8291394d00f89eb68fb7e79c6ae30c0815711f4babf16d2d5cc19e79`  
		Last Modified: Wed, 08 Jul 2026 16:56:44 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5230edbb6b3b636a2f1dc144243fe4dee9fa40394c3bc7bb116dd7378b6cf0`  
		Last Modified: Wed, 08 Jul 2026 16:56:47 GMT  
		Size: 63.4 MB (63411295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b166f5d4b281b22268295ba63bec484411828341c60682f37dccceb9d18f6c`  
		Last Modified: Wed, 08 Jul 2026 16:56:44 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie` - unknown; unknown

```console
$ docker pull node@sha256:43c005c8881638719cea1670c9b08a49dae0d34c98486a970dc34853f6ecbad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17432696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d2e473ac3ee8b7060e32836f1bf0a8b34184ec1c00917bb60288f4033288c90`

```dockerfile
```

-	Layers:
	-	`sha256:083eb1aab05bbe0a2f9d9d45f090022c571c803dd75b1f85ed0467fc571b4806`  
		Last Modified: Wed, 08 Jul 2026 16:56:45 GMT  
		Size: 17.4 MB (17413588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae5f507920ada778f31ed8d2f29afb7847bfc7584f275101c2213065e6d91f32`  
		Last Modified: Wed, 08 Jul 2026 16:56:44 GMT  
		Size: 19.1 KB (19108 bytes)  
		MIME: application/vnd.in-toto+json

### `node:trixie` - linux; arm64 variant v8

```console
$ docker pull node@sha256:0033cf6edf71f41fc14640772c9ade34c159e996d7718dd42b8a8fff5f105f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.3 MB (432266776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07176d62d947777804b9633eae9528baf449a317251eb1a4bae78707a4dc5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 08 Jul 2026 16:56:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 16:56:31 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 16:56:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 16:56:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:56:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:56:31 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646ad84cb24eb29e047f2b410af92e39c7ab4bd62a2d2ab0a6ff6a0ef84ba33`  
		Last Modified: Wed, 24 Jun 2026 03:18:10 GMT  
		Size: 226.4 MB (226363204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3f1f754a2667bc84c9f688b3fbe2f409c071368210c2b70cc47e319ae612fc`  
		Last Modified: Wed, 08 Jul 2026 16:57:01 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992dc12d09985a29cf3e0981e7878eb13ea076987fd02551ce1675b88c6e0b16`  
		Last Modified: Wed, 08 Jul 2026 16:57:04 GMT  
		Size: 63.6 MB (63601897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dffbc6683c2640ac3f6654ecb8b3a65e1698d383c8901cd5d4d7fdbc7adc70b`  
		Last Modified: Wed, 08 Jul 2026 16:57:01 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie` - unknown; unknown

```console
$ docker pull node@sha256:30e6b524e6d23eb29685d52a89c7278dc83d15455b4bbfba6413b75e7dc6a534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17516628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b658c89916097f6ccef8605fd08971b49706467d25ad0614001ea43f50c237`

```dockerfile
```

-	Layers:
	-	`sha256:979ea920e6b015afb6a4dbb7c2addf17cd721a71d5c3645dc013483a47ccd708`  
		Last Modified: Wed, 08 Jul 2026 16:57:03 GMT  
		Size: 17.5 MB (17497329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f398fb3f75195686801323251f46941c573482b044006ea6a12f72e271d0df61`  
		Last Modified: Wed, 08 Jul 2026 16:57:01 GMT  
		Size: 19.3 KB (19299 bytes)  
		MIME: application/vnd.in-toto+json

### `node:trixie` - linux; ppc64le

```console
$ docker pull node@sha256:5dffb3eb317f96cb3f9fcf1fec1490f29d1f921f5efbb79e5670250a75dd08f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **450.7 MB (450679113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6fdb8e63aa626d6fc621395a3f888ddfe0a35f0a029fcd4e335c1bd875a5425`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:26:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 09:11:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 11:42:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 08 Jul 2026 17:27:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 17:27:23 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 17:27:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 17:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 17:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 17:27:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823f80d2a3204cde8ea1e7cf5156c0b0e385216cbdcc894bd75c3d81ec51271e`  
		Last Modified: Wed, 24 Jun 2026 03:26:58 GMT  
		Size: 27.0 MB (27022027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d839bd23ba3483deaa2fe15c35bcf5914f88e1187bd81dc630463eccbfa83ab`  
		Last Modified: Wed, 24 Jun 2026 09:11:50 GMT  
		Size: 73.0 MB (73042732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6b290a040690185dcb63185c594c9a890b9bb513b83a709420a3abd8f7b678`  
		Last Modified: Wed, 24 Jun 2026 11:43:40 GMT  
		Size: 231.4 MB (231374483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a527a796e9e5f2911e01e4fcdf70ad49800c8a0485388452beb755a27022f416`  
		Last Modified: Wed, 08 Jul 2026 17:28:27 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70235bf6f31f1aca3222874e795c1ec21232662dd11ab44497b0ffc3be62285f`  
		Last Modified: Wed, 08 Jul 2026 17:28:29 GMT  
		Size: 66.1 MB (66098031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771f319c21b7ac92509b6fb194a44fd790675171bb0606ea64f20e4690d425d7`  
		Last Modified: Wed, 08 Jul 2026 17:28:27 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie` - unknown; unknown

```console
$ docker pull node@sha256:a2a950d45835d7a526fbcb3e2e66f77ebbd931bfe616e24ed1dc3fe38a9b7283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17418357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61dd7f505cc1c406d00e5cb4a1f039a36c8c51c3fff706606a96fd0447c09081`

```dockerfile
```

-	Layers:
	-	`sha256:7a180f13f0c971292c7741bd132d7e2149921340a15092e61c026b6dd22ec1cf`  
		Last Modified: Wed, 08 Jul 2026 17:28:28 GMT  
		Size: 17.4 MB (17399167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:677a31030f44d52ea13a2f666571cf9325df3e309e3ee87d2004115af57de7be`  
		Last Modified: Wed, 08 Jul 2026 17:28:27 GMT  
		Size: 19.2 KB (19190 bytes)  
		MIME: application/vnd.in-toto+json

### `node:trixie` - linux; s390x

```console
$ docker pull node@sha256:47cb1c0b3004d7cc5ac57bbb8bee1fbee976e375996d6d3285373f5914c9dc72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.5 MB (416480530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c449b31f80bc70c1dda686efbedc3ce6ff60ffca4d67c94d2d7581ba2ffaf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:46:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 05:17:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 08 Jul 2026 17:20:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 08 Jul 2026 17:20:30 GMT
ENV NODE_VERSION=26.5.0
# Wed, 08 Jul 2026 17:20:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 08 Jul 2026 17:20:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 17:20:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 17:20:30 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26ad8b668881e5b88baa7f13010c93f1bce4021cd7e873db608fc3d64c83f78`  
		Last Modified: Wed, 24 Jun 2026 02:46:45 GMT  
		Size: 26.8 MB (26803945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2467c361ab8894fdba8935a4c045eb8f691562f8d8866636ae12b0e066b40329`  
		Last Modified: Wed, 24 Jun 2026 04:30:46 GMT  
		Size: 68.6 MB (68645672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fffb153b40577970ef862743ac9f3be7998a409d21a818e83c91335b8440e1`  
		Last Modified: Wed, 24 Jun 2026 05:18:51 GMT  
		Size: 206.7 MB (206745343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c846589ef097c04cc09740bdabcd03c6b84be9087bbadd8b21e61d4b2ce44d`  
		Last Modified: Wed, 08 Jul 2026 17:21:34 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefb24f5f4441ad820e16c4d6bad5cde2afcd4b30fb67af5d7453607fbc68057`  
		Last Modified: Wed, 08 Jul 2026 17:21:36 GMT  
		Size: 64.9 MB (64895733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c31879393e6c327097f1cb170a1994c83937ae844cda24772910b6d5b5f59761`  
		Last Modified: Wed, 08 Jul 2026 17:21:34 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:trixie` - unknown; unknown

```console
$ docker pull node@sha256:96b3aeeb828ce37d37edd7061fe4b6ef5d9451ebf144eaa3a595e8fcfde6949b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17209929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1f4701aeaab4d2f8873d4c6b7aa5a309d6f002a1f149bcdd99d160a36d6b71`

```dockerfile
```

-	Layers:
	-	`sha256:f097afabca072971cd0e5f8bd5d372523aed53192a50009fe76b26d1a5d2c752`  
		Last Modified: Wed, 08 Jul 2026 17:21:35 GMT  
		Size: 17.2 MB (17190821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb33b3910b8f5aba9fe88d145dbb2df85aeca1cb33b5f559b123ed1d6aa73ca5`  
		Last Modified: Wed, 08 Jul 2026 17:21:34 GMT  
		Size: 19.1 KB (19108 bytes)  
		MIME: application/vnd.in-toto+json
