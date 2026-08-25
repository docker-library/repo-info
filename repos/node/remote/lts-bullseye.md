## `node:lts-bullseye`

```console
$ docker pull node@sha256:713fab6ef722b3db6e23b694c60bec337055b3598eea59640694c6344d53672f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `node:lts-bullseye` - linux; amd64

```console
$ docker pull node@sha256:6d9c499253580f7b223281cee708b0ba69c2cc008181c762fd026378df3d4534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.1 MB (382094523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc2ae14d239259be946240ad587ef9a6c74cc5e70c6d30d81984ec59751d5fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:50:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:18:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:18:15 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 25 Aug 2026 03:18:26 GMT
ENV NODE_VERSION=24.19.0
# Tue, 25 Aug 2026 03:18:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 03:18:26 GMT
ENV YARN_VERSION=1.22.22
# Tue, 25 Aug 2026 03:18:29 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 03:18:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:18:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:18:29 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5909957719ab662a311099b46df8f146fbe5be5ec749fa12615589aaf221b5b8`  
		Last Modified: Tue, 25 Aug 2026 00:50:43 GMT  
		Size: 15.8 MB (15805167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f735ad8e196ddab59dc182a0d1821e340e843e689d0287b68a2a2c51eba6a98`  
		Last Modified: Tue, 25 Aug 2026 01:38:27 GMT  
		Size: 54.7 MB (54743271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f310c6a2419cfd070257b21061b096e505b28e074fc07883728a7ac0e55d7f`  
		Last Modified: Tue, 25 Aug 2026 02:19:30 GMT  
		Size: 197.4 MB (197395255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d297fe44b000933ef3c834e4c6f04860bbc6471925395cb0dc7c081178f3c7`  
		Last Modified: Tue, 25 Aug 2026 03:18:53 GMT  
		Size: 4.1 KB (4092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e1515abf751dfd059ea8982cf23b012bd477cd6bff2fdf8c43aeafbb0954e9`  
		Last Modified: Tue, 25 Aug 2026 03:18:56 GMT  
		Size: 59.1 MB (59118230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f838a3cd7ba474be72671a869fb2fe39ce01bfd555cc0378a28fbbecb493bc`  
		Last Modified: Tue, 25 Aug 2026 03:18:54 GMT  
		Size: 1.3 MB (1250670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bef8f083aa59725599c88471950fa44d2596aa0e9fa6bda82cdcdd141f8e4b`  
		Last Modified: Tue, 25 Aug 2026 03:18:53 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:lts-bullseye` - unknown; unknown

```console
$ docker pull node@sha256:436e325bd91629bf29a3dd126ffd4574e31b484a3b7de905aa5f38ef9e1824fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15710878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24cfd9ff832393c22acebf24d7395aa1214b77277fba697ae1fe3f2c359334b7`

```dockerfile
```

-	Layers:
	-	`sha256:35cf5e0dff88f544b92f0ed63fae6c711eaa1263e3ea9e94152301ef2a72fe99`  
		Last Modified: Tue, 25 Aug 2026 03:18:54 GMT  
		Size: 15.7 MB (15688088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49f905ec7445e2a849aef1547e4d65874b7262dd4044cded912eaec0ebc2dce3`  
		Last Modified: Tue, 25 Aug 2026 03:18:53 GMT  
		Size: 22.8 KB (22790 bytes)  
		MIME: application/vnd.in-toto+json

### `node:lts-bullseye` - linux; arm64 variant v8

```console
$ docker pull node@sha256:efc0a6b93fea7b524106546305e043ebd2a3ce4df6f15f6c8e1e877a9ef51942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.6 MB (373593879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33205bd263c697d2c6a6471d97c205d07d7b4cf35a2ba4a4425c028657f35e39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:52:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:18:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:17:12 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 25 Aug 2026 03:18:10 GMT
ENV NODE_VERSION=24.19.0
# Tue, 25 Aug 2026 03:18:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 03:18:10 GMT
ENV YARN_VERSION=1.22.22
# Tue, 25 Aug 2026 03:18:12 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 03:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:18:12 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ebf8e47572aa15d512f1dc9c2f5be1d99ab6c1c7747e4670e36bd9518a42b0`  
		Last Modified: Tue, 25 Aug 2026 00:52:51 GMT  
		Size: 15.8 MB (15789863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a95e7eedddd8f8d0f051099560d562e62c6a499ed176b8b62a0895f7c3a397c`  
		Last Modified: Tue, 25 Aug 2026 01:43:19 GMT  
		Size: 54.9 MB (54880321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ea703385b55ce6a9ca8f59c9c1d6627f53989d61e13bf9d8941d75ed3f612b`  
		Last Modified: Tue, 25 Aug 2026 02:18:39 GMT  
		Size: 190.3 MB (190306090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772e74b789026ea1471544a3f246a802288a39690ecbc9e6ab7960a563d440d0`  
		Last Modified: Tue, 25 Aug 2026 03:17:51 GMT  
		Size: 4.1 KB (4097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1df08e64c30628dfcc788d9495e1fcbd07527321f565cb3d3b9f0550f3cfe3`  
		Last Modified: Tue, 25 Aug 2026 03:18:38 GMT  
		Size: 59.1 MB (59101042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92195c3e82ed42922be14694e5ff0249e78d9b64e22852a6e63d4cf9a5a1f70`  
		Last Modified: Tue, 25 Aug 2026 03:18:36 GMT  
		Size: 1.3 MB (1250677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb13c1dd92101fda70fe7a51b52cd39025c11ee20a7d5d3b939412cf6ae96f9`  
		Last Modified: Tue, 25 Aug 2026 03:18:36 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:lts-bullseye` - unknown; unknown

```console
$ docker pull node@sha256:924a0a6b36f3739a23c8ce4ab91916fba375baa7d27a051468d646152624770f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15713006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e5fce9e0de6e7cbd0ca2db3c0d4557a37b59385b424fa6d44c1008a4f96d38a`

```dockerfile
```

-	Layers:
	-	`sha256:442d17ef85f3856d074edff07b60da80c6c9c968ddee8db7cc3c76ef27cf9d65`  
		Last Modified: Tue, 25 Aug 2026 03:18:37 GMT  
		Size: 15.7 MB (15690069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8abfec3d124bc834f3d5fc90bb5f0d38bac1524b87c833b4c89330e4255adce0`  
		Last Modified: Tue, 25 Aug 2026 03:18:36 GMT  
		Size: 22.9 KB (22937 bytes)  
		MIME: application/vnd.in-toto+json
