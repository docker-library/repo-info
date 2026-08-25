## `node:26-bookworm`

```console
$ docker pull node@sha256:9457476802997b10656950340d1173f6be09adfaa2a5ca6facd75e8dd116b0ee
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
$ docker pull node@sha256:158304f335472bdd3fe88be1c4d37e5d83f3d1fd57da656863c24e7d889e4dea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.5 MB (412512146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f542a7cbf74ad6aa6ecd202db98309802fd0c225143aeb53732adf08f9bb45c`
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
# Tue, 25 Aug 2026 03:17:31 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 25 Aug 2026 03:17:42 GMT
ENV NODE_VERSION=26.7.0
# Tue, 25 Aug 2026 03:17:42 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 03:17:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:17:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:17:42 GMT
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
	-	`sha256:a5fa94d6ae231f2aff8ac842b8e7c3d2d8634b595c3874b80ce42642183551d9`  
		Last Modified: Tue, 25 Aug 2026 03:18:05 GMT  
		Size: 3.3 KB (3328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ee953d4ce7827fdde6639a88ad7bce482c2c86a75aab2e29ea3ec254282428`  
		Last Modified: Tue, 25 Aug 2026 03:18:08 GMT  
		Size: 63.9 MB (63879363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd84b1a52176acf42e1932d1abead3bf875be69885f0a43313989b23c96a7236`  
		Last Modified: Tue, 25 Aug 2026 03:18:05 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:f30a5872586be763c3be01c9653b950e2d951a0988fe51122ce53a30750767ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16097872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d25f069a13659907f11a79eb72aacb49bfb7520fad9243ddf72fd7d15e39b167`

```dockerfile
```

-	Layers:
	-	`sha256:e051ee6cdd4e6fea1ddd2c2c23e2a16ee0bafea89a0170789da3e1449ff9e63f`  
		Last Modified: Tue, 25 Aug 2026 03:18:06 GMT  
		Size: 16.1 MB (16080401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a81c9dbf4711912f1278c5464107db2c789f839ed2a9da983633cba20d5c0510`  
		Last Modified: Tue, 25 Aug 2026 03:18:06 GMT  
		Size: 17.5 KB (17471 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm` - linux; arm64 variant v8

```console
$ docker pull node@sha256:7f78d94ff0aa6d092175c973163ece3dcc17447ba6feb77dd89b87ce9cd5abe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.8 MB (403777598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e15f5742d8158e5c3b4ebfad9f53d3c2ece59e71a8be637af38fae751c8e60d`
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
# Tue, 25 Aug 2026 03:16:59 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Tue, 25 Aug 2026 03:17:10 GMT
ENV NODE_VERSION=26.7.0
# Tue, 25 Aug 2026 03:17:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Tue, 25 Aug 2026 03:17:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:17:10 GMT
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
	-	`sha256:d03ee8ab5dea1981dd2895c73b34cc7056c4a57edec7e15b5e7a88e8566e5821`  
		Last Modified: Tue, 25 Aug 2026 03:17:39 GMT  
		Size: 3.3 KB (3326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86fe8f40d2e36a289d1a84b4a6e0e3cc0493ac4c4e5b74a2d8b74f8bdd16589`  
		Last Modified: Tue, 25 Aug 2026 03:17:40 GMT  
		Size: 64.1 MB (64070876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b3ac5e3d996c1cb8c2be680fccf85a07d1e961dac6900c8071be1968674f2a`  
		Last Modified: Tue, 25 Aug 2026 03:17:39 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:3b4e3e2727e7e8e885d4e7f52e42805726ef035e1ba09365eac6fd44cca479ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16126540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6954692a1ed96b42d33cd803ccbd97e3acddbdaba75a3698deb98aecb9b3a819`

```dockerfile
```

-	Layers:
	-	`sha256:d852842b9db3c2d91476080c533075e7d4253acf2476057d611cfe1478615130`  
		Last Modified: Tue, 25 Aug 2026 03:17:39 GMT  
		Size: 16.1 MB (16108939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ec16910d7587c38906594299e8f68c7a5c61f33a9806e2390cd3b21e9462219`  
		Last Modified: Tue, 25 Aug 2026 03:17:38 GMT  
		Size: 17.6 KB (17601 bytes)  
		MIME: application/vnd.in-toto+json

### `node:26-bookworm` - linux; ppc64le

```console
$ docker pull node@sha256:cb1732b7c2a3d538e7e0d8e880402b2f5357ce0f9ca23670abccbc3ce65d84d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.2 MB (429190289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c25868131efeb33a8c49fd0344a7c85e93d4fa28a752d1969c3b3470fa35d78`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:57:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 08:56:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 11:52:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 05 Aug 2026 23:10:36 GMT
ENV NODE_VERSION=26.7.0
# Wed, 05 Aug 2026 23:10:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     arm64) ARCH='arm64';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && export GNUPGHOME="$(mktemp -d)"   && set -ex   && for key in     5BE8A3F6C8A5C01D106C0AD820B1A390B168D356     DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7     CC68F5A3106FF448322E48ED27F5E38D5B0A215F     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4     C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C     108F52B48DB57BB0CC439B2997B01419BD92F80A     A363A499291CBBC940DD62E41F10027AF002F8B0     655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD   ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && node --version   && npm --version   && rm -rf /tmp/* # buildkit
# Wed, 05 Aug 2026 23:10:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 23:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 23:10:37 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec967797e5dd9489be310b03bea17111b4e6049dc869f8b0a3a81cc540a0e7b`  
		Last Modified: Wed, 05 Aug 2026 00:57:30 GMT  
		Size: 25.7 MB (25687275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb1bed36611a08515b1a40e861280de5d11d18c2f44c9f9eafc31d2ced5dcc1`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 69.9 MB (69851499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95027cd80c4454d89d6b4c8efbc12b5a5db6e68d78e2e007912a237c0765c139`  
		Last Modified: Wed, 05 Aug 2026 08:57:45 GMT  
		Size: 214.7 MB (214732697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025a757f2492780cb1e390a24ca74ba0a08cc32eaa26422126428b61de0c7af9`  
		Last Modified: Wed, 05 Aug 2026 11:53:52 GMT  
		Size: 3.3 KB (3326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99bd241b6435674c1e46938fd3f82a863d3c300a12097c5f0cb119f4bd5ac59`  
		Last Modified: Wed, 05 Aug 2026 23:11:42 GMT  
		Size: 66.6 MB (66573571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eedb338746cf35e0b04ce23f789e31029a2c3eca90682cf70bec787ccaf27cf0`  
		Last Modified: Wed, 05 Aug 2026 23:11:40 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `node:26-bookworm` - unknown; unknown

```console
$ docker pull node@sha256:e20a4091e539bc62ad6bae0d175dc221d000b51cb8cb913875855a5a95a679aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16069188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a40741931de7d02cf94430445f1eb4c69c9393208021f900dd93744e9f5a28`

```dockerfile
```

-	Layers:
	-	`sha256:ce514f90d38ce66b19bce120be48f322671a4bf0f05a3e85fb59b7491bd26c89`  
		Last Modified: Wed, 05 Aug 2026 23:11:41 GMT  
		Size: 16.1 MB (16051665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bacae4e4f3581efb9467adb4eff944681366d5850f5d6242499708f1a6685c7`  
		Last Modified: Wed, 05 Aug 2026 23:11:40 GMT  
		Size: 17.5 KB (17523 bytes)  
		MIME: application/vnd.in-toto+json
