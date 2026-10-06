## `node:26-bookworm`

```console
$ docker pull node@sha256:f4cd193a112038791e2c2cb2c6ebd93f73d7c03aca0f855cb4f6ad7dd40d475c
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
$ docker pull node@sha256:b52be70bd101193c6fcbb8bc3ea98458ffcabce39d6f930566b159e199931d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.4 MB (415364594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544b4f5737745d8dc192f5125a69b9fabe873f36327aef2c471f30899f946052`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:16:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:19:16 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 04:19:26 GMT
ENV NODE_VERSION=26.10.0
# Tue, 06 Oct 2026 04:19:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:19:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:19:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:19:26 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c71fff0869aa9bd48cf80d66e30b83adc9a3fe5e77dd9aaf266282c6ec64ff`  
		Last Modified: Tue, 06 Oct 2026 02:34:58 GMT  
		Size: 66.7 MB (66718068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610dc773fbd71198e96c7a8710abfd1661f14d776d7169b4ef525d8eb30e1b03`  
		Last Modified: Tue, 06 Oct 2026 03:16:38 GMT  
		Size: 211.7 MB (211714700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8e38f4cbaba6a3cc80762eeb5e2a89514395f64c52e5500b0c469ca7d63bf4`  
		Last Modified: Tue, 06 Oct 2026 04:19:55 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e9fff73870e5e430502e7e907db8d53f33cb66c2406dad32f3658daa46ba50`  
		Last Modified: Tue, 06 Oct 2026 04:19:57 GMT  
		Size: 64.5 MB (64537782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c196bd79111db3d57ea0ee8c965c0ed9477634d783029eb4b573599a7acd48`  
		Last Modified: Tue, 06 Oct 2026 04:19:55 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:f60e68a83604521c20a50abda5dd370dc68b7b2f0b100b5ba6828862429d5dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16097199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8c135afa10453745c6c5769fb34081a92adde129ae75b8a582d5a0e5390524`

```dockerfile
```

-	Layers:
	-	`sha256:b9df6fbb9da790df5c0d0cb471e751b63c35cdc0e4d3bea9dab938a792e2d54f`  
		Last Modified: Tue, 06 Oct 2026 04:19:55 GMT  
		Size: 16.1 MB (16079868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b306ab64b19ccdc2999656214b0f6c2049c613551cd32da9ad12138254171d0`  
		Last Modified: Tue, 06 Oct 2026 04:19:55 GMT  
		Size: 17.3 KB (17331 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm` - linux; arm64 variant v8

```console
$ docker pull node@sha256:545f318ec92e73847ab2ac52e850af070c223c3d1d90efdcafed1b9b2a93febc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.5 MB (406510306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069ccbe17a8d3f347f1dfafc5e9168693ed1f4c14eb8e19e71b4ba91bf546ab6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:15:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:18:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 06 Oct 2026 04:18:35 GMT
ENV NODE_VERSION=26.10.0
# Tue, 06 Oct 2026 04:18:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 06 Oct 2026 04:18:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:18:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:18:35 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99713dbe79ee22ead7509cd8c7c37d309206e5ddd834ba41611459b49e6ddc06`  
		Last Modified: Tue, 06 Oct 2026 02:25:53 GMT  
		Size: 66.8 MB (66769669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4562cb873c99b9446ba4daee7180b2d40bbac13aefcf459f2e516776c1ed0458`  
		Last Modified: Tue, 06 Oct 2026 03:16:35 GMT  
		Size: 203.2 MB (203246653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d90149e820173346b87bd2cf459a4d4456fa18a47c2dd0b0fa513fdadb7a18`  
		Last Modified: Tue, 06 Oct 2026 04:19:01 GMT  
		Size: 3.3 KB (3325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3e62a8e2838fc99564d157d361ba69a180213e502fabd43434a46ba61e163e`  
		Last Modified: Tue, 06 Oct 2026 04:19:02 GMT  
		Size: 64.6 MB (64646245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9f9b02fa266e30ae20777efb63949a9dde0a713a0729827405bbfaa3121f86`  
		Last Modified: Tue, 06 Oct 2026 04:19:01 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:3bc8ef30169f4dc699fbd4cfdca067cc779828d4cd8a9af60fd37b35d83a6988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16125868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c733c52a64ab5e7e9fb42cbbf7d3e2760ce34bbb01584b501f4f6f72c4d2422`

```dockerfile
```

-	Layers:
	-	`sha256:89ab9d394d22e44232d1889ea3cb9386942fd3b03c9207e86672f9c47654ff2f`  
		Last Modified: Tue, 06 Oct 2026 04:19:01 GMT  
		Size: 16.1 MB (16108406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c10d5dfcbd055bcc2e31d55dc3d152a88d6d27497bbd34dca9e275d935ce50d`  
		Last Modified: Tue, 06 Oct 2026 04:19:01 GMT  
		Size: 17.5 KB (17462 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm` - linux; ppc64le

```console
$ docker pull node@sha256:f2e8b85400168aea7b618da3c5f9e569ed87cf0c609da4f278ff07161637c498
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.4 MB (429375422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d25c5443ef56b8c10bba8bb2ea9f18100046e58fa6f610e43bf76ad6b3831f`
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
# Tue, 22 Sep 2026 19:53:03 GMT
ENV NODE_VERSION=26.10.0
# Tue, 22 Sep 2026 19:53:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     A363A499291CBBC940DD62E41F10027AF002F8B0   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 22 Sep 2026 19:53:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 19:53:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 Sep 2026 19:53:04 GMT
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
	-	`sha256:1a37bb037b7db265ba4d4c3dd61d4c924088ebd8c9df2e7f6cbedb1afbd0054c`  
		Last Modified: Tue, 22 Sep 2026 19:54:13 GMT  
		Size: 66.7 MB (66702876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779881c0ccf1dde13f7d218f6fe99da71a6444be7fe8abb6eeb5a21c24b0b5d5`  
		Last Modified: Tue, 22 Sep 2026 19:54:11 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:26cb292e791bcf4b3d8aa37a753d82688d8a78dd6a92baa68d729bcfa3c5d964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16073770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9ffaa426af459b6976e8596a8f2c66640f063b581d7662d39d4ca70a380b9a`

```dockerfile
```

-	Layers:
	-	`sha256:2e862ff5a4cce0d4cfbb29b019d773c12fd7928d46613c3b99d2f14f10870941`  
		Last Modified: Tue, 22 Sep 2026 19:54:12 GMT  
		Size: 16.1 MB (16056387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c2aa8b041c9d8f84a4a2bbe58e953a19d834ed84f5ac5ed93a02513241e4c26`  
		Last Modified: Tue, 22 Sep 2026 19:54:11 GMT  
		Size: 17.4 KB (17383 bytes)  
		MIME: application/vnd.in-toto+json
