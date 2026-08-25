## `node:current`

```console
$ docker pull node@sha256:2baf63043c99f4e98ed174ac428bf87f0f9ac5bf49194d60ade5acad24a1efda
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

### `node:current` - linux; amd64

```console
$ docker pull node@sha256:7a08772821a1e7ab19443a35fbebad6ba808c72ece28ecc5ed0002e56bd8d561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.0 MB (442999180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e014777446970d63e7f1d334b2ac41022777c5ed735d74f0ff866c1316499fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:17:48 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 25 Aug 2026 03:17:59 GMT
ENV NODE_VERSION=26.7.0
# Tue, 25 Aug 2026 03:17:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 03:17:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:17:59 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3569220a194651b7a0373c3cf8ced596b605182891c48ef7d8d280835df8e91e`  
		Last Modified: Tue, 25 Aug 2026 03:18:24 GMT  
		Size: 3.3 KB (3327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3bb90d2d186fba1811fa0926b2dc61618258c9bbcd75510546bb1f6f0161d2`  
		Last Modified: Tue, 25 Aug 2026 03:18:26 GMT  
		Size: 63.9 MB (63879363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:388c80e36cc51a960f85d05d51404c05f7bed63f477a0d31e92911ed3543121b`  
		Last Modified: Tue, 25 Aug 2026 03:18:24 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current` - unknown; unknown

```console
$ docker pull node@sha256:dbce78c81899586ac230a0836e45717f21b0aa79dab79457e346d640920980fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17434051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75471b340a6f4524e851d82223099d5e69ebf15a7b1e17858530db9dd85b809a`

```dockerfile
```

-	Layers:
	-	`sha256:7c220d2836dd607bc4b25770aecd0ec03770bf534bfacf9e199df3dd375b36a7`  
		Last Modified: Tue, 25 Aug 2026 03:18:25 GMT  
		Size: 17.4 MB (17415046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60b3251cfc5f578400627907816f6b42551d921834f084630e01cbb12f0b20bd`  
		Last Modified: Tue, 25 Aug 2026 03:18:24 GMT  
		Size: 19.0 KB (19005 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current` - linux; arm64 variant v8

```console
$ docker pull node@sha256:ec9beeb3417ca0329ddddbd86d294645d1f55aa82113cd822d39d091f7f34397
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.9 MB (432884420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873739303360cd6512208c2ed1a5b2ef116ac0d20ee341162fc52d5b9a7f70e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:17:20 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 25 Aug 2026 03:17:31 GMT
ENV NODE_VERSION=26.7.0
# Tue, 25 Aug 2026 03:17:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 03:17:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:17:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:17:31 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f9e12f6911df5d321f11affb2f1e173fd955d9951cce297c168f486e4df57d`  
		Last Modified: Tue, 25 Aug 2026 03:17:58 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0690e5fc9e428849ec4c36a40a51cd53e2bf42068e17ff34288558da296b769a`  
		Last Modified: Tue, 25 Aug 2026 03:18:00 GMT  
		Size: 64.1 MB (64070882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7914101a0d18786302571840e4a08ace8d3fdf2627de8ffcb6a8aa4849179521`  
		Last Modified: Tue, 25 Aug 2026 03:17:58 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current` - unknown; unknown

```console
$ docker pull node@sha256:e76878c0639037418fd6bce0a9c0242fdecffcb058f2c620eeee8bd1d7a20c3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17517983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8de1f88db515d07c6f1222623c789404a4debd60831b35e083ee1d260b36954`

```dockerfile
```

-	Layers:
	-	`sha256:ff3af95062f4c1c31db60cdabb75c8203d1f5555038ed9a54e9a69793ae39bb6`  
		Last Modified: Tue, 25 Aug 2026 03:17:59 GMT  
		Size: 17.5 MB (17498787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd12b97ae0b613cd61d70343af4c5de2987f2ac052debbb4350c2fa401f634f3`  
		Last Modified: Tue, 25 Aug 2026 03:17:58 GMT  
		Size: 19.2 KB (19196 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current` - linux; ppc64le

```console
$ docker pull node@sha256:3092065e32db0aa928935ae4dafe00b5383aa8ad16c68ea0055866eabe180476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.3 MB (451263615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda8aec71e3563d379b38caa3ef2f9175b7bbc60b030c2bb4577a3886d19dbea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:58:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 11:18:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 14:21:48 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 23:12:00 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 23:12:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 23:12:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 23:12:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 23:12:01 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3e6efa722094ba9a2c33899d007294d906fe7730bc19901e78bf43c969f32`  
		Last Modified: Wed, 05 Aug 2026 05:26:21 GMT  
		Size: 27.0 MB (27021100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c136ff5d1eed42b29e608b2fa6073b2ec631c910e2ba490e022e4d31f4ae2f`  
		Last Modified: Wed, 05 Aug 2026 08:58:54 GMT  
		Size: 73.1 MB (73074780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27df19cf6e65d1a3470fcae7ae6195f0fc9d31d3891107621628d11d2690a78f`  
		Last Modified: Wed, 05 Aug 2026 11:19:36 GMT  
		Size: 231.5 MB (231456757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7a3aa744957320f98b0a5a7bdbe279cf40f35f24df91496aa17765459d1cae`  
		Last Modified: Wed, 05 Aug 2026 14:22:56 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3962ae7b89e76dfc66c7c4b2e1d3bff50a8e38fe22ee8711919991feed68d2`  
		Last Modified: Wed, 05 Aug 2026 23:13:01 GMT  
		Size: 66.6 MB (66573602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fa0452731813947d8a02d01775210d552bb44ed7aa1c6a1e489ba6029b37ba`  
		Last Modified: Wed, 05 Aug 2026 23:12:59 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current` - unknown; unknown

```console
$ docker pull node@sha256:8541c1a8ba7c769e720e0a02b8a8cb14417e501475f94fa1ea07ba0353f13c98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17416130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f44361cf631bf619b56ead384e71e198b939bd7034f76ce274fd9729e02ea7f`

```dockerfile
```

-	Layers:
	-	`sha256:88fa51a5b835d0b42d8db8fabe716e8cbfb2e109f732dca2491d38fa437f754b`  
		Last Modified: Wed, 05 Aug 2026 23:12:59 GMT  
		Size: 17.4 MB (17397043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5de0213e9745956cd8070eb94d7ce94dd398195749482c2f156198362006113`  
		Last Modified: Wed, 05 Aug 2026 23:12:58 GMT  
		Size: 19.1 KB (19087 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current` - linux; s390x

```console
$ docker pull node@sha256:85bb6b2d475f5a429b8b9d3526c302832a59e02503dbc1eaed18ea5320940ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.1 MB (417107317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:031a746ab92a68a0938107644bdef85c173fa3867012e42b599ebbd2486ac03a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 04:16:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 25 Aug 2026 04:16:24 GMT
ENV NODE_VERSION=26.7.0
# Tue, 25 Aug 2026 04:16:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 04:16:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 04:16:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 04:16:24 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566f02eb650e6d3a1b20cda6143a62d3d2b8950fa5ee12c27f84b77ce7982741`  
		Last Modified: Tue, 25 Aug 2026 03:14:00 GMT  
		Size: 206.9 MB (206856474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7cc475073d2d4f92e7a7dca5ed494d494405df9c4e34709312667347b41ddd5`  
		Last Modified: Tue, 25 Aug 2026 04:17:08 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdb04c96316b09274ad39e8d5fb023fdcf4227bc41a2e89fb0ae6889603ecada`  
		Last Modified: Tue, 25 Aug 2026 04:17:10 GMT  
		Size: 65.4 MB (65384148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e5e4ef67d2b65ca4a04a9c24ff505a8ba81a6df9bf860ea6a4166a5e7af51f`  
		Last Modified: Tue, 25 Aug 2026 04:17:08 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current` - unknown; unknown

```console
$ docker pull node@sha256:87597bb25b6a3d315e84a007e26495ff03f311750b2959b8ceb437a0cbfe0d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17211284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a027270d610c4354a4143b5b7e50c5992e087447ee9e42c44b3d4a039746d44`

```dockerfile
```

-	Layers:
	-	`sha256:d8daf4b497b40f4f2620295eee90010c281f91c416b72243e0803b3808a1215c`  
		Last Modified: Tue, 25 Aug 2026 04:17:09 GMT  
		Size: 17.2 MB (17192279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aca1fac7c71e668cd8ea0ffbd1895437d4770b48eb3de91294ae6f3bd172c53e`  
		Last Modified: Tue, 25 Aug 2026 04:17:08 GMT  
		Size: 19.0 KB (19005 bytes)  
		MIME: application/vnd.in-toto+json
