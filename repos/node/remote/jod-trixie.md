## `node:jod-trixie`

```console
$ docker pull node@sha256:d3814123a28182481e5463051a9b4400dd1edfedc1443f0fa4763736c1fc6b7d
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

### `node:jod-trixie` - linux; amd64

```console
$ docker pull node@sha256:fa572ad901e4aff455fe86b874c3b4120c40154cdf9250bfb8e24f8ae432db75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.9 MB (439867657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325dcbbb24ae1794a1d3d5c3b84be20b935d433c5e406b2da8662f70286f115b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:18:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 09:18:55 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 09:18:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 09:18:55 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 09:19:12 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 09:19:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:19:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:19:12 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696c1fe91c64662be9b13aa92628d62d6685ab94c0b55d185258a8f762133deb`  
		Last Modified: Thu, 05 Nov 2026 08:54:30 GMT  
		Size: 237.2 MB (237233076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3556644a52ce9db303eaa23f788700b932ac90ec018453d9c11c0a2a2a56a7fc`  
		Last Modified: Thu, 05 Nov 2026 09:19:39 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe3f62c854cbfe7b60f8388e62928b630211be6530577406687c4d2d47dd74d`  
		Last Modified: Thu, 05 Nov 2026 09:19:41 GMT  
		Size: 58.5 MB (58514539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22be70ddd0fd90b45a218de0309477ae6f2f15a3260897167e6600905d15efdd`  
		Last Modified: Thu, 05 Nov 2026 09:19:39 GMT  
		Size: 1.3 MB (1250680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0149d0b421259c2a16d8d07fa72c87c580446d312736bdb7ee7725e222da9024`  
		Last Modified: Thu, 05 Nov 2026 09:19:39 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod-trixie` - unknown; unknown

```console
$ docker pull node@sha256:e216ac2b3a12d5eec58c888b912b981c111f14be6cfb3a006e37e23fd018b301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17505670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02385c4ee0534ac212c33998bbcde95fa7165cf20a715a189cfe6de5c9a854e`

```dockerfile
```

-	Layers:
	-	`sha256:ea8ff215d8d70935b9916a6458df1046f04ae7622a8ea3a7722ac02593fd0045`  
		Last Modified: Thu, 05 Nov 2026 09:19:40 GMT  
		Size: 17.5 MB (17483154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac5c6701f8a1596eb5a15062053ae5ec85d765f4a8b0baba39bd45ddd220944c`  
		Last Modified: Thu, 05 Nov 2026 09:19:39 GMT  
		Size: 22.5 KB (22516 bytes)  
		MIME: application/vnd.in-toto+json

### `node:jod-trixie` - linux; arm64 variant v8

```console
$ docker pull node@sha256:e628cbf7c114ed4667aa143017d8b23ae7953c088b458fc52e62559dbbf73938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.6 MB (429564123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881d2adf02010d870dd5c0f6982b7697be9e41b044e18edd536706f7fac8e353`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:29:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 09:29:17 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 09:29:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 09:29:17 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 09:29:20 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 09:29:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 09:29:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 09:29:20 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e65e2c5234276be7d945d8054632dc3750c6c3de75b431be0629199b0507d80`  
		Last Modified: Thu, 05 Nov 2026 08:55:11 GMT  
		Size: 227.2 MB (227219437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2601f46a7dbf5aa893adb04ae990d662bd6ccd39f086214b8ddc19e870f7d8a9`  
		Last Modified: Thu, 05 Nov 2026 09:29:47 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c50e48ec967a29ffdf7c4c690daec16b460c0325808f9146da4e7fb5d61d23c`  
		Last Modified: Thu, 05 Nov 2026 09:29:49 GMT  
		Size: 58.6 MB (58640355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a711913549d140770125ee2389f3cef75c4c50d04280cfe864baaebdfb67121`  
		Last Modified: Thu, 05 Nov 2026 09:29:47 GMT  
		Size: 1.3 MB (1250672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60431ec0b61ba522e2e65caae88b81373d77b534d76474501e514d4aecd90edd`  
		Last Modified: Thu, 05 Nov 2026 09:29:47 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod-trixie` - unknown; unknown

```console
$ docker pull node@sha256:3888a40f7592a922e62db1b34308857d4e1cd174c76827ef6aa178cdee95de26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.6 MB (17589473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d014b63bb351cd195419c48ddeafb8d89a1fe98ca2670f3a748965c006b252e`

```dockerfile
```

-	Layers:
	-	`sha256:bf9c9dd0ac431dfcf29ae39a080a6e9654aa406fe0c4bc805427184e26ae503f`  
		Last Modified: Thu, 05 Nov 2026 09:29:48 GMT  
		Size: 17.6 MB (17566824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e9fe2c8a38cd5f31a3c994344bc80adb43334cbd6c12524204569ed310b12af`  
		Last Modified: Thu, 05 Nov 2026 09:29:47 GMT  
		Size: 22.6 KB (22649 bytes)  
		MIME: application/vnd.in-toto+json

### `node:jod-trixie` - linux; ppc64le

```console
$ docker pull node@sha256:046554e70dd1fa122b9973959861a449a3d0d704a7b2c58089ee67f80150e2a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.3 MB (448332793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f72a739f1759eb7e9bc47bf95b7ff6e9e77629e86f8429c959ead512cdb886`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:05:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 17:27:22 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 28 Oct 2026 17:30:15 GMT
ENV NODE_VERSION=22.23.4
# Wed, 28 Oct 2026 17:30:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 17:30:15 GMT
ENV YARN_VERSION=1.22.22
# Wed, 28 Oct 2026 17:30:19 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 28 Oct 2026 17:30:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 17:30:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 17:30:20 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0211c9ed62620780a710c0cb995ed73df4683591de20af0c8ccc39999890b`  
		Last Modified: Wed, 28 Oct 2026 04:20:40 GMT  
		Size: 27.0 MB (27023152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8d8ceab2b16cf2542e733824abb0b41dde9a2e11d20fda83fd8246cfb3e620`  
		Last Modified: Wed, 28 Oct 2026 11:57:57 GMT  
		Size: 73.1 MB (73093257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2621d2c198fe09079ae61d78184c6cab9e61ef89eb433037fa2f84d0cccce35`  
		Last Modified: Wed, 28 Oct 2026 15:07:01 GMT  
		Size: 232.2 MB (232232773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532db2d53760601b135be3c6f27c22abf7b97b0df58241935fb1d6df3250f3c2`  
		Last Modified: Wed, 28 Oct 2026 17:28:43 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d373544610737e287ecb84c933f7745b435cb424c796a0ab639bf0d1dc3ef5c3`  
		Last Modified: Wed, 28 Oct 2026 17:31:20 GMT  
		Size: 61.5 MB (61506926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b4e4226b0668c6f0838147f810b6cb1fb7b112414d8be610671e87fd7e1ce9`  
		Last Modified: Wed, 28 Oct 2026 17:31:18 GMT  
		Size: 1.3 MB (1250671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51d1b604f76f8322663dbffd1fa1f42936e3707fb0b35b832a8de08d0042441`  
		Last Modified: Wed, 28 Oct 2026 17:31:18 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod-trixie` - unknown; unknown

```console
$ docker pull node@sha256:3ee6de1877d2609df80eb573c9a4d8aa6efa95cbe30e207b2712b4f33483bb5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17491240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be089d36d857bf42557729eddba600d273f98127bb0eb9d85da28f3085c517c8`

```dockerfile
```

-	Layers:
	-	`sha256:c1cc7a75dbef1fcf4cc6ac333d3d06eed21fbbdf2a300fdf09dfc306c98a20cc`  
		Last Modified: Wed, 28 Oct 2026 17:31:18 GMT  
		Size: 17.5 MB (17468676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7818312520d83a12d4f6b9d3bb1367664c51fae368565b48bea58f26a68e02`  
		Last Modified: Wed, 28 Oct 2026 17:31:17 GMT  
		Size: 22.6 KB (22564 bytes)  
		MIME: application/vnd.in-toto+json

### `node:jod-trixie` - linux; s390x

```console
$ docker pull node@sha256:c5bebe59cf98a2dff1a9cf5f2ef9354606e891656ea3f30b6bc6746ac492d389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.0 MB (412021139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f175d4266a183fdef0d00fa48e595bd7b8fa840248c1e585661c57c7915bc5fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Thu, 05 Nov 2026 10:16:08 GMT
ENV NODE_VERSION=22.23.4
# Thu, 05 Nov 2026 10:16:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 10:16:08 GMT
ENV YARN_VERSION=1.22.22
# Thu, 05 Nov 2026 10:16:10 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Thu, 05 Nov 2026 10:16:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 10:16:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 10:16:10 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7037e61e2f2a3cdeeb35dbe7d9c3b9055786ef002e1958d14c5bdd10287c77c3`  
		Last Modified: Thu, 05 Nov 2026 09:21:55 GMT  
		Size: 207.7 MB (207650334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e0944fd8d849e489ba5297828e46a9f2bbb393e10bbccd8c30816730b7f431`  
		Last Modified: Thu, 05 Nov 2026 10:16:53 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a05080f1210ef3463d1b7a50fbe3cf72ca8b58891c958aee4062972f149eb9`  
		Last Modified: Thu, 05 Nov 2026 10:16:55 GMT  
		Size: 58.2 MB (58153815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9e1ef8102e3c4ce1a8482fc4fe965feb71ef69e73017285d86b4d9c21c19f`  
		Last Modified: Thu, 05 Nov 2026 10:16:54 GMT  
		Size: 1.3 MB (1250674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7d28f02344cb27d2787edcbf41002d95d91e36942eb244a14ce4a3b6d3d704`  
		Last Modified: Thu, 05 Nov 2026 10:16:53 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod-trixie` - unknown; unknown

```console
$ docker pull node@sha256:2f043d66f7a57ade0b2d443bc9df35e6e1d72c6b83c971a8e9819bdcb7acbba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17282902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd9ab8ee44ce5077af925069a91103145235a84508a719415501226a9b6177d`

```dockerfile
```

-	Layers:
	-	`sha256:507368274efd24702e6b7e5cab53095457267126484804bdb7ab5289bd6a0745`  
		Last Modified: Thu, 05 Nov 2026 10:16:54 GMT  
		Size: 17.3 MB (17260386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4af98f5ca71666997b44e73c021b97dc5e37fcc714b8bc3f4019740d1620ee9`  
		Last Modified: Thu, 05 Nov 2026 10:16:54 GMT  
		Size: 22.5 KB (22516 bytes)  
		MIME: application/vnd.in-toto+json
