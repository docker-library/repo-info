## `node:krypton`

```console
$ docker pull node@sha256:da4221677e02b54ef6335adfa447578d512ad14f251024fb92ea433c2c102760
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `node:krypton` - linux; amd64

```console
$ docker pull node@sha256:c63c141d44b95acaaad974613337a25493b054a287e07c6e5b195f1e4cad6dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.9 MB (408949206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c437b11185d995cb662746d1ae3dffee808239dffd5d55e9b9615be1edcd0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 03 Aug 2026 20:26:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Mon, 03 Aug 2026 20:26:23 GMT
ENV NODE_VERSION=24.19.0
# Mon, 03 Aug 2026 20:26:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:23 GMT
ENV YARN_VERSION=1.22.22
# Mon, 03 Aug 2026 20:26:26 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 03 Aug 2026 20:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Aug 2026 20:26:26 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e7f1cb7a296e8a2f35401d96a0c2fc030894e200451ae74437bdb7a4b2cb43`  
		Last Modified: Tue, 14 Jul 2026 03:18:35 GMT  
		Size: 211.6 MB (211626576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bb985080b3f921cf426b26d8450d84a06b982ba1f0f84e75231e9b9d06706d`  
		Last Modified: Mon, 03 Aug 2026 20:26:50 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85f93d4f8f64f32a8187318997c1c4d4abd8b9ccf0b137f80840397a7ace23e`  
		Last Modified: Mon, 03 Aug 2026 20:26:52 GMT  
		Size: 59.1 MB (59118223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82cfaa427f84dea5fdc6767506c4a618dcaa22ac0ee5dd7d785c74c51fec4743`  
		Last Modified: Mon, 03 Aug 2026 20:26:50 GMT  
		Size: 1.3 MB (1250674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a1300f167248399db1a2150207842a8ab704553b7d2d0673f0ec6525b4e218`  
		Last Modified: Mon, 03 Aug 2026 20:26:50 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:krypton` - unknown; unknown

```console
$ docker pull node@sha256:76a17620a1abd49069985a67302d7e07f127b76a03cba3ac3409b486d38725b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16104133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad4a421eb539bc201de3f67236ec2c349a251c27b3bb6f576c4a97149184d0f`

```dockerfile
```

-	Layers:
	-	`sha256:bfc5f34fc0d04462680ce4c96e8604f7f1ba6d1b2f6486945a4e54307601ad20`  
		Last Modified: Mon, 03 Aug 2026 20:26:51 GMT  
		Size: 16.1 MB (16079470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6547e8eef0f08996971cc6a7bf4b763d83edc5ac412a6511c7e0d3b1133bd423`  
		Last Modified: Mon, 03 Aug 2026 20:26:50 GMT  
		Size: 24.7 KB (24663 bytes)  
		MIME: application/vnd.in-toto+json

### `node:krypton` - linux; arm64 variant v8

```console
$ docker pull node@sha256:496ea0aa64c58d276ee30cb05a7ad1933adffffd936551ca8c5ae83cdd3a04fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.0 MB (400000940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47de8e7880b3c898fbec70706bf9c536b9fa78843d42ea82bffcc7f6b222ff5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 03 Aug 2026 20:25:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Mon, 03 Aug 2026 20:26:01 GMT
ENV NODE_VERSION=24.19.0
# Mon, 03 Aug 2026 20:26:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:01 GMT
ENV YARN_VERSION=1.22.22
# Mon, 03 Aug 2026 20:26:04 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 03 Aug 2026 20:26:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Aug 2026 20:26:04 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af2d47cd8540f7af1f8ba488289fa82e9a2258d051477163651baf22fc99ea6`  
		Last Modified: Tue, 14 Jul 2026 02:37:00 GMT  
		Size: 64.5 MB (64498147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09cafdc051b9826ce9f47360fd9501131e7c28c94021b769e4e6d91204cdf8a`  
		Last Modified: Tue, 14 Jul 2026 03:18:39 GMT  
		Size: 203.2 MB (203150933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519f7316393ca5fb1c42eb9ab3a61093659a2ab0db0c6bd0eca4bae5a4ebc3b5`  
		Last Modified: Mon, 03 Aug 2026 20:26:31 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a54e49168bf2d388cb912b97d6fb41f6520ec0e48d05aca53db5fc0ab6e9bbe`  
		Last Modified: Mon, 03 Aug 2026 20:26:33 GMT  
		Size: 59.1 MB (59101023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e2271fd2ade1e02a228e44a94ba9d383e011e04ebb9e18ab4fed949fc611bf`  
		Last Modified: Mon, 03 Aug 2026 20:26:32 GMT  
		Size: 1.3 MB (1250674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043f4021229af76443252b1fd3f400857c6714256d151b7e4bf7dea57d3840e5`  
		Last Modified: Mon, 03 Aug 2026 20:26:32 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:krypton` - unknown; unknown

```console
$ docker pull node@sha256:65cce8a2af25ee8d48dd4166604301ae2112052af046de268ae36a8156dbda1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16132961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436e395d778a18cb04d5299f712cbd1369ab80fce16039fd6f0d4f56fd2fece2`

```dockerfile
```

-	Layers:
	-	`sha256:6abebd76f3ee8a32b4df85a89d681951db924e4ce61a287c77aa78265ec89c5c`  
		Last Modified: Mon, 03 Aug 2026 20:26:32 GMT  
		Size: 16.1 MB (16108080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09751fdfdace820a15c8341e4b8eb22d3cd326ca0ff2ab3949c624d59a5b3ca0`  
		Last Modified: Mon, 03 Aug 2026 20:26:32 GMT  
		Size: 24.9 KB (24881 bytes)  
		MIME: application/vnd.in-toto+json

### `node:krypton` - linux; ppc64le

```console
$ docker pull node@sha256:a13f2926cb793572bd373df9ca55cb8acb716ceff6220260716275adbf2d6408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.9 MB (425870892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1cbbf754a3a25039a9f539087a266d5bad673861a875050fba9aea1add3275`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:49:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 12:13:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 14:46:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 03 Aug 2026 20:26:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Mon, 03 Aug 2026 20:26:58 GMT
ENV NODE_VERSION=24.19.0
# Mon, 03 Aug 2026 20:26:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:58 GMT
ENV YARN_VERSION=1.22.22
# Mon, 03 Aug 2026 20:27:03 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:27:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 03 Aug 2026 20:27:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Aug 2026 20:27:03 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206cda10cbd9dac32ecbd02a80861ff43df730ef77172b28d0e3c72a02c96ae`  
		Last Modified: Tue, 14 Jul 2026 03:49:23 GMT  
		Size: 25.7 MB (25687296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dc397ad605293503e3db0dcc973f7b867a960c6167203f96e7b22c80e4c3cc`  
		Last Modified: Tue, 14 Jul 2026 12:13:50 GMT  
		Size: 69.9 MB (69851191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b94e7fef93bb77dac93a6a05c2651a4d097bbc0083d845f9f4e669301fac9d3`  
		Last Modified: Tue, 14 Jul 2026 14:48:23 GMT  
		Size: 214.7 MB (214698785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4985e218b915be9a9089bc5c7ac787cdbf2ea436ebfc4bbee55beaf22a70a281`  
		Last Modified: Mon, 03 Aug 2026 20:28:06 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533d283ba0ec213f3ab20a8667d0bb327f567d95403dd0c82ed31b8256178e59`  
		Last Modified: Mon, 03 Aug 2026 20:28:08 GMT  
		Size: 62.0 MB (62037335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d68b2148d0c33851f5b0afd9af77231a6c7045ab72d498162fc764a773cf48`  
		Last Modified: Mon, 03 Aug 2026 20:28:06 GMT  
		Size: 1.3 MB (1250676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4291e060c243404057b14cc1315b452e238d96c5a6fada01e5cfdfde72e41d`  
		Last Modified: Mon, 03 Aug 2026 20:28:05 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:krypton` - unknown; unknown

```console
$ docker pull node@sha256:fa77f7d43a7388f9dea05e9eaebc487870b5a693a6412f7fae9e7e3fd179e2bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16080780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e451bfc5c3e6707972d2302c33669cef435e6b59016fe4ee8e843f65e474ea2`

```dockerfile
```

-	Layers:
	-	`sha256:f61e77b4b648934f1b7fd53bf010ef671476a8dd20641caa7c70be8380958a93`  
		Last Modified: Mon, 03 Aug 2026 20:28:06 GMT  
		Size: 16.1 MB (16056027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05f7dbf7115b77e3102b1272c750220ad9aa4fa016b22a8c35457e81d5874d2a`  
		Last Modified: Mon, 03 Aug 2026 20:28:05 GMT  
		Size: 24.8 KB (24753 bytes)  
		MIME: application/vnd.in-toto+json
