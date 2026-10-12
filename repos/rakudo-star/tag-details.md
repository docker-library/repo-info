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
$ docker pull rakudo-star@sha256:dc302d335a9b9bdd67ebd2315f30c9014a9f4eb489efd214c5e17529e0e821cf
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
$ docker pull rakudo-star@sha256:e045ccf9679d0063d0923458fdcc52107087d6f3933a5da23fb8b710e7ddd643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177383063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0b74d98454d965b292ab48e7a936104d2dae747d938708965990ebdb6f220f`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 17:58:39 GMT
MAINTAINER Rob Hoelz
# Mon, 12 Oct 2026 17:58:39 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:58:39 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:58:39 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:21:47 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:21:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:21:47 GMT
CMD ["raku"]
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
	-	`sha256:c380a2e83b4c5e84adaccb5d0878664ae561919ea8a8c5528a53ceafe2557695`  
		Last Modified: Mon, 12 Oct 2026 18:22:03 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed3c5f4e50d132e732495cadaeb3004034a2f003f1c7aaf4aef96e5a50369e7`  
		Last Modified: Mon, 12 Oct 2026 18:22:04 GMT  
		Size: 38.8 MB (38766188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:0161c7285de0244472d08ac6bfb609f24e976025e9388e5427fb33072e7e4b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7992214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c3fc1f50d6030f91d8f3591251b22049591d309baef8a3d01ddd44eae6b531f`

```dockerfile
```

-	Layers:
	-	`sha256:55dcf9a46474fe31a2fc11c14f16a093fb8ff1a51c707449bc606ca03793dabb`  
		Last Modified: Mon, 12 Oct 2026 18:22:04 GMT  
		Size: 8.0 MB (7979416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92bc565bbcd0f37321040af4f45e462cb15c03c60b25b6b575c445bf4cf81060`  
		Last Modified: Mon, 12 Oct 2026 18:22:03 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.09-trixie`

```console
$ docker pull rakudo-star@sha256:c3832a10b380f0b6c7464d36ae25194d3732d024e1e2eb6bce86b4ae9ac845ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:fde66df3cd239164292db68481c6b716dbae14241c987416d3d578e97c7a82fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182559046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8e242b7d5c97a0c6b2efc3e39f2016530a68a7397a2e4eb7627b3d999b6826`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 17:59:07 GMT
MAINTAINER AntonOks
# Mon, 12 Oct 2026 17:59:07 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:59:07 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:59:07 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:17:27 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:17:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:17:27 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc294b6bcb6e1575b11daec721d1a26dfa5157a3d8b9635efc40171e80d74594`  
		Last Modified: Mon, 12 Oct 2026 18:17:42 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555267b72cbd696b6d3b1f6ae7b7b69da00bbd4a78dd9c1fdea1609e179dfc28`  
		Last Modified: Mon, 12 Oct 2026 18:17:43 GMT  
		Size: 39.7 MB (39715168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:c2c0f7bdeda59e2051c6c8b1cc213e6656287506e3116dc8b2b1506df5780b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f4a40a5ce06201fb298d56c3b5488f9d5ffeabbd8be1c8a4564a32806bf0eb`

```dockerfile
```

-	Layers:
	-	`sha256:07a3fa441d1be5d968b9bd495f2f189f8557ff69e6da1be2ad7085762aaf62b5`  
		Last Modified: Mon, 12 Oct 2026 18:17:43 GMT  
		Size: 7.8 MB (7780187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebc13d1de75b84da8746099e8b01b14b3d44c104068e0218cee308f2db260001`  
		Last Modified: Mon, 12 Oct 2026 18:17:42 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:db4c122832a5582fb177c6e5226f044f654fd260cdf4e320240303d39e28f704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181138479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e204294a1298a84bddee987b6353c0cc001581ec90daead6707f3951afcc2b71`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 17:58:37 GMT
MAINTAINER AntonOks
# Mon, 12 Oct 2026 17:58:37 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:58:37 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:58:37 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:23:50 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:23:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:23:50 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913fd92fdae2c63858586067bbb16117e8e88907f37a513de9fb75e0c97cc4be`  
		Last Modified: Mon, 12 Oct 2026 18:24:06 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0364c74e7fdb173116676e7a00dea1c9beba50a665691d9673879b48863eee1d`  
		Last Modified: Mon, 12 Oct 2026 18:24:07 GMT  
		Size: 38.7 MB (38712861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:cb9ffd2516a6d95bf6ce38329c49adb3fab7109c1720492da0d32cc8ac0b5cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7800324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f884541b509143d2b95812b618e133eedc494562a343fbe75bfe9fa6974731bf`

```dockerfile
```

-	Layers:
	-	`sha256:5491447df9a68946d731ea1183411240f3390d3c350a62c65c03cbce37d9cc3c`  
		Last Modified: Mon, 12 Oct 2026 18:24:07 GMT  
		Size: 7.8 MB (7787225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8050c80a95fa6980cad7339386f69231037c9c734c1369e266922d8f0f893f3b`  
		Last Modified: Mon, 12 Oct 2026 18:24:06 GMT  
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
$ docker pull rakudo-star@sha256:dc302d335a9b9bdd67ebd2315f30c9014a9f4eb489efd214c5e17529e0e821cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

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

### `rakudo-star:bookworm` - unknown; unknown

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

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:e045ccf9679d0063d0923458fdcc52107087d6f3933a5da23fb8b710e7ddd643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177383063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0b74d98454d965b292ab48e7a936104d2dae747d938708965990ebdb6f220f`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 17:58:39 GMT
MAINTAINER Rob Hoelz
# Mon, 12 Oct 2026 17:58:39 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:58:39 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:58:39 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:21:47 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:21:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:21:47 GMT
CMD ["raku"]
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
	-	`sha256:c380a2e83b4c5e84adaccb5d0878664ae561919ea8a8c5528a53ceafe2557695`  
		Last Modified: Mon, 12 Oct 2026 18:22:03 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed3c5f4e50d132e732495cadaeb3004034a2f003f1c7aaf4aef96e5a50369e7`  
		Last Modified: Mon, 12 Oct 2026 18:22:04 GMT  
		Size: 38.8 MB (38766188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:0161c7285de0244472d08ac6bfb609f24e976025e9388e5427fb33072e7e4b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7992214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c3fc1f50d6030f91d8f3591251b22049591d309baef8a3d01ddd44eae6b531f`

```dockerfile
```

-	Layers:
	-	`sha256:55dcf9a46474fe31a2fc11c14f16a093fb8ff1a51c707449bc606ca03793dabb`  
		Last Modified: Mon, 12 Oct 2026 18:22:04 GMT  
		Size: 8.0 MB (7979416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92bc565bbcd0f37321040af4f45e462cb15c03c60b25b6b575c445bf4cf81060`  
		Last Modified: Mon, 12 Oct 2026 18:22:03 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:c3832a10b380f0b6c7464d36ae25194d3732d024e1e2eb6bce86b4ae9ac845ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:fde66df3cd239164292db68481c6b716dbae14241c987416d3d578e97c7a82fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182559046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8e242b7d5c97a0c6b2efc3e39f2016530a68a7397a2e4eb7627b3d999b6826`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 17:59:07 GMT
MAINTAINER AntonOks
# Mon, 12 Oct 2026 17:59:07 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:59:07 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:59:07 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:17:27 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:17:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:17:27 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc294b6bcb6e1575b11daec721d1a26dfa5157a3d8b9635efc40171e80d74594`  
		Last Modified: Mon, 12 Oct 2026 18:17:42 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555267b72cbd696b6d3b1f6ae7b7b69da00bbd4a78dd9c1fdea1609e179dfc28`  
		Last Modified: Mon, 12 Oct 2026 18:17:43 GMT  
		Size: 39.7 MB (39715168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:c2c0f7bdeda59e2051c6c8b1cc213e6656287506e3116dc8b2b1506df5780b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f4a40a5ce06201fb298d56c3b5488f9d5ffeabbd8be1c8a4564a32806bf0eb`

```dockerfile
```

-	Layers:
	-	`sha256:07a3fa441d1be5d968b9bd495f2f189f8557ff69e6da1be2ad7085762aaf62b5`  
		Last Modified: Mon, 12 Oct 2026 18:17:43 GMT  
		Size: 7.8 MB (7780187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebc13d1de75b84da8746099e8b01b14b3d44c104068e0218cee308f2db260001`  
		Last Modified: Mon, 12 Oct 2026 18:17:42 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:db4c122832a5582fb177c6e5226f044f654fd260cdf4e320240303d39e28f704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181138479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e204294a1298a84bddee987b6353c0cc001581ec90daead6707f3951afcc2b71`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 17:58:37 GMT
MAINTAINER AntonOks
# Mon, 12 Oct 2026 17:58:37 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:58:37 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:58:37 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:23:50 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:23:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:23:50 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913fd92fdae2c63858586067bbb16117e8e88907f37a513de9fb75e0c97cc4be`  
		Last Modified: Mon, 12 Oct 2026 18:24:06 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0364c74e7fdb173116676e7a00dea1c9beba50a665691d9673879b48863eee1d`  
		Last Modified: Mon, 12 Oct 2026 18:24:07 GMT  
		Size: 38.7 MB (38712861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:cb9ffd2516a6d95bf6ce38329c49adb3fab7109c1720492da0d32cc8ac0b5cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7800324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f884541b509143d2b95812b618e133eedc494562a343fbe75bfe9fa6974731bf`

```dockerfile
```

-	Layers:
	-	`sha256:5491447df9a68946d731ea1183411240f3390d3c350a62c65c03cbce37d9cc3c`  
		Last Modified: Mon, 12 Oct 2026 18:24:07 GMT  
		Size: 7.8 MB (7787225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8050c80a95fa6980cad7339386f69231037c9c734c1369e266922d8f0f893f3b`  
		Last Modified: Mon, 12 Oct 2026 18:24:06 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:c3832a10b380f0b6c7464d36ae25194d3732d024e1e2eb6bce86b4ae9ac845ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:fde66df3cd239164292db68481c6b716dbae14241c987416d3d578e97c7a82fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182559046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8e242b7d5c97a0c6b2efc3e39f2016530a68a7397a2e4eb7627b3d999b6826`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 17:59:07 GMT
MAINTAINER AntonOks
# Mon, 12 Oct 2026 17:59:07 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:59:07 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:59:07 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:17:27 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:17:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:17:27 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fe2e747f69f2f414c7e9eb1553155cf0a658398f0462557f458821dce2b29d`  
		Last Modified: Tue, 06 Oct 2026 01:41:33 GMT  
		Size: 25.6 MB (25640047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc3950125ebc9ed195e1101fc6c02e2fce113ba0f53bfb05b2cdf58747df9af`  
		Last Modified: Tue, 06 Oct 2026 02:35:02 GMT  
		Size: 67.8 MB (67807390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc294b6bcb6e1575b11daec721d1a26dfa5157a3d8b9635efc40171e80d74594`  
		Last Modified: Mon, 12 Oct 2026 18:17:42 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555267b72cbd696b6d3b1f6ae7b7b69da00bbd4a78dd9c1fdea1609e179dfc28`  
		Last Modified: Mon, 12 Oct 2026 18:17:43 GMT  
		Size: 39.7 MB (39715168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:c2c0f7bdeda59e2051c6c8b1cc213e6656287506e3116dc8b2b1506df5780b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f4a40a5ce06201fb298d56c3b5488f9d5ffeabbd8be1c8a4564a32806bf0eb`

```dockerfile
```

-	Layers:
	-	`sha256:07a3fa441d1be5d968b9bd495f2f189f8557ff69e6da1be2ad7085762aaf62b5`  
		Last Modified: Mon, 12 Oct 2026 18:17:43 GMT  
		Size: 7.8 MB (7780187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebc13d1de75b84da8746099e8b01b14b3d44c104068e0218cee308f2db260001`  
		Last Modified: Mon, 12 Oct 2026 18:17:42 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:db4c122832a5582fb177c6e5226f044f654fd260cdf4e320240303d39e28f704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181138479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e204294a1298a84bddee987b6353c0cc001581ec90daead6707f3951afcc2b71`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 12 Oct 2026 17:58:37 GMT
MAINTAINER AntonOks
# Mon, 12 Oct 2026 17:58:37 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:58:37 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:58:37 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:23:50 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:23:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:23:50 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f385aa2c76a7dd234ab579740a6011f59b0284b9e77b56b88dfad43c2fd58b`  
		Last Modified: Tue, 06 Oct 2026 01:44:53 GMT  
		Size: 25.0 MB (25038980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73cdbf7c744c3331ef0185e57129804983040b8484e91af064b3bfa14750c`  
		Last Modified: Tue, 06 Oct 2026 02:26:06 GMT  
		Size: 67.6 MB (67622292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913fd92fdae2c63858586067bbb16117e8e88907f37a513de9fb75e0c97cc4be`  
		Last Modified: Mon, 12 Oct 2026 18:24:06 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0364c74e7fdb173116676e7a00dea1c9beba50a665691d9673879b48863eee1d`  
		Last Modified: Mon, 12 Oct 2026 18:24:07 GMT  
		Size: 38.7 MB (38712861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:cb9ffd2516a6d95bf6ce38329c49adb3fab7109c1720492da0d32cc8ac0b5cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7800324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f884541b509143d2b95812b618e133eedc494562a343fbe75bfe9fa6974731bf`

```dockerfile
```

-	Layers:
	-	`sha256:5491447df9a68946d731ea1183411240f3390d3c350a62c65c03cbce37d9cc3c`  
		Last Modified: Mon, 12 Oct 2026 18:24:07 GMT  
		Size: 7.8 MB (7787225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8050c80a95fa6980cad7339386f69231037c9c734c1369e266922d8f0f893f3b`  
		Last Modified: Mon, 12 Oct 2026 18:24:06 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json
