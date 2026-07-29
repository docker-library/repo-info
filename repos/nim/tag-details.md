<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nim`

-	[`nim:2`](#nim2)
-	[`nim:2.0`](#nim20)
-	[`nim:2.0.0`](#nim200)
-	[`nim:2.0.10`](#nim2010)
-	[`nim:2.0.12`](#nim2012)
-	[`nim:2.0.14`](#nim2014)
-	[`nim:2.0.2`](#nim202)
-	[`nim:2.0.4`](#nim204)
-	[`nim:2.0.6`](#nim206)
-	[`nim:2.0.8`](#nim208)
-	[`nim:2.2`](#nim22)
-	[`nim:2.2.0`](#nim220)
-	[`nim:2.2.10`](#nim2210)
-	[`nim:2.2.2`](#nim222)
-	[`nim:2.2.4`](#nim224)
-	[`nim:2.2.6`](#nim226)
-	[`nim:2.2.8`](#nim228)
-	[`nim:latest`](#nimlatest)

## `nim:2`

```console
$ docker pull nim@sha256:940925ec2c5da97f92e35a10a8094b6098335eb010f2a60ec0bf68cef5faf911
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nim:2` - linux; amd64

```console
$ docker pull nim@sha256:dde676710d963e7c70ebbf65d0b565cc092c235c774d2652e206724549ecbf94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.4 MB (469413195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03372621598be8c5dcca3b1d74497ce39bb4647770dd54095eed2d3f862aeef4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:18:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 04:19:11 GMT
ENV NODE_VERSION=24.18.0
# Tue, 14 Jul 2026 04:19:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:19:11 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 04:19:13 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:19:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:19:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:19:13 GMT
CMD ["node"]
# Fri, 17 Jul 2026 22:01:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 22:01:12 GMT
ENV NIM_VERSION=2.2.10
# Fri, 17 Jul 2026 22:01:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 22:01:12 GMT
WORKDIR /tmp
# Fri, 17 Jul 2026 22:01:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-${NIM_VERSION}";   rm nim.tar.xz;   nim --version # buildkit
# Fri, 17 Jul 2026 22:01:14 GMT
WORKDIR /usr/src/app
# Fri, 17 Jul 2026 22:01:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65956eab0c1ca261c14a3e13055ec8ca4f6ec75198f6ef0704d5194884466582`  
		Last Modified: Tue, 14 Jul 2026 03:18:55 GMT  
		Size: 236.3 MB (236258363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f24b334f908a28a99bbacc47693ddf1823b1588ad021b9611aa59e8e87eff9`  
		Last Modified: Tue, 14 Jul 2026 04:18:54 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0da95784d531f6c70e95e2f6b09885ff4d9f5a349e471ffd49bd4a57e1c24ed`  
		Last Modified: Tue, 14 Jul 2026 04:19:38 GMT  
		Size: 58.9 MB (58949981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c2d3897be2ec2a394c2b992bfffcdf550f751ad986ec8385c4d08a5b80afd3`  
		Last Modified: Tue, 14 Jul 2026 04:19:37 GMT  
		Size: 1.3 MB (1250678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff666cebb299d24156e23b7a71ddae74c9fe0b5c2efe585e71f8b0eb95020b2`  
		Last Modified: Tue, 14 Jul 2026 04:19:37 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68dac3738f6e0a341863c3d3b478952d79268d8fdd09d516ff61d0d918ca4277`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdad6fbb74408a5c7acc517623d602d744e2312f1660c03767b997b8786d72c6`  
		Last Modified: Fri, 17 Jul 2026 22:01:23 GMT  
		Size: 30.2 MB (30189593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb4c4d058fe483365c0d74f4e8b992376f8319ca416cc7a18ff644e95d70df9`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:bf45df30782105fcccc98b9b07b543747b9e97a8feba03aaab2cf9d73e787152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 KB (18638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b147da6fce61bf7603c29b712579bc7bb1188d4d36c226b9fec37c48613be8`

```dockerfile
```

-	Layers:
	-	`sha256:dffd824a52a480e69d8fceaf2baf0ea4bc48abc0d0ab84940bd59ba3bc1019e3`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 18.6 KB (18638 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:12f6715b41f288b487faf9ba7b3d86638881c5c2af7d6aafb2f4ae37675541ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **458.4 MB (458383068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b051e9ffc7bbca928ae3b6ada66c2556f2d6b1f6a770814237907c797c7a9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:20:52 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 04:21:01 GMT
ENV NODE_VERSION=24.18.0
# Tue, 14 Jul 2026 04:21:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:21:01 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 04:21:04 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:21:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:04 GMT
CMD ["node"]
# Fri, 17 Jul 2026 22:01:04 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 22:01:04 GMT
ENV NIM_VERSION=2.2.10
# Fri, 17 Jul 2026 22:01:04 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 22:01:04 GMT
WORKDIR /tmp
# Fri, 17 Jul 2026 22:01:06 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-${NIM_VERSION}";   rm nim.tar.xz;   nim --version # buildkit
# Fri, 17 Jul 2026 22:01:06 GMT
WORKDIR /usr/src/app
# Fri, 17 Jul 2026 22:01:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79256f40905d77df81d1738841b42df00f81a53e4e600de7b74b82abccf93c3c`  
		Last Modified: Tue, 14 Jul 2026 03:18:54 GMT  
		Size: 226.4 MB (226376937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33cbc6dc0f24501547afd2d790fe2f74544a0059303d5b0d591093bea6ca9c5b`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2004baff2cba404cf06ffa1756dbf4bff4c3371d148ac0ed655dfac0de0e409b`  
		Last Modified: Tue, 14 Jul 2026 04:21:36 GMT  
		Size: 58.9 MB (58946398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2024e4f19a4c92ed61453b3f018b3cef58780282fa8f9418511cb603430c48d0`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 1.3 MB (1250673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f84603c9aac82b9a88b073f2f38ee996b90794ed74b95ec34c0426a9801c41`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6df1966377101ba6b6516804bcce150edb511d37f62d2f107b282e64ef79252`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 16.6 KB (16604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53009671a7dd2262c570ab46660b3d071a4ac50776dcff77acfcf2ae01672df2`  
		Last Modified: Fri, 17 Jul 2026 22:01:16 GMT  
		Size: 29.5 MB (29491863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e38a6af2123e6ac0273cf9b419dc2a67fe195bea2c752d688138aacb1ecb53f`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2` - unknown; unknown

```console
$ docker pull nim@sha256:63e44d44866c694b6d88d02965e13b9928a36c7bb524c80d304e954c1901091a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 KB (18757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cc3f0f60e6c952dfd152b2aa837810e80fc15e4c813b592dde10c02fb74a21`

```dockerfile
```

-	Layers:
	-	`sha256:5380867ba05bc7d03420888c55f90bde3d0539532b3cf64986dbd45dbdcd2ceb`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 18.8 KB (18757 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.0`

**does not exist** (yet?)

## `nim:2.0.0`

**does not exist** (yet?)

## `nim:2.0.10`

**does not exist** (yet?)

## `nim:2.0.12`

**does not exist** (yet?)

## `nim:2.0.14`

**does not exist** (yet?)

## `nim:2.0.2`

**does not exist** (yet?)

## `nim:2.0.4`

**does not exist** (yet?)

## `nim:2.0.6`

**does not exist** (yet?)

## `nim:2.0.8`

**does not exist** (yet?)

## `nim:2.2`

```console
$ docker pull nim@sha256:940925ec2c5da97f92e35a10a8094b6098335eb010f2a60ec0bf68cef5faf911
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nim:2.2` - linux; amd64

```console
$ docker pull nim@sha256:dde676710d963e7c70ebbf65d0b565cc092c235c774d2652e206724549ecbf94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.4 MB (469413195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03372621598be8c5dcca3b1d74497ce39bb4647770dd54095eed2d3f862aeef4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:18:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 04:19:11 GMT
ENV NODE_VERSION=24.18.0
# Tue, 14 Jul 2026 04:19:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:19:11 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 04:19:13 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:19:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:19:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:19:13 GMT
CMD ["node"]
# Fri, 17 Jul 2026 22:01:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 22:01:12 GMT
ENV NIM_VERSION=2.2.10
# Fri, 17 Jul 2026 22:01:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 22:01:12 GMT
WORKDIR /tmp
# Fri, 17 Jul 2026 22:01:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-${NIM_VERSION}";   rm nim.tar.xz;   nim --version # buildkit
# Fri, 17 Jul 2026 22:01:14 GMT
WORKDIR /usr/src/app
# Fri, 17 Jul 2026 22:01:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65956eab0c1ca261c14a3e13055ec8ca4f6ec75198f6ef0704d5194884466582`  
		Last Modified: Tue, 14 Jul 2026 03:18:55 GMT  
		Size: 236.3 MB (236258363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f24b334f908a28a99bbacc47693ddf1823b1588ad021b9611aa59e8e87eff9`  
		Last Modified: Tue, 14 Jul 2026 04:18:54 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0da95784d531f6c70e95e2f6b09885ff4d9f5a349e471ffd49bd4a57e1c24ed`  
		Last Modified: Tue, 14 Jul 2026 04:19:38 GMT  
		Size: 58.9 MB (58949981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c2d3897be2ec2a394c2b992bfffcdf550f751ad986ec8385c4d08a5b80afd3`  
		Last Modified: Tue, 14 Jul 2026 04:19:37 GMT  
		Size: 1.3 MB (1250678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff666cebb299d24156e23b7a71ddae74c9fe0b5c2efe585e71f8b0eb95020b2`  
		Last Modified: Tue, 14 Jul 2026 04:19:37 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68dac3738f6e0a341863c3d3b478952d79268d8fdd09d516ff61d0d918ca4277`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdad6fbb74408a5c7acc517623d602d744e2312f1660c03767b997b8786d72c6`  
		Last Modified: Fri, 17 Jul 2026 22:01:23 GMT  
		Size: 30.2 MB (30189593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb4c4d058fe483365c0d74f4e8b992376f8319ca416cc7a18ff644e95d70df9`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:bf45df30782105fcccc98b9b07b543747b9e97a8feba03aaab2cf9d73e787152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 KB (18638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b147da6fce61bf7603c29b712579bc7bb1188d4d36c226b9fec37c48613be8`

```dockerfile
```

-	Layers:
	-	`sha256:dffd824a52a480e69d8fceaf2baf0ea4bc48abc0d0ab84940bd59ba3bc1019e3`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 18.6 KB (18638 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:12f6715b41f288b487faf9ba7b3d86638881c5c2af7d6aafb2f4ae37675541ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **458.4 MB (458383068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b051e9ffc7bbca928ae3b6ada66c2556f2d6b1f6a770814237907c797c7a9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:20:52 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 04:21:01 GMT
ENV NODE_VERSION=24.18.0
# Tue, 14 Jul 2026 04:21:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:21:01 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 04:21:04 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:21:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:04 GMT
CMD ["node"]
# Fri, 17 Jul 2026 22:01:04 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 22:01:04 GMT
ENV NIM_VERSION=2.2.10
# Fri, 17 Jul 2026 22:01:04 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 22:01:04 GMT
WORKDIR /tmp
# Fri, 17 Jul 2026 22:01:06 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-${NIM_VERSION}";   rm nim.tar.xz;   nim --version # buildkit
# Fri, 17 Jul 2026 22:01:06 GMT
WORKDIR /usr/src/app
# Fri, 17 Jul 2026 22:01:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79256f40905d77df81d1738841b42df00f81a53e4e600de7b74b82abccf93c3c`  
		Last Modified: Tue, 14 Jul 2026 03:18:54 GMT  
		Size: 226.4 MB (226376937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33cbc6dc0f24501547afd2d790fe2f74544a0059303d5b0d591093bea6ca9c5b`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2004baff2cba404cf06ffa1756dbf4bff4c3371d148ac0ed655dfac0de0e409b`  
		Last Modified: Tue, 14 Jul 2026 04:21:36 GMT  
		Size: 58.9 MB (58946398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2024e4f19a4c92ed61453b3f018b3cef58780282fa8f9418511cb603430c48d0`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 1.3 MB (1250673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f84603c9aac82b9a88b073f2f38ee996b90794ed74b95ec34c0426a9801c41`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6df1966377101ba6b6516804bcce150edb511d37f62d2f107b282e64ef79252`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 16.6 KB (16604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53009671a7dd2262c570ab46660b3d071a4ac50776dcff77acfcf2ae01672df2`  
		Last Modified: Fri, 17 Jul 2026 22:01:16 GMT  
		Size: 29.5 MB (29491863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e38a6af2123e6ac0273cf9b419dc2a67fe195bea2c752d688138aacb1ecb53f`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:63e44d44866c694b6d88d02965e13b9928a36c7bb524c80d304e954c1901091a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 KB (18757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cc3f0f60e6c952dfd152b2aa837810e80fc15e4c813b592dde10c02fb74a21`

```dockerfile
```

-	Layers:
	-	`sha256:5380867ba05bc7d03420888c55f90bde3d0539532b3cf64986dbd45dbdcd2ceb`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 18.8 KB (18757 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.0`

**does not exist** (yet?)

## `nim:2.2.10`

```console
$ docker pull nim@sha256:940925ec2c5da97f92e35a10a8094b6098335eb010f2a60ec0bf68cef5faf911
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nim:2.2.10` - linux; amd64

```console
$ docker pull nim@sha256:dde676710d963e7c70ebbf65d0b565cc092c235c774d2652e206724549ecbf94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.4 MB (469413195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03372621598be8c5dcca3b1d74497ce39bb4647770dd54095eed2d3f862aeef4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:18:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 04:19:11 GMT
ENV NODE_VERSION=24.18.0
# Tue, 14 Jul 2026 04:19:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:19:11 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 04:19:13 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:19:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:19:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:19:13 GMT
CMD ["node"]
# Fri, 17 Jul 2026 22:01:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 22:01:12 GMT
ENV NIM_VERSION=2.2.10
# Fri, 17 Jul 2026 22:01:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 22:01:12 GMT
WORKDIR /tmp
# Fri, 17 Jul 2026 22:01:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-${NIM_VERSION}";   rm nim.tar.xz;   nim --version # buildkit
# Fri, 17 Jul 2026 22:01:14 GMT
WORKDIR /usr/src/app
# Fri, 17 Jul 2026 22:01:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65956eab0c1ca261c14a3e13055ec8ca4f6ec75198f6ef0704d5194884466582`  
		Last Modified: Tue, 14 Jul 2026 03:18:55 GMT  
		Size: 236.3 MB (236258363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f24b334f908a28a99bbacc47693ddf1823b1588ad021b9611aa59e8e87eff9`  
		Last Modified: Tue, 14 Jul 2026 04:18:54 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0da95784d531f6c70e95e2f6b09885ff4d9f5a349e471ffd49bd4a57e1c24ed`  
		Last Modified: Tue, 14 Jul 2026 04:19:38 GMT  
		Size: 58.9 MB (58949981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c2d3897be2ec2a394c2b992bfffcdf550f751ad986ec8385c4d08a5b80afd3`  
		Last Modified: Tue, 14 Jul 2026 04:19:37 GMT  
		Size: 1.3 MB (1250678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff666cebb299d24156e23b7a71ddae74c9fe0b5c2efe585e71f8b0eb95020b2`  
		Last Modified: Tue, 14 Jul 2026 04:19:37 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68dac3738f6e0a341863c3d3b478952d79268d8fdd09d516ff61d0d918ca4277`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdad6fbb74408a5c7acc517623d602d744e2312f1660c03767b997b8786d72c6`  
		Last Modified: Fri, 17 Jul 2026 22:01:23 GMT  
		Size: 30.2 MB (30189593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb4c4d058fe483365c0d74f4e8b992376f8319ca416cc7a18ff644e95d70df9`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:bf45df30782105fcccc98b9b07b543747b9e97a8feba03aaab2cf9d73e787152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 KB (18638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b147da6fce61bf7603c29b712579bc7bb1188d4d36c226b9fec37c48613be8`

```dockerfile
```

-	Layers:
	-	`sha256:dffd824a52a480e69d8fceaf2baf0ea4bc48abc0d0ab84940bd59ba3bc1019e3`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 18.6 KB (18638 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.10` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:12f6715b41f288b487faf9ba7b3d86638881c5c2af7d6aafb2f4ae37675541ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **458.4 MB (458383068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b051e9ffc7bbca928ae3b6ada66c2556f2d6b1f6a770814237907c797c7a9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:20:52 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 04:21:01 GMT
ENV NODE_VERSION=24.18.0
# Tue, 14 Jul 2026 04:21:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:21:01 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 04:21:04 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:21:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:04 GMT
CMD ["node"]
# Fri, 17 Jul 2026 22:01:04 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 22:01:04 GMT
ENV NIM_VERSION=2.2.10
# Fri, 17 Jul 2026 22:01:04 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 22:01:04 GMT
WORKDIR /tmp
# Fri, 17 Jul 2026 22:01:06 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-${NIM_VERSION}";   rm nim.tar.xz;   nim --version # buildkit
# Fri, 17 Jul 2026 22:01:06 GMT
WORKDIR /usr/src/app
# Fri, 17 Jul 2026 22:01:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79256f40905d77df81d1738841b42df00f81a53e4e600de7b74b82abccf93c3c`  
		Last Modified: Tue, 14 Jul 2026 03:18:54 GMT  
		Size: 226.4 MB (226376937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33cbc6dc0f24501547afd2d790fe2f74544a0059303d5b0d591093bea6ca9c5b`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2004baff2cba404cf06ffa1756dbf4bff4c3371d148ac0ed655dfac0de0e409b`  
		Last Modified: Tue, 14 Jul 2026 04:21:36 GMT  
		Size: 58.9 MB (58946398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2024e4f19a4c92ed61453b3f018b3cef58780282fa8f9418511cb603430c48d0`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 1.3 MB (1250673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f84603c9aac82b9a88b073f2f38ee996b90794ed74b95ec34c0426a9801c41`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6df1966377101ba6b6516804bcce150edb511d37f62d2f107b282e64ef79252`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 16.6 KB (16604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53009671a7dd2262c570ab46660b3d071a4ac50776dcff77acfcf2ae01672df2`  
		Last Modified: Fri, 17 Jul 2026 22:01:16 GMT  
		Size: 29.5 MB (29491863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e38a6af2123e6ac0273cf9b419dc2a67fe195bea2c752d688138aacb1ecb53f`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.10` - unknown; unknown

```console
$ docker pull nim@sha256:63e44d44866c694b6d88d02965e13b9928a36c7bb524c80d304e954c1901091a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 KB (18757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cc3f0f60e6c952dfd152b2aa837810e80fc15e4c813b592dde10c02fb74a21`

```dockerfile
```

-	Layers:
	-	`sha256:5380867ba05bc7d03420888c55f90bde3d0539532b3cf64986dbd45dbdcd2ceb`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 18.8 KB (18757 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.2`

**does not exist** (yet?)

## `nim:2.2.4`

**does not exist** (yet?)

## `nim:2.2.6`

**does not exist** (yet?)

## `nim:2.2.8`

**does not exist** (yet?)

## `nim:latest`

```console
$ docker pull nim@sha256:940925ec2c5da97f92e35a10a8094b6098335eb010f2a60ec0bf68cef5faf911
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `nim:latest` - linux; amd64

```console
$ docker pull nim@sha256:dde676710d963e7c70ebbf65d0b565cc092c235c774d2652e206724549ecbf94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.4 MB (469413195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03372621598be8c5dcca3b1d74497ce39bb4647770dd54095eed2d3f862aeef4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:18:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 04:19:11 GMT
ENV NODE_VERSION=24.18.0
# Tue, 14 Jul 2026 04:19:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:19:11 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 04:19:13 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:19:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:19:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:19:13 GMT
CMD ["node"]
# Fri, 17 Jul 2026 22:01:12 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 22:01:12 GMT
ENV NIM_VERSION=2.2.10
# Fri, 17 Jul 2026 22:01:12 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 22:01:12 GMT
WORKDIR /tmp
# Fri, 17 Jul 2026 22:01:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-${NIM_VERSION}";   rm nim.tar.xz;   nim --version # buildkit
# Fri, 17 Jul 2026 22:01:14 GMT
WORKDIR /usr/src/app
# Fri, 17 Jul 2026 22:01:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65956eab0c1ca261c14a3e13055ec8ca4f6ec75198f6ef0704d5194884466582`  
		Last Modified: Tue, 14 Jul 2026 03:18:55 GMT  
		Size: 236.3 MB (236258363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f24b334f908a28a99bbacc47693ddf1823b1588ad021b9611aa59e8e87eff9`  
		Last Modified: Tue, 14 Jul 2026 04:18:54 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0da95784d531f6c70e95e2f6b09885ff4d9f5a349e471ffd49bd4a57e1c24ed`  
		Last Modified: Tue, 14 Jul 2026 04:19:38 GMT  
		Size: 58.9 MB (58949981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c2d3897be2ec2a394c2b992bfffcdf550f751ad986ec8385c4d08a5b80afd3`  
		Last Modified: Tue, 14 Jul 2026 04:19:37 GMT  
		Size: 1.3 MB (1250678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff666cebb299d24156e23b7a71ddae74c9fe0b5c2efe585e71f8b0eb95020b2`  
		Last Modified: Tue, 14 Jul 2026 04:19:37 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68dac3738f6e0a341863c3d3b478952d79268d8fdd09d516ff61d0d918ca4277`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdad6fbb74408a5c7acc517623d602d744e2312f1660c03767b997b8786d72c6`  
		Last Modified: Fri, 17 Jul 2026 22:01:23 GMT  
		Size: 30.2 MB (30189593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb4c4d058fe483365c0d74f4e8b992376f8319ca416cc7a18ff644e95d70df9`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:bf45df30782105fcccc98b9b07b543747b9e97a8feba03aaab2cf9d73e787152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.6 KB (18638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b147da6fce61bf7603c29b712579bc7bb1188d4d36c226b9fec37c48613be8`

```dockerfile
```

-	Layers:
	-	`sha256:dffd824a52a480e69d8fceaf2baf0ea4bc48abc0d0ab84940bd59ba3bc1019e3`  
		Last Modified: Fri, 17 Jul 2026 22:01:22 GMT  
		Size: 18.6 KB (18638 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:12f6715b41f288b487faf9ba7b3d86638881c5c2af7d6aafb2f4ae37675541ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **458.4 MB (458383068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b051e9ffc7bbca928ae3b6ada66c2556f2d6b1f6a770814237907c797c7a9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:20:52 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 14 Jul 2026 04:21:01 GMT
ENV NODE_VERSION=24.18.0
# Tue, 14 Jul 2026 04:21:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:21:01 GMT
ENV YARN_VERSION=1.22.22
# Tue, 14 Jul 2026 04:21:04 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 14 Jul 2026 04:21:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 04:21:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 04:21:04 GMT
CMD ["node"]
# Fri, 17 Jul 2026 22:01:04 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils   ;   apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 22:01:04 GMT
ENV NIM_VERSION=2.2.10
# Fri, 17 Jul 2026 22:01:04 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 22:01:04 GMT
WORKDIR /tmp
# Fri, 17 Jul 2026 22:01:06 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_x64.tar.xz'; sha256='0a3a38752e97e9d44aa479b3a7b37336dfe0176daf22ee5b5218ad0991ecd211' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-04-24-version-2-2-bfeb3146d1638b39f69007a4ae5a23e23ae4e5ef/nim-2.2.10-linux_arm64.tar.xz'; sha256='cd86a6e2bcbf029c4870aa51df5c0169345dbf9959889112fd15d403c13ae33a' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-${NIM_VERSION}";   rm nim.tar.xz;   nim --version # buildkit
# Fri, 17 Jul 2026 22:01:06 GMT
WORKDIR /usr/src/app
# Fri, 17 Jul 2026 22:01:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79256f40905d77df81d1738841b42df00f81a53e4e600de7b74b82abccf93c3c`  
		Last Modified: Tue, 14 Jul 2026 03:18:54 GMT  
		Size: 226.4 MB (226376937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33cbc6dc0f24501547afd2d790fe2f74544a0059303d5b0d591093bea6ca9c5b`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2004baff2cba404cf06ffa1756dbf4bff4c3371d148ac0ed655dfac0de0e409b`  
		Last Modified: Tue, 14 Jul 2026 04:21:36 GMT  
		Size: 58.9 MB (58946398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2024e4f19a4c92ed61453b3f018b3cef58780282fa8f9418511cb603430c48d0`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 1.3 MB (1250673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f84603c9aac82b9a88b073f2f38ee996b90794ed74b95ec34c0426a9801c41`  
		Last Modified: Tue, 14 Jul 2026 04:21:34 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6df1966377101ba6b6516804bcce150edb511d37f62d2f107b282e64ef79252`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 16.6 KB (16604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53009671a7dd2262c570ab46660b3d071a4ac50776dcff77acfcf2ae01672df2`  
		Last Modified: Fri, 17 Jul 2026 22:01:16 GMT  
		Size: 29.5 MB (29491863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e38a6af2123e6ac0273cf9b419dc2a67fe195bea2c752d688138aacb1ecb53f`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:63e44d44866c694b6d88d02965e13b9928a36c7bb524c80d304e954c1901091a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 KB (18757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cc3f0f60e6c952dfd152b2aa837810e80fc15e4c813b592dde10c02fb74a21`

```dockerfile
```

-	Layers:
	-	`sha256:5380867ba05bc7d03420888c55f90bde3d0539532b3cf64986dbd45dbdcd2ceb`  
		Last Modified: Fri, 17 Jul 2026 22:01:15 GMT  
		Size: 18.8 KB (18757 bytes)  
		MIME: application/vnd.in-toto+json
