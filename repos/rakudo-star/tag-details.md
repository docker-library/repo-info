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
$ docker pull rakudo-star@sha256:d1017fe6552de0c783d14040563bc758278742465f31a2fe731e3f8d15f7cb44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:dd1ae0353dcfed981d53b4765c54ade1030fef158936bca9b16eb212b7e84e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176492512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e792a32849389c109d228844e301396a3a7955dcc387c4febc5c3f16e1a7a4`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:23:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:16:19 GMT
MAINTAINER Rob Hoelz
# Wed, 28 Oct 2026 03:16:19 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:16:19 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:16:19 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:34:44 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:34:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:34:44 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661ef7e1e7b1a9919ab256de1deb5be9107b28a15fea74b39921bec95b713038`  
		Last Modified: Wed, 28 Oct 2026 02:23:17 GMT  
		Size: 64.4 MB (64432590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6360ff89a221647cd45c70a4d4455a9e8d880ad386438d58ff1bf080ed4b72`  
		Last Modified: Wed, 28 Oct 2026 03:34:58 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c141f9cb3582dd1be47f811a2258b1431c05d9cf9d7d75e08674f49cb0693b56`  
		Last Modified: Wed, 28 Oct 2026 03:34:59 GMT  
		Size: 39.7 MB (39658885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:9cec853e61c1b8d2ca7117b47132f09238d699ce5903b805eb057d2705112693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56da87300b52d46297446cd391d952baf4c37199292604dac450b096db66dfc1`

```dockerfile
```

-	Layers:
	-	`sha256:60c88c7e0b80d7496b3e19c71301c5ce3c84f87369c434d7d95f4f196b4ba8ce`  
		Last Modified: Wed, 28 Oct 2026 03:34:58 GMT  
		Size: 8.0 MB (7970952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66d9a722e832a5f95aa7771047bda81b7809e7072e807e37a50b351f43f69188`  
		Last Modified: Wed, 28 Oct 2026 03:34:58 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:4173d8c3f198f66cc5ed2095aca88426e79f3d729218f4190a7003147d56e255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175108072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16252d3f0911c7da10a578313ffa824de2b0af6d84b1e5ed72e447edd5b16e3`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:34:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:18:57 GMT
MAINTAINER Rob Hoelz
# Wed, 28 Oct 2026 03:18:57 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:18:57 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:18:57 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:42:37 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:42:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:42:37 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9f3d35258fc5018f37db87b726c6d8be6533cd7f9a10f219d805efa5969df3`  
		Last Modified: Wed, 28 Oct 2026 02:34:39 GMT  
		Size: 64.5 MB (64528622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5737f87ba43f97ac2dca9d0081347c841fde3d318dae9e84c5e9662bebe81ef`  
		Last Modified: Wed, 28 Oct 2026 03:42:54 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f783a6001a7aa43fd00b75eb28bc07b185595776203677bb0eea5f5cdd55b673`  
		Last Modified: Wed, 28 Oct 2026 03:42:55 GMT  
		Size: 38.7 MB (38731283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:b6ac09bbee789da58458bc75485c8cc1dadbfb2f302bedebf94b7fe867f108a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7990143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0938a856fda63bf69783e6caad8f32ed0eff0d29aea5ad39c07d06cc148b82`

```dockerfile
```

-	Layers:
	-	`sha256:3369a00f9140f9e402c4bbd6d6044ffeb62917c28c5f46572176c6f0ed0818c6`  
		Last Modified: Wed, 28 Oct 2026 03:42:54 GMT  
		Size: 8.0 MB (7977345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cf276aaf49d71d8d4eac140656270b8e4bba98f05eb60b90eae17834a9a74b9`  
		Last Modified: Wed, 28 Oct 2026 03:42:53 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.09-trixie`

```console
$ docker pull rakudo-star@sha256:339bf7cf763124fb822d45cab3e274b28939583bdaf35c4e72330ec705719f5b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:8e22c2c235e5c37cc0880dcd127070916645124aff05c9cb3939115267dd6230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182539672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf836f14cb2dcd872b11b10f0ca06d16e7f7604953e7228e797d0c43c9bf4e2e`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:16:14 GMT
MAINTAINER AntonOks
# Wed, 28 Oct 2026 03:16:14 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:16:14 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:16:14 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:35:40 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:35:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:35:40 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3b752bd4f060dcf33c0f54d1fad29fce8ff42b8fb544f9ec95372f0933bf`  
		Last Modified: Wed, 28 Oct 2026 01:40:03 GMT  
		Size: 25.6 MB (25634411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0168c6e6744fc499abc90618818f9e4aaf652a587fb6345b3882dc57de1495c`  
		Last Modified: Wed, 28 Oct 2026 02:24:06 GMT  
		Size: 67.8 MB (67818749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af54c45b1d58bfb114eda2162127ae94c99a3b72a35146179a8d68f4e3665536`  
		Last Modified: Wed, 28 Oct 2026 03:35:54 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0557546cbe0839ec6cc6b2eae5d9ea8c1173ad979da2db2a6a119b09227fc6`  
		Last Modified: Wed, 28 Oct 2026 03:35:56 GMT  
		Size: 39.7 MB (39675377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:dccb11a6692b6765836e7e112f2d50fbe229c15c6b929e28b6f3f42dae017d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a587f4d137a331fd942668307436372ad5fbb424e7ba8069fa8ceace0e16c7`

```dockerfile
```

-	Layers:
	-	`sha256:1dbca75201e6f28f44860bbc6660f7c24b9effd8e3ce6df7d183bffa0f9273a7`  
		Last Modified: Wed, 28 Oct 2026 03:35:55 GMT  
		Size: 7.8 MB (7778134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88e306407b62041051061ac604a05878db20bf023971ed45230826035c5b0a90`  
		Last Modified: Wed, 28 Oct 2026 03:35:54 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:03cd7d3362309710f57367b6349ae7331876e61b78dd160f011e24e6b4f790c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181200849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdeefa71bb4d72948a041b48e826dd05c2ae4ecfcab63a878eb1b789705cb00`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:18:58 GMT
MAINTAINER AntonOks
# Wed, 28 Oct 2026 03:18:58 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:18:58 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:18:58 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:43:49 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:43:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:43:49 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4b90fd50ae9344f8cbc0278e99128039111a416dade187601456448045108e`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c094d6ace5ff08cb932ca970dd857f4e1cd314f9beeb1a842f3b7fc81478aa21`  
		Last Modified: Wed, 28 Oct 2026 03:44:07 GMT  
		Size: 38.7 MB (38749905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:da40b3cb1c15eb1acc10e4b95857ad418c715e7d1a45fab8631666fb9f67b693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7798272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc10e02a68a3e4e81ded7c4c7270e2626e9bc6bd4ce73c98f7d3eb0bc0e5ea6`

```dockerfile
```

-	Layers:
	-	`sha256:482c55607e67ec2f1e3b3b8d04f503625547dc1702b86b09941cfec1cfd07773`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 7.8 MB (7785172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a832876cae7c1dc3bfd9b8eec701815a6bfe625a2d86bc100c78cea234f9137`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 13.1 KB (13100 bytes)  
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
$ docker pull rakudo-star@sha256:d1017fe6552de0c783d14040563bc758278742465f31a2fe731e3f8d15f7cb44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:dd1ae0353dcfed981d53b4765c54ade1030fef158936bca9b16eb212b7e84e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176492512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e792a32849389c109d228844e301396a3a7955dcc387c4febc5c3f16e1a7a4`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:23:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:16:19 GMT
MAINTAINER Rob Hoelz
# Wed, 28 Oct 2026 03:16:19 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:16:19 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:16:19 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:34:44 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:34:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:34:44 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661ef7e1e7b1a9919ab256de1deb5be9107b28a15fea74b39921bec95b713038`  
		Last Modified: Wed, 28 Oct 2026 02:23:17 GMT  
		Size: 64.4 MB (64432590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6360ff89a221647cd45c70a4d4455a9e8d880ad386438d58ff1bf080ed4b72`  
		Last Modified: Wed, 28 Oct 2026 03:34:58 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c141f9cb3582dd1be47f811a2258b1431c05d9cf9d7d75e08674f49cb0693b56`  
		Last Modified: Wed, 28 Oct 2026 03:34:59 GMT  
		Size: 39.7 MB (39658885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:9cec853e61c1b8d2ca7117b47132f09238d699ce5903b805eb057d2705112693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56da87300b52d46297446cd391d952baf4c37199292604dac450b096db66dfc1`

```dockerfile
```

-	Layers:
	-	`sha256:60c88c7e0b80d7496b3e19c71301c5ce3c84f87369c434d7d95f4f196b4ba8ce`  
		Last Modified: Wed, 28 Oct 2026 03:34:58 GMT  
		Size: 8.0 MB (7970952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66d9a722e832a5f95aa7771047bda81b7809e7072e807e37a50b351f43f69188`  
		Last Modified: Wed, 28 Oct 2026 03:34:58 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:4173d8c3f198f66cc5ed2095aca88426e79f3d729218f4190a7003147d56e255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175108072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16252d3f0911c7da10a578313ffa824de2b0af6d84b1e5ed72e447edd5b16e3`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:34:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:18:57 GMT
MAINTAINER Rob Hoelz
# Wed, 28 Oct 2026 03:18:57 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:18:57 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:18:57 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:42:37 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:42:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:42:37 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9f3d35258fc5018f37db87b726c6d8be6533cd7f9a10f219d805efa5969df3`  
		Last Modified: Wed, 28 Oct 2026 02:34:39 GMT  
		Size: 64.5 MB (64528622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5737f87ba43f97ac2dca9d0081347c841fde3d318dae9e84c5e9662bebe81ef`  
		Last Modified: Wed, 28 Oct 2026 03:42:54 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f783a6001a7aa43fd00b75eb28bc07b185595776203677bb0eea5f5cdd55b673`  
		Last Modified: Wed, 28 Oct 2026 03:42:55 GMT  
		Size: 38.7 MB (38731283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:b6ac09bbee789da58458bc75485c8cc1dadbfb2f302bedebf94b7fe867f108a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7990143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0938a856fda63bf69783e6caad8f32ed0eff0d29aea5ad39c07d06cc148b82`

```dockerfile
```

-	Layers:
	-	`sha256:3369a00f9140f9e402c4bbd6d6044ffeb62917c28c5f46572176c6f0ed0818c6`  
		Last Modified: Wed, 28 Oct 2026 03:42:54 GMT  
		Size: 8.0 MB (7977345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cf276aaf49d71d8d4eac140656270b8e4bba98f05eb60b90eae17834a9a74b9`  
		Last Modified: Wed, 28 Oct 2026 03:42:53 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:c7dbc3f0b4de8ac2f698546fdab4e1e549b25ac78b8fbbe7292eacb2e38b5cb8
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
$ docker pull rakudo-star@sha256:03cd7d3362309710f57367b6349ae7331876e61b78dd160f011e24e6b4f790c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181200849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdeefa71bb4d72948a041b48e826dd05c2ae4ecfcab63a878eb1b789705cb00`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:18:58 GMT
MAINTAINER AntonOks
# Wed, 28 Oct 2026 03:18:58 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:18:58 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:18:58 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:43:49 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:43:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:43:49 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4b90fd50ae9344f8cbc0278e99128039111a416dade187601456448045108e`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c094d6ace5ff08cb932ca970dd857f4e1cd314f9beeb1a842f3b7fc81478aa21`  
		Last Modified: Wed, 28 Oct 2026 03:44:07 GMT  
		Size: 38.7 MB (38749905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:da40b3cb1c15eb1acc10e4b95857ad418c715e7d1a45fab8631666fb9f67b693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7798272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc10e02a68a3e4e81ded7c4c7270e2626e9bc6bd4ce73c98f7d3eb0bc0e5ea6`

```dockerfile
```

-	Layers:
	-	`sha256:482c55607e67ec2f1e3b3b8d04f503625547dc1702b86b09941cfec1cfd07773`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 7.8 MB (7785172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a832876cae7c1dc3bfd9b8eec701815a6bfe625a2d86bc100c78cea234f9137`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:339bf7cf763124fb822d45cab3e274b28939583bdaf35c4e72330ec705719f5b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:8e22c2c235e5c37cc0880dcd127070916645124aff05c9cb3939115267dd6230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182539672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf836f14cb2dcd872b11b10f0ca06d16e7f7604953e7228e797d0c43c9bf4e2e`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:16:14 GMT
MAINTAINER AntonOks
# Wed, 28 Oct 2026 03:16:14 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:16:14 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:16:14 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:35:40 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:35:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:35:40 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3b752bd4f060dcf33c0f54d1fad29fce8ff42b8fb544f9ec95372f0933bf`  
		Last Modified: Wed, 28 Oct 2026 01:40:03 GMT  
		Size: 25.6 MB (25634411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0168c6e6744fc499abc90618818f9e4aaf652a587fb6345b3882dc57de1495c`  
		Last Modified: Wed, 28 Oct 2026 02:24:06 GMT  
		Size: 67.8 MB (67818749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af54c45b1d58bfb114eda2162127ae94c99a3b72a35146179a8d68f4e3665536`  
		Last Modified: Wed, 28 Oct 2026 03:35:54 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0557546cbe0839ec6cc6b2eae5d9ea8c1173ad979da2db2a6a119b09227fc6`  
		Last Modified: Wed, 28 Oct 2026 03:35:56 GMT  
		Size: 39.7 MB (39675377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:dccb11a6692b6765836e7e112f2d50fbe229c15c6b929e28b6f3f42dae017d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a587f4d137a331fd942668307436372ad5fbb424e7ba8069fa8ceace0e16c7`

```dockerfile
```

-	Layers:
	-	`sha256:1dbca75201e6f28f44860bbc6660f7c24b9effd8e3ce6df7d183bffa0f9273a7`  
		Last Modified: Wed, 28 Oct 2026 03:35:55 GMT  
		Size: 7.8 MB (7778134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88e306407b62041051061ac604a05878db20bf023971ed45230826035c5b0a90`  
		Last Modified: Wed, 28 Oct 2026 03:35:54 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:03cd7d3362309710f57367b6349ae7331876e61b78dd160f011e24e6b4f790c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181200849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdeefa71bb4d72948a041b48e826dd05c2ae4ecfcab63a878eb1b789705cb00`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:18:58 GMT
MAINTAINER AntonOks
# Wed, 28 Oct 2026 03:18:58 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:18:58 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:18:58 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:43:49 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:43:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:43:49 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4b90fd50ae9344f8cbc0278e99128039111a416dade187601456448045108e`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c094d6ace5ff08cb932ca970dd857f4e1cd314f9beeb1a842f3b7fc81478aa21`  
		Last Modified: Wed, 28 Oct 2026 03:44:07 GMT  
		Size: 38.7 MB (38749905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:da40b3cb1c15eb1acc10e4b95857ad418c715e7d1a45fab8631666fb9f67b693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7798272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc10e02a68a3e4e81ded7c4c7270e2626e9bc6bd4ce73c98f7d3eb0bc0e5ea6`

```dockerfile
```

-	Layers:
	-	`sha256:482c55607e67ec2f1e3b3b8d04f503625547dc1702b86b09941cfec1cfd07773`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 7.8 MB (7785172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a832876cae7c1dc3bfd9b8eec701815a6bfe625a2d86bc100c78cea234f9137`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json
