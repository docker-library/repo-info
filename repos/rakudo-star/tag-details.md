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
$ docker pull rakudo-star@sha256:a71e38b3f7f92f05c8ba52bd2f4616dbfe882caea7d0da07c1861946dca32333
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:f2d9bbd4d0a224a02185007fdef790b923f489d8e5eab244e975fde0983ecb30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50232787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:509b7f89327529a4b18125b51c2ab67b1813cc3581516f1cf0a4f288a57924e8`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 17:59:08 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 12 Oct 2026 18:22:38 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:22:38 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:22:38 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 18:22:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:22:38 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f01630ee6836daca9c15bae80eea94d43af92899281b33f6f4a5ab125a7c66f`  
		Last Modified: Mon, 12 Oct 2026 18:22:49 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf03121ecc3d3ad1e5e568520d830742f13fe821fa7119c4f4b7f94e247678f`  
		Last Modified: Mon, 12 Oct 2026 18:22:51 GMT  
		Size: 46.4 MB (46382102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:418b983db0bed26b6b03e8068412e2bdf99edefcfcc2c82f668a7e013ca41a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a4e08879b9d0a9daa76b2c642715e80c04c2063e7f22c777d492b49c7de3384`

```dockerfile
```

-	Layers:
	-	`sha256:e0c2bda01cc4e778d1498a94a3b6871196aa0c719712e715e8a4ea4986e4ce43`  
		Last Modified: Mon, 12 Oct 2026 18:22:49 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aad36d57f65614f571b4988e80209fe726c964e1bad97e2e61d992431c3ce1f`  
		Last Modified: Mon, 12 Oct 2026 18:22:49 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:0bf3b0bf0dfa0b4037b5ab95c49c11d5a85cd6f1ef54b74ef356557cdc5202aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50298977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eae8ffb95cf9ecb9096e1645c30be2c06658eb565ad7d2ec33da8d0da2b795b`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 17:58:35 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 12 Oct 2026 18:24:44 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:24:44 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:24:44 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 18:24:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:24:44 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeea6500fc25d2c3375d8d8775f55fd0b0eb509dd0b3de09505f13caeeb4475b`  
		Last Modified: Mon, 12 Oct 2026 18:24:55 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cbbad61bb369f0ab74c2754e5c87134afdf0ce3c5b10e02ed06130042a394f`  
		Last Modified: Mon, 12 Oct 2026 18:24:56 GMT  
		Size: 46.1 MB (46110371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:5d1e9044205ebe661678d49fbf9d1029f2f776161fa85fd43ea202933770c0f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67879226c7af8de6fa8d37ac504e70d73500c814c83b109b4a3ff960d312350d`

```dockerfile
```

-	Layers:
	-	`sha256:80db117be692721e73763f3c732b6b0f498ddb0efbce5d9f22f00f7c12637b65`  
		Last Modified: Mon, 12 Oct 2026 18:24:55 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7099e3c796ea417b06e02e2d114ecbb6ee905d5f00f8f816574c21b90f071cb4`  
		Last Modified: Mon, 12 Oct 2026 18:24:55 GMT  
		Size: 11.8 KB (11813 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.09-bookworm`

```console
$ docker pull rakudo-star@sha256:8a3add31010201c39744c822ef62bb4dc3bf69bfc30b68ec34c7dba25e65ffb9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:2be5e72957c5a2446aae48f62ba8636020f34d39d70dd19200ece2be3b1d50ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178811122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52133c165a7ef426a1bf0eac4ee7bbd492486f29ad75d7fbbcf23629ada1b619`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 17:59:12 GMT
MAINTAINER Rob Hoelz
# Mon, 12 Oct 2026 17:59:12 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:59:12 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:59:12 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:21:31 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:21:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:21:31 GMT
CMD ["raku"]
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
	-	`sha256:10edd9d8bf5e29e9d53d33bfc3f79cb2ad2d83079dda91b89891ba41d2a0415c`  
		Last Modified: Mon, 12 Oct 2026 18:21:47 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a9c77e2584e461f454471b737db9abfcf7227e9595a4d02bdb90cbabf3e564`  
		Last Modified: Mon, 12 Oct 2026 18:21:48 GMT  
		Size: 39.7 MB (39699541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:cace0f82430df25846c9e49318cc1245e380d50f6212dd21f41c96cb7f8e12dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b72d0b9b0582bf6a4b9a5fa6a2edebb3556b53b325880fd6ed04985e5b8388`

```dockerfile
```

-	Layers:
	-	`sha256:a4ecf0f7ee6f6d639ecdbcfc7a1f410afa15a66ef38d70f0bf22ef1a746515d2`  
		Last Modified: Mon, 12 Oct 2026 18:21:47 GMT  
		Size: 8.0 MB (7973023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:558432bcdf4d75b00e9e466c0056d6a1b94e1fc3da34ba515c8199fd0714a121`  
		Last Modified: Mon, 12 Oct 2026 18:21:47 GMT  
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
$ docker pull rakudo-star@sha256:a71e38b3f7f92f05c8ba52bd2f4616dbfe882caea7d0da07c1861946dca32333
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:f2d9bbd4d0a224a02185007fdef790b923f489d8e5eab244e975fde0983ecb30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50232787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:509b7f89327529a4b18125b51c2ab67b1813cc3581516f1cf0a4f288a57924e8`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 17:59:08 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 12 Oct 2026 18:22:38 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:22:38 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:22:38 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 18:22:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:22:38 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f01630ee6836daca9c15bae80eea94d43af92899281b33f6f4a5ab125a7c66f`  
		Last Modified: Mon, 12 Oct 2026 18:22:49 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf03121ecc3d3ad1e5e568520d830742f13fe821fa7119c4f4b7f94e247678f`  
		Last Modified: Mon, 12 Oct 2026 18:22:51 GMT  
		Size: 46.4 MB (46382102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:418b983db0bed26b6b03e8068412e2bdf99edefcfcc2c82f668a7e013ca41a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a4e08879b9d0a9daa76b2c642715e80c04c2063e7f22c777d492b49c7de3384`

```dockerfile
```

-	Layers:
	-	`sha256:e0c2bda01cc4e778d1498a94a3b6871196aa0c719712e715e8a4ea4986e4ce43`  
		Last Modified: Mon, 12 Oct 2026 18:22:49 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aad36d57f65614f571b4988e80209fe726c964e1bad97e2e61d992431c3ce1f`  
		Last Modified: Mon, 12 Oct 2026 18:22:49 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:0bf3b0bf0dfa0b4037b5ab95c49c11d5a85cd6f1ef54b74ef356557cdc5202aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50298977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eae8ffb95cf9ecb9096e1645c30be2c06658eb565ad7d2ec33da8d0da2b795b`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 17:58:35 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 12 Oct 2026 18:24:44 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:24:44 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:24:44 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 18:24:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:24:44 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeea6500fc25d2c3375d8d8775f55fd0b0eb509dd0b3de09505f13caeeb4475b`  
		Last Modified: Mon, 12 Oct 2026 18:24:55 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cbbad61bb369f0ab74c2754e5c87134afdf0ce3c5b10e02ed06130042a394f`  
		Last Modified: Mon, 12 Oct 2026 18:24:56 GMT  
		Size: 46.1 MB (46110371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:5d1e9044205ebe661678d49fbf9d1029f2f776161fa85fd43ea202933770c0f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67879226c7af8de6fa8d37ac504e70d73500c814c83b109b4a3ff960d312350d`

```dockerfile
```

-	Layers:
	-	`sha256:80db117be692721e73763f3c732b6b0f498ddb0efbce5d9f22f00f7c12637b65`  
		Last Modified: Mon, 12 Oct 2026 18:24:55 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7099e3c796ea417b06e02e2d114ecbb6ee905d5f00f8f816574c21b90f071cb4`  
		Last Modified: Mon, 12 Oct 2026 18:24:55 GMT  
		Size: 11.8 KB (11813 bytes)  
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
