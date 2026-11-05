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
$ docker pull rakudo-star@sha256:bb97aea0df180f2d5da624c675002825ce8341746649e54ee20be58d963c81ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:e4e5da1c2fa5ed672827888af00428f943ea22badb8abff3153a723e5a1974bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50189948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcba53a7aca5dd7f543e703bb82b8e9fd0021010dd3b5f20917f00ccb532e4b5`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:31:33 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Thu, 05 Nov 2026 19:53:42 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 19:53:42 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 19:53:42 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:53:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 19:53:42 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2742c9761ad26d1cbddbf5d5073aea6289b6c10b5444db6a1f94272e8811fcc5`  
		Last Modified: Thu, 05 Nov 2026 19:53:53 GMT  
		Size: 945.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb47feeda3ae651d4b0e73ccec1b39eca712ecd052d18a359aaad48e55513cbf`  
		Last Modified: Thu, 05 Nov 2026 19:53:54 GMT  
		Size: 46.3 MB (46335330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:4710e3398eb75ba06753fafc272c79ac4e159c09c90e0d96e40bd629ddc073f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c274a4738831dcfdc7587f86db9f860d6f9d92cf612938c614b2e9153086943a`

```dockerfile
```

-	Layers:
	-	`sha256:2adbfab3b4eb34000621cddec485e81f9a3cd0738230d5c918be365e2d7b66e8`  
		Last Modified: Thu, 05 Nov 2026 19:53:53 GMT  
		Size: 185.4 KB (185367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40150d3e63c13a72bdd750c7466b95da5c6b4c1989771821fd620342de688f95`  
		Last Modified: Thu, 05 Nov 2026 19:53:53 GMT  
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
$ docker pull rakudo-star@sha256:8c1e027bf950c3bac6e595128bbd0c8eb41520de67ce60306cd013c04985d988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:0bf6c74d5f300281321a280b50690893a5185dd209c9ee9c5c4ccc8b9b8bdacd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176510863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a2b6b6a1063ceb7a0dc94527e5aa2c672a87b64cb691678479da39fef0d604`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:35 GMT
MAINTAINER Rob Hoelz
# Thu, 05 Nov 2026 08:54:35 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:54:35 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:54:35 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:11:22 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:11:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:11:22 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a9926e81be5179814bb4adeb098247225b8a08f97b89a23224bdab5882544d2`  
		Last Modified: Thu, 05 Nov 2026 09:11:43 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2f85ead9cf4543cb50e57b477b5dd961bdffaa3ea3ca44e1efcc1444a68af1`  
		Last Modified: Thu, 05 Nov 2026 09:11:44 GMT  
		Size: 39.7 MB (39675305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:4c415916547ed7a29c2d33b6d3edc7748298000ca9928b773b0935ded5933e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a73d9ef75009c7741963f8b27b595186239e1a8432ea36a7b8777941c9f368`

```dockerfile
```

-	Layers:
	-	`sha256:bc0739a3763142348c0b18be6058c137ed07c66e005aa9df51614774348ccfdc`  
		Last Modified: Thu, 05 Nov 2026 09:11:43 GMT  
		Size: 8.0 MB (7971006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85716e7f85419bd4f6aa00ae66263afa3109745f009685ea3464ddcf3f0b79a8`  
		Last Modified: Thu, 05 Nov 2026 09:11:43 GMT  
		Size: 12.7 KB (12702 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:825bcc3cca37454bf6049facaa90daf7b9f23660c683cb8e4e9b4153f928e93d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175135264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c950d5451ce87a67a28292798811306483f5fdb2db7d0b39eff533e392ec52`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:55:16 GMT
MAINTAINER Rob Hoelz
# Thu, 05 Nov 2026 08:55:16 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:55:16 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:55:16 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:20:00 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:20:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:20:00 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76cbc8255d36651564737237769568a36bf122726381d1994d90279fc2dbb523`  
		Last Modified: Thu, 05 Nov 2026 09:20:17 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0813c1f83c5070bc214d0844c31738a7ce605074b65312d61bc5900d2a71037c`  
		Last Modified: Thu, 05 Nov 2026 09:20:18 GMT  
		Size: 38.8 MB (38750448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:237a67f1e61c8cd1c06903a556ccead4b228bcf6136221f980755f4e26c63262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7990197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc301c796133cc21b1e8306e68ba14e1fea12bb7531cf3b3a1480e729e7f6eff`

```dockerfile
```

-	Layers:
	-	`sha256:539bb636dbff98c3b40b41108d8cc749db77b1ba7a44843e6a2a871d6455a5ff`  
		Last Modified: Thu, 05 Nov 2026 09:20:17 GMT  
		Size: 8.0 MB (7977399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3650f78f309e8ad5b5816a6b21244fb506306174e5404d368983aee2bdf65f57`  
		Last Modified: Thu, 05 Nov 2026 09:20:17 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.09-trixie`

```console
$ docker pull rakudo-star@sha256:280967034798a258d8add070711d4cfdf2cf456add4bb328ebd7ac64143c77fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:652222d0c246d0c90db7cf4cf60df56abc542b1476dc8435c763e56ef2c97f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182559942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d1ec1b03c457cf2355202e9aec96547d0d9ee0ad27f2e8154199e9c2c7dff6`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:26 GMT
MAINTAINER AntonOks
# Thu, 05 Nov 2026 08:54:26 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:54:26 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:54:26 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:11:16 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:11:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:11:16 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26777f15cbb482bb9c1b0ae812844cacdb72afabc59c6d52d2fdbf2b97060781`  
		Last Modified: Thu, 05 Nov 2026 09:11:30 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab760cfd35e33de0494a763af2cd41509ec8e8de97ada4000aa6d1b0ab32991`  
		Last Modified: Thu, 05 Nov 2026 09:11:32 GMT  
		Size: 39.7 MB (39691110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:80463aed71cff92132da57048d4cb3aebacd510438ad24457b843b4d7f885bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aca594bc58e60607f2f6ed1df16414893a000c5e8a898e1ea9883374dcb7e05`

```dockerfile
```

-	Layers:
	-	`sha256:dcc3503f4974ef130fd7c2c39a711e4c195f10037a558d0f0f67630c633114ac`  
		Last Modified: Thu, 05 Nov 2026 09:11:31 GMT  
		Size: 7.8 MB (7778134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdef235c173c748ce76ed81765ceef87202978495b7f11a5ce48ab49b3ca3171`  
		Last Modified: Thu, 05 Nov 2026 09:11:30 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:231fbd918f582fd18fa470d32310d5c29b4073c1743ccff317721ae368c23adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181221993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66a3573ae751d783cb63f15eb879718dcb77983e783568ac955f4406257f266`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:55:15 GMT
MAINTAINER AntonOks
# Thu, 05 Nov 2026 08:55:15 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:55:15 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:55:15 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:21:36 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:21:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:21:36 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a57b2e8282c5b3153ebbefd89c565dcd4ce9b9ed284cff04ae2d2b8f79917e`  
		Last Modified: Thu, 05 Nov 2026 09:21:56 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8071267841d5a974f42f98fc774d4426e2212cf9f3b4d8f2497767f270fe9f57`  
		Last Modified: Thu, 05 Nov 2026 09:21:58 GMT  
		Size: 38.8 MB (38768861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:5cfeab82acb49e785f83160c238accb6a6dc8a577f81e36153db5a71d665f5d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7798272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2712b552eeb0d77580d62b9786d6870340b82c0561b645983e34d8d4baa9a16`

```dockerfile
```

-	Layers:
	-	`sha256:bf55b9074e2349a84e819c7a7d06d3a12d64d7aacf05bc4c7d9d7e3c458d7eb3`  
		Last Modified: Thu, 05 Nov 2026 09:21:57 GMT  
		Size: 7.8 MB (7785172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fea3bfb958190a1d9ecc03239aa094657435e4203aced52be093d47f9424c8f`  
		Last Modified: Thu, 05 Nov 2026 09:21:56 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:alpine`

```console
$ docker pull rakudo-star@sha256:0bc7542202ea3d9362ce15d90a601928f02b7657630fd131ad9d9847687b65b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:e4e5da1c2fa5ed672827888af00428f943ea22badb8abff3153a723e5a1974bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50189948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcba53a7aca5dd7f543e703bb82b8e9fd0021010dd3b5f20917f00ccb532e4b5`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:31:33 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Thu, 05 Nov 2026 19:53:42 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 19:53:42 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 19:53:42 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:53:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 19:53:42 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2742c9761ad26d1cbddbf5d5073aea6289b6c10b5444db6a1f94272e8811fcc5`  
		Last Modified: Thu, 05 Nov 2026 19:53:53 GMT  
		Size: 945.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb47feeda3ae651d4b0e73ccec1b39eca712ecd052d18a359aaad48e55513cbf`  
		Last Modified: Thu, 05 Nov 2026 19:53:54 GMT  
		Size: 46.3 MB (46335330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:4710e3398eb75ba06753fafc272c79ac4e159c09c90e0d96e40bd629ddc073f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c274a4738831dcfdc7587f86db9f860d6f9d92cf612938c614b2e9153086943a`

```dockerfile
```

-	Layers:
	-	`sha256:2adbfab3b4eb34000621cddec485e81f9a3cd0738230d5c918be365e2d7b66e8`  
		Last Modified: Thu, 05 Nov 2026 19:53:53 GMT  
		Size: 185.4 KB (185367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40150d3e63c13a72bdd750c7466b95da5c6b4c1989771821fd620342de688f95`  
		Last Modified: Thu, 05 Nov 2026 19:53:53 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:7cae5f6f18e5850c686e9e3bc3a5bc0b1fcb4a9e5c3833d453d7633c36fd1217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50295023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e72ff830b5b04bc2c95a6b7b40ba6c84eda0f477af4ab1bff38765cc101613`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:31:56 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Thu, 05 Nov 2026 19:58:21 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 19:58:21 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 19:58:21 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:58:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 19:58:21 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20dbd53bf833c864bf44404078bdf90d7c6ad0fb86db47772d6f901e7c083dc`  
		Last Modified: Thu, 05 Nov 2026 19:58:33 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb3c4bfc0b44ba945012036b04fbd7f643f11bd966f35fa06304accc98b88f8`  
		Last Modified: Thu, 05 Nov 2026 19:58:34 GMT  
		Size: 46.1 MB (46103482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:c6601a9561c50299f9975669e5c5c9501607726f1cb446cb8dc8eec994e00377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d81ef89f815aab43cc2aa6f2adfac9b5c3951dd685cc0b51b6ee0167cfdc3457`

```dockerfile
```

-	Layers:
	-	`sha256:36166b06162e42f5fec0be2fe95f623c8ca9f1eca4af181f41abe6be9ecadacb`  
		Last Modified: Thu, 05 Nov 2026 19:58:33 GMT  
		Size: 184.7 KB (184749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ef667b1d249aafbb55bedeb345e907538ee8523060f6b6953193ab42a6ec083`  
		Last Modified: Thu, 05 Nov 2026 19:58:32 GMT  
		Size: 11.8 KB (11813 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:bookworm`

```console
$ docker pull rakudo-star@sha256:8c1e027bf950c3bac6e595128bbd0c8eb41520de67ce60306cd013c04985d988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:0bf6c74d5f300281321a280b50690893a5185dd209c9ee9c5c4ccc8b9b8bdacd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176510863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a2b6b6a1063ceb7a0dc94527e5aa2c672a87b64cb691678479da39fef0d604`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:35 GMT
MAINTAINER Rob Hoelz
# Thu, 05 Nov 2026 08:54:35 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:54:35 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:54:35 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:11:22 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:11:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:11:22 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a9926e81be5179814bb4adeb098247225b8a08f97b89a23224bdab5882544d2`  
		Last Modified: Thu, 05 Nov 2026 09:11:43 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2f85ead9cf4543cb50e57b477b5dd961bdffaa3ea3ca44e1efcc1444a68af1`  
		Last Modified: Thu, 05 Nov 2026 09:11:44 GMT  
		Size: 39.7 MB (39675305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:4c415916547ed7a29c2d33b6d3edc7748298000ca9928b773b0935ded5933e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a73d9ef75009c7741963f8b27b595186239e1a8432ea36a7b8777941c9f368`

```dockerfile
```

-	Layers:
	-	`sha256:bc0739a3763142348c0b18be6058c137ed07c66e005aa9df51614774348ccfdc`  
		Last Modified: Thu, 05 Nov 2026 09:11:43 GMT  
		Size: 8.0 MB (7971006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85716e7f85419bd4f6aa00ae66263afa3109745f009685ea3464ddcf3f0b79a8`  
		Last Modified: Thu, 05 Nov 2026 09:11:43 GMT  
		Size: 12.7 KB (12702 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:825bcc3cca37454bf6049facaa90daf7b9f23660c683cb8e4e9b4153f928e93d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175135264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c950d5451ce87a67a28292798811306483f5fdb2db7d0b39eff533e392ec52`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:55:16 GMT
MAINTAINER Rob Hoelz
# Thu, 05 Nov 2026 08:55:16 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:55:16 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:55:16 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:20:00 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:20:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:20:00 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76cbc8255d36651564737237769568a36bf122726381d1994d90279fc2dbb523`  
		Last Modified: Thu, 05 Nov 2026 09:20:17 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0813c1f83c5070bc214d0844c31738a7ce605074b65312d61bc5900d2a71037c`  
		Last Modified: Thu, 05 Nov 2026 09:20:18 GMT  
		Size: 38.8 MB (38750448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:237a67f1e61c8cd1c06903a556ccead4b228bcf6136221f980755f4e26c63262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7990197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc301c796133cc21b1e8306e68ba14e1fea12bb7531cf3b3a1480e729e7f6eff`

```dockerfile
```

-	Layers:
	-	`sha256:539bb636dbff98c3b40b41108d8cc749db77b1ba7a44843e6a2a871d6455a5ff`  
		Last Modified: Thu, 05 Nov 2026 09:20:17 GMT  
		Size: 8.0 MB (7977399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3650f78f309e8ad5b5816a6b21244fb506306174e5404d368983aee2bdf65f57`  
		Last Modified: Thu, 05 Nov 2026 09:20:17 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:280967034798a258d8add070711d4cfdf2cf456add4bb328ebd7ac64143c77fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:652222d0c246d0c90db7cf4cf60df56abc542b1476dc8435c763e56ef2c97f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182559942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d1ec1b03c457cf2355202e9aec96547d0d9ee0ad27f2e8154199e9c2c7dff6`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:26 GMT
MAINTAINER AntonOks
# Thu, 05 Nov 2026 08:54:26 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:54:26 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:54:26 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:11:16 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:11:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:11:16 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26777f15cbb482bb9c1b0ae812844cacdb72afabc59c6d52d2fdbf2b97060781`  
		Last Modified: Thu, 05 Nov 2026 09:11:30 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab760cfd35e33de0494a763af2cd41509ec8e8de97ada4000aa6d1b0ab32991`  
		Last Modified: Thu, 05 Nov 2026 09:11:32 GMT  
		Size: 39.7 MB (39691110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:80463aed71cff92132da57048d4cb3aebacd510438ad24457b843b4d7f885bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aca594bc58e60607f2f6ed1df16414893a000c5e8a898e1ea9883374dcb7e05`

```dockerfile
```

-	Layers:
	-	`sha256:dcc3503f4974ef130fd7c2c39a711e4c195f10037a558d0f0f67630c633114ac`  
		Last Modified: Thu, 05 Nov 2026 09:11:31 GMT  
		Size: 7.8 MB (7778134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdef235c173c748ce76ed81765ceef87202978495b7f11a5ce48ab49b3ca3171`  
		Last Modified: Thu, 05 Nov 2026 09:11:30 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:231fbd918f582fd18fa470d32310d5c29b4073c1743ccff317721ae368c23adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181221993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66a3573ae751d783cb63f15eb879718dcb77983e783568ac955f4406257f266`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:55:15 GMT
MAINTAINER AntonOks
# Thu, 05 Nov 2026 08:55:15 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:55:15 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:55:15 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:21:36 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:21:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:21:36 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a57b2e8282c5b3153ebbefd89c565dcd4ce9b9ed284cff04ae2d2b8f79917e`  
		Last Modified: Thu, 05 Nov 2026 09:21:56 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8071267841d5a974f42f98fc774d4426e2212cf9f3b4d8f2497767f270fe9f57`  
		Last Modified: Thu, 05 Nov 2026 09:21:58 GMT  
		Size: 38.8 MB (38768861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:5cfeab82acb49e785f83160c238accb6a6dc8a577f81e36153db5a71d665f5d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7798272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2712b552eeb0d77580d62b9786d6870340b82c0561b645983e34d8d4baa9a16`

```dockerfile
```

-	Layers:
	-	`sha256:bf55b9074e2349a84e819c7a7d06d3a12d64d7aacf05bc4c7d9d7e3c458d7eb3`  
		Last Modified: Thu, 05 Nov 2026 09:21:57 GMT  
		Size: 7.8 MB (7785172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fea3bfb958190a1d9ecc03239aa094657435e4203aced52be093d47f9424c8f`  
		Last Modified: Thu, 05 Nov 2026 09:21:56 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:280967034798a258d8add070711d4cfdf2cf456add4bb328ebd7ac64143c77fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:652222d0c246d0c90db7cf4cf60df56abc542b1476dc8435c763e56ef2c97f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182559942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d1ec1b03c457cf2355202e9aec96547d0d9ee0ad27f2e8154199e9c2c7dff6`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:26 GMT
MAINTAINER AntonOks
# Thu, 05 Nov 2026 08:54:26 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:54:26 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:54:26 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:11:16 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:11:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:11:16 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26777f15cbb482bb9c1b0ae812844cacdb72afabc59c6d52d2fdbf2b97060781`  
		Last Modified: Thu, 05 Nov 2026 09:11:30 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab760cfd35e33de0494a763af2cd41509ec8e8de97ada4000aa6d1b0ab32991`  
		Last Modified: Thu, 05 Nov 2026 09:11:32 GMT  
		Size: 39.7 MB (39691110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:80463aed71cff92132da57048d4cb3aebacd510438ad24457b843b4d7f885bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aca594bc58e60607f2f6ed1df16414893a000c5e8a898e1ea9883374dcb7e05`

```dockerfile
```

-	Layers:
	-	`sha256:dcc3503f4974ef130fd7c2c39a711e4c195f10037a558d0f0f67630c633114ac`  
		Last Modified: Thu, 05 Nov 2026 09:11:31 GMT  
		Size: 7.8 MB (7778134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdef235c173c748ce76ed81765ceef87202978495b7f11a5ce48ab49b3ca3171`  
		Last Modified: Thu, 05 Nov 2026 09:11:30 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:231fbd918f582fd18fa470d32310d5c29b4073c1743ccff317721ae368c23adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181221993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66a3573ae751d783cb63f15eb879718dcb77983e783568ac955f4406257f266`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:55:15 GMT
MAINTAINER AntonOks
# Thu, 05 Nov 2026 08:55:15 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:55:15 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:55:15 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:21:36 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:21:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:21:36 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a57b2e8282c5b3153ebbefd89c565dcd4ce9b9ed284cff04ae2d2b8f79917e`  
		Last Modified: Thu, 05 Nov 2026 09:21:56 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8071267841d5a974f42f98fc774d4426e2212cf9f3b4d8f2497767f270fe9f57`  
		Last Modified: Thu, 05 Nov 2026 09:21:58 GMT  
		Size: 38.8 MB (38768861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:5cfeab82acb49e785f83160c238accb6a6dc8a577f81e36153db5a71d665f5d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7798272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2712b552eeb0d77580d62b9786d6870340b82c0561b645983e34d8d4baa9a16`

```dockerfile
```

-	Layers:
	-	`sha256:bf55b9074e2349a84e819c7a7d06d3a12d64d7aacf05bc4c7d9d7e3c458d7eb3`  
		Last Modified: Thu, 05 Nov 2026 09:21:57 GMT  
		Size: 7.8 MB (7785172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fea3bfb958190a1d9ecc03239aa094657435e4203aced52be093d47f9424c8f`  
		Last Modified: Thu, 05 Nov 2026 09:21:56 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json
