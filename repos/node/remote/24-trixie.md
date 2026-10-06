## `node:24-trixie`

```console
$ docker pull node@sha256:c62c1553d064ddfb62d9f7de1a4b16243101bddd2c58b6069f3364fc6c233eec
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

### `node:24-trixie` - linux; amd64

```console
$ docker pull node@sha256:34f08d4a9e30250a9522c094e80725be321c04d12f819972c66a8e1d5ba5a62e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.9 MB (440872175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e36c310b107bc9431952d9df3e315c102615be43be86b4a8503993f961b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 04:20:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 04:20:26 GMT
ENV NODE_VERSION=24.21.0
# Tue, 06 Oct 2026 04:20:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:20:26 GMT
ENV YARN_VERSION=1.22.22
# Tue, 06 Oct 2026 04:20:29 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:20:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:20:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:20:29 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2eb680928d477abf960adfa8bb00fa681dac38ca5f624850072ed2976a80607`  
		Last Modified: Tue, 06 Oct 2026 03:17:13 GMT  
		Size: 237.0 MB (236958924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9871e38eee16c09dc13b0d47b60fa6fd43006ee20dceb2f1cd9ec9869734a7`  
		Last Modified: Tue, 06 Oct 2026 04:20:58 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2755624bec68fe46913c7f51a5610e32f2b38244a8b84a5d2740604d44eccb10`  
		Last Modified: Tue, 06 Oct 2026 04:21:00 GMT  
		Size: 59.8 MB (59818171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1e0ab21107fe71d8776d9dabed82a40b2ad867e3ca279e7db4393eee1a177f`  
		Last Modified: Tue, 06 Oct 2026 04:20:58 GMT  
		Size: 1.3 MB (1250673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0acbb183f2e5ed25c71175b368517eff5c1f4e705b2ad30904370594ff1b9a3b`  
		Last Modified: Tue, 06 Oct 2026 04:20:58 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:24-trixie` - unknown; unknown

```console
$ docker pull node@sha256:10da18536f4b22558f0e900fd1072456f002ab985d5b4b3e63fa8ed6c69be403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17439949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f34163598f8763de1f22bca69c693286990ab87a3d8d495576404b63fce2ca`

```dockerfile
```

-	Layers:
	-	`sha256:db0f6434e11046bcb959b46e32e814f8aea89ea28ed8398d9bf63a493b0772f3`  
		Last Modified: Tue, 06 Oct 2026 04:20:59 GMT  
		Size: 17.4 MB (17417123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:650b01b96ff1dce37b7a6d314c9a3bcaf88093d90f8766a9efa0aa58d5978994`  
		Last Modified: Tue, 06 Oct 2026 04:20:58 GMT  
		Size: 22.8 KB (22826 bytes)  
		MIME: application/vnd.in-toto+json

### `node:24-trixie` - linux; arm64 variant v8

```console
$ docker pull node@sha256:4eb28a89c578058c1c2a886c69ecebdaba471e4d960f6e44ef772714fba971c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.6 MB (430550712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cbc5e807c4eb8dc633407977e14d05b24b38376224de47f468527507526eb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 04:19:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 04:19:28 GMT
ENV NODE_VERSION=24.21.0
# Tue, 06 Oct 2026 04:19:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:19:28 GMT
ENV YARN_VERSION=1.22.22
# Tue, 06 Oct 2026 04:19:30 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:19:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:19:31 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21752e08707a6638705993e6bfb3c10ca133b961f244150e94fd5cdc80a02ce5`  
		Last Modified: Tue, 06 Oct 2026 03:16:50 GMT  
		Size: 227.1 MB (227068663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ea1c79cc67965283b472836a638d82116c013d1debaf8b2f8a185478328cbc`  
		Last Modified: Tue, 06 Oct 2026 04:19:58 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295c599cfbd785df069d627095dab44b8518155e6d1b462a711b29eaa7f2105d`  
		Last Modified: Tue, 06 Oct 2026 04:20:00 GMT  
		Size: 59.8 MB (59805227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b0b4d82c5fb45842b58db8893c0c063f3b7297e13f7706c213ea9e40966447`  
		Last Modified: Tue, 06 Oct 2026 04:19:59 GMT  
		Size: 1.3 MB (1250674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96cea69c18f2a0181544bd9e03f30ca791e10fedcfe5a8815d139ca19df5c10e`  
		Last Modified: Tue, 06 Oct 2026 04:19:58 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:24-trixie` - unknown; unknown

```console
$ docker pull node@sha256:944015d1e8c034d51fb24eb77f61c8c4692b28c89bb64766884fd2e3595356e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17523777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112c63d1dffacdc686e64f60015227ff48a3f02e39831086587942e3d4f32415`

```dockerfile
```

-	Layers:
	-	`sha256:0ae01e2e4829036a2de518c77c56f5cd9e145f021d8644dbe8e960520829ee29`  
		Last Modified: Tue, 06 Oct 2026 04:19:59 GMT  
		Size: 17.5 MB (17500805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26d86d3a8cbe12bebe2ca193b40446be83156115d5034e411ec90cd8b68b26e1`  
		Last Modified: Tue, 06 Oct 2026 04:19:58 GMT  
		Size: 23.0 KB (22972 bytes)  
		MIME: application/vnd.in-toto+json

### `node:24-trixie` - linux; ppc64le

```console
$ docker pull node@sha256:12b0fdce9563d3468ee83873560849605537996b3fd7d497b3ff28e1f58bc4d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.8 MB (448843143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c70b3392c8ed40a070dc47d43124100ed3188784c419ab735b325bb71d8a612`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:17:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 09:07:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 11:52:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 12:24:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 12:26:02 GMT
ENV NODE_VERSION=24.21.0
# Sat, 19 Sep 2026 12:26:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 12:26:02 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 12:26:05 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 12:26:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 12:26:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 12:26:06 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57552d4d0f86a402301d735d57c01cd3d2d1724c711b625717be1f6749424be9`  
		Last Modified: Sat, 19 Sep 2026 03:17:41 GMT  
		Size: 27.0 MB (27022750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688421ee6cf78616bfc56c3cd74e55a2ab39b5a15aae8b60dd132fa0e6540f48`  
		Last Modified: Sat, 19 Sep 2026 09:08:06 GMT  
		Size: 73.1 MB (73088760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c89902ee2ceb1c675e5061f66535ff96b390aad3d683133351534c2e2cb790`  
		Last Modified: Sat, 19 Sep 2026 11:54:08 GMT  
		Size: 231.5 MB (231524432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909baebb2ae8e4c21be938bb09271459533e691e56fa0da5b5bf33cbb0754ad2`  
		Last Modified: Sat, 19 Sep 2026 12:25:31 GMT  
		Size: 3.3 KB (3326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387b0d768b3f8685a5baa6109dd94aaf38fd5d097e2b4d8f2d0e16dc3a2eb907`  
		Last Modified: Sat, 19 Sep 2026 12:27:02 GMT  
		Size: 62.8 MB (62757681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4078d0726f83374a1e3f7131b896cb7cdcddc382417e733e3ac0983189f28b97`  
		Last Modified: Sat, 19 Sep 2026 12:27:00 GMT  
		Size: 1.3 MB (1250673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da10e9d25e740ddfc750c550608affe2a56ebac241c7c92381879f7231820745`  
		Last Modified: Sat, 19 Sep 2026 12:27:00 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:24-trixie` - unknown; unknown

```console
$ docker pull node@sha256:b685f006ee182eceb7c62c87cc0d33ab3548153c73b2768e3c1e6089931122d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17425543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd185912bad380d30c014fe32d5e91bf4119dba9f5b11254b88931e4109df56`

```dockerfile
```

-	Layers:
	-	`sha256:4af324b116ec33f0c64d546b4e5025114fd6e83741fb9df5ea385cc6ea11d05e`  
		Last Modified: Sat, 19 Sep 2026 12:27:01 GMT  
		Size: 17.4 MB (17402663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34d2c3a5802fcbadeafb9eb2cb38d56c9eea48744f94ce9d4a59a847f3d3239f`  
		Last Modified: Sat, 19 Sep 2026 12:27:00 GMT  
		Size: 22.9 KB (22880 bytes)  
		MIME: application/vnd.in-toto+json

### `node:24-trixie` - linux; s390x

```console
$ docker pull node@sha256:852c9c0138f8857c5867dd4e82c64b246ca3e1cfb84dcb0561c73d9c1423b26c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.6 MB (412556266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376e87ef09761c5317e6f045d3dc7bc80774cfbc5e809246e073da808078fdba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:38:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:14:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 04:19:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 04:19:13 GMT
ENV NODE_VERSION=24.21.0
# Tue, 06 Oct 2026 04:19:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:19:13 GMT
ENV YARN_VERSION=1.22.22
# Tue, 06 Oct 2026 04:19:16 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:19:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:19:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:19:16 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d7b170e34e7dca9460179c992b6eda381e85641ec044682549ce9ced27e23`  
		Last Modified: Tue, 06 Oct 2026 01:58:17 GMT  
		Size: 26.8 MB (26817179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1b78aae7260f76f502ab7b85bc020f8bd10bf4a2140f84573948d91aba0b30`  
		Last Modified: Tue, 06 Oct 2026 02:38:36 GMT  
		Size: 68.7 MB (68656790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2bbd0c87db4912aa02105f94da02b8ad1b968fd4cc467fa0c7c68bfde6d6e2`  
		Last Modified: Tue, 06 Oct 2026 03:15:17 GMT  
		Size: 207.5 MB (207499745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c2ab050b53c5fd0556236eb334f396710e4bb8747cf80ede157e51e6ad54764`  
		Last Modified: Tue, 06 Oct 2026 04:19:49 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b8abc4c9ed9fe03b3452a69a97131af6c3d909df658c7964e809bdc202c817`  
		Last Modified: Tue, 06 Oct 2026 04:19:50 GMT  
		Size: 58.9 MB (58871111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c5be1088eff7f9b330d2915127b7d9c388b9f3495440ff3c69a29816642182`  
		Last Modified: Tue, 06 Oct 2026 04:19:49 GMT  
		Size: 1.3 MB (1250670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8e20b0551ee6b214da9a9ca31aeb1072282ab8cddec3f977e6d1f4495831bb`  
		Last Modified: Tue, 06 Oct 2026 04:19:49 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:24-trixie` - unknown; unknown

```console
$ docker pull node@sha256:c4ba7f18feadf53d6381982e1c658dc5e144a06856f7b8e16f79b5cc970b10bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17217181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5967f9467b19beddc80af9df18cd60c1bf955b4d2c022f5a7692db423e7332bf`

```dockerfile
```

-	Layers:
	-	`sha256:bf00f72db7aaa21a41803d9290064abfcb209460bca86fa9d37342672bd1b33d`  
		Last Modified: Tue, 06 Oct 2026 04:19:50 GMT  
		Size: 17.2 MB (17194355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:709dd8a27fc9a918a63166ede81f8ce9b8feb5b39b1e693b07cd45efef96518f`  
		Last Modified: Tue, 06 Oct 2026 04:19:49 GMT  
		Size: 22.8 KB (22826 bytes)  
		MIME: application/vnd.in-toto+json
