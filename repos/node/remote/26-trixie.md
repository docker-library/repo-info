## `node:26-trixie`

```console
$ docker pull node@sha256:7b7b64c8662b720a84607d0c2bfff6ebc864813ef129b9fd9517ffe57b33caa5
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

### `node:26-trixie` - linux; amd64

```console
$ docker pull node@sha256:cad3d421752df04025739eab1cec176426916faec228ff684211394c5bc8e339
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.6 MB (443643510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2668753cdf3d2dbe65552e49442b313e215da88894c32500b8ffa5c03c4fddb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:17:23 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 03:17:33 GMT
ENV NODE_VERSION=26.9.0
# Sat, 19 Sep 2026 03:17:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 03:17:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 03:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 03:17:33 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7272a918094ebc3b66e08b23223afd37614df4ba4518b2dfd9da5ee9247fce6`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 236.4 MB (236398594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7665ed3408051631253f9b1ecdc634a42d5ef9805940f6f8deea3911a1dc943a`  
		Last Modified: Sat, 19 Sep 2026 03:18:02 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd99d90d047c6bd5776499b08999f0a71d32298579d794f454e04ede16b4325`  
		Last Modified: Sat, 19 Sep 2026 03:18:04 GMT  
		Size: 64.4 MB (64413887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de648b68ec0b8671dab7822f861aea3917e4bae6103d162312738e124323a9a7`  
		Last Modified: Sat, 19 Sep 2026 03:18:02 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-trixie` - unknown; unknown

```console
$ docker pull node@sha256:501532eded0ba085a110f0d061bc0dbc5f2eede40e6e2183db698b86a1050a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17434841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1455150030e528056c9712bcb9d7958730e1d0d0cd8650fd4e0bacd9cd1ba8b7`

```dockerfile
```

-	Layers:
	-	`sha256:52a7effcd9fc83a1b408c57ef2369e911ddd023d4dbebed020f5338c1c94eef8`  
		Last Modified: Sat, 19 Sep 2026 03:18:03 GMT  
		Size: 17.4 MB (17415985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19767dd7daa945776830c51ae70ba340f9e69dcc3c865a490296c6cec44537a5`  
		Last Modified: Sat, 19 Sep 2026 03:18:02 GMT  
		Size: 18.9 KB (18856 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-trixie` - linux; arm64 variant v8

```console
$ docker pull node@sha256:f120f1f1f3b3b664204dce0338180eff3c9429a190f9c8af11c991a066757ac9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.5 MB (433476765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0acbe683a65bd1a2d3f714834e3232f3cd4a59de0c0e15b7d402f8e63c7cea7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:16:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:16:48 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 03:16:58 GMT
ENV NODE_VERSION=26.9.0
# Sat, 19 Sep 2026 03:16:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 03:16:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 03:16:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 03:16:59 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509699aefca8644182ba53d01f998f83920f606f076b388179b8f50e80622dd3`  
		Last Modified: Sat, 19 Sep 2026 02:17:25 GMT  
		Size: 226.5 MB (226531000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3bc62978f6889a3defc74b71e8ea8e41b721dfbebfa9c921b7debc4ecd38b0`  
		Last Modified: Sat, 19 Sep 2026 03:17:29 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0488aade5012c1865b4f871bf34e9792eb023b626f6f9364015d5959a8ed24`  
		Last Modified: Sat, 19 Sep 2026 03:17:31 GMT  
		Size: 64.5 MB (64531941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921bdd6cda668726aefab22c93e08674517328862baa27a5688239ea9cb9a926`  
		Last Modified: Sat, 19 Sep 2026 03:17:29 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-trixie` - unknown; unknown

```console
$ docker pull node@sha256:54315163aed8bf7af6ba3c7991ba9439d2482a6bf7feed8d2ae744a1b643f155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17518774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35cf873a20f53dd24741ed9b02ed21aaf20b291ddc6392109ecbc1fbf3d9b77`

```dockerfile
```

-	Layers:
	-	`sha256:9c7dd44b46ab3859a96971ba76d70b69de763133f836f80ad2ff098730933cf3`  
		Last Modified: Sat, 19 Sep 2026 03:17:30 GMT  
		Size: 17.5 MB (17499727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea4c82b6023b50ac6694a6973e1a0970652b842157298369a0a7f2767084104e`  
		Last Modified: Sat, 19 Sep 2026 03:17:29 GMT  
		Size: 19.0 KB (19047 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-trixie` - linux; ppc64le

```console
$ docker pull node@sha256:9596bb293993fa57e5d698f59c4a86d78b408f56120f5c1d59d3fde9ec72d6f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.3 MB (451329774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d6954f5793e219023fbdce8c4d0bd0b61e5ac64e76ae0450a529f855e2914a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 17:01:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 16 Sep 2026 22:35:24 GMT
ENV NODE_VERSION=26.9.0
# Wed, 16 Sep 2026 22:35:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 16 Sep 2026 22:35:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 22:35:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 22:35:25 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792cbe84692bee50d73b99e02db72f30d5fcfaaecf40247e897c037fdcb47345`  
		Last Modified: Thu, 27 Aug 2026 17:03:20 GMT  
		Size: 3.3 KB (3331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e53707a6725592dbc17b975a0f4957756f856d84a23486466ec587e9ab7742`  
		Last Modified: Wed, 16 Sep 2026 22:36:41 GMT  
		Size: 66.6 MB (66582397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfbb88004066595b045acc3d2cc3bb572bc5f4c63542fd8fe6832b94ba3ff36a`  
		Last Modified: Wed, 16 Sep 2026 22:36:38 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-trixie` - unknown; unknown

```console
$ docker pull node@sha256:120bed66b43ee5938f1f4377de4f0ba5e03f5410e30010318594f38cf66a1f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17419557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7368e114cd70b3802b206b7cbad4b1b207566374dfde9df959b37bc0e6a4d2e1`

```dockerfile
```

-	Layers:
	-	`sha256:12eef26228c8d5b0acbd3b67e65c8445a5dfd0382bb834b5ef4a8d1a47beb8c9`  
		Last Modified: Wed, 16 Sep 2026 22:36:39 GMT  
		Size: 17.4 MB (17400619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48582c30edf40f7ab9a764f152f04120eaa2376fa5ef6771da5fcd577c70413d`  
		Last Modified: Wed, 16 Sep 2026 22:36:38 GMT  
		Size: 18.9 KB (18938 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-trixie` - linux; s390x

```console
$ docker pull node@sha256:c6d96c8903fb3f2214c4c5e3e9d8fb8f6cbd42cbcad484d1ee4696c3ac36834e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.8 MB (417830642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:253cb109be374f12b053ee6980c6faf2acb7020617096787a23f82d200f089a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:14:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:13:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 03:13:53 GMT
ENV NODE_VERSION=26.9.0
# Sat, 19 Sep 2026 03:13:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 03:13:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 03:13:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 03:13:53 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d7f01aaf1425e5bab35f21787552e84e690f2ebd0b23f38a585ea9de889a6a`  
		Last Modified: Sat, 19 Sep 2026 02:15:49 GMT  
		Size: 206.9 MB (206919365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49fa5c99735d3fd712cdd9a7ca3652e13d99f4fe0294557834d5c9d0632693d`  
		Last Modified: Sat, 19 Sep 2026 03:14:33 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff05bee08db5fdb412774384328d37e1f3afaba092b39ca83fef25e7fa91ed98`  
		Last Modified: Sat, 19 Sep 2026 03:14:34 GMT  
		Size: 66.0 MB (65987168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:786c36c1c31fb5a6f092e57f5aab5016cf275324b7154f206818071c4cb3cb10`  
		Last Modified: Sat, 19 Sep 2026 03:14:33 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-trixie` - unknown; unknown

```console
$ docker pull node@sha256:b86af81c58ab2fcb0ec6fdefcc139bae682bc60ce1b5448d95a2db667a2ae1c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17212073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddbd3ed24fdf8bfb965c08cad2404be4af9988c783b11fce6072c3d8567292d`

```dockerfile
```

-	Layers:
	-	`sha256:84ccb6c3721e4316c1355e03b8a674089b697cd269da0cff86c11003b048d671`  
		Last Modified: Sat, 19 Sep 2026 03:14:33 GMT  
		Size: 17.2 MB (17193217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8d0c89b47fe61a7903c673f7e90d5274167ccaaea88712af6128ceba0b9080f`  
		Last Modified: Sat, 19 Sep 2026 03:14:33 GMT  
		Size: 18.9 KB (18856 bytes)  
		MIME: application/vnd.in-toto+json
