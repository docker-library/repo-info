## `node:jod`

```console
$ docker pull node@sha256:363e1587494626837fa7f9a23bdb453d13b0ff3c67c705c2805cfc69c2d2fad7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `node:jod` - linux; amd64

```console
$ docker pull node@sha256:17b7fd60fd812617654c64b95f9b2dde94f103313073b672bc40fdad6dccbaa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.4 MB (408402241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37a4d56eedb5e42bca59c8d4782fa550e741fba5dbce943c53767d3ceee57e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 23 Sep 2026 21:09:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 23 Sep 2026 21:09:34 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:09:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:09:34 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:09:37 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:09:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:09:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:09:37 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81578410df169380efec491bfdc60a7e586d4b48ef4c0aeb9b6ff085812d9a7d`  
		Last Modified: Sat, 19 Sep 2026 01:46:20 GMT  
		Size: 64.4 MB (64424271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9e8d0a007171cac57d643a3982902d45431cd860400eea55e18df75fc0b12a`  
		Last Modified: Sat, 19 Sep 2026 02:17:13 GMT  
		Size: 211.7 MB (211707818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92563fa790f8dd92d7adfdd88dfe3682717345457c18ae480cb81faeb8a78f2`  
		Last Modified: Wed, 23 Sep 2026 21:10:03 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d48f423dff09aa1ec458c0ccc8e3d690ca8a9a302fd7233adb9493cdc0d0600`  
		Last Modified: Wed, 23 Sep 2026 21:10:05 GMT  
		Size: 58.5 MB (58456192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105754cf457c052e3214fc88da72777f5e777d7b6c0a2c287cfcffa03d5d3a0a`  
		Last Modified: Wed, 23 Sep 2026 21:10:03 GMT  
		Size: 1.3 MB (1250673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c06829c34adf939f5d8cae866bdbab1519529e3d355e3bfe8d2517a8562ebcf`  
		Last Modified: Wed, 23 Sep 2026 21:10:03 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod` - unknown; unknown

```console
$ docker pull node@sha256:62ed130ce969ca4924692b9f5a4b4f0f2c372a0cf8a9eb10ccb726c7175b2c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16176123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:009aabe953cd49170fc4ab4639046f03671e4fadb6f18a079500ccc1b6af88ae`

```dockerfile
```

-	Layers:
	-	`sha256:763bd2369550b808a42c794df556ff7135c77f6469c6680b479c2efb32500b8c`  
		Last Modified: Wed, 23 Sep 2026 21:10:03 GMT  
		Size: 16.2 MB (16152417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2eb4cc97ddcfd9da7080072f04d07e977725d06b65709b383b9069b5c6c419c2`  
		Last Modified: Wed, 23 Sep 2026 21:10:02 GMT  
		Size: 23.7 KB (23706 bytes)  
		MIME: application/vnd.in-toto+json

### `node:jod` - linux; arm variant v7

```console
$ docker pull node@sha256:5674fb262fe373d9e7dd6a6d7afa549e9f0959d87d58cea6bf588e2a33e91eca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.8 MB (355820054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd86a7c7a6a471e20366c185a3c9e6a3b6e4e75aed8b35badac73f53418f916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:26:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:14:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 23 Sep 2026 21:10:33 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 23 Sep 2026 21:10:43 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:10:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:10:43 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:10:47 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:10:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:10:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:10:47 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b05f2afa4aeb0abd1b387e407cc8939c894ecaf8fbd3b034a72e34dae98c9a2`  
		Last Modified: Sat, 19 Sep 2026 02:26:25 GMT  
		Size: 59.7 MB (59661780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55431d0e22ef9fe8b47a39bd4f2c9bd323015a25f2aeadded820c9f776531fa2`  
		Last Modified: Sat, 19 Sep 2026 03:15:16 GMT  
		Size: 175.6 MB (175608766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb746ba861aa1e9b3551fcb97702aedfcda6db475a07577bfaf9bbfc379becd`  
		Last Modified: Wed, 23 Sep 2026 21:11:12 GMT  
		Size: 3.3 KB (3326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17701c27bdfb0c32528396da135fdf6a67381b69e63e1309796c3e8422b5ee4e`  
		Last Modified: Wed, 23 Sep 2026 21:11:14 GMT  
		Size: 53.1 MB (53133802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157c6c3b2cb49063fb20c7a8a9f07033a1b4d6a81c6c6f44822aa6162b48015a`  
		Last Modified: Wed, 23 Sep 2026 21:11:12 GMT  
		Size: 1.3 MB (1250671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddcf47371091cc8369e5d98bb5d14e5607d444bce42c495cc5d11447580f69b`  
		Last Modified: Wed, 23 Sep 2026 21:11:12 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod` - unknown; unknown

```console
$ docker pull node@sha256:9fceab6e3ed816c0c0056e49add3dc3af60bc333c43c1df02104e1185cfb71dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15978770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce30c5d92a277d47f8856095cca94a8124f8f6993f122b4406b9f868b25223a`

```dockerfile
```

-	Layers:
	-	`sha256:c6c4024d2f8e883fdeeb98ef649b9c481b9bb15bd22a967346989bd7485628c3`  
		Last Modified: Wed, 23 Sep 2026 21:11:13 GMT  
		Size: 16.0 MB (15954925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5089cdbabbcd6950491e085b2f21943b2c08aefd5a3304c9ec76ccab494e316`  
		Last Modified: Wed, 23 Sep 2026 21:11:12 GMT  
		Size: 23.8 KB (23845 bytes)  
		MIME: application/vnd.in-toto+json

### `node:jod` - linux; arm64 variant v8

```console
$ docker pull node@sha256:5705a4b5da9077d28001f4ad6293b6ff7fcd4221ec3a05ad599e1d5182c606ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.8 MB (399778410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b937e94e9d34b951780aeada17bebd8f979de53ea3cadba193e7dec85dc3be8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 23 Sep 2026 21:09:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 23 Sep 2026 21:09:50 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:09:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:09:50 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:09:53 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:09:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:09:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:09:53 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3ba406c16b69d4aa51efbc3e6261745f96834c1468f508f6c0eedfc94b57ad`  
		Last Modified: Sat, 19 Sep 2026 02:16:41 GMT  
		Size: 203.4 MB (203421216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df80b7e36cafd4a802b3b1e4df7a630422108aeddf3cc184cbfe9fa9e372a321`  
		Last Modified: Wed, 23 Sep 2026 21:10:21 GMT  
		Size: 3.3 KB (3324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ff4665dd815ee99907e6f0707ec7752d5ad038f7f714e9509b2c5d8a121197`  
		Last Modified: Wed, 23 Sep 2026 21:10:23 GMT  
		Size: 58.6 MB (58585004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257103b1b1da20540063853f42d7cadc3195c6a4316efb22fd9d49c3baf3f51a`  
		Last Modified: Wed, 23 Sep 2026 21:10:21 GMT  
		Size: 1.3 MB (1250678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c3cebe9eb0a2f14837f8d2382dc04de00c517d5a034be31687ada89ebeef4f`  
		Last Modified: Wed, 23 Sep 2026 21:10:21 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod` - unknown; unknown

```console
$ docker pull node@sha256:f7e1f0db3550959d97354f8591a141c4c7b91da537cda9a5c3b7d060d4e96401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16204879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e1ea360bf84ad1f39c72cc4d31513f9d98583b1038bfe61634816938b952a1`

```dockerfile
```

-	Layers:
	-	`sha256:2917a0ccf6c1e9610504bc8d1c0c31f733659835f12056eabd6329b9c5a953dd`  
		Last Modified: Wed, 23 Sep 2026 21:10:21 GMT  
		Size: 16.2 MB (16180991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18110b1575a5dec11bafc9780dbd42ee2c2f7e4f472bff0a8e6643d28224ca2e`  
		Last Modified: Wed, 23 Sep 2026 21:10:21 GMT  
		Size: 23.9 KB (23888 bytes)  
		MIME: application/vnd.in-toto+json

### `node:jod` - linux; ppc64le

```console
$ docker pull node@sha256:c06ff9ba3471529ec09cd630059abea30e1ddf3641994472b103a7d0fae0c084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.4 MB (425372651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4bbaf2df6de2fba9ae0ac9b114c177363f6bc38246cc7470b1a9810aa55feb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 03:15:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 09:05:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 11:47:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 19:52:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 23 Sep 2026 21:07:41 GMT
ENV NODE_VERSION=22.23.3
# Wed, 23 Sep 2026 21:07:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:07:41 GMT
ENV YARN_VERSION=1.22.22
# Wed, 23 Sep 2026 21:07:47 GMT
RUN set -ex   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 23 Sep 2026 21:07:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 21:07:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Sep 2026 21:07:48 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e9f3363ace736c21292a425cd627663814b1275272b7cf79f502454af1cac`  
		Last Modified: Sat, 19 Sep 2026 03:16:20 GMT  
		Size: 25.7 MB (25703264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb8363b45637c8da3b7da1113159dbb24fb241a976701cf530477d2ae974472`  
		Last Modified: Sat, 19 Sep 2026 09:06:01 GMT  
		Size: 69.8 MB (69849171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f42cfff6bccb389c94a581a2974609f4fae57ecf4d6812e395f1ac5f757fd2`  
		Last Modified: Sat, 19 Sep 2026 11:48:44 GMT  
		Size: 214.8 MB (214767033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566a3df62647018ab373a5eeff2dc2b1a8226926bb60ad335d1e94db54b76508`  
		Last Modified: Tue, 22 Sep 2026 19:54:11 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc4f9fd710ee00a7a57f125de472ba1e94725bf0dffe20acb51e9e705135a35`  
		Last Modified: Wed, 23 Sep 2026 21:08:51 GMT  
		Size: 61.4 MB (61449435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38838f23539a48c70960047c7cf71582393d3df9921c3e2074dc3a2c06529d1b`  
		Last Modified: Wed, 23 Sep 2026 21:08:49 GMT  
		Size: 1.3 MB (1250671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e1b6064a50f4372b205243a89574cbfd73860f67fc9c1c2e22c935ed0d17`  
		Last Modified: Wed, 23 Sep 2026 21:08:49 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:jod` - unknown; unknown

```console
$ docker pull node@sha256:d49b33793613924883adab0cef898f4ee1c501326f4e95792c4dabcc9a9e9d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16152733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68dcfd89af989cee72a1ca01fbc7aadba30ad30fed7d296b558831f97c539c53`

```dockerfile
```

-	Layers:
	-	`sha256:1c2024c4a356ed9362392e147c05a65633f506043a06e8824131296fa8f18c9e`  
		Last Modified: Wed, 23 Sep 2026 21:08:49 GMT  
		Size: 16.1 MB (16128954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:301af05c3dd6e293e980ba92cfd06b657d63429022f7fb272098c4f3be5cd1b4`  
		Last Modified: Wed, 23 Sep 2026 21:08:48 GMT  
		Size: 23.8 KB (23779 bytes)  
		MIME: application/vnd.in-toto+json
