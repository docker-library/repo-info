## `node:26-bookworm`

```console
$ docker pull node@sha256:acb7243cabea678dc927ec9020c633d3d82b37b86b1bbcd49dd3f95f6b77ba89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `node:26-bookworm` - linux; amd64

```console
$ docker pull node@sha256:cb7faa9aa10fc486e21c2a6a186ed8656c7d28e7799bd2eabef369b54b9a8536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.0 MB (413046672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3daa2d9ab7b309d4342073a081bd94119de51665f3a2a699fc1ca5f3322d9f82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 22:34:06 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 16 Sep 2026 22:34:16 GMT
ENV NODE_VERSION=26.9.0
# Wed, 16 Sep 2026 22:34:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 16 Sep 2026 22:34:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 22:34:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 22:34:16 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a6a9ffe665b63ea18491fedb646423413ae3fdefcf7776ee25a2eaff8a673e`  
		Last Modified: Tue, 25 Aug 2026 02:17:34 GMT  
		Size: 211.7 MB (211662335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f6a371e2202e05117b258165ddd64e9d28b476c1d02e1eefbc9f2936933071`  
		Last Modified: Wed, 16 Sep 2026 22:34:42 GMT  
		Size: 3.3 KB (3330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b2995e938ceaed089e52cc1b430c638105e36ad7929dc8962ec7ba87fece1d`  
		Last Modified: Wed, 16 Sep 2026 22:34:45 GMT  
		Size: 64.4 MB (64413885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d6009c32d6cbe265eb7adadf6a78d0d7f851294e2eb3ce717f1f734b2d8530`  
		Last Modified: Wed, 16 Sep 2026 22:34:42 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:2dd02c99e6d22cdaa2dfaf913ac92ef15d6659d2a505ba596cafe088b8a0279d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16097725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9b2c82cd9ec836919e4dccc5727bb5fa0cb5ec635b8e21d5b0c36688716d1a`

```dockerfile
```

-	Layers:
	-	`sha256:3f570c9ba0f4c6fecde037838158215df306b967dabfe1df3b8210863fcc3bda`  
		Last Modified: Wed, 16 Sep 2026 22:34:47 GMT  
		Size: 16.1 MB (16080403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e299c3dc1e000c2675baa65a876b56b47401b87550acfcd933a29a1072ca8d9`  
		Last Modified: Wed, 16 Sep 2026 22:34:43 GMT  
		Size: 17.3 KB (17322 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm` - linux; arm64 variant v8

```console
$ docker pull node@sha256:be19c14693e48a7e3118b4199f40e62740d488749899035f0783f9f791a54fc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.2 MB (404238641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3693967ff16ff0acfd79c2f35240796d4937a59fbbb7f6f95a71aee3ed5cf9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 22:33:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 16 Sep 2026 22:33:40 GMT
ENV NODE_VERSION=26.9.0
# Wed, 16 Sep 2026 22:33:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 16 Sep 2026 22:33:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 22:33:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 22:33:40 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9873f9cf3f97d8317bea39be5130389ca496910902e4c4327c227d606b57511d`  
		Last Modified: Tue, 25 Aug 2026 02:17:14 GMT  
		Size: 203.2 MB (203190462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da194ba353fd142c73440ac6d410f29fe0aadf777c1c822cdf0a698418d66fd`  
		Last Modified: Wed, 16 Sep 2026 22:34:09 GMT  
		Size: 3.3 KB (3329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801250195b3641ebf31e5c06d4af536f92635d114e18f233b43e241eb96a4d11`  
		Last Modified: Wed, 16 Sep 2026 22:34:11 GMT  
		Size: 64.5 MB (64531916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33df1e516f7c3e0c0bb02d8885f0f3a537e09fb3678048483d1c5db3d047d373`  
		Last Modified: Wed, 16 Sep 2026 22:34:09 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:589777d7bce9acee98a8c18efad600e1ad3c4cbb2969b590b924b70589334a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16126393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c113268e03958e5b9f154c6b6f5083a65705789429f60e07610603da83b1a52`

```dockerfile
```

-	Layers:
	-	`sha256:83bbc3c4039a04a313b82ac8572ca4529421b04ca01ed3a1c2a38c5b81067660`  
		Last Modified: Wed, 16 Sep 2026 22:34:09 GMT  
		Size: 16.1 MB (16108941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dab54e2d49ad027025c1342ef0c806feecaaee6fe1f8d071ad7a6e30baa10f47`  
		Last Modified: Wed, 16 Sep 2026 22:34:09 GMT  
		Size: 17.5 KB (17452 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm` - linux; ppc64le

```console
$ docker pull node@sha256:711051cf9244d698294c50b13a060809019b370bc24de8980641f4f5f1d0a0cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.2 MB (429224485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f75ee4c95fecb2a2068e25a731db252abe8cd60d6fcadb6a3d324f6099705c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 12:36:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 27 Aug 2026 16:59:51 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 16 Sep 2026 22:33:22 GMT
ENV NODE_VERSION=26.9.0
# Wed, 16 Sep 2026 22:33:22 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 16 Sep 2026 22:33:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 22:33:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 22:33:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9546012095f5835af9399f34fb6731784e64c61cf8a22462e2f59024e39605e5`  
		Last Modified: Tue, 25 Aug 2026 12:38:18 GMT  
		Size: 214.7 MB (214736789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d095c58c7592ab2586112d8c56fe13fcff773e00de3c554306114b8a3b1fcd`  
		Last Modified: Thu, 27 Aug 2026 17:01:28 GMT  
		Size: 3.3 KB (3335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78796ac92da56b6417b417592338dc0a8eb05efc77fbc8cba2ce750001812bc3`  
		Last Modified: Wed, 16 Sep 2026 22:34:51 GMT  
		Size: 66.6 MB (66582414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdd66fd267b3780a175cd1e91e41ecd6df1f85cdb0940c43629cbf91b30bed4`  
		Last Modified: Wed, 16 Sep 2026 22:34:48 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:d90b7d3fcb3b5823c8c27a9be2ac3a216f66dcb8183e695cf5e70b36348e8712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16074298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dd4dcb60024e3093e38fd45371e6044c64f740122e385c40e01bce6aaa55b8`

```dockerfile
```

-	Layers:
	-	`sha256:67a8fb5ab5a79a5fe0f3f1d5354c91bfca746ee3171c090e63f4add316e59c51`  
		Last Modified: Wed, 16 Sep 2026 22:34:49 GMT  
		Size: 16.1 MB (16056924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23b64608e3a4e8ffdd238f780b5dc0acaccaae35d8d4bca5b2d85d12a45ee2b0`  
		Last Modified: Wed, 16 Sep 2026 22:34:48 GMT  
		Size: 17.4 KB (17374 bytes)  
		MIME: application/vnd.in-toto+json
