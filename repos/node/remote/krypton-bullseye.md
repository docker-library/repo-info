## `node:krypton-bullseye`

```console
$ docker pull node@sha256:d20935f0634bf911102985e5121525fe373b3f0c62d6eb19cfcef6aed8e9a091
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:krypton-bullseye` - linux; amd64

```console
$ docker pull node@sha256:6be31408d308ae05c6b67a6a0b29efff4061a00b83d9d7b8dde98c8ddec5db2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.1 MB (382060325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368aa40f8fd2eab888a3c4b8ce69e97c62e9aae15748c56968357c26dd56cd6a`
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
# Mon, 03 Aug 2026 20:26:17 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Mon, 03 Aug 2026 20:26:28 GMT
ENV NODE_VERSION=24.19.0
# Mon, 03 Aug 2026 20:26:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:28 GMT
ENV YARN_VERSION=1.22.22
# Mon, 03 Aug 2026 20:26:31 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 03 Aug 2026 20:26:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Aug 2026 20:26:31 GMT
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
	-	`sha256:aa9255fb4b6ad0d062adea7b9f9298b94dcb5c27f3e496e6a774b373f7049181`  
		Last Modified: Mon, 03 Aug 2026 20:26:56 GMT  
		Size: 4.1 KB (4093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0043eddf815a0c03626afc8d71de5a6909270bf1d09c164116c2c36f766d2245`  
		Last Modified: Mon, 03 Aug 2026 20:26:58 GMT  
		Size: 59.1 MB (59118246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed798b67ad7c963d044203b682269f5d890156f2970fb8b13a8bb0fc66a5044d`  
		Last Modified: Mon, 03 Aug 2026 20:26:56 GMT  
		Size: 1.3 MB (1250677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3b94994ea52c1622faff6567ef57b80223ec14b2d2ccd4743172f1cf52b52d`  
		Last Modified: Mon, 03 Aug 2026 20:26:56 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:krypton-bullseye` - unknown; unknown

```console
$ docker pull node@sha256:7abdc6eaf8c00701ef11efae7db44e97ca762e5f022ea3141eafa61563bd6745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15705676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71d36bee941c9c743d632e798b5d3274bb00685d48ac76d3183a5a69d8f53f9`

```dockerfile
```

-	Layers:
	-	`sha256:b8cf1bd54946f1de0652fc75a932bf2162d3d9f471ba5ef90ce91511a8f585fb`  
		Last Modified: Mon, 03 Aug 2026 20:26:57 GMT  
		Size: 15.7 MB (15682885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02899b2fc468bd7d51a00043acff4fe864a8ae70d2b37f4a8149ba0fb1957b94`  
		Last Modified: Mon, 03 Aug 2026 20:26:56 GMT  
		Size: 22.8 KB (22791 bytes)  
		MIME: application/vnd.in-toto+json

### `node:krypton-bullseye` - linux; arm64 variant v8

```console
$ docker pull node@sha256:094c94b1ee763d2de4b09449d3d98287741207fa30db41001794cacb4fc51044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.6 MB (373557892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d399de3129390b9dc5059269695ab16bc0a4054382f9517881b88c14e6afd2d`
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
# Mon, 03 Aug 2026 20:25:52 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Mon, 03 Aug 2026 20:26:02 GMT
ENV NODE_VERSION=24.19.0
# Mon, 03 Aug 2026 20:26:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:02 GMT
ENV YARN_VERSION=1.22.22
# Mon, 03 Aug 2026 20:26:05 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Mon, 03 Aug 2026 20:26:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 03 Aug 2026 20:26:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 03 Aug 2026 20:26:06 GMT
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
	-	`sha256:b50e06bd21425e02e66368b78bc25b6e1fea3ec2f3f98371510d3515dac45350`  
		Last Modified: Mon, 03 Aug 2026 20:26:32 GMT  
		Size: 4.1 KB (4099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93673e7250b793ca4c86544e4f552fcb807eca397011234b89fe9a9e41fadae6`  
		Last Modified: Mon, 03 Aug 2026 20:26:34 GMT  
		Size: 59.1 MB (59101027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78465d464f20715aa5b2426204b0576a711e436998d14385129fa98328e4eb6f`  
		Last Modified: Mon, 03 Aug 2026 20:26:32 GMT  
		Size: 1.3 MB (1250672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988bdcb95319d0628120b96865c771ddad288ce93df663d659d4b4ea6ffdb628`  
		Last Modified: Mon, 03 Aug 2026 20:26:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:krypton-bullseye` - unknown; unknown

```console
$ docker pull node@sha256:30133efcf775755c103a19ff12b288abe188de437906db64146eab7f78893fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15707803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8475521d2ec279f4d8dda4bb7c2a81cf7dd261b067e66d4ef13ab96d10cb2931`

```dockerfile
```

-	Layers:
	-	`sha256:1fa538ab614a23861bae3703208da039bcdea738e0b4e4c81a5bdb8069504757`  
		Last Modified: Mon, 03 Aug 2026 20:26:33 GMT  
		Size: 15.7 MB (15684866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a30591a4d9c273e2224a02eeee9a77e60d93cb31725864aa4acbea053e9f598`  
		Last Modified: Mon, 03 Aug 2026 20:26:32 GMT  
		Size: 22.9 KB (22937 bytes)  
		MIME: application/vnd.in-toto+json
