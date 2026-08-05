## `node:bullseye`

```console
$ docker pull node@sha256:7e0a789014e15af912e74184915a21fe19270e4c56660dab326c5e996323cc6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:bullseye` - linux; amd64

```console
$ docker pull node@sha256:ce44c59a0a401d2ea71a00da8eb254b629108a63a84f3b4101cf3357c41efd70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.5 MB (385529785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2af81b55bd733cd48e6375ed93adf09013c88d79b551742e2ebce2832c5c7810`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:43:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:18:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 21:08:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 04 Aug 2026 21:08:36 GMT
ENV NODE_VERSION=26.6.0
# Tue, 04 Aug 2026 21:08:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 04 Aug 2026 21:08:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 21:08:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 21:08:36 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe5681d8e1155e1bb706091f1a7eebabc55855cdbdb20c01f3851abaef0f290`  
		Last Modified: Tue, 14 Jul 2026 01:43:32 GMT  
		Size: 15.8 MB (15790828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3214a37800dcb85308a3ee26895ae746a8913db3cf74dba437915f1e979ed64`  
		Last Modified: Tue, 14 Jul 2026 02:30:03 GMT  
		Size: 54.7 MB (54742908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d3647a94d0365f6fb544030799327410bc1cd3dd529ea61620d05dfad781c8`  
		Last Modified: Tue, 14 Jul 2026 03:18:39 GMT  
		Size: 197.4 MB (197376550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae21645d45e836580528b9db1d7a41bfa189c0ab18a3061acc8cc8ff41777873`  
		Last Modified: Tue, 04 Aug 2026 21:09:00 GMT  
		Size: 4.1 KB (4095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebada673a1a40b071d13c1dfcc743ef32e3af20c056f3169500de3be7ab89b2`  
		Last Modified: Tue, 04 Aug 2026 21:09:02 GMT  
		Size: 63.8 MB (63838378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f757257486ea9e169bc958ed626b6f25c8fe8a6f8313fcce095b2d8135c4a20c`  
		Last Modified: Tue, 04 Aug 2026 21:09:00 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:bullseye` - unknown; unknown

```console
$ docker pull node@sha256:fb8a5f6de5b2b70f5c103c7cc4fff00ce485e2087a5484c4099f5e1f8f746937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15697678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7290604034667a80a520bc76ea20faf6b2bd458359d6e4bfc67ec3e4647dbeed`

```dockerfile
```

-	Layers:
	-	`sha256:02814334034a050a9ec798d0362d418db2d55fb6ccf5426d78baed2bd42f7488`  
		Last Modified: Tue, 04 Aug 2026 21:09:01 GMT  
		Size: 15.7 MB (15680321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ca78b86ff58b6e040e6711e446eadae19b59e74a8df6b3c97df2d0738879177`  
		Last Modified: Tue, 04 Aug 2026 21:09:00 GMT  
		Size: 17.4 KB (17357 bytes)  
		MIME: application/vnd.in-toto+json

### `node:bullseye` - linux; arm64 variant v8

```console
$ docker pull node@sha256:5d8ef9eb0fa40ea6abd06c796df12b582cb150af82b8d8d90b1b0c3cee63a89c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.2 MB (377231229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09728ae48519b76c0a9db95406a99eea425ccf05d0a65700483dd7c5560b2012`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 21:11:28 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 04 Aug 2026 21:11:39 GMT
ENV NODE_VERSION=26.6.0
# Tue, 04 Aug 2026 21:11:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 04 Aug 2026 21:11:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 21:11:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 21:11:39 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8ec33dc561d736c45e9bd0a2160810db1f866ce8bb8fdd35dbb5297f5d4cd2`  
		Last Modified: Tue, 14 Jul 2026 01:46:41 GMT  
		Size: 15.8 MB (15774933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62f54371529143bb3cc8355513868c57b4480ed394f322c2f387e2b83d41c6f`  
		Last Modified: Tue, 14 Jul 2026 02:37:04 GMT  
		Size: 54.9 MB (54879548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcfa4bb137297d2b9a50853c3208953c22e89b7cb16b6cfd91ac399e4141b26`  
		Last Modified: Tue, 14 Jul 2026 03:18:32 GMT  
		Size: 190.3 MB (190286276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a870f0f020fdcbdebdef35708b7fbaa4ece1eef0b923c4011e676dda6789e12`  
		Last Modified: Tue, 04 Aug 2026 21:12:07 GMT  
		Size: 4.1 KB (4094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffd5d8d373efd3d2e0ba22a6980014f6336b5a1a05a5f3085d1090d6bf3b00a`  
		Last Modified: Tue, 04 Aug 2026 21:12:09 GMT  
		Size: 64.0 MB (64025039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bfcf60601a882de48eb41b39709fe4241ee004fefe6743aac15e1988ba0519f`  
		Last Modified: Tue, 04 Aug 2026 21:12:06 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:bullseye` - unknown; unknown

```console
$ docker pull node@sha256:351cceb6e8fc53fb090e9ba40c5839f7578e6144ef7e28e863d03ac99aaf8efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15699789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75041fdb3271df11381a6e676ccb9104fcc72275bdd0d1f6f7c6eaa5a1b56e7`

```dockerfile
```

-	Layers:
	-	`sha256:f21d725ddbf2e8ef89d590dd3aaeb4ced38e223b793d472e3f86a64b00df6c86`  
		Last Modified: Tue, 04 Aug 2026 21:12:07 GMT  
		Size: 15.7 MB (15682302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96b5a93eae58aeab66f1c0b6ba0d7eb4ea73e4ea81850a41afaf69173a42ebe5`  
		Last Modified: Tue, 04 Aug 2026 21:12:06 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
