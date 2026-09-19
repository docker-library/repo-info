<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rakudo-star`

-	[`rakudo-star:2026.06-alpine`](#rakudo-star202606-alpine)
-	[`rakudo-star:2026.06-bookworm`](#rakudo-star202606-bookworm)
-	[`rakudo-star:2026.06-trixie`](#rakudo-star202606-trixie)
-	[`rakudo-star:alpine`](#rakudo-staralpine)
-	[`rakudo-star:bookworm`](#rakudo-starbookworm)
-	[`rakudo-star:latest`](#rakudo-starlatest)
-	[`rakudo-star:trixie`](#rakudo-startrixie)

## `rakudo-star:2026.06-alpine`

```console
$ docker pull rakudo-star@sha256:b61ce73f29814031f3cd5ba856d345d82415e899238f137708afdbe3d93a7f7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:801a3685ac25498a8f6b7659fec371036a935f923d34fad3b640348b429b75d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55584981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1939d8ef538bc1e742a718692d248cfa7aef86320d31d14b6b69e30c9f1491f`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:11 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Thu, 17 Sep 2026 22:09:09 GMT
ARG rakudo_version=2026.06-01
# Thu, 17 Sep 2026 22:09:09 GMT
ENV rakudo_version=2026.06-01
# Thu, 17 Sep 2026 22:09:09 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:09:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 17 Sep 2026 22:09:09 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efee9c40b1440cb155bb9119e0445245c50b00a86fd76e506d17da69aed536f`  
		Last Modified: Thu, 17 Sep 2026 22:09:20 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e00dae3cb5ccae9d56cb0998d3bad6beb2df0f0368e5941426865c494d95ed1`  
		Last Modified: Thu, 17 Sep 2026 22:09:21 GMT  
		Size: 51.7 MB (51734297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:21139c9020bce62b031d27bd48b800ad1696281fd2b85fdf5dd9fee4b5cf3b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860b05e6c642a6971f94e61dfd43e1b46417fda30e49948b36e9d3d1c6f6594f`

```dockerfile
```

-	Layers:
	-	`sha256:c81ac4d0a133a9a24b293ec3770e3006b7ef1014a302d041d13b6778b383755a`  
		Last Modified: Thu, 17 Sep 2026 22:09:20 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6d33e48083028f81e6d5fe5462264d2560978aaf26172ac1057f8b8abe41459`  
		Last Modified: Thu, 17 Sep 2026 22:09:20 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.06-alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:5f574d10e2ec022b1fdd3a55df61ae72d635bab7a3168636be63a13b07603db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55656991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c297a3db7ddbda36096a8a4c3532afbe7ce02bfa39751b6903f1f1d0627f106`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:07:39 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Thu, 17 Sep 2026 22:29:10 GMT
ARG rakudo_version=2026.06-01
# Thu, 17 Sep 2026 22:29:10 GMT
ENV rakudo_version=2026.06-01
# Thu, 17 Sep 2026 22:29:10 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 17 Sep 2026 22:29:10 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e7fd261100a8aaebed19f4015d07154740333fbfa23b2880e3e1b5992b20f0`  
		Last Modified: Thu, 17 Sep 2026 22:29:22 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ef2b4f4dcf148e625202ba62a5544884636f1f484c75ef73567c6374ac84ca`  
		Last Modified: Thu, 17 Sep 2026 22:29:24 GMT  
		Size: 51.5 MB (51468386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:a98b382b927e762d29fc8e1750934c36fcecb4eb457675126c6022a2468f5015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef3ab42915cce7a49d2eadfcef6ca11e1b9342a2bab28701e20f0e7d734c8d2`

```dockerfile
```

-	Layers:
	-	`sha256:9d0473c7884b1d57faf2acc8a8bfb88ed82f4e4706b915f7585da20a61a460ff`  
		Last Modified: Thu, 17 Sep 2026 22:29:22 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:121a99fafac2fe5b4b1c803babcc41c562d239ab10452785c0c21891ab662ba4`  
		Last Modified: Thu, 17 Sep 2026 22:29:22 GMT  
		Size: 11.8 KB (11813 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.06-bookworm`

```console
$ docker pull rakudo-star@sha256:45c97bf01781d9829010fa1bd73b9ecaf56c67cd5a722dd4875281728699ba4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:2bc095add4cf05ffdc4478931428c619333ef22f8d5e2cdf8c1deb34a15d6038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.1 MB (182080260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf34224f9f194c6fe7b88ff134fa006fdcdfea6e056c282bc582fc71e6ead2bd`
-	Default Command: `["raku"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:18:26 GMT
MAINTAINER Rob Hoelz
# Sat, 19 Sep 2026 02:18:26 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Sat, 19 Sep 2026 02:18:26 GMT
ARG rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:18:26 GMT
ENV rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:32:17 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 02:32:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Sat, 19 Sep 2026 02:32:17 GMT
CMD ["raku"]
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
	-	`sha256:64ea09dd5180e792da514b6d0f14b346f3cdf463309f660709a7e8b7a6726acc`  
		Last Modified: Sat, 19 Sep 2026 02:32:32 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4dfc420aaf65ed9dcc49dd609bbc1376ec593130575bc8236e5d2d89490b2a`  
		Last Modified: Sat, 19 Sep 2026 02:32:33 GMT  
		Size: 45.1 MB (45093235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:2769185b8f0d1b7235469bbddc4528f37516423792b5b37273a8fb4bf0ac45d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362dde36647a013f1b5709bf87dba23115abc217f2a14eacb28c920f1ab93256`

```dockerfile
```

-	Layers:
	-	`sha256:b22a003e47020ae05ad7f4400e1ddaec2a5e8cca8a43a97a2cf0471cb359864e`  
		Last Modified: Sat, 19 Sep 2026 02:32:32 GMT  
		Size: 8.0 MB (7973023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f85f628a667a689dd12dfc65e1f7713efd992bea67664d61cd4fe53dd0745e13`  
		Last Modified: Sat, 19 Sep 2026 02:32:32 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.06-bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:c571cb51f2f6e8e8b997e164607de6b8d3a5d8f4e8897636fbf4222fef0b0566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179619101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1aaaabd01829a668f19a376759bb778ace7d94419ae17d294fcb6c9bfc64cf`
-	Default Command: `["raku"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:18:08 GMT
MAINTAINER Rob Hoelz
# Sat, 19 Sep 2026 02:18:08 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Sat, 19 Sep 2026 02:18:08 GMT
ARG rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:18:08 GMT
ENV rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:38:47 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 02:38:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Sat, 19 Sep 2026 02:38:47 GMT
CMD ["raku"]
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
	-	`sha256:0af94e92a13226567bf9fdf43e61f1971fe1ab0be870676eb85229cf88a8d974`  
		Last Modified: Sat, 19 Sep 2026 02:39:03 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fdc11b5211fcc8343db703bee1ebfe61490fc30ca704408440c1b89b835ac3c`  
		Last Modified: Sat, 19 Sep 2026 02:39:05 GMT  
		Size: 43.1 MB (43098123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:60377247ccf3e16b521fcdf08d4b57b3b6a41648d58e044e36e8e7a5929b3da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7992214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212f6a24c73184548efb044bcfdba5982bf03afc8c1ff1d3693041e582e0b0fe`

```dockerfile
```

-	Layers:
	-	`sha256:d95502f9586bf635b2c64d352efba63aad17cc0de91e9e0d316fda3d5bc4dd03`  
		Last Modified: Sat, 19 Sep 2026 02:39:04 GMT  
		Size: 8.0 MB (7979416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed290ee56444819c53f835cfb0831e598c8a66a5a9d66bd02b21853714893fbd`  
		Last Modified: Sat, 19 Sep 2026 02:39:03 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.06-trixie`

```console
$ docker pull rakudo-star@sha256:32ce75224202f7f1a8ae8f819b6e5e09651e03678918e79c5c794d219ff7191f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:e98ae3d15f77363c816b917a5a46591515857f5f86d2ec5c9ecd63371a51ba04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187935095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485908795f8b9a67622db15d6cdd5ae16d53a071f80339a02e640f5bc35f12e6`
-	Default Command: `["raku"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:18:04 GMT
MAINTAINER AntonOks
# Sat, 19 Sep 2026 02:18:04 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Sat, 19 Sep 2026 02:18:04 GMT
ARG rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:18:04 GMT
ENV rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:32:07 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 02:32:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Sat, 19 Sep 2026 02:32:07 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22adf551b48d152b4890447b04dfd5a12307ee6ba908ae8b009025894e150967`  
		Last Modified: Sat, 19 Sep 2026 02:32:21 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b2f7e0855389532a1954658c3b4162c86a269207a33bb513c3ac726f9535e7`  
		Last Modified: Sat, 19 Sep 2026 02:32:22 GMT  
		Size: 45.1 MB (45104598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:1b421b95f83b3f43a646ab44940f390226f27e1c5c6e58e03b6ec18d89d9ce69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06aee5003c9cdf87785716bb497f5ce353b1319dd3b71276512e77cbd31118f`

```dockerfile
```

-	Layers:
	-	`sha256:066c096889ec742327ba15a6e6aaddc9e6ff38d8cf7716ece362803bb4ffb811`  
		Last Modified: Sat, 19 Sep 2026 02:32:21 GMT  
		Size: 7.8 MB (7780187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93984512193786366c6cc1196d95c2ead765fddece571a82a3794ec536ce2231`  
		Last Modified: Sat, 19 Sep 2026 02:32:21 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.06-trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:e845f430262f0cffb38e3def19724e5bc98dc5396835e845d1e53cf871e88879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.5 MB (185527892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788ee8e9d16eace0d9b86e85c899ea59e79765094428d587512042af0bd39c54`
-	Default Command: `["raku"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:32 GMT
MAINTAINER AntonOks
# Sat, 19 Sep 2026 02:17:32 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Sat, 19 Sep 2026 02:17:32 GMT
ARG rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:17:32 GMT
ENV rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:37:40 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 02:37:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Sat, 19 Sep 2026 02:37:40 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163fa5d62857ec80cf091d1cc713ac655a7ef2becc3df931b0d3f2f153fefb3c`  
		Last Modified: Sat, 19 Sep 2026 02:37:55 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbbb67ea92e1436e8dd45d4063289af2590921dab13a30f77bdbbf1310878b3`  
		Last Modified: Sat, 19 Sep 2026 02:37:57 GMT  
		Size: 43.1 MB (43114596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:26ef77b4b58ccab8808cfc6c4fe88868c07c65c8d4197dda03af2d47a560f8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7800325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fe8b3837ae7268f88286f0105c9027d41788d5470d8c1b237dcce5b0aeb753`

```dockerfile
```

-	Layers:
	-	`sha256:aa215dc7e46c00e2806de5ddeca4e1a56aec59cb36aa5d01d56e175dc87ab894`  
		Last Modified: Sat, 19 Sep 2026 02:37:56 GMT  
		Size: 7.8 MB (7787225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b318ed9206cb39c4b68fd99272c3cf6e6bc515c778bf03dea63d8575d813a08a`  
		Last Modified: Sat, 19 Sep 2026 02:37:55 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:alpine`

```console
$ docker pull rakudo-star@sha256:b61ce73f29814031f3cd5ba856d345d82415e899238f137708afdbe3d93a7f7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:801a3685ac25498a8f6b7659fec371036a935f923d34fad3b640348b429b75d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55584981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1939d8ef538bc1e742a718692d248cfa7aef86320d31d14b6b69e30c9f1491f`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:11 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Thu, 17 Sep 2026 22:09:09 GMT
ARG rakudo_version=2026.06-01
# Thu, 17 Sep 2026 22:09:09 GMT
ENV rakudo_version=2026.06-01
# Thu, 17 Sep 2026 22:09:09 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:09:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 17 Sep 2026 22:09:09 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efee9c40b1440cb155bb9119e0445245c50b00a86fd76e506d17da69aed536f`  
		Last Modified: Thu, 17 Sep 2026 22:09:20 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e00dae3cb5ccae9d56cb0998d3bad6beb2df0f0368e5941426865c494d95ed1`  
		Last Modified: Thu, 17 Sep 2026 22:09:21 GMT  
		Size: 51.7 MB (51734297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:21139c9020bce62b031d27bd48b800ad1696281fd2b85fdf5dd9fee4b5cf3b2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860b05e6c642a6971f94e61dfd43e1b46417fda30e49948b36e9d3d1c6f6594f`

```dockerfile
```

-	Layers:
	-	`sha256:c81ac4d0a133a9a24b293ec3770e3006b7ef1014a302d041d13b6778b383755a`  
		Last Modified: Thu, 17 Sep 2026 22:09:20 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6d33e48083028f81e6d5fe5462264d2560978aaf26172ac1057f8b8abe41459`  
		Last Modified: Thu, 17 Sep 2026 22:09:20 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:5f574d10e2ec022b1fdd3a55df61ae72d635bab7a3168636be63a13b07603db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55656991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c297a3db7ddbda36096a8a4c3532afbe7ce02bfa39751b6903f1f1d0627f106`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:07:39 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Thu, 17 Sep 2026 22:29:10 GMT
ARG rakudo_version=2026.06-01
# Thu, 17 Sep 2026 22:29:10 GMT
ENV rakudo_version=2026.06-01
# Thu, 17 Sep 2026 22:29:10 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 17 Sep 2026 22:29:10 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e7fd261100a8aaebed19f4015d07154740333fbfa23b2880e3e1b5992b20f0`  
		Last Modified: Thu, 17 Sep 2026 22:29:22 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ef2b4f4dcf148e625202ba62a5544884636f1f484c75ef73567c6374ac84ca`  
		Last Modified: Thu, 17 Sep 2026 22:29:24 GMT  
		Size: 51.5 MB (51468386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:a98b382b927e762d29fc8e1750934c36fcecb4eb457675126c6022a2468f5015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef3ab42915cce7a49d2eadfcef6ca11e1b9342a2bab28701e20f0e7d734c8d2`

```dockerfile
```

-	Layers:
	-	`sha256:9d0473c7884b1d57faf2acc8a8bfb88ed82f4e4706b915f7585da20a61a460ff`  
		Last Modified: Thu, 17 Sep 2026 22:29:22 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:121a99fafac2fe5b4b1c803babcc41c562d239ab10452785c0c21891ab662ba4`  
		Last Modified: Thu, 17 Sep 2026 22:29:22 GMT  
		Size: 11.8 KB (11813 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:bookworm`

```console
$ docker pull rakudo-star@sha256:45c97bf01781d9829010fa1bd73b9ecaf56c67cd5a722dd4875281728699ba4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:2bc095add4cf05ffdc4478931428c619333ef22f8d5e2cdf8c1deb34a15d6038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.1 MB (182080260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf34224f9f194c6fe7b88ff134fa006fdcdfea6e056c282bc582fc71e6ead2bd`
-	Default Command: `["raku"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:18:26 GMT
MAINTAINER Rob Hoelz
# Sat, 19 Sep 2026 02:18:26 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Sat, 19 Sep 2026 02:18:26 GMT
ARG rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:18:26 GMT
ENV rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:32:17 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 02:32:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Sat, 19 Sep 2026 02:32:17 GMT
CMD ["raku"]
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
	-	`sha256:64ea09dd5180e792da514b6d0f14b346f3cdf463309f660709a7e8b7a6726acc`  
		Last Modified: Sat, 19 Sep 2026 02:32:32 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4dfc420aaf65ed9dcc49dd609bbc1376ec593130575bc8236e5d2d89490b2a`  
		Last Modified: Sat, 19 Sep 2026 02:32:33 GMT  
		Size: 45.1 MB (45093235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:2769185b8f0d1b7235469bbddc4528f37516423792b5b37273a8fb4bf0ac45d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362dde36647a013f1b5709bf87dba23115abc217f2a14eacb28c920f1ab93256`

```dockerfile
```

-	Layers:
	-	`sha256:b22a003e47020ae05ad7f4400e1ddaec2a5e8cca8a43a97a2cf0471cb359864e`  
		Last Modified: Sat, 19 Sep 2026 02:32:32 GMT  
		Size: 8.0 MB (7973023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f85f628a667a689dd12dfc65e1f7713efd992bea67664d61cd4fe53dd0745e13`  
		Last Modified: Sat, 19 Sep 2026 02:32:32 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:c571cb51f2f6e8e8b997e164607de6b8d3a5d8f4e8897636fbf4222fef0b0566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179619101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1aaaabd01829a668f19a376759bb778ace7d94419ae17d294fcb6c9bfc64cf`
-	Default Command: `["raku"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:18:08 GMT
MAINTAINER Rob Hoelz
# Sat, 19 Sep 2026 02:18:08 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Sat, 19 Sep 2026 02:18:08 GMT
ARG rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:18:08 GMT
ENV rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:38:47 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 02:38:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Sat, 19 Sep 2026 02:38:47 GMT
CMD ["raku"]
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
	-	`sha256:0af94e92a13226567bf9fdf43e61f1971fe1ab0be870676eb85229cf88a8d974`  
		Last Modified: Sat, 19 Sep 2026 02:39:03 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fdc11b5211fcc8343db703bee1ebfe61490fc30ca704408440c1b89b835ac3c`  
		Last Modified: Sat, 19 Sep 2026 02:39:05 GMT  
		Size: 43.1 MB (43098123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:60377247ccf3e16b521fcdf08d4b57b3b6a41648d58e044e36e8e7a5929b3da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7992214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212f6a24c73184548efb044bcfdba5982bf03afc8c1ff1d3693041e582e0b0fe`

```dockerfile
```

-	Layers:
	-	`sha256:d95502f9586bf635b2c64d352efba63aad17cc0de91e9e0d316fda3d5bc4dd03`  
		Last Modified: Sat, 19 Sep 2026 02:39:04 GMT  
		Size: 8.0 MB (7979416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed290ee56444819c53f835cfb0831e598c8a66a5a9d66bd02b21853714893fbd`  
		Last Modified: Sat, 19 Sep 2026 02:39:03 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:32ce75224202f7f1a8ae8f819b6e5e09651e03678918e79c5c794d219ff7191f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:e98ae3d15f77363c816b917a5a46591515857f5f86d2ec5c9ecd63371a51ba04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187935095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485908795f8b9a67622db15d6cdd5ae16d53a071f80339a02e640f5bc35f12e6`
-	Default Command: `["raku"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:18:04 GMT
MAINTAINER AntonOks
# Sat, 19 Sep 2026 02:18:04 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Sat, 19 Sep 2026 02:18:04 GMT
ARG rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:18:04 GMT
ENV rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:32:07 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 02:32:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Sat, 19 Sep 2026 02:32:07 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22adf551b48d152b4890447b04dfd5a12307ee6ba908ae8b009025894e150967`  
		Last Modified: Sat, 19 Sep 2026 02:32:21 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b2f7e0855389532a1954658c3b4162c86a269207a33bb513c3ac726f9535e7`  
		Last Modified: Sat, 19 Sep 2026 02:32:22 GMT  
		Size: 45.1 MB (45104598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:1b421b95f83b3f43a646ab44940f390226f27e1c5c6e58e03b6ec18d89d9ce69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06aee5003c9cdf87785716bb497f5ce353b1319dd3b71276512e77cbd31118f`

```dockerfile
```

-	Layers:
	-	`sha256:066c096889ec742327ba15a6e6aaddc9e6ff38d8cf7716ece362803bb4ffb811`  
		Last Modified: Sat, 19 Sep 2026 02:32:21 GMT  
		Size: 7.8 MB (7780187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93984512193786366c6cc1196d95c2ead765fddece571a82a3794ec536ce2231`  
		Last Modified: Sat, 19 Sep 2026 02:32:21 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:e845f430262f0cffb38e3def19724e5bc98dc5396835e845d1e53cf871e88879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.5 MB (185527892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788ee8e9d16eace0d9b86e85c899ea59e79765094428d587512042af0bd39c54`
-	Default Command: `["raku"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:32 GMT
MAINTAINER AntonOks
# Sat, 19 Sep 2026 02:17:32 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Sat, 19 Sep 2026 02:17:32 GMT
ARG rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:17:32 GMT
ENV rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:37:40 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 02:37:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Sat, 19 Sep 2026 02:37:40 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163fa5d62857ec80cf091d1cc713ac655a7ef2becc3df931b0d3f2f153fefb3c`  
		Last Modified: Sat, 19 Sep 2026 02:37:55 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbbb67ea92e1436e8dd45d4063289af2590921dab13a30f77bdbbf1310878b3`  
		Last Modified: Sat, 19 Sep 2026 02:37:57 GMT  
		Size: 43.1 MB (43114596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:26ef77b4b58ccab8808cfc6c4fe88868c07c65c8d4197dda03af2d47a560f8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7800325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fe8b3837ae7268f88286f0105c9027d41788d5470d8c1b237dcce5b0aeb753`

```dockerfile
```

-	Layers:
	-	`sha256:aa215dc7e46c00e2806de5ddeca4e1a56aec59cb36aa5d01d56e175dc87ab894`  
		Last Modified: Sat, 19 Sep 2026 02:37:56 GMT  
		Size: 7.8 MB (7787225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b318ed9206cb39c4b68fd99272c3cf6e6bc515c778bf03dea63d8575d813a08a`  
		Last Modified: Sat, 19 Sep 2026 02:37:55 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:32ce75224202f7f1a8ae8f819b6e5e09651e03678918e79c5c794d219ff7191f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:e98ae3d15f77363c816b917a5a46591515857f5f86d2ec5c9ecd63371a51ba04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187935095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485908795f8b9a67622db15d6cdd5ae16d53a071f80339a02e640f5bc35f12e6`
-	Default Command: `["raku"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:18:04 GMT
MAINTAINER AntonOks
# Sat, 19 Sep 2026 02:18:04 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Sat, 19 Sep 2026 02:18:04 GMT
ARG rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:18:04 GMT
ENV rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:32:07 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 02:32:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Sat, 19 Sep 2026 02:32:07 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22adf551b48d152b4890447b04dfd5a12307ee6ba908ae8b009025894e150967`  
		Last Modified: Sat, 19 Sep 2026 02:32:21 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b2f7e0855389532a1954658c3b4162c86a269207a33bb513c3ac726f9535e7`  
		Last Modified: Sat, 19 Sep 2026 02:32:22 GMT  
		Size: 45.1 MB (45104598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:1b421b95f83b3f43a646ab44940f390226f27e1c5c6e58e03b6ec18d89d9ce69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06aee5003c9cdf87785716bb497f5ce353b1319dd3b71276512e77cbd31118f`

```dockerfile
```

-	Layers:
	-	`sha256:066c096889ec742327ba15a6e6aaddc9e6ff38d8cf7716ece362803bb4ffb811`  
		Last Modified: Sat, 19 Sep 2026 02:32:21 GMT  
		Size: 7.8 MB (7780187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93984512193786366c6cc1196d95c2ead765fddece571a82a3794ec536ce2231`  
		Last Modified: Sat, 19 Sep 2026 02:32:21 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:e845f430262f0cffb38e3def19724e5bc98dc5396835e845d1e53cf871e88879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.5 MB (185527892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788ee8e9d16eace0d9b86e85c899ea59e79765094428d587512042af0bd39c54`
-	Default Command: `["raku"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:32 GMT
MAINTAINER AntonOks
# Sat, 19 Sep 2026 02:17:32 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Sat, 19 Sep 2026 02:17:32 GMT
ARG rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:17:32 GMT
ENV rakudo_version=2026.06-01
# Sat, 19 Sep 2026 02:37:40 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Sat, 19 Sep 2026 02:37:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Sat, 19 Sep 2026 02:37:40 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163fa5d62857ec80cf091d1cc713ac655a7ef2becc3df931b0d3f2f153fefb3c`  
		Last Modified: Sat, 19 Sep 2026 02:37:55 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbbb67ea92e1436e8dd45d4063289af2590921dab13a30f77bdbbf1310878b3`  
		Last Modified: Sat, 19 Sep 2026 02:37:57 GMT  
		Size: 43.1 MB (43114596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:26ef77b4b58ccab8808cfc6c4fe88868c07c65c8d4197dda03af2d47a560f8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7800325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fe8b3837ae7268f88286f0105c9027d41788d5470d8c1b237dcce5b0aeb753`

```dockerfile
```

-	Layers:
	-	`sha256:aa215dc7e46c00e2806de5ddeca4e1a56aec59cb36aa5d01d56e175dc87ab894`  
		Last Modified: Sat, 19 Sep 2026 02:37:56 GMT  
		Size: 7.8 MB (7787225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b318ed9206cb39c4b68fd99272c3cf6e6bc515c778bf03dea63d8575d813a08a`  
		Last Modified: Sat, 19 Sep 2026 02:37:55 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json
