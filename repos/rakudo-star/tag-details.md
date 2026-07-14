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
$ docker pull rakudo-star@sha256:a9b56ba7242ef2d8fb1bab23f1f2741e764b1a9d1727db53cfb23896397a6d6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:3037f5164c390444b6a9d53f6587d8bd07b5df426b655de0ff006116a2dab406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181912913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fb6d3a5df2902d701dbdd32888f447359a8de9e799803075847a6e430e5f62`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:23:29 GMT
MAINTAINER Rob Hoelz
# Tue, 14 Jul 2026 03:23:29 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 14 Jul 2026 03:23:29 GMT
ARG rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:23:29 GMT
ENV rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:39:35 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:39:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 14 Jul 2026 03:39:35 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b1ed2aae61073fd7aba9dd82511b1bb941a1575bca6d504b472edffabcf431`  
		Last Modified: Tue, 14 Jul 2026 03:39:49 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7bff439890cce0c635e6a922248712d8b46529ee4827d994d340de6b22db8f`  
		Last Modified: Tue, 14 Jul 2026 03:39:51 GMT  
		Size: 45.0 MB (44959716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:331c1016ed06c8c7d6b34c9848ca3ffaaef62afca151c93a57dc7f1cd3bf61be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7981226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18fb7fded3ad2c7a639a8591f27d914b9ff62b8b30eb566f9b4f77a979af184`

```dockerfile
```

-	Layers:
	-	`sha256:3670544bf86487bda357f3be583de4e700047045c7d2ab0ed37b2fa7b94eb8d6`  
		Last Modified: Tue, 14 Jul 2026 03:39:50 GMT  
		Size: 8.0 MB (7968523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3901d6a29e38b9425d2b1901669f4df010bca8a852a5fff957c2481ff5f405fe`  
		Last Modified: Tue, 14 Jul 2026 03:39:50 GMT  
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
$ docker pull rakudo-star@sha256:f9cbf7edfec470c20f79c326bce19a6e2d1931c8baed5c58b3d0c9199417c2a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:4bac4daeb1c38b9ed16fa88ba46c98dc62d8f5d707307688868176910b658c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.7 MB (187714217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3d100d958db7f6cedaabf7b2efc59968b999805872fbf3a7b32a87acf3c16f`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:23:27 GMT
MAINTAINER AntonOks
# Tue, 14 Jul 2026 03:23:27 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 14 Jul 2026 03:23:27 GMT
ARG rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:23:27 GMT
ENV rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:37:34 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:37:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 14 Jul 2026 03:37:34 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57202b1ca832ed722c3bdc8149b360db3af9e393c620d8fd33bb93d445714ddc`  
		Last Modified: Tue, 14 Jul 2026 03:37:47 GMT  
		Size: 3.2 KB (3243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff0b4ec5dbe6fb5851ac26f8efdfb6c831fa68c88999133ec24cc6ab66f794b`  
		Last Modified: Tue, 14 Jul 2026 03:37:49 GMT  
		Size: 45.0 MB (44966945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:72dfc6abbca05cb7a362be44c57497f6b4200f7e6d7d553e75e70003aca24789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8b015c9b33ccd16fde461e379d193ea945d02514336d154499004e323a4e1e`

```dockerfile
```

-	Layers:
	-	`sha256:077d8a7e45490b671f93cd6a94a2499de380da5536689f742b3d46791841a278`  
		Last Modified: Tue, 14 Jul 2026 03:37:48 GMT  
		Size: 7.8 MB (7771014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:981eedb69f9a5ae9ae88af42ae7f900f5a68eca7ee069fd6465f206784e55b65`  
		Last Modified: Tue, 14 Jul 2026 03:37:47 GMT  
		Size: 13.0 KB (12993 bytes)  
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
$ docker pull rakudo-star@sha256:a9b56ba7242ef2d8fb1bab23f1f2741e764b1a9d1727db53cfb23896397a6d6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:3037f5164c390444b6a9d53f6587d8bd07b5df426b655de0ff006116a2dab406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181912913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fb6d3a5df2902d701dbdd32888f447359a8de9e799803075847a6e430e5f62`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:23:29 GMT
MAINTAINER Rob Hoelz
# Tue, 14 Jul 2026 03:23:29 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 14 Jul 2026 03:23:29 GMT
ARG rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:23:29 GMT
ENV rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:39:35 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:39:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 14 Jul 2026 03:39:35 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b1ed2aae61073fd7aba9dd82511b1bb941a1575bca6d504b472edffabcf431`  
		Last Modified: Tue, 14 Jul 2026 03:39:49 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7bff439890cce0c635e6a922248712d8b46529ee4827d994d340de6b22db8f`  
		Last Modified: Tue, 14 Jul 2026 03:39:51 GMT  
		Size: 45.0 MB (44959716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:331c1016ed06c8c7d6b34c9848ca3ffaaef62afca151c93a57dc7f1cd3bf61be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7981226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18fb7fded3ad2c7a639a8591f27d914b9ff62b8b30eb566f9b4f77a979af184`

```dockerfile
```

-	Layers:
	-	`sha256:3670544bf86487bda357f3be583de4e700047045c7d2ab0ed37b2fa7b94eb8d6`  
		Last Modified: Tue, 14 Jul 2026 03:39:50 GMT  
		Size: 8.0 MB (7968523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3901d6a29e38b9425d2b1901669f4df010bca8a852a5fff957c2481ff5f405fe`  
		Last Modified: Tue, 14 Jul 2026 03:39:50 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

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

### `rakudo-star:bookworm` - unknown; unknown

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

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:f9cbf7edfec470c20f79c326bce19a6e2d1931c8baed5c58b3d0c9199417c2a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:4bac4daeb1c38b9ed16fa88ba46c98dc62d8f5d707307688868176910b658c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.7 MB (187714217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3d100d958db7f6cedaabf7b2efc59968b999805872fbf3a7b32a87acf3c16f`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:23:27 GMT
MAINTAINER AntonOks
# Tue, 14 Jul 2026 03:23:27 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 14 Jul 2026 03:23:27 GMT
ARG rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:23:27 GMT
ENV rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:37:34 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:37:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 14 Jul 2026 03:37:34 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57202b1ca832ed722c3bdc8149b360db3af9e393c620d8fd33bb93d445714ddc`  
		Last Modified: Tue, 14 Jul 2026 03:37:47 GMT  
		Size: 3.2 KB (3243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff0b4ec5dbe6fb5851ac26f8efdfb6c831fa68c88999133ec24cc6ab66f794b`  
		Last Modified: Tue, 14 Jul 2026 03:37:49 GMT  
		Size: 45.0 MB (44966945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:72dfc6abbca05cb7a362be44c57497f6b4200f7e6d7d553e75e70003aca24789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8b015c9b33ccd16fde461e379d193ea945d02514336d154499004e323a4e1e`

```dockerfile
```

-	Layers:
	-	`sha256:077d8a7e45490b671f93cd6a94a2499de380da5536689f742b3d46791841a278`  
		Last Modified: Tue, 14 Jul 2026 03:37:48 GMT  
		Size: 7.8 MB (7771014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:981eedb69f9a5ae9ae88af42ae7f900f5a68eca7ee069fd6465f206784e55b65`  
		Last Modified: Tue, 14 Jul 2026 03:37:47 GMT  
		Size: 13.0 KB (12993 bytes)  
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
$ docker pull rakudo-star@sha256:f9cbf7edfec470c20f79c326bce19a6e2d1931c8baed5c58b3d0c9199417c2a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:4bac4daeb1c38b9ed16fa88ba46c98dc62d8f5d707307688868176910b658c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.7 MB (187714217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3d100d958db7f6cedaabf7b2efc59968b999805872fbf3a7b32a87acf3c16f`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:23:27 GMT
MAINTAINER AntonOks
# Tue, 14 Jul 2026 03:23:27 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 14 Jul 2026 03:23:27 GMT
ARG rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:23:27 GMT
ENV rakudo_version=2026.06-01
# Tue, 14 Jul 2026 03:37:34 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 14 Jul 2026 03:37:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 14 Jul 2026 03:37:34 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e002cae30c445bfdf70841ba6a8d772e913914a00fa0e0f7bd0e4c089aaa838`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 67.8 MB (67792989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57202b1ca832ed722c3bdc8149b360db3af9e393c620d8fd33bb93d445714ddc`  
		Last Modified: Tue, 14 Jul 2026 03:37:47 GMT  
		Size: 3.2 KB (3243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff0b4ec5dbe6fb5851ac26f8efdfb6c831fa68c88999133ec24cc6ab66f794b`  
		Last Modified: Tue, 14 Jul 2026 03:37:49 GMT  
		Size: 45.0 MB (44966945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:72dfc6abbca05cb7a362be44c57497f6b4200f7e6d7d553e75e70003aca24789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f8b015c9b33ccd16fde461e379d193ea945d02514336d154499004e323a4e1e`

```dockerfile
```

-	Layers:
	-	`sha256:077d8a7e45490b671f93cd6a94a2499de380da5536689f742b3d46791841a278`  
		Last Modified: Tue, 14 Jul 2026 03:37:48 GMT  
		Size: 7.8 MB (7771014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:981eedb69f9a5ae9ae88af42ae7f900f5a68eca7ee069fd6465f206784e55b65`  
		Last Modified: Tue, 14 Jul 2026 03:37:47 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

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

### `rakudo-star:trixie` - unknown; unknown

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
