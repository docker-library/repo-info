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
$ docker pull rakudo-star@sha256:aa608cea2b585d57c54bd1840007eac29ceb05d76b3d5e31438ae0796246de20
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:cbab4e7b6d10d89858ab9834ce2d07ed13fe1f97c1dc4c7795862aa456c125c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (182031604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742424c0c64195566a9ac2630a11d4baf993712d29587f2972d1de2c8a67d5b4`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:24:35 GMT
MAINTAINER Rob Hoelz
# Tue, 25 Aug 2026 02:24:35 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 25 Aug 2026 02:24:35 GMT
ARG rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:24:35 GMT
ENV rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:41:38 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 02:41:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 25 Aug 2026 02:41:38 GMT
CMD ["raku"]
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
	-	`sha256:11a25393efd72c82a963550a0f727a7076cdfea34f03a8e089047b405fa40b5f`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc4c37136532c960275f4cf7e63a8f567c09ad035ecd740a55a60ae985f4602`  
		Last Modified: Tue, 25 Aug 2026 02:41:55 GMT  
		Size: 45.1 MB (45061690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:a1d7798bee798e470dacd72a358c9898326e63f624211a14a0f9352bedde16af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7986464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2732269d882350a529b1f8e7c98a19916f1474ecda9338f1769f5c4df918a4`

```dockerfile
```

-	Layers:
	-	`sha256:4fac5fba9846607d1c1f2ea25cc84feed1bfe5ff1f721d619080bff7f613e2e4`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 8.0 MB (7973762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:569e6bcde7e0138a042c1271689c4e5da4d29401e53ac824a868a895594e1a39`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 12.7 KB (12702 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.06-bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:0df87eb814d1b14ab987fbc826c8f6133fe369b87fd7c21f84319004be66869f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179565840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33d8c82a9b5fe2699a98fd26e01cb469be237ba8f934bb837ed47c06b82dbe2`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:26:36 GMT
MAINTAINER Rob Hoelz
# Tue, 25 Aug 2026 02:26:36 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 25 Aug 2026 02:26:36 GMT
ARG rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:26:36 GMT
ENV rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:47:38 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 02:47:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 25 Aug 2026 02:47:38 GMT
CMD ["raku"]
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
	-	`sha256:7aee5526032ae19ea06bab4f35044f78fcc16a6ba193e03c905e5af9bf146f16`  
		Last Modified: Tue, 25 Aug 2026 02:47:54 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7129715e94d6c3e53fed3dfa188dc0b3fdbaf96850bafaa6a969d4f7ea200b57`  
		Last Modified: Tue, 25 Aug 2026 02:47:56 GMT  
		Size: 43.1 MB (43050114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:e1e25adc13544e521de9befd6553ad831f48b921b9b522fcdecde373811b2538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7992953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ccb00c979d24ce58b8464e6ba2b7076c3ba83e0d2e95833cdf08082527fdc6`

```dockerfile
```

-	Layers:
	-	`sha256:c9d52110144ec30d66d6ababe7ff44c6047c695e48637742c6d62fb327d602e6`  
		Last Modified: Tue, 25 Aug 2026 02:47:55 GMT  
		Size: 8.0 MB (7980155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3404a87aca70b5838543503bb9cd89a530b84c5d011af7f42c1b3e793f1f0630`  
		Last Modified: Tue, 25 Aug 2026 02:47:54 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.06-trixie`

```console
$ docker pull rakudo-star@sha256:c1f09cc660967267aa3dab215711e4435b8db18ea49040c8f03d35d63b85aa60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:b584bb4a7460793476c700a4628d98dd79d25416a24dbf961477d772368a7c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187853825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41bd53b2a54f6b14fc712350976ea867521a45a92afea2179096ee1420cafdf`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:24:04 GMT
MAINTAINER AntonOks
# Tue, 25 Aug 2026 02:24:04 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 25 Aug 2026 02:24:04 GMT
ARG rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:24:04 GMT
ENV rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:39:19 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 02:39:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 25 Aug 2026 02:39:19 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcb4bc17151d6c573143b2ff8d196c154c153f567a42a7ff6d35a28c3c2e5cb`  
		Last Modified: Tue, 25 Aug 2026 02:39:33 GMT  
		Size: 3.2 KB (3244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1815c86dade678da728f23287d82ddc14aa9c89f224188a8a6764f05c358d03`  
		Last Modified: Tue, 25 Aug 2026 02:39:35 GMT  
		Size: 45.1 MB (45073089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:6b886d43c13d4411a3fc88fdaefc759e46160fc31e8e4e717f447dd86d96bac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7788237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5faea167292b8af0ca01f2ff3056bfde3a83f57192f35a632aec58ec3b082b2e`

```dockerfile
```

-	Layers:
	-	`sha256:08969a44dc0d8542746c5a758c8479a4b6ebcb0fe369471a01ff295c6a79f422`  
		Last Modified: Tue, 25 Aug 2026 02:39:34 GMT  
		Size: 7.8 MB (7775244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f82dcb781080876ed9cc96407bf3f1ee701b882139f6391781e9ec355378311`  
		Last Modified: Tue, 25 Aug 2026 02:39:33 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.06-trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:00104cc2dabf3d5a50cfc5dd7ed9c6e0eae349e9b33662b37e82476852005d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185407089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd37b0ec6e5b60cbdba02c5c269de680323a452831340b146c61e4f3ad6d3ec8`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:26:35 GMT
MAINTAINER AntonOks
# Tue, 25 Aug 2026 02:26:35 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 25 Aug 2026 02:26:35 GMT
ARG rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:26:35 GMT
ENV rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:46:42 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 02:46:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 25 Aug 2026 02:46:42 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c91c210fc414583dbdbbf6e59b2ae4477a280bb07d617834061b9fa1f769d3d`  
		Last Modified: Tue, 25 Aug 2026 02:46:59 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372a2ac9e2bd47013384fa41db87cd48272a947d35378a98550a556502c0df1b`  
		Last Modified: Tue, 25 Aug 2026 02:47:00 GMT  
		Size: 43.1 MB (43066549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:178480e0f7345ee905aa3d4a6fd8b29ba1e612a28d7feb8aeee84a45c090d5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7795381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9769f4c1f0330c80b7ff8a8cf533de890cae95ccb3fdb36273f032f2aa62f905`

```dockerfile
```

-	Layers:
	-	`sha256:3dc691bf7a54d85823926784dc3b0a65fd1c7b31d134fe88748396385dfa14ea`  
		Last Modified: Tue, 25 Aug 2026 02:46:59 GMT  
		Size: 7.8 MB (7782282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8cb6dc805c15bd1b60adbfcf602880eff243bb7e9642aa05f35be4f09a4d78a`  
		Last Modified: Tue, 25 Aug 2026 02:46:59 GMT  
		Size: 13.1 KB (13099 bytes)  
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
$ docker pull rakudo-star@sha256:aa608cea2b585d57c54bd1840007eac29ceb05d76b3d5e31438ae0796246de20
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:cbab4e7b6d10d89858ab9834ce2d07ed13fe1f97c1dc4c7795862aa456c125c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (182031604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742424c0c64195566a9ac2630a11d4baf993712d29587f2972d1de2c8a67d5b4`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:24:35 GMT
MAINTAINER Rob Hoelz
# Tue, 25 Aug 2026 02:24:35 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 25 Aug 2026 02:24:35 GMT
ARG rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:24:35 GMT
ENV rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:41:38 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 02:41:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 25 Aug 2026 02:41:38 GMT
CMD ["raku"]
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
	-	`sha256:11a25393efd72c82a963550a0f727a7076cdfea34f03a8e089047b405fa40b5f`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc4c37136532c960275f4cf7e63a8f567c09ad035ecd740a55a60ae985f4602`  
		Last Modified: Tue, 25 Aug 2026 02:41:55 GMT  
		Size: 45.1 MB (45061690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:a1d7798bee798e470dacd72a358c9898326e63f624211a14a0f9352bedde16af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7986464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2732269d882350a529b1f8e7c98a19916f1474ecda9338f1769f5c4df918a4`

```dockerfile
```

-	Layers:
	-	`sha256:4fac5fba9846607d1c1f2ea25cc84feed1bfe5ff1f721d619080bff7f613e2e4`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 8.0 MB (7973762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:569e6bcde7e0138a042c1271689c4e5da4d29401e53ac824a868a895594e1a39`  
		Last Modified: Tue, 25 Aug 2026 02:41:54 GMT  
		Size: 12.7 KB (12702 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:0df87eb814d1b14ab987fbc826c8f6133fe369b87fd7c21f84319004be66869f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179565840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33d8c82a9b5fe2699a98fd26e01cb469be237ba8f934bb837ed47c06b82dbe2`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:26:36 GMT
MAINTAINER Rob Hoelz
# Tue, 25 Aug 2026 02:26:36 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 25 Aug 2026 02:26:36 GMT
ARG rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:26:36 GMT
ENV rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:47:38 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 02:47:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 25 Aug 2026 02:47:38 GMT
CMD ["raku"]
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
	-	`sha256:7aee5526032ae19ea06bab4f35044f78fcc16a6ba193e03c905e5af9bf146f16`  
		Last Modified: Tue, 25 Aug 2026 02:47:54 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7129715e94d6c3e53fed3dfa188dc0b3fdbaf96850bafaa6a969d4f7ea200b57`  
		Last Modified: Tue, 25 Aug 2026 02:47:56 GMT  
		Size: 43.1 MB (43050114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:e1e25adc13544e521de9befd6553ad831f48b921b9b522fcdecde373811b2538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7992953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ccb00c979d24ce58b8464e6ba2b7076c3ba83e0d2e95833cdf08082527fdc6`

```dockerfile
```

-	Layers:
	-	`sha256:c9d52110144ec30d66d6ababe7ff44c6047c695e48637742c6d62fb327d602e6`  
		Last Modified: Tue, 25 Aug 2026 02:47:55 GMT  
		Size: 8.0 MB (7980155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3404a87aca70b5838543503bb9cd89a530b84c5d011af7f42c1b3e793f1f0630`  
		Last Modified: Tue, 25 Aug 2026 02:47:54 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:c1f09cc660967267aa3dab215711e4435b8db18ea49040c8f03d35d63b85aa60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:b584bb4a7460793476c700a4628d98dd79d25416a24dbf961477d772368a7c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187853825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41bd53b2a54f6b14fc712350976ea867521a45a92afea2179096ee1420cafdf`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:24:04 GMT
MAINTAINER AntonOks
# Tue, 25 Aug 2026 02:24:04 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 25 Aug 2026 02:24:04 GMT
ARG rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:24:04 GMT
ENV rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:39:19 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 02:39:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 25 Aug 2026 02:39:19 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcb4bc17151d6c573143b2ff8d196c154c153f567a42a7ff6d35a28c3c2e5cb`  
		Last Modified: Tue, 25 Aug 2026 02:39:33 GMT  
		Size: 3.2 KB (3244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1815c86dade678da728f23287d82ddc14aa9c89f224188a8a6764f05c358d03`  
		Last Modified: Tue, 25 Aug 2026 02:39:35 GMT  
		Size: 45.1 MB (45073089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:6b886d43c13d4411a3fc88fdaefc759e46160fc31e8e4e717f447dd86d96bac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7788237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5faea167292b8af0ca01f2ff3056bfde3a83f57192f35a632aec58ec3b082b2e`

```dockerfile
```

-	Layers:
	-	`sha256:08969a44dc0d8542746c5a758c8479a4b6ebcb0fe369471a01ff295c6a79f422`  
		Last Modified: Tue, 25 Aug 2026 02:39:34 GMT  
		Size: 7.8 MB (7775244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f82dcb781080876ed9cc96407bf3f1ee701b882139f6391781e9ec355378311`  
		Last Modified: Tue, 25 Aug 2026 02:39:33 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:00104cc2dabf3d5a50cfc5dd7ed9c6e0eae349e9b33662b37e82476852005d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185407089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd37b0ec6e5b60cbdba02c5c269de680323a452831340b146c61e4f3ad6d3ec8`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:26:35 GMT
MAINTAINER AntonOks
# Tue, 25 Aug 2026 02:26:35 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 25 Aug 2026 02:26:35 GMT
ARG rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:26:35 GMT
ENV rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:46:42 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 02:46:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 25 Aug 2026 02:46:42 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c91c210fc414583dbdbbf6e59b2ae4477a280bb07d617834061b9fa1f769d3d`  
		Last Modified: Tue, 25 Aug 2026 02:46:59 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372a2ac9e2bd47013384fa41db87cd48272a947d35378a98550a556502c0df1b`  
		Last Modified: Tue, 25 Aug 2026 02:47:00 GMT  
		Size: 43.1 MB (43066549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:178480e0f7345ee905aa3d4a6fd8b29ba1e612a28d7feb8aeee84a45c090d5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7795381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9769f4c1f0330c80b7ff8a8cf533de890cae95ccb3fdb36273f032f2aa62f905`

```dockerfile
```

-	Layers:
	-	`sha256:3dc691bf7a54d85823926784dc3b0a65fd1c7b31d134fe88748396385dfa14ea`  
		Last Modified: Tue, 25 Aug 2026 02:46:59 GMT  
		Size: 7.8 MB (7782282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8cb6dc805c15bd1b60adbfcf602880eff243bb7e9642aa05f35be4f09a4d78a`  
		Last Modified: Tue, 25 Aug 2026 02:46:59 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:c1f09cc660967267aa3dab215711e4435b8db18ea49040c8f03d35d63b85aa60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:b584bb4a7460793476c700a4628d98dd79d25416a24dbf961477d772368a7c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187853825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41bd53b2a54f6b14fc712350976ea867521a45a92afea2179096ee1420cafdf`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:24:04 GMT
MAINTAINER AntonOks
# Tue, 25 Aug 2026 02:24:04 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 25 Aug 2026 02:24:04 GMT
ARG rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:24:04 GMT
ENV rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:39:19 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 02:39:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 25 Aug 2026 02:39:19 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcb4bc17151d6c573143b2ff8d196c154c153f567a42a7ff6d35a28c3c2e5cb`  
		Last Modified: Tue, 25 Aug 2026 02:39:33 GMT  
		Size: 3.2 KB (3244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1815c86dade678da728f23287d82ddc14aa9c89f224188a8a6764f05c358d03`  
		Last Modified: Tue, 25 Aug 2026 02:39:35 GMT  
		Size: 45.1 MB (45073089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:6b886d43c13d4411a3fc88fdaefc759e46160fc31e8e4e717f447dd86d96bac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7788237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5faea167292b8af0ca01f2ff3056bfde3a83f57192f35a632aec58ec3b082b2e`

```dockerfile
```

-	Layers:
	-	`sha256:08969a44dc0d8542746c5a758c8479a4b6ebcb0fe369471a01ff295c6a79f422`  
		Last Modified: Tue, 25 Aug 2026 02:39:34 GMT  
		Size: 7.8 MB (7775244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f82dcb781080876ed9cc96407bf3f1ee701b882139f6391781e9ec355378311`  
		Last Modified: Tue, 25 Aug 2026 02:39:33 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:00104cc2dabf3d5a50cfc5dd7ed9c6e0eae349e9b33662b37e82476852005d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185407089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd37b0ec6e5b60cbdba02c5c269de680323a452831340b146c61e4f3ad6d3ec8`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:26:35 GMT
MAINTAINER AntonOks
# Tue, 25 Aug 2026 02:26:35 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 25 Aug 2026 02:26:35 GMT
ARG rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:26:35 GMT
ENV rakudo_version=2026.06-01
# Tue, 25 Aug 2026 02:46:42 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 25 Aug 2026 02:46:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 25 Aug 2026 02:46:42 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c91c210fc414583dbdbbf6e59b2ae4477a280bb07d617834061b9fa1f769d3d`  
		Last Modified: Tue, 25 Aug 2026 02:46:59 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372a2ac9e2bd47013384fa41db87cd48272a947d35378a98550a556502c0df1b`  
		Last Modified: Tue, 25 Aug 2026 02:47:00 GMT  
		Size: 43.1 MB (43066549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:178480e0f7345ee905aa3d4a6fd8b29ba1e612a28d7feb8aeee84a45c090d5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7795381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9769f4c1f0330c80b7ff8a8cf533de890cae95ccb3fdb36273f032f2aa62f905`

```dockerfile
```

-	Layers:
	-	`sha256:3dc691bf7a54d85823926784dc3b0a65fd1c7b31d134fe88748396385dfa14ea`  
		Last Modified: Tue, 25 Aug 2026 02:46:59 GMT  
		Size: 7.8 MB (7782282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8cb6dc805c15bd1b60adbfcf602880eff243bb7e9642aa05f35be4f09a4d78a`  
		Last Modified: Tue, 25 Aug 2026 02:46:59 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json
