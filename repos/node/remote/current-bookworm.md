## `node:current-bookworm`

```console
$ docker pull node@sha256:65dbd0ac2f0165c34fea1b920c3e19ec500b4f7ab3ff3dc54d9f21b1c0ba9438
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `node:current-bookworm` - linux; amd64

```console
$ docker pull node@sha256:155f6779f557f863b16a6b77b3443b52f7dde209643eff9896d661bbd6829840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.4 MB (413369613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d42647c48f5a4b0a10bfee0f1c1b10ecbecb5dee802318da89e9381bda3bb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:27:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:16:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 11:34:09 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:34:33 GMT
ENV NODE_VERSION=26.12.1
# Wed, 21 Oct 2026 11:34:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:34:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:34:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:34:33 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0959ba39613fdd89ed3679cb0483740e954fcc9d3e68d882e6f27130ac124e0`  
		Last Modified: Wed, 21 Oct 2026 01:28:06 GMT  
		Size: 64.4 MB (64429299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8145ffc7a2f0dffd51043904ca409df2bcb0c4113f9f6710aaa4f55f8812e400`  
		Last Modified: Wed, 21 Oct 2026 02:17:13 GMT  
		Size: 211.8 MB (211761030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983a79d19131535e03799843bce802c917e627fcff42bcd144097cdb7e155a1e`  
		Last Modified: Wed, 21 Oct 2026 11:35:01 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00a983e4f7986f3a5a1794a35548c9e15a019c47353bbee5a7f91158fdf970c`  
		Last Modified: Wed, 21 Oct 2026 11:35:03 GMT  
		Size: 64.8 MB (64781691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ea4aa38d133794b083ca5a75f74a0346a149b1d74728f09008aa380866d67d`  
		Last Modified: Wed, 21 Oct 2026 11:35:01 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:e7bff594c18702bfee87d7d2fd853578f2616a06f9049645aec8f6da745713c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16095901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42151dc95a774c57952dbee9117769449b786d45beaacc6935c5fb893816d3de`

```dockerfile
```

-	Layers:
	-	`sha256:2a3d8f523325701ea1e256263e1d9b8ff38ee04b628d7b70ff0b2ad8934bd031`  
		Last Modified: Wed, 21 Oct 2026 11:35:02 GMT  
		Size: 16.1 MB (16078570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7cc0d3a72508a609358fccc112dfef8f5a9ae4ad71c8f4dc26cba75c36baab7`  
		Last Modified: Wed, 21 Oct 2026 11:35:01 GMT  
		Size: 17.3 KB (17331 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-bookworm` - linux; arm64 variant v8

```console
$ docker pull node@sha256:e2db169fe9a56478f93dae16320731bcfa1c79eeabb426188b637bf4273c870c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.5 MB (404508559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9711edc3f220f7ee71eb07ceaee6ea2449aecdd4295b3d6e8975726120e3fbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:16:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 11:33:58 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 21 Oct 2026 11:34:24 GMT
ENV NODE_VERSION=26.12.1
# Wed, 21 Oct 2026 11:34:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 21 Oct 2026 11:34:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:34:24 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3f500343e7e2dfb125dab0e3da0151614ed4139d23d4e7b5b214a9b5bfccc0`  
		Last Modified: Wed, 21 Oct 2026 01:34:11 GMT  
		Size: 64.5 MB (64523759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ebb0f22f550af55cd886e807e33cd81227072a86f3f23e19a87e689b0f4e01`  
		Last Modified: Wed, 21 Oct 2026 02:16:45 GMT  
		Size: 203.3 MB (203309395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ff93e78547c580b1727d42046b67b808717de08707c1b8f1f5beefdbc49d2a`  
		Last Modified: Wed, 21 Oct 2026 11:34:53 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdd1a9335737a90913a055943a4a5acb5522f30659135ae4101c499f0ce66f2`  
		Last Modified: Wed, 21 Oct 2026 11:34:55 GMT  
		Size: 64.8 MB (64829597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62da4aa60bc94a0140840a9cd2f2e2be280e161ea3bed252b7fc62af4c8403b3`  
		Last Modified: Wed, 21 Oct 2026 11:34:53 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:759c4908b0eb8549659a6e43c3b1c4d2ae63950d9291766fd40059f021ad2ec3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16124569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fab117933f3132900c720e5f716ef1cebfc86cd02cd691881f493423d297fd9`

```dockerfile
```

-	Layers:
	-	`sha256:3c6e9bf635c5b40ecac38ac504d23d6fb5bd3bb63546e62472853eb59e1aa78c`  
		Last Modified: Wed, 21 Oct 2026 11:34:53 GMT  
		Size: 16.1 MB (16107108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e40e7d07b679b46fa39186a333e4b15e20e79170c24edb6a21b72554cb92c7a`  
		Last Modified: Wed, 21 Oct 2026 11:34:53 GMT  
		Size: 17.5 KB (17461 bytes)  
		MIME: application/vnd.in-toto+json

### `node:current-bookworm` - linux; ppc64le

```console
$ docker pull node@sha256:1318e965eee2a3e782de8fd54c67ba778f6fb612778d41398402b36b2181c8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.9 MB (431864215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4616047872f1f173d866670381ace5917668dd1a2a380885dd4825dcb36ca7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 14:29:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 21:49:34 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 14 Oct 2026 18:27:16 GMT
ENV NODE_VERSION=26.12.0
# Wed, 14 Oct 2026 18:27:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 14 Oct 2026 18:27:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 14 Oct 2026 18:27:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:27:17 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfced81c6d63d57c61f0cc455733d3e2c3415e1c19808bf1b361b6b77a0db73`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 25.5 MB (25518268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c264e2b4d19ba4544ecce2e36be7fa5707180176288bd26f8665e49e08103512`  
		Last Modified: Tue, 06 Oct 2026 11:38:50 GMT  
		Size: 72.3 MB (72326849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c760b5932d55730065e0bb91cced007db5f0679ac0721d658f6aea2387786c38`  
		Last Modified: Tue, 06 Oct 2026 14:31:18 GMT  
		Size: 214.8 MB (214776464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69577c52b887b52d02203b09f710509bccdf12863728f2a5eb31055b0e48bf84`  
		Last Modified: Thu, 08 Oct 2026 21:51:07 GMT  
		Size: 3.3 KB (3332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef01b705b1cd6643e56d9b574bf9c65608e7fdd05069f962b47b8ead3819840`  
		Last Modified: Wed, 14 Oct 2026 18:29:20 GMT  
		Size: 66.9 MB (66876117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51464e4eb8a9902c79839c7d02c9aeec15b20de77a8c179ef35b4561bea56626`  
		Last Modified: Wed, 14 Oct 2026 18:29:17 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:current-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:7bb6561a44fe20002948a67b2ad69bbd44b4bfac96fa4a0a1a2cc3b4a7ac5a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16073770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4372fb94e84276815b2eafe9dafa207f8f142060b734b30c4d8c86f79f5ccc7`

```dockerfile
```

-	Layers:
	-	`sha256:502ad085e65073a9d7386749f9246eaac4bf9232f1dc3c4ca353fbe2f7f86c23`  
		Last Modified: Wed, 14 Oct 2026 18:29:18 GMT  
		Size: 16.1 MB (16056387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1785e7a548b22cf6ce84fb972e1771d537252ca6acb6191036ef14e33f50965c`  
		Last Modified: Wed, 14 Oct 2026 18:29:17 GMT  
		Size: 17.4 KB (17383 bytes)  
		MIME: application/vnd.in-toto+json
