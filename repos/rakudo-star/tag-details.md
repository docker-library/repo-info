<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rakudo-star`

-	[`rakudo-star:2026.09-alpine`](#rakudo-star202609-alpine)
-	[`rakudo-star:2026.09-bookworm`](#rakudo-star202609-bookworm)
-	[`rakudo-star:2026.09-trixie`](#rakudo-star202609-trixie)
-	[`rakudo-star:alpine`](#rakudo-staralpine)
-	[`rakudo-star:bookworm`](#rakudo-starbookworm)
-	[`rakudo-star:latest`](#rakudo-starlatest)
-	[`rakudo-star:trixie`](#rakudo-startrixie)

## `rakudo-star:2026.09-alpine`

```console
$ docker pull rakudo-star@sha256:71c1b8d5e032e5dae61fdaf3aa6e6ceac1205aca2a93f80fbc4c8a5fd3b0e463
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:04cc39e556f2649a86ecdc51b58956aaa31884da695fe073729fe3e676092b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50207598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:584f7a06f1bd2af29550019dbd4ffe45552821add0c2ed064676754230b00a79`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:01:42 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Wed, 21 Oct 2026 23:22:41 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 23:22:41 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 23:22:41 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:22:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 23:22:41 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e345e3b917335df8f3e707710634fb830cbeff2e91764756ce703281165085`  
		Last Modified: Wed, 21 Oct 2026 23:22:52 GMT  
		Size: 945.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d770b150607de69e12f62d99d262c337675d4415be4cf4f32998cfeaa87b4cf`  
		Last Modified: Wed, 21 Oct 2026 23:22:54 GMT  
		Size: 46.4 MB (46353544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:f4ab718c93a0fd9f85f8f4347734205b0fb71a41637ab2f03dacbce5af8ce56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5b0f4d72db3dcfaf27b32a1b8929c7438e36c56767076a92e9a4b4ebb17d2a`

```dockerfile
```

-	Layers:
	-	`sha256:46b581568963692a595827b1f19fb132c38d193ec009dc41f6568cf16bb2cca3`  
		Last Modified: Wed, 21 Oct 2026 23:22:52 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b44f06183fcd1d498a1fd14e5877383ae19e89d92cad5f1f9267826a3d2366b7`  
		Last Modified: Wed, 21 Oct 2026 23:22:52 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:74069ddf435fda9d644c4729d5e0d4e02ac9a65f2272f9ee0bead1810649fb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50320001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218dc1a6ace87291ed6877e837b1b52095b496cafe61eaac8f5def59977a4a8a`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:25:30 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Wed, 21 Oct 2026 23:51:01 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 23:51:01 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 23:51:01 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:51:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 23:51:01 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a424bc8d696bb743df1e5ea2b2d8a6f802bccb67eef210eabcaac165b73ada0`  
		Last Modified: Wed, 21 Oct 2026 23:51:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adfb081d4b33d68a32a21ae44ce65039f45038420890e56cb47eaff9fa656b46`  
		Last Modified: Wed, 21 Oct 2026 23:51:13 GMT  
		Size: 46.1 MB (46128570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:41311a8606da95f5506b2496695d4881814e0154a90157ff149ad987fb356b2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d53f6686e4365788039d8d891c7a4de1819fbc96598f2a097768a81984566d`

```dockerfile
```

-	Layers:
	-	`sha256:b1b55e78785077e6b9c6a3ef8d760fc69d4078be8cef2790fffd719413c5da05`  
		Last Modified: Wed, 21 Oct 2026 23:51:12 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20728ddbe57bc75ea9d052628973e19220e6ca0636eb514aa206b1b3d318cadd`  
		Last Modified: Wed, 21 Oct 2026 23:51:12 GMT  
		Size: 11.8 KB (11812 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.09-bookworm`

```console
$ docker pull rakudo-star@sha256:6cbaa34b4f895af940cac12888d2868fbc6a88c52b9fa2391cf9b3773f5bf2d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:c6e3644c4ff63333f760f1c62f2adc6c2a65df48da42241c8605dcf803a4bc89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176540858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e49b1c4e653997d0e15569dfa8da2ce9b613f9dbc31a35177efef54eddcb70`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:27:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:17:49 GMT
MAINTAINER Rob Hoelz
# Wed, 21 Oct 2026 02:17:49 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 21 Oct 2026 02:17:49 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:17:49 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:34:56 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 02:34:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 02:34:56 GMT
CMD ["raku"]
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
	-	`sha256:058a6d922b0470d8b09bedd56da507b76c70abad4f6ab09befea79077ea81ead`  
		Last Modified: Wed, 21 Oct 2026 02:35:10 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbca29c6663addd1afd88edc1d3ed1e10af198c81d23951d99144bb036e7efce`  
		Last Modified: Wed, 21 Oct 2026 02:35:12 GMT  
		Size: 39.7 MB (39714499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:42cf24b609d1c51b6f41733233ebe67c5bd784e77d2d7fb29955ca9401bd5a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7984431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8650a2a3aaa2157b47f659af5ef7748df00fa1763032de11c8b00a390a065efd`

```dockerfile
```

-	Layers:
	-	`sha256:f630db0e488fcafdd5372e76d92e34b32d233fd85606bd3d042656c664994d72`  
		Last Modified: Wed, 21 Oct 2026 02:35:11 GMT  
		Size: 8.0 MB (7971728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f21c5256e3c146168e46e91a0c71cb00f88f7eb89cff8f21a0e39116a035026d`  
		Last Modified: Wed, 21 Oct 2026 02:35:10 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:722a5a9788d54ab0c07ab4e4b0b1d70c009fe30cd2d4e9826b72b522c80a7ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175146109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49ba1dd5eb9c72a0d43ce860c694daa60e41990fe8c8473904e952ef3a49a9e9`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:17:38 GMT
MAINTAINER Rob Hoelz
# Wed, 21 Oct 2026 02:17:38 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 21 Oct 2026 02:17:38 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:17:38 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:41:51 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 02:41:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 02:41:51 GMT
CMD ["raku"]
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
	-	`sha256:cd479641390dfdc3c4fef15438fa5b997a9c9fa2cef069ec1d959606f7566142`  
		Last Modified: Wed, 21 Oct 2026 02:42:07 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca47d472d145200e5a892e632e9bf04bca1cc602c1c5bf8465766609e9fe402`  
		Last Modified: Wed, 21 Oct 2026 02:42:09 GMT  
		Size: 38.8 MB (38777074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:961c740e02aef1994678dfe78532183c45ab58bd1687e8c584f9afed14406dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7990918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30eb87f247e54ecdd6e6a5431024130ea74eec20300c65e833baba9dbc8fc003`

```dockerfile
```

-	Layers:
	-	`sha256:3a0259b5756f05229847e0cad747f95abf1dc4fcc428473f920ec5b56caa8f10`  
		Last Modified: Wed, 21 Oct 2026 02:42:08 GMT  
		Size: 8.0 MB (7978121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:840f70742f7ed5a6d3e253683a8a85641a63c4cb3009321d8e114c689f3d4d3b`  
		Last Modified: Wed, 21 Oct 2026 02:42:08 GMT  
		Size: 12.8 KB (12797 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.09-trixie`

```console
$ docker pull rakudo-star@sha256:045715396be1c3ec91b9b6a619139886c6673cedb3a889ec8c2d473e4a05eb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:90dca5551190be3065425a24554f0cb662abfa81c0276af90bcfb77545ef61c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182578452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c79eea908c465fe765445244b72c2155fc92682641b8193285074d728dd1c85`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:17:32 GMT
MAINTAINER AntonOks
# Wed, 21 Oct 2026 02:17:32 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 21 Oct 2026 02:17:32 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:17:32 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:37:34 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 02:37:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 02:37:34 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:034d820e53c1dbe325efff86317ddfb1e830a2248804182f965d9be0de290b37`  
		Last Modified: Wed, 21 Oct 2026 02:37:49 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d51984a79ce90a1e79fb1257f212a9dd0b54e210a2295f04cd92cba1be1025b`  
		Last Modified: Wed, 21 Oct 2026 02:37:50 GMT  
		Size: 39.7 MB (39727191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:c1f5101e07ed95404fea911113118232ec7fac8cef24473601656f9465e76358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30208856baa8af636a49b22612733008563d9f77b288e09e92eca73a2824ad4`

```dockerfile
```

-	Layers:
	-	`sha256:112d79c5b27475712435806a34d4da89b3042109f7a8d0707943a8fb33a70b62`  
		Last Modified: Wed, 21 Oct 2026 02:37:49 GMT  
		Size: 7.8 MB (7778910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00d66d82bbf206eaecf7ee540d532151b042c657260429d2b1e0bebc7ec11523`  
		Last Modified: Wed, 21 Oct 2026 02:37:49 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:da1585271b206bc2be0b94993329f7df6a424a16238efcad66e14b55092475a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181231429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:961221a207779e1a7a5c0558aa6a9eb584438c7c860edaee475ca4987ba6220c`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:17:37 GMT
MAINTAINER AntonOks
# Wed, 21 Oct 2026 02:17:37 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 21 Oct 2026 02:17:37 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:17:37 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:43:29 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 02:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 02:43:29 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953b2b7a648611362e0a7e5cb619d23a19f810833381272187f7f9a750bace4`  
		Last Modified: Wed, 21 Oct 2026 02:43:46 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd8b30d5ea5ce5859d2dcdda6df5e30d334f2809c3a43ee159a2ba2b7b5c8f8`  
		Last Modified: Wed, 21 Oct 2026 02:43:47 GMT  
		Size: 38.8 MB (38795834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:61beb3372a758252f365aa40af3ba48168977c9a62777bde58ca66a01e13cb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7799047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f8abaee3a4115e9910736e361a5abe7caea8578b24a9c46ff1f35de16a04`

```dockerfile
```

-	Layers:
	-	`sha256:c9c3d2875fff9ba245878687fcb5d7bfcf61f3b39b947b1e915c346cbf722f28`  
		Last Modified: Wed, 21 Oct 2026 02:43:46 GMT  
		Size: 7.8 MB (7785948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73f4d548a899bc81f8436924d6c9af59e7676d1639549b8c982367e0fcbd526d`  
		Last Modified: Wed, 21 Oct 2026 02:43:46 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:alpine`

```console
$ docker pull rakudo-star@sha256:71c1b8d5e032e5dae61fdaf3aa6e6ceac1205aca2a93f80fbc4c8a5fd3b0e463
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:04cc39e556f2649a86ecdc51b58956aaa31884da695fe073729fe3e676092b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50207598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:584f7a06f1bd2af29550019dbd4ffe45552821add0c2ed064676754230b00a79`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:01:42 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Wed, 21 Oct 2026 23:22:41 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 23:22:41 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 23:22:41 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:22:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 23:22:41 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e345e3b917335df8f3e707710634fb830cbeff2e91764756ce703281165085`  
		Last Modified: Wed, 21 Oct 2026 23:22:52 GMT  
		Size: 945.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d770b150607de69e12f62d99d262c337675d4415be4cf4f32998cfeaa87b4cf`  
		Last Modified: Wed, 21 Oct 2026 23:22:54 GMT  
		Size: 46.4 MB (46353544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:f4ab718c93a0fd9f85f8f4347734205b0fb71a41637ab2f03dacbce5af8ce56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5b0f4d72db3dcfaf27b32a1b8929c7438e36c56767076a92e9a4b4ebb17d2a`

```dockerfile
```

-	Layers:
	-	`sha256:46b581568963692a595827b1f19fb132c38d193ec009dc41f6568cf16bb2cca3`  
		Last Modified: Wed, 21 Oct 2026 23:22:52 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b44f06183fcd1d498a1fd14e5877383ae19e89d92cad5f1f9267826a3d2366b7`  
		Last Modified: Wed, 21 Oct 2026 23:22:52 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:74069ddf435fda9d644c4729d5e0d4e02ac9a65f2272f9ee0bead1810649fb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50320001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218dc1a6ace87291ed6877e837b1b52095b496cafe61eaac8f5def59977a4a8a`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:25:30 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Wed, 21 Oct 2026 23:51:01 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 23:51:01 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 23:51:01 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:51:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 23:51:01 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a424bc8d696bb743df1e5ea2b2d8a6f802bccb67eef210eabcaac165b73ada0`  
		Last Modified: Wed, 21 Oct 2026 23:51:12 GMT  
		Size: 943.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adfb081d4b33d68a32a21ae44ce65039f45038420890e56cb47eaff9fa656b46`  
		Last Modified: Wed, 21 Oct 2026 23:51:13 GMT  
		Size: 46.1 MB (46128570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:41311a8606da95f5506b2496695d4881814e0154a90157ff149ad987fb356b2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d53f6686e4365788039d8d891c7a4de1819fbc96598f2a097768a81984566d`

```dockerfile
```

-	Layers:
	-	`sha256:b1b55e78785077e6b9c6a3ef8d760fc69d4078be8cef2790fffd719413c5da05`  
		Last Modified: Wed, 21 Oct 2026 23:51:12 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20728ddbe57bc75ea9d052628973e19220e6ca0636eb514aa206b1b3d318cadd`  
		Last Modified: Wed, 21 Oct 2026 23:51:12 GMT  
		Size: 11.8 KB (11812 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:bookworm`

```console
$ docker pull rakudo-star@sha256:6cbaa34b4f895af940cac12888d2868fbc6a88c52b9fa2391cf9b3773f5bf2d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:c6e3644c4ff63333f760f1c62f2adc6c2a65df48da42241c8605dcf803a4bc89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176540858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e49b1c4e653997d0e15569dfa8da2ce9b613f9dbc31a35177efef54eddcb70`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:27:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:17:49 GMT
MAINTAINER Rob Hoelz
# Wed, 21 Oct 2026 02:17:49 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 21 Oct 2026 02:17:49 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:17:49 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:34:56 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 02:34:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 02:34:56 GMT
CMD ["raku"]
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
	-	`sha256:058a6d922b0470d8b09bedd56da507b76c70abad4f6ab09befea79077ea81ead`  
		Last Modified: Wed, 21 Oct 2026 02:35:10 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbca29c6663addd1afd88edc1d3ed1e10af198c81d23951d99144bb036e7efce`  
		Last Modified: Wed, 21 Oct 2026 02:35:12 GMT  
		Size: 39.7 MB (39714499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:42cf24b609d1c51b6f41733233ebe67c5bd784e77d2d7fb29955ca9401bd5a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7984431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8650a2a3aaa2157b47f659af5ef7748df00fa1763032de11c8b00a390a065efd`

```dockerfile
```

-	Layers:
	-	`sha256:f630db0e488fcafdd5372e76d92e34b32d233fd85606bd3d042656c664994d72`  
		Last Modified: Wed, 21 Oct 2026 02:35:11 GMT  
		Size: 8.0 MB (7971728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f21c5256e3c146168e46e91a0c71cb00f88f7eb89cff8f21a0e39116a035026d`  
		Last Modified: Wed, 21 Oct 2026 02:35:10 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:722a5a9788d54ab0c07ab4e4b0b1d70c009fe30cd2d4e9826b72b522c80a7ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175146109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49ba1dd5eb9c72a0d43ce860c694daa60e41990fe8c8473904e952ef3a49a9e9`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:33:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:17:38 GMT
MAINTAINER Rob Hoelz
# Wed, 21 Oct 2026 02:17:38 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 21 Oct 2026 02:17:38 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:17:38 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:41:51 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 02:41:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 02:41:51 GMT
CMD ["raku"]
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
	-	`sha256:cd479641390dfdc3c4fef15438fa5b997a9c9fa2cef069ec1d959606f7566142`  
		Last Modified: Wed, 21 Oct 2026 02:42:07 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca47d472d145200e5a892e632e9bf04bca1cc602c1c5bf8465766609e9fe402`  
		Last Modified: Wed, 21 Oct 2026 02:42:09 GMT  
		Size: 38.8 MB (38777074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:961c740e02aef1994678dfe78532183c45ab58bd1687e8c584f9afed14406dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7990918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30eb87f247e54ecdd6e6a5431024130ea74eec20300c65e833baba9dbc8fc003`

```dockerfile
```

-	Layers:
	-	`sha256:3a0259b5756f05229847e0cad747f95abf1dc4fcc428473f920ec5b56caa8f10`  
		Last Modified: Wed, 21 Oct 2026 02:42:08 GMT  
		Size: 8.0 MB (7978121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:840f70742f7ed5a6d3e253683a8a85641a63c4cb3009321d8e114c689f3d4d3b`  
		Last Modified: Wed, 21 Oct 2026 02:42:08 GMT  
		Size: 12.8 KB (12797 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:045715396be1c3ec91b9b6a619139886c6673cedb3a889ec8c2d473e4a05eb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:90dca5551190be3065425a24554f0cb662abfa81c0276af90bcfb77545ef61c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182578452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c79eea908c465fe765445244b72c2155fc92682641b8193285074d728dd1c85`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:17:32 GMT
MAINTAINER AntonOks
# Wed, 21 Oct 2026 02:17:32 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 21 Oct 2026 02:17:32 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:17:32 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:37:34 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 02:37:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 02:37:34 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:034d820e53c1dbe325efff86317ddfb1e830a2248804182f965d9be0de290b37`  
		Last Modified: Wed, 21 Oct 2026 02:37:49 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d51984a79ce90a1e79fb1257f212a9dd0b54e210a2295f04cd92cba1be1025b`  
		Last Modified: Wed, 21 Oct 2026 02:37:50 GMT  
		Size: 39.7 MB (39727191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:c1f5101e07ed95404fea911113118232ec7fac8cef24473601656f9465e76358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30208856baa8af636a49b22612733008563d9f77b288e09e92eca73a2824ad4`

```dockerfile
```

-	Layers:
	-	`sha256:112d79c5b27475712435806a34d4da89b3042109f7a8d0707943a8fb33a70b62`  
		Last Modified: Wed, 21 Oct 2026 02:37:49 GMT  
		Size: 7.8 MB (7778910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00d66d82bbf206eaecf7ee540d532151b042c657260429d2b1e0bebc7ec11523`  
		Last Modified: Wed, 21 Oct 2026 02:37:49 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:da1585271b206bc2be0b94993329f7df6a424a16238efcad66e14b55092475a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181231429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:961221a207779e1a7a5c0558aa6a9eb584438c7c860edaee475ca4987ba6220c`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:17:37 GMT
MAINTAINER AntonOks
# Wed, 21 Oct 2026 02:17:37 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 21 Oct 2026 02:17:37 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:17:37 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:43:29 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 02:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 02:43:29 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953b2b7a648611362e0a7e5cb619d23a19f810833381272187f7f9a750bace4`  
		Last Modified: Wed, 21 Oct 2026 02:43:46 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd8b30d5ea5ce5859d2dcdda6df5e30d334f2809c3a43ee159a2ba2b7b5c8f8`  
		Last Modified: Wed, 21 Oct 2026 02:43:47 GMT  
		Size: 38.8 MB (38795834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:61beb3372a758252f365aa40af3ba48168977c9a62777bde58ca66a01e13cb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7799047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f8abaee3a4115e9910736e361a5abe7caea8578b24a9c46ff1f35de16a04`

```dockerfile
```

-	Layers:
	-	`sha256:c9c3d2875fff9ba245878687fcb5d7bfcf61f3b39b947b1e915c346cbf722f28`  
		Last Modified: Wed, 21 Oct 2026 02:43:46 GMT  
		Size: 7.8 MB (7785948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73f4d548a899bc81f8436924d6c9af59e7676d1639549b8c982367e0fcbd526d`  
		Last Modified: Wed, 21 Oct 2026 02:43:46 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:045715396be1c3ec91b9b6a619139886c6673cedb3a889ec8c2d473e4a05eb83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:90dca5551190be3065425a24554f0cb662abfa81c0276af90bcfb77545ef61c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182578452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c79eea908c465fe765445244b72c2155fc92682641b8193285074d728dd1c85`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:17:32 GMT
MAINTAINER AntonOks
# Wed, 21 Oct 2026 02:17:32 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 21 Oct 2026 02:17:32 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:17:32 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:37:34 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 02:37:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 02:37:34 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:034d820e53c1dbe325efff86317ddfb1e830a2248804182f965d9be0de290b37`  
		Last Modified: Wed, 21 Oct 2026 02:37:49 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d51984a79ce90a1e79fb1257f212a9dd0b54e210a2295f04cd92cba1be1025b`  
		Last Modified: Wed, 21 Oct 2026 02:37:50 GMT  
		Size: 39.7 MB (39727191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:c1f5101e07ed95404fea911113118232ec7fac8cef24473601656f9465e76358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30208856baa8af636a49b22612733008563d9f77b288e09e92eca73a2824ad4`

```dockerfile
```

-	Layers:
	-	`sha256:112d79c5b27475712435806a34d4da89b3042109f7a8d0707943a8fb33a70b62`  
		Last Modified: Wed, 21 Oct 2026 02:37:49 GMT  
		Size: 7.8 MB (7778910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00d66d82bbf206eaecf7ee540d532151b042c657260429d2b1e0bebc7ec11523`  
		Last Modified: Wed, 21 Oct 2026 02:37:49 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:da1585271b206bc2be0b94993329f7df6a424a16238efcad66e14b55092475a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181231429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:961221a207779e1a7a5c0558aa6a9eb584438c7c860edaee475ca4987ba6220c`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:34:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:17:37 GMT
MAINTAINER AntonOks
# Wed, 21 Oct 2026 02:17:37 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 21 Oct 2026 02:17:37 GMT
ARG rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:17:37 GMT
ENV rakudo_version=2026.09-01
# Wed, 21 Oct 2026 02:43:29 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 02:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 21 Oct 2026 02:43:29 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7d3237c24572d428cffa50bed9ee6a1844db67c96c4f566bd3a67853d3c223`  
		Last Modified: Wed, 21 Oct 2026 01:34:22 GMT  
		Size: 67.6 MB (67634136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953b2b7a648611362e0a7e5cb619d23a19f810833381272187f7f9a750bace4`  
		Last Modified: Wed, 21 Oct 2026 02:43:46 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd8b30d5ea5ce5859d2dcdda6df5e30d334f2809c3a43ee159a2ba2b7b5c8f8`  
		Last Modified: Wed, 21 Oct 2026 02:43:47 GMT  
		Size: 38.8 MB (38795834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:61beb3372a758252f365aa40af3ba48168977c9a62777bde58ca66a01e13cb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7799047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e4f8abaee3a4115e9910736e361a5abe7caea8578b24a9c46ff1f35de16a04`

```dockerfile
```

-	Layers:
	-	`sha256:c9c3d2875fff9ba245878687fcb5d7bfcf61f3b39b947b1e915c346cbf722f28`  
		Last Modified: Wed, 21 Oct 2026 02:43:46 GMT  
		Size: 7.8 MB (7785948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73f4d548a899bc81f8436924d6c9af59e7676d1639549b8c982367e0fcbd526d`  
		Last Modified: Wed, 21 Oct 2026 02:43:46 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json
