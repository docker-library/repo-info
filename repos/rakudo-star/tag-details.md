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
$ docker pull rakudo-star@sha256:0bc7542202ea3d9362ce15d90a601928f02b7657630fd131ad9d9847687b65b5
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

### `rakudo-star:2026.09-alpine` - unknown; unknown

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

## `rakudo-star:2026.09-bookworm`

```console
$ docker pull rakudo-star@sha256:dda396d1fdef6142c9a75a4e675d40c9ab9ec8d20815506d50b3200bbed0cf3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:e54f097e8e7da38f9d8cbc94eb4c1c271c6a23a2c3d2125327ab9fae90f5e801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176542683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf9a6b994560691e556d68bea6462906e498c68b4bd46d5dec7048b39ca53c0`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:20:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:18:26 GMT
MAINTAINER Rob Hoelz
# Tue, 24 Nov 2026 06:18:26 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:18:26 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:18:26 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:37:22 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:37:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:37:22 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d5603818e4025d8c8e4b5578914535e7e3466d860768e69f957f49fc5fac8`  
		Last Modified: Tue, 24 Nov 2026 05:21:02 GMT  
		Size: 64.4 MB (64432507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee48cc90560810e60c77f290ccdb33b612bf2596a4ed6a9ce4da8aa0fdc008af`  
		Last Modified: Tue, 24 Nov 2026 06:37:38 GMT  
		Size: 3.2 KB (3236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f93badcf0b2b064f7f55a3b4efb1efcb77c68e3d2d12674eda25dd30cc3c3a1`  
		Last Modified: Tue, 24 Nov 2026 06:37:39 GMT  
		Size: 39.7 MB (39707308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:51fa9af390ed09ebccb621a3a16d211ef782d962e260943af3f2c5c94fc85490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400865c264cf4e5dfd03afc0e2f7607c184558dfeef7d1e4dba6a683d8ca592c`

```dockerfile
```

-	Layers:
	-	`sha256:766338027195d88d113ee9b7e33002f96ad926654f90c34b616c5f9c47d3cb93`  
		Last Modified: Tue, 24 Nov 2026 06:37:38 GMT  
		Size: 8.0 MB (7971006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57490dcd8a31687fd146b80d498fb06e3443e0b30eaec379b8edf7dfdc7a0e27`  
		Last Modified: Tue, 24 Nov 2026 06:37:37 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:8762c3e8a82dc9ad30018a13f5b9fca3810f91a5d6cb7d15b6e6841e56707a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175158354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8c134b6ffd899fd243d6313bb2599595c08b2a0e479e3416ad7236e4242a62`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:32:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:17:03 GMT
MAINTAINER Rob Hoelz
# Tue, 24 Nov 2026 06:17:03 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:17:03 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:17:03 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:40:50 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:40:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:40:50 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4d528de4b5383d96c1d03b858675d089f6dffcb1103cda3766265f17482fda`  
		Last Modified: Tue, 24 Nov 2026 05:32:20 GMT  
		Size: 64.5 MB (64528539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bedd484f0b0015bfcba1e4f5bb4ff939e933e2b4ed4911d56d10ea149acfdcf1`  
		Last Modified: Tue, 24 Nov 2026 06:41:05 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c93abc5fa62955a6d63d78597e2199b4d3abf1be042d9ce4356ff6801cbe4c8`  
		Last Modified: Tue, 24 Nov 2026 06:41:06 GMT  
		Size: 38.8 MB (38773938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:215aaf54fd4b8373331cfced67b6633ef73e6e56b74e46fbc95d64f3a1b4c0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7990197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87986e3b0a9b9a025adf2c0b4360ee3ad1705a25a9e9ca1b243653351cc268c`

```dockerfile
```

-	Layers:
	-	`sha256:d552c5800220cd5464b7a71df0b840ce004a3c658abd0d97aa3f18d4cd02360a`  
		Last Modified: Tue, 24 Nov 2026 06:41:06 GMT  
		Size: 8.0 MB (7977399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ce15f7aeaf5824ef2c2fd6f78fe9701604e729717e1f5d08f30a30b559de5ff`  
		Last Modified: Tue, 24 Nov 2026 06:41:05 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.09-trixie`

```console
$ docker pull rakudo-star@sha256:e522b8b8cafe4fbf76ed89926b6e884875fa8bf88ce107d50fdb7663b7a9105e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.09-trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:b92eb368e49cdb176a4561f2af2e200d26e81263bcceb55e0f8b74569faf0031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182602238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27623e66fdbae08ab530b78efe27f6059481dc11c31269c061b0107a309d9bb2`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:18:18 GMT
MAINTAINER AntonOks
# Tue, 24 Nov 2026 06:18:18 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:18:18 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:18:18 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:35:17 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:35:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:35:17 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be6780dc18eb58a60fabb4c8bedb0c3ea852f4f3c7d199d0dd2ca073068d3c`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 25.7 MB (25650878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2acb1a7e2440113768de2c5a81ca8c6c89281a433d4e9f05eecc3082aac2c04`  
		Last Modified: Tue, 24 Nov 2026 05:21:36 GMT  
		Size: 67.8 MB (67818732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508d549e51ba98b91cadd0368533ba2274d786d30ac563201f2fde3822b87ae6`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef4b7773e762856a7f42b9be1477f2a485721f1e3e736fbbc816d3f692a24b0`  
		Last Modified: Tue, 24 Nov 2026 06:35:31 GMT  
		Size: 39.7 MB (39720103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:1e205e6a101f5de6953b1b5e73c5d10286e2d0b06553471415ba43b8518699b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7790354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c17d3c446de3b3b0184c5bf0b89e3cda4591b3544987eb51e6dfcd0b85e3a62`

```dockerfile
```

-	Layers:
	-	`sha256:9a323eeb929a2cc17b89a601939eb804e95a90f76d0b700ee1b086b5ef213839`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 7.8 MB (7777362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:099adc2c10b85102b48b08c0b7bcbc0a276cd66d355f859aa93eafacb7e19dda`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.09-trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:133f0d3eaac1b4da260229d539396bbff6d860d008aa964cadaa8b3b7bba0c36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181160179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd4541240bc8928703719966d82221409ce1bc25e5517deeafcee18eabdff9ed`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:16:58 GMT
MAINTAINER AntonOks
# Tue, 24 Nov 2026 06:16:58 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:16:58 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:16:58 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:42:40 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:42:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:42:40 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dacf7f1531c38a9330958dd49f965097481ac7feb033dbc834cab26a8120fa0`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 25.0 MB (25045881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873295aab70feef1201ca10ab9b403b459ce2e560c88640595466a3bb0b2c5ed`  
		Last Modified: Tue, 24 Nov 2026 05:33:30 GMT  
		Size: 67.6 MB (67633993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f721c37fcc04857fa7507b207e805c5bf1faf5ecc37080ec57a382946a12483`  
		Last Modified: Tue, 24 Nov 2026 06:42:56 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09790d70cc5a8e54bb86fb8a30c1758e24c22ce1ff3df723f3578da61611a258`  
		Last Modified: Tue, 24 Nov 2026 06:42:58 GMT  
		Size: 38.7 MB (38706980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.09-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:e8dfaa04b704fffab37494ad52cea4b92a7439bb3f517a8fcdf11af9cc16172c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7797499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86338691aa56d3e4b69a180fd5cd5e6d358c1622d7b84acb0576692771f721cf`

```dockerfile
```

-	Layers:
	-	`sha256:a170dc600d5a1923d99134c76c184fad99787877888c6a0295cc2a6632470dc2`  
		Last Modified: Tue, 24 Nov 2026 06:42:57 GMT  
		Size: 7.8 MB (7784400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82d242e0e4b7d677df8eba34c40eb53afbc7b82478a197f5dd8bbf58bd9d962f`  
		Last Modified: Tue, 24 Nov 2026 06:42:56 GMT  
		Size: 13.1 KB (13099 bytes)  
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
$ docker pull rakudo-star@sha256:dda396d1fdef6142c9a75a4e675d40c9ab9ec8d20815506d50b3200bbed0cf3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:e54f097e8e7da38f9d8cbc94eb4c1c271c6a23a2c3d2125327ab9fae90f5e801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176542683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf9a6b994560691e556d68bea6462906e498c68b4bd46d5dec7048b39ca53c0`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:20:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:18:26 GMT
MAINTAINER Rob Hoelz
# Tue, 24 Nov 2026 06:18:26 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:18:26 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:18:26 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:37:22 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:37:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:37:22 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d5603818e4025d8c8e4b5578914535e7e3466d860768e69f957f49fc5fac8`  
		Last Modified: Tue, 24 Nov 2026 05:21:02 GMT  
		Size: 64.4 MB (64432507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee48cc90560810e60c77f290ccdb33b612bf2596a4ed6a9ce4da8aa0fdc008af`  
		Last Modified: Tue, 24 Nov 2026 06:37:38 GMT  
		Size: 3.2 KB (3236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f93badcf0b2b064f7f55a3b4efb1efcb77c68e3d2d12674eda25dd30cc3c3a1`  
		Last Modified: Tue, 24 Nov 2026 06:37:39 GMT  
		Size: 39.7 MB (39707308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:51fa9af390ed09ebccb621a3a16d211ef782d962e260943af3f2c5c94fc85490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400865c264cf4e5dfd03afc0e2f7607c184558dfeef7d1e4dba6a683d8ca592c`

```dockerfile
```

-	Layers:
	-	`sha256:766338027195d88d113ee9b7e33002f96ad926654f90c34b616c5f9c47d3cb93`  
		Last Modified: Tue, 24 Nov 2026 06:37:38 GMT  
		Size: 8.0 MB (7971006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57490dcd8a31687fd146b80d498fb06e3443e0b30eaec379b8edf7dfdc7a0e27`  
		Last Modified: Tue, 24 Nov 2026 06:37:37 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:8762c3e8a82dc9ad30018a13f5b9fca3810f91a5d6cb7d15b6e6841e56707a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175158354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8c134b6ffd899fd243d6313bb2599595c08b2a0e479e3416ad7236e4242a62`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:32:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:17:03 GMT
MAINTAINER Rob Hoelz
# Tue, 24 Nov 2026 06:17:03 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:17:03 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:17:03 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:40:50 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:40:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:40:50 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4d528de4b5383d96c1d03b858675d089f6dffcb1103cda3766265f17482fda`  
		Last Modified: Tue, 24 Nov 2026 05:32:20 GMT  
		Size: 64.5 MB (64528539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bedd484f0b0015bfcba1e4f5bb4ff939e933e2b4ed4911d56d10ea149acfdcf1`  
		Last Modified: Tue, 24 Nov 2026 06:41:05 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c93abc5fa62955a6d63d78597e2199b4d3abf1be042d9ce4356ff6801cbe4c8`  
		Last Modified: Tue, 24 Nov 2026 06:41:06 GMT  
		Size: 38.8 MB (38773938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:215aaf54fd4b8373331cfced67b6633ef73e6e56b74e46fbc95d64f3a1b4c0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7990197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87986e3b0a9b9a025adf2c0b4360ee3ad1705a25a9e9ca1b243653351cc268c`

```dockerfile
```

-	Layers:
	-	`sha256:d552c5800220cd5464b7a71df0b840ce004a3c658abd0d97aa3f18d4cd02360a`  
		Last Modified: Tue, 24 Nov 2026 06:41:06 GMT  
		Size: 8.0 MB (7977399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ce15f7aeaf5824ef2c2fd6f78fe9701604e729717e1f5d08f30a30b559de5ff`  
		Last Modified: Tue, 24 Nov 2026 06:41:05 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:e522b8b8cafe4fbf76ed89926b6e884875fa8bf88ce107d50fdb7663b7a9105e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:b92eb368e49cdb176a4561f2af2e200d26e81263bcceb55e0f8b74569faf0031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182602238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27623e66fdbae08ab530b78efe27f6059481dc11c31269c061b0107a309d9bb2`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:18:18 GMT
MAINTAINER AntonOks
# Tue, 24 Nov 2026 06:18:18 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:18:18 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:18:18 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:35:17 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:35:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:35:17 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be6780dc18eb58a60fabb4c8bedb0c3ea852f4f3c7d199d0dd2ca073068d3c`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 25.7 MB (25650878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2acb1a7e2440113768de2c5a81ca8c6c89281a433d4e9f05eecc3082aac2c04`  
		Last Modified: Tue, 24 Nov 2026 05:21:36 GMT  
		Size: 67.8 MB (67818732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508d549e51ba98b91cadd0368533ba2274d786d30ac563201f2fde3822b87ae6`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef4b7773e762856a7f42b9be1477f2a485721f1e3e736fbbc816d3f692a24b0`  
		Last Modified: Tue, 24 Nov 2026 06:35:31 GMT  
		Size: 39.7 MB (39720103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:1e205e6a101f5de6953b1b5e73c5d10286e2d0b06553471415ba43b8518699b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7790354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c17d3c446de3b3b0184c5bf0b89e3cda4591b3544987eb51e6dfcd0b85e3a62`

```dockerfile
```

-	Layers:
	-	`sha256:9a323eeb929a2cc17b89a601939eb804e95a90f76d0b700ee1b086b5ef213839`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 7.8 MB (7777362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:099adc2c10b85102b48b08c0b7bcbc0a276cd66d355f859aa93eafacb7e19dda`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:133f0d3eaac1b4da260229d539396bbff6d860d008aa964cadaa8b3b7bba0c36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181160179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd4541240bc8928703719966d82221409ce1bc25e5517deeafcee18eabdff9ed`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:16:58 GMT
MAINTAINER AntonOks
# Tue, 24 Nov 2026 06:16:58 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:16:58 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:16:58 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:42:40 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:42:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:42:40 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dacf7f1531c38a9330958dd49f965097481ac7feb033dbc834cab26a8120fa0`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 25.0 MB (25045881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873295aab70feef1201ca10ab9b403b459ce2e560c88640595466a3bb0b2c5ed`  
		Last Modified: Tue, 24 Nov 2026 05:33:30 GMT  
		Size: 67.6 MB (67633993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f721c37fcc04857fa7507b207e805c5bf1faf5ecc37080ec57a382946a12483`  
		Last Modified: Tue, 24 Nov 2026 06:42:56 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09790d70cc5a8e54bb86fb8a30c1758e24c22ce1ff3df723f3578da61611a258`  
		Last Modified: Tue, 24 Nov 2026 06:42:58 GMT  
		Size: 38.7 MB (38706980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:e8dfaa04b704fffab37494ad52cea4b92a7439bb3f517a8fcdf11af9cc16172c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7797499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86338691aa56d3e4b69a180fd5cd5e6d358c1622d7b84acb0576692771f721cf`

```dockerfile
```

-	Layers:
	-	`sha256:a170dc600d5a1923d99134c76c184fad99787877888c6a0295cc2a6632470dc2`  
		Last Modified: Tue, 24 Nov 2026 06:42:57 GMT  
		Size: 7.8 MB (7784400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82d242e0e4b7d677df8eba34c40eb53afbc7b82478a197f5dd8bbf58bd9d962f`  
		Last Modified: Tue, 24 Nov 2026 06:42:56 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:e522b8b8cafe4fbf76ed89926b6e884875fa8bf88ce107d50fdb7663b7a9105e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:b92eb368e49cdb176a4561f2af2e200d26e81263bcceb55e0f8b74569faf0031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182602238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27623e66fdbae08ab530b78efe27f6059481dc11c31269c061b0107a309d9bb2`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:18:18 GMT
MAINTAINER AntonOks
# Tue, 24 Nov 2026 06:18:18 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:18:18 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:18:18 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:35:17 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:35:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:35:17 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be6780dc18eb58a60fabb4c8bedb0c3ea852f4f3c7d199d0dd2ca073068d3c`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 25.7 MB (25650878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2acb1a7e2440113768de2c5a81ca8c6c89281a433d4e9f05eecc3082aac2c04`  
		Last Modified: Tue, 24 Nov 2026 05:21:36 GMT  
		Size: 67.8 MB (67818732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508d549e51ba98b91cadd0368533ba2274d786d30ac563201f2fde3822b87ae6`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef4b7773e762856a7f42b9be1477f2a485721f1e3e736fbbc816d3f692a24b0`  
		Last Modified: Tue, 24 Nov 2026 06:35:31 GMT  
		Size: 39.7 MB (39720103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:1e205e6a101f5de6953b1b5e73c5d10286e2d0b06553471415ba43b8518699b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7790354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c17d3c446de3b3b0184c5bf0b89e3cda4591b3544987eb51e6dfcd0b85e3a62`

```dockerfile
```

-	Layers:
	-	`sha256:9a323eeb929a2cc17b89a601939eb804e95a90f76d0b700ee1b086b5ef213839`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 7.8 MB (7777362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:099adc2c10b85102b48b08c0b7bcbc0a276cd66d355f859aa93eafacb7e19dda`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:133f0d3eaac1b4da260229d539396bbff6d860d008aa964cadaa8b3b7bba0c36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181160179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd4541240bc8928703719966d82221409ce1bc25e5517deeafcee18eabdff9ed`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:16:58 GMT
MAINTAINER AntonOks
# Tue, 24 Nov 2026 06:16:58 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:16:58 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:16:58 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:42:40 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:42:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:42:40 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dacf7f1531c38a9330958dd49f965097481ac7feb033dbc834cab26a8120fa0`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 25.0 MB (25045881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873295aab70feef1201ca10ab9b403b459ce2e560c88640595466a3bb0b2c5ed`  
		Last Modified: Tue, 24 Nov 2026 05:33:30 GMT  
		Size: 67.6 MB (67633993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f721c37fcc04857fa7507b207e805c5bf1faf5ecc37080ec57a382946a12483`  
		Last Modified: Tue, 24 Nov 2026 06:42:56 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09790d70cc5a8e54bb86fb8a30c1758e24c22ce1ff3df723f3578da61611a258`  
		Last Modified: Tue, 24 Nov 2026 06:42:58 GMT  
		Size: 38.7 MB (38706980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:e8dfaa04b704fffab37494ad52cea4b92a7439bb3f517a8fcdf11af9cc16172c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7797499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86338691aa56d3e4b69a180fd5cd5e6d358c1622d7b84acb0576692771f721cf`

```dockerfile
```

-	Layers:
	-	`sha256:a170dc600d5a1923d99134c76c184fad99787877888c6a0295cc2a6632470dc2`  
		Last Modified: Tue, 24 Nov 2026 06:42:57 GMT  
		Size: 7.8 MB (7784400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82d242e0e4b7d677df8eba34c40eb53afbc7b82478a197f5dd8bbf58bd9d962f`  
		Last Modified: Tue, 24 Nov 2026 06:42:56 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json
