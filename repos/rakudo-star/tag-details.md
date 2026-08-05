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
$ docker pull rakudo-star@sha256:6018574138b411d05254950b0b34db36e0579e64921d95e77786bd73b0e3e4f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:eef7be44d55f72e31f85d5364210cb27e5e901ee0bee45614c4cf85b61ea2dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55429282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd25fa0cbbad74c3cf1b8c16653e982e80f3cb1afd811cc9c6842481c6ab535`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 19:12:27 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 06 Jul 2026 19:29:51 GMT
ARG rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:29:51 GMT
ENV rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:29:51 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 06 Jul 2026 19:29:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 06 Jul 2026 19:29:51 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addf929aacfc2bdc328fee5efac150bf24ee61fb1862fcf5ea6fe7bd645c3ec1`  
		Last Modified: Mon, 06 Jul 2026 19:30:03 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff6f4f4e407d63ba2a3a7b8bb0f8fd291b628a60a9825638cdb209bde9f170d`  
		Last Modified: Mon, 06 Jul 2026 19:30:04 GMT  
		Size: 51.6 MB (51581945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:547158bef7714a9ee75c03e1baee5840012e3508ddcd960fb31709ff1e5a3820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7676afc1961432bea6078634e7dd3d59a6342d863f3dfa7911be8e0c247da7`

```dockerfile
```

-	Layers:
	-	`sha256:9493105ddd2fa16c669736859e5e477b05d44923a6952083583f7f837bacb19b`  
		Last Modified: Mon, 06 Jul 2026 19:30:03 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84471f02e3b5aca4ff2d60f6a2f69ca144b7e531226ca7d61e2524199653f85c`  
		Last Modified: Mon, 06 Jul 2026 19:30:03 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.06-alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:408074e4d893052438a8dbd8debead0ed402287c4caf28f2704ab48de9e5d642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55496137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffea641c2f5fcee09fa2a735fcc1568f3d7df643660e2286cbd346225760a91c`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 19:11:53 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 06 Jul 2026 19:34:39 GMT
ARG rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:34:39 GMT
ENV rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:34:39 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 06 Jul 2026 19:34:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 06 Jul 2026 19:34:39 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac380d2d3f85d0b698b35daae4087de6d10c5655360719496e51adbb86cbf2f`  
		Last Modified: Mon, 06 Jul 2026 19:34:51 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:961fcc95c5f7c8a75567eb83f46ec986d818a795c80b17b0b1e622fa9da088de`  
		Last Modified: Mon, 06 Jul 2026 19:34:53 GMT  
		Size: 51.3 MB (51312153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:b7831f4e8f6a470d4428356d8bbb49b5849ce1fbfce894f2989b142cdcf33d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f949a997a2be727dd07b016f235198c64041f1bbda2bf2f8900e39dae0e1e9`

```dockerfile
```

-	Layers:
	-	`sha256:a43da7a1b74dacab2429b81b463607921779fe43d05c8fea9274b73de3bd2d01`  
		Last Modified: Mon, 06 Jul 2026 19:34:51 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12b6e53c802987f429451c70982daa0be5ad0c985524a3e09061056336e3ff09`  
		Last Modified: Mon, 06 Jul 2026 19:34:51 GMT  
		Size: 11.8 KB (11813 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.06-bookworm`

```console
$ docker pull rakudo-star@sha256:13e5c7e4633b7fe5d166cc9c3b8a6053b6d6fa398285b0d15cc5fef1dba1f357
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:a9a517477e3d05460990d964d9acb56621e7339c5e21cdd7cee6bf2b700e6703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181944343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3327208ec4499022d5d4132027a5466fa72d0475f097c5ddf6730b27ff19b0c6`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:22:18 GMT
MAINTAINER Rob Hoelz
# Wed, 05 Aug 2026 02:22:18 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 05 Aug 2026 02:22:18 GMT
ARG rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:22:18 GMT
ENV rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:39:51 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 02:39:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 05 Aug 2026 02:39:51 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9b62b96b57c4cf21651780d3049909ffdce9c4215dac24f81cd515275b3e16`  
		Last Modified: Wed, 05 Aug 2026 02:40:06 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02070133bc77bd7a97ed7fe6fe58a03d0e2825050910522f3abb589c3cfaa1f4`  
		Last Modified: Wed, 05 Aug 2026 02:40:07 GMT  
		Size: 45.0 MB (44991607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:bc5509a56a3600c89263680344196f266a939eae77abc81ff7898f85c3b32c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7981226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8c5a8a7448453a8f08180efbf0c4cf751f162da6683dea5e448abe19196225`

```dockerfile
```

-	Layers:
	-	`sha256:8eb8ed066a2fa7ea82bf9c40c9837851fcc18e2629d438ea0a5da28255912a94`  
		Last Modified: Wed, 05 Aug 2026 02:40:06 GMT  
		Size: 8.0 MB (7968523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fce588230cdbdf21d774ba2d531b323cf2952214e12ffc5073fd75426bd2a60`  
		Last Modified: Wed, 05 Aug 2026 02:40:05 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.06-bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:87d4b3b57caa15da9b054f21b271dc796c9579dc4b8a977acb79e066ff00f868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179460604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f55365672c9fa50e390c0d6e659e6738f4731abbd3c498536eaae19737a4982`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:24:21 GMT
MAINTAINER Rob Hoelz
# Tue, 14 Jul 2026 03:24:21 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 14 Jul 2026 03:24:21 GMT
ARG rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:24:21 GMT
ENV rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:45:29 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:45:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 14 Jul 2026 03:45:29 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af2d47cd8540f7af1f8ba488289fa82e9a2258d051477163651baf22fc99ea6`  
		Last Modified: Tue, 14 Jul 2026 02:37:00 GMT  
		Size: 64.5 MB (64498147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f997bf4168e320133f2428061b4b9a7ecc49fdf81c334a3a82ca9aafc529c8e7`  
		Last Modified: Tue, 14 Jul 2026 03:45:45 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f1537f651dbdc391ce01b70cb927adea1560c1ef0cdb72b68880cd8e8cd8e3`  
		Last Modified: Tue, 14 Jul 2026 03:45:46 GMT  
		Size: 43.0 MB (42962827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:479c1e78708050a442b6a8098ebed86f90621f201e10c154239693a9d6684f1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7987714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbbce4b8ee06b5720687921ff17bc2edbe5ec4d4d570b0d9443360a845378af`

```dockerfile
```

-	Layers:
	-	`sha256:acbd764ef6b4109fe4198cf98bcb140512ca4a8a5ebbb9bdfb2f70c458a0ee83`  
		Last Modified: Tue, 14 Jul 2026 03:45:45 GMT  
		Size: 8.0 MB (7974916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f978665f367f5f360acbe1f3cf8fa12ff6cf8e6bddd646537c4be2ee4ed4f87`  
		Last Modified: Tue, 14 Jul 2026 03:45:45 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.06-trixie`

```console
$ docker pull rakudo-star@sha256:f62000fa042871c582e19bf728022f9b704bf4cc1a11249ae5eb5f5948d3e9bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:091e64ce0abb7a77c275dcb9bb09c082b574f77a7e2750301a0ad95261b293e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187762835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4056415ef0337e54b0426fd2c5f1d5b00f9e675135e426e2645ae59b5c770a9e`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:22:15 GMT
MAINTAINER AntonOks
# Wed, 05 Aug 2026 02:22:15 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 05 Aug 2026 02:22:15 GMT
ARG rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:22:15 GMT
ENV rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:37:42 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 02:37:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 05 Aug 2026 02:37:42 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fcc77a3752d88f427220b544ec6990f194c49ffa8bcac98607761fa6da30c1`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeceda6a9f00cd7186731bb90a6089902f82b8a1cc467aeeb2c8509f585a8256`  
		Last Modified: Wed, 05 Aug 2026 02:37:57 GMT  
		Size: 45.0 MB (45010643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:01f88ba15143b01c8dd0883de18fd170bf4fd4e9f86e12a876ce557a58858eb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e415199af52ef2d61d6748a25199a8a75065b63f06ed37b6d36776fbaf5b5a`

```dockerfile
```

-	Layers:
	-	`sha256:7e0a7d9bc58ad67a51f55bbd5e98924a45f4bd8211114fb750af63a6c53beaea`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 7.8 MB (7771046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edc190382b569ba9a871cd619c5c0cdb547618642c23197220cf7b810e75ec0c`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.06-trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:27ee331b656d0d76eb8afaeb039450c894e363bdb4ed714a1abbff08721cd111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185280096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b16456d94d2faf4d23f673a4282e9d779548b4e06fe7f3bac233f0866b1567fb`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:24:22 GMT
MAINTAINER AntonOks
# Tue, 14 Jul 2026 03:24:22 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 14 Jul 2026 03:24:22 GMT
ARG rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:24:22 GMT
ENV rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:46:27 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:46:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 14 Jul 2026 03:46:27 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4ef3ab188fb6ed9bfd2ca2b6d7c0ea80fb329c1f1c1de486c57be3b602d0aa`  
		Last Modified: Tue, 14 Jul 2026 03:46:43 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97834bd7827add510d8a2dc12e5da7f19576c0d82e89112d356d522d88941fcd`  
		Last Modified: Tue, 14 Jul 2026 03:46:45 GMT  
		Size: 43.0 MB (42980199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:a0a787573021f77baf184d43160404c4ff836ec7da3115e1f411e0f0bda2aa9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f10648182adcbc31dfe35b2eba1284b7d8ae54af64ed367d41d969b5fbe5a8b`

```dockerfile
```

-	Layers:
	-	`sha256:0016ed7015d3fb53242ab2c0ddb8c99e3ed88eda6672c690c29143a8f262e175`  
		Last Modified: Tue, 14 Jul 2026 03:46:44 GMT  
		Size: 7.8 MB (7778052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceb29a883fbc379acd517164a04e60667714bd67d849ac30d43eb6964dc80b81`  
		Last Modified: Tue, 14 Jul 2026 03:46:43 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:alpine`

```console
$ docker pull rakudo-star@sha256:6018574138b411d05254950b0b34db36e0579e64921d95e77786bd73b0e3e4f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:eef7be44d55f72e31f85d5364210cb27e5e901ee0bee45614c4cf85b61ea2dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55429282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd25fa0cbbad74c3cf1b8c16653e982e80f3cb1afd811cc9c6842481c6ab535`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 19:12:27 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 06 Jul 2026 19:29:51 GMT
ARG rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:29:51 GMT
ENV rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:29:51 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 06 Jul 2026 19:29:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 06 Jul 2026 19:29:51 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addf929aacfc2bdc328fee5efac150bf24ee61fb1862fcf5ea6fe7bd645c3ec1`  
		Last Modified: Mon, 06 Jul 2026 19:30:03 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff6f4f4e407d63ba2a3a7b8bb0f8fd291b628a60a9825638cdb209bde9f170d`  
		Last Modified: Mon, 06 Jul 2026 19:30:04 GMT  
		Size: 51.6 MB (51581945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:547158bef7714a9ee75c03e1baee5840012e3508ddcd960fb31709ff1e5a3820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7676afc1961432bea6078634e7dd3d59a6342d863f3dfa7911be8e0c247da7`

```dockerfile
```

-	Layers:
	-	`sha256:9493105ddd2fa16c669736859e5e477b05d44923a6952083583f7f837bacb19b`  
		Last Modified: Mon, 06 Jul 2026 19:30:03 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84471f02e3b5aca4ff2d60f6a2f69ca144b7e531226ca7d61e2524199653f85c`  
		Last Modified: Mon, 06 Jul 2026 19:30:03 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:408074e4d893052438a8dbd8debead0ed402287c4caf28f2704ab48de9e5d642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55496137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffea641c2f5fcee09fa2a735fcc1568f3d7df643660e2286cbd346225760a91c`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 19:11:53 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 06 Jul 2026 19:34:39 GMT
ARG rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:34:39 GMT
ENV rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:34:39 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 06 Jul 2026 19:34:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 06 Jul 2026 19:34:39 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac380d2d3f85d0b698b35daae4087de6d10c5655360719496e51adbb86cbf2f`  
		Last Modified: Mon, 06 Jul 2026 19:34:51 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:961fcc95c5f7c8a75567eb83f46ec986d818a795c80b17b0b1e622fa9da088de`  
		Last Modified: Mon, 06 Jul 2026 19:34:53 GMT  
		Size: 51.3 MB (51312153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:b7831f4e8f6a470d4428356d8bbb49b5849ce1fbfce894f2989b142cdcf33d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f949a997a2be727dd07b016f235198c64041f1bbda2bf2f8900e39dae0e1e9`

```dockerfile
```

-	Layers:
	-	`sha256:a43da7a1b74dacab2429b81b463607921779fe43d05c8fea9274b73de3bd2d01`  
		Last Modified: Mon, 06 Jul 2026 19:34:51 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12b6e53c802987f429451c70982daa0be5ad0c985524a3e09061056336e3ff09`  
		Last Modified: Mon, 06 Jul 2026 19:34:51 GMT  
		Size: 11.8 KB (11813 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:bookworm`

```console
$ docker pull rakudo-star@sha256:b56017dca30e66d620d75645fe37b4371e9abc4c37b0c7494e469c919fee45d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:a9a517477e3d05460990d964d9acb56621e7339c5e21cdd7cee6bf2b700e6703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181944343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3327208ec4499022d5d4132027a5466fa72d0475f097c5ddf6730b27ff19b0c6`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:22:18 GMT
MAINTAINER Rob Hoelz
# Wed, 05 Aug 2026 02:22:18 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 05 Aug 2026 02:22:18 GMT
ARG rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:22:18 GMT
ENV rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:39:51 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 02:39:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 05 Aug 2026 02:39:51 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9b62b96b57c4cf21651780d3049909ffdce9c4215dac24f81cd515275b3e16`  
		Last Modified: Wed, 05 Aug 2026 02:40:06 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02070133bc77bd7a97ed7fe6fe58a03d0e2825050910522f3abb589c3cfaa1f4`  
		Last Modified: Wed, 05 Aug 2026 02:40:07 GMT  
		Size: 45.0 MB (44991607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:bc5509a56a3600c89263680344196f266a939eae77abc81ff7898f85c3b32c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7981226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8c5a8a7448453a8f08180efbf0c4cf751f162da6683dea5e448abe19196225`

```dockerfile
```

-	Layers:
	-	`sha256:8eb8ed066a2fa7ea82bf9c40c9837851fcc18e2629d438ea0a5da28255912a94`  
		Last Modified: Wed, 05 Aug 2026 02:40:06 GMT  
		Size: 8.0 MB (7968523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fce588230cdbdf21d774ba2d531b323cf2952214e12ffc5073fd75426bd2a60`  
		Last Modified: Wed, 05 Aug 2026 02:40:05 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:05da8bd3f37655974c440b4e6374dbbd762556d982248955a5433b20919dd7f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179483480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49b9683b93472ecafd49b9d4735689c67c654ad111e0549635e51f0bee0bdf8`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:22:49 GMT
MAINTAINER Rob Hoelz
# Wed, 05 Aug 2026 02:22:49 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 05 Aug 2026 02:22:49 GMT
ARG rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:22:49 GMT
ENV rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:42:51 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 02:42:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 05 Aug 2026 02:42:51 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d549fb80ecb723c0f9804cc7f9e5cbbadb84a7abd6b85ec4ed0f7bad156f5d`  
		Last Modified: Wed, 05 Aug 2026 02:43:06 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394fdc4bff9b0f00c2f64b110624956dd87f3a5a649012a050af07ba003d5e1d`  
		Last Modified: Wed, 05 Aug 2026 02:43:07 GMT  
		Size: 43.0 MB (42986023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:7f572c3b57356003f01b9dc6c3221c7ca715e71788106a43b0bdc71390056c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7987713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87ed26f989f5175fd477202a7b63a7547eccecc84e883524c4bdc6270f84438`

```dockerfile
```

-	Layers:
	-	`sha256:ea0d977502d9bcf458eae92ec0f21cdb4e08a10575ad402dddfd1066aa88772f`  
		Last Modified: Wed, 05 Aug 2026 02:43:07 GMT  
		Size: 8.0 MB (7974916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c45a9b41be360912849bc8bbe04453264a849cfdff3e073c042670194c9bef0d`  
		Last Modified: Wed, 05 Aug 2026 02:43:06 GMT  
		Size: 12.8 KB (12797 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:f62000fa042871c582e19bf728022f9b704bf4cc1a11249ae5eb5f5948d3e9bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:091e64ce0abb7a77c275dcb9bb09c082b574f77a7e2750301a0ad95261b293e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187762835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4056415ef0337e54b0426fd2c5f1d5b00f9e675135e426e2645ae59b5c770a9e`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:22:15 GMT
MAINTAINER AntonOks
# Wed, 05 Aug 2026 02:22:15 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 05 Aug 2026 02:22:15 GMT
ARG rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:22:15 GMT
ENV rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:37:42 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 02:37:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 05 Aug 2026 02:37:42 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fcc77a3752d88f427220b544ec6990f194c49ffa8bcac98607761fa6da30c1`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeceda6a9f00cd7186731bb90a6089902f82b8a1cc467aeeb2c8509f585a8256`  
		Last Modified: Wed, 05 Aug 2026 02:37:57 GMT  
		Size: 45.0 MB (45010643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:01f88ba15143b01c8dd0883de18fd170bf4fd4e9f86e12a876ce557a58858eb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e415199af52ef2d61d6748a25199a8a75065b63f06ed37b6d36776fbaf5b5a`

```dockerfile
```

-	Layers:
	-	`sha256:7e0a7d9bc58ad67a51f55bbd5e98924a45f4bd8211114fb750af63a6c53beaea`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 7.8 MB (7771046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edc190382b569ba9a871cd619c5c0cdb547618642c23197220cf7b810e75ec0c`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:27ee331b656d0d76eb8afaeb039450c894e363bdb4ed714a1abbff08721cd111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185280096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b16456d94d2faf4d23f673a4282e9d779548b4e06fe7f3bac233f0866b1567fb`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:24:22 GMT
MAINTAINER AntonOks
# Tue, 14 Jul 2026 03:24:22 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 14 Jul 2026 03:24:22 GMT
ARG rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:24:22 GMT
ENV rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:46:27 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:46:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 14 Jul 2026 03:46:27 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4f1d683f65087c4403277cc2e5a3d787025eb59d342271a327b23718904ab1`  
		Last Modified: Tue, 14 Jul 2026 02:37:11 GMT  
		Size: 67.6 MB (67595593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4ef3ab188fb6ed9bfd2ca2b6d7c0ea80fb329c1f1c1de486c57be3b602d0aa`  
		Last Modified: Tue, 14 Jul 2026 03:46:43 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97834bd7827add510d8a2dc12e5da7f19576c0d82e89112d356d522d88941fcd`  
		Last Modified: Tue, 14 Jul 2026 03:46:45 GMT  
		Size: 43.0 MB (42980199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:a0a787573021f77baf184d43160404c4ff836ec7da3115e1f411e0f0bda2aa9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f10648182adcbc31dfe35b2eba1284b7d8ae54af64ed367d41d969b5fbe5a8b`

```dockerfile
```

-	Layers:
	-	`sha256:0016ed7015d3fb53242ab2c0ddb8c99e3ed88eda6672c690c29143a8f262e175`  
		Last Modified: Tue, 14 Jul 2026 03:46:44 GMT  
		Size: 7.8 MB (7778052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceb29a883fbc379acd517164a04e60667714bd67d849ac30d43eb6964dc80b81`  
		Last Modified: Tue, 14 Jul 2026 03:46:43 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:f211cc83a5036df166eb94ff60fd4396b58587c7cdd477f52e4a83954cd28cdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:091e64ce0abb7a77c275dcb9bb09c082b574f77a7e2750301a0ad95261b293e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187762835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4056415ef0337e54b0426fd2c5f1d5b00f9e675135e426e2645ae59b5c770a9e`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:22:15 GMT
MAINTAINER AntonOks
# Wed, 05 Aug 2026 02:22:15 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 05 Aug 2026 02:22:15 GMT
ARG rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:22:15 GMT
ENV rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:37:42 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 02:37:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 05 Aug 2026 02:37:42 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fcc77a3752d88f427220b544ec6990f194c49ffa8bcac98607761fa6da30c1`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeceda6a9f00cd7186731bb90a6089902f82b8a1cc467aeeb2c8509f585a8256`  
		Last Modified: Wed, 05 Aug 2026 02:37:57 GMT  
		Size: 45.0 MB (45010643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:01f88ba15143b01c8dd0883de18fd170bf4fd4e9f86e12a876ce557a58858eb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e415199af52ef2d61d6748a25199a8a75065b63f06ed37b6d36776fbaf5b5a`

```dockerfile
```

-	Layers:
	-	`sha256:7e0a7d9bc58ad67a51f55bbd5e98924a45f4bd8211114fb750af63a6c53beaea`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 7.8 MB (7771046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edc190382b569ba9a871cd619c5c0cdb547618642c23197220cf7b810e75ec0c`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:6de50fcfe5261ba7759bb1bd81b7f25f696e08f160f2c9df58289a3594c4d827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185311928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d60d4129496d3a00e6fe52e63f45d0b91e9d4d92b8252b69a5f370e72d8acc`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:22:47 GMT
MAINTAINER AntonOks
# Wed, 05 Aug 2026 02:22:47 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 05 Aug 2026 02:22:47 GMT
ARG rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:22:47 GMT
ENV rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:42:21 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 02:42:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 05 Aug 2026 02:42:21 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6387288076940feebdfd78c561fffec593d90767c42d6a76d18540ffdff656`  
		Last Modified: Wed, 05 Aug 2026 02:42:36 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf282d1f566e2cfa1db6e953d8f48b418ddefa112909d6adc1b6f1215fbd4e34`  
		Last Modified: Wed, 05 Aug 2026 02:42:37 GMT  
		Size: 43.0 MB (43007786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:2ab1f89c9bce300c505f7e261c150aaf63b95fcaee58c264e5891194acec4377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d4f5a5dc2f7f46bd2207d0848a179c3b1ea83e78de0d2120b47f846e62724c`

```dockerfile
```

-	Layers:
	-	`sha256:cddaaad478ae8d1528b53802aca455a1cdaf7403081fbe073628dd6b9d147a80`  
		Last Modified: Wed, 05 Aug 2026 02:42:36 GMT  
		Size: 7.8 MB (7778084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d84629446f2fee76256c9a252c2cfce64610b055c08d04e20ccf459b1f1ae8c1`  
		Last Modified: Wed, 05 Aug 2026 02:42:36 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json
