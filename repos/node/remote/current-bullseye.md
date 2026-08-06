## `node:current-bullseye`

```console
$ docker pull node@sha256:be43e6820ac54bbaa3d11e297c5ddb77d1fbc98cbf8834bec16678f52eb41eff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:current-bullseye` - linux; amd64

```console
$ docker pull node@sha256:a68aab5db0f3b8222fae613dffeab0b1acac960c0ccbaa0a18e1084bca33908e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.6 MB (385590567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d76bfd8c341856e5e375d6bce671b8e356a4ade0fb6e25873d0c0362eee615`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 21:18:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 21:18:28 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 21:18:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 21:18:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 21:18:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 21:18:28 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15d7359387d3fa9038e8bf44abbc955fd847f0ed595392167fcb6d374b1e30a`  
		Last Modified: Wed, 05 Aug 2026 00:44:46 GMT  
		Size: 15.8 MB (15790899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0a3e14e2bc3edab26279efc9f99cea6cf0836afea309df0f22368b3636c12a`  
		Last Modified: Wed, 05 Aug 2026 01:33:09 GMT  
		Size: 54.7 MB (54743062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88923925ca8ddd26ef18f1d112e6c67c4f60b5600d788bcece91c26d2b26b472`  
		Last Modified: Wed, 05 Aug 2026 02:17:27 GMT  
		Size: 197.4 MB (197395653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76cbaf2995b3ce258eb7bf92cd3862072ebe83f5eaf46189e1c91b2e75878e58`  
		Last Modified: Wed, 05 Aug 2026 21:18:55 GMT  
		Size: 4.1 KB (4092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733eff78e63e9947a7b38a90a7158deba21e81db05aafc9eebe14bbb70cae189`  
		Last Modified: Wed, 05 Aug 2026 21:18:58 GMT  
		Size: 63.9 MB (63879398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48eb8b4f5cc8485cbc04b4a675402d04a15abbc7b1968253f5cf2c2af9e0468d`  
		Last Modified: Wed, 05 Aug 2026 21:18:55 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-bullseye` - unknown; unknown

```console
$ docker pull node@sha256:22584b9d10725e70579c1976ae3730a1e01c9475b5596e73923c23cd4ab51a5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15697678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fbec8569ba4e62a7689d0255763f38572429e721fd654779de4c76c186d3eae`

```dockerfile
```

-	Layers:
	-	`sha256:ba482c9eff20fad541844aaa0da8c7b3fedbdf97f3b677a823b3550f97de4a07`  
		Last Modified: Wed, 05 Aug 2026 21:18:56 GMT  
		Size: 15.7 MB (15680321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8f8bfec92ba21e902e1478f369c66486698f71378d71db1476d25757ffc0549`  
		Last Modified: Wed, 05 Aug 2026 21:18:55 GMT  
		Size: 17.4 KB (17357 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-bullseye` - linux; arm64 variant v8

```console
$ docker pull node@sha256:7c7317b58b8cf90b9dfb65ee56fd937662808ddc887c2929024a67af5370a8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377295052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f42be17d099c6e0b444c53857cebb2bef9d16fa94332c45a5bbab36cb137bdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 22:07:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 22:07:18 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 22:07:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 22:07:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 22:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 22:07:18 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5207d92eea9a933027b87222e2222a508f86aa6a0611f397c4c08f266c630bba`  
		Last Modified: Wed, 05 Aug 2026 00:47:16 GMT  
		Size: 15.8 MB (15774850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b5fcd073141b3adf766799633642f41c4f77cfb62c0c10742e8ae4e709d40c`  
		Last Modified: Wed, 05 Aug 2026 01:39:50 GMT  
		Size: 54.9 MB (54879738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793adb69cffdafc143f553af2ccf72096d98d2e73f3f71d7d889ab7469441c56`  
		Last Modified: Wed, 05 Aug 2026 02:17:13 GMT  
		Size: 190.3 MB (190304139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fb68c19f0cfc2afb8802dba15e0f62fa2924033f5f07e16a2d0532318520af`  
		Last Modified: Wed, 05 Aug 2026 22:07:45 GMT  
		Size: 4.1 KB (4095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796e21302644d193bd1486a9c72e768dbe3763b44592e6388178deba45a18e44`  
		Last Modified: Wed, 05 Aug 2026 22:07:47 GMT  
		Size: 64.1 MB (64070882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb50fc1d25be8526365b31e04c53f9ff9d7a5bfb459509cf456e27fadd03b01`  
		Last Modified: Wed, 05 Aug 2026 22:07:45 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-bullseye` - unknown; unknown

```console
$ docker pull node@sha256:9ff95ac4e619178c4206c151653e0b1082c31de1adf79f6537d010d18ae5bd30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15699789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a05ab83092531aa8084ae7eff8856d192b26b2a259c5f8d8e37c1a0f3667290`

```dockerfile
```

-	Layers:
	-	`sha256:d3db605eefccf0e03dc90c93122eeb95f18f7612af4464d3d77b4b4933cc4980`  
		Last Modified: Wed, 05 Aug 2026 22:07:46 GMT  
		Size: 15.7 MB (15682302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a650162f2361e1972a0445ba0b3eac9691fad790c430a88eb093b4b743e9ea8f`  
		Last Modified: Wed, 05 Aug 2026 22:07:45 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
