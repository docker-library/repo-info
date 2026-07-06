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

**does not exist** (yet?)

## `rakudo-star:2026.06-bookworm`

**does not exist** (yet?)

## `rakudo-star:2026.06-trixie`

**does not exist** (yet?)

## `rakudo-star:alpine`

```console
$ docker pull rakudo-star@sha256:47471542197ec18986408525d4e60767e13408fe1cc4a5189fd42fce9d9bd32b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:49ac5f717e5894d3dd9031cfcdc2d234cb1851e0b3dfa2f6b7d078ba9c6976ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52848910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32337d12bcd5ddc338959cd6b7648a0540161b6ffc9980ec7976a0015faecf66`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:20:25 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Tue, 16 Jun 2026 00:38:51 GMT
ARG rakudo_version=2026.03-01
# Tue, 16 Jun 2026 00:38:51 GMT
ENV rakudo_version=2026.03-01
# Tue, 16 Jun 2026 00:38:51 GMT
# ARGS: rakudo_version=2026.03-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Tue, 16 Jun 2026 00:38:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 16 Jun 2026 00:38:51 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28d4423881da9746e34dcee6f795e2a4b95d273726a5e02ff4e9e0bbe93de9e`  
		Last Modified: Tue, 16 Jun 2026 00:39:03 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6a325e3cac375651908f9aaaa1b08af0124d54f3ef4f8f701607f590c5689d`  
		Last Modified: Tue, 16 Jun 2026 00:39:04 GMT  
		Size: 49.0 MB (49001573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:255225224384b9a2bb9b558338194a4c43451cf0adb4f785041f790c33d18cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cbad4f83f2b3724802bd6c0967df5c350324eb704f43804a52a21207083c520`

```dockerfile
```

-	Layers:
	-	`sha256:475ec7d0e837749a9b1a123477b7e094a30d9ba0501ee5d20a1c5edd28df1f6f`  
		Last Modified: Tue, 16 Jun 2026 00:39:03 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eca4b3bb6b207787d6f18249e1671e5eb2a159124a8660f95b8d4f47fe359047`  
		Last Modified: Tue, 16 Jun 2026 00:39:03 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:c830c74f895e4c7b847e2f6b126e68eab62542451317ba9838e0c4505ffe070c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52910445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43609fcbd4c16bbbe54046fdc52082193de7e2b037fc2f98b3df641c09b27428`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:20:37 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Tue, 16 Jun 2026 00:41:10 GMT
ARG rakudo_version=2026.03-01
# Tue, 16 Jun 2026 00:41:10 GMT
ENV rakudo_version=2026.03-01
# Tue, 16 Jun 2026 00:41:10 GMT
# ARGS: rakudo_version=2026.03-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Tue, 16 Jun 2026 00:41:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 16 Jun 2026 00:41:10 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba47cbeed4ca8e9d85d016103200ab5d96f4ad81840b654251b18eb584c6d47`  
		Last Modified: Tue, 16 Jun 2026 00:41:22 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1caa54e5fe82f1206203feae3d0c8296f23bed68e6a47715faa870a518acd000`  
		Last Modified: Tue, 16 Jun 2026 00:41:23 GMT  
		Size: 48.7 MB (48726461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:05e35cac90ae951f92bd1229803323f9c455c4e464985b9b3389ebeccd29a0f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26e150506308d1f82e93a47a77dda8c7dab4a6a5ac0a41ccef3338cf90fa0cc`

```dockerfile
```

-	Layers:
	-	`sha256:d0bb0edfeec7e152dbcd0d92323d822a2b49e18fe37478b247c4ff48cde8de82`  
		Last Modified: Tue, 16 Jun 2026 00:41:22 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf4501f1a03d7ace35b54b93755ec3809e839676e2b398046e34c8dd79e1886`  
		Last Modified: Tue, 16 Jun 2026 00:41:22 GMT  
		Size: 11.8 KB (11813 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:bookworm`

```console
$ docker pull rakudo-star@sha256:02f021e41f354f1708367f3a412bd277b1edc176f108a5da3826de21b6facfbe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:6dd1578f21f2f609d3024a1cdddbf888dde843a7a74e6997204303c5e820cf5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179344644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12f60a9979ccb86ad0b1740bad28900130e7bf4a41ac49b306bb1aca3322795`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:23:34 GMT
MAINTAINER Rob Hoelz
# Wed, 24 Jun 2026 03:23:34 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 24 Jun 2026 03:23:34 GMT
ARG rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:23:34 GMT
ENV rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:39:09 GMT
# ARGS: rakudo_version=2026.03-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 03:39:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 24 Jun 2026 03:39:09 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fd7bf6f6036613e20f62549df75ed694b99118002358bea5a81baf3929d1ff`  
		Last Modified: Wed, 24 Jun 2026 01:41:33 GMT  
		Size: 24.0 MB (24044046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791c68bc2063683c3d15907b8ed1b777cf14ca153c6f8e5b12db0868dfa7e38a`  
		Last Modified: Wed, 24 Jun 2026 02:28:33 GMT  
		Size: 64.4 MB (64404017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3e49a9686eb4661e6b0108a6f2b0e99d2ef60deda0fcfb55fc63ded9b77551`  
		Last Modified: Wed, 24 Jun 2026 03:39:25 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7ed8efee6f2ba034d18ca719784c564e9368d4b6334342d1a4edcf2ebdbed0`  
		Last Modified: Wed, 24 Jun 2026 03:39:26 GMT  
		Size: 42.4 MB (42391133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:7482027b7c79b67de2889fc1715a880057b66b036d1cb2162b2a2992bc609b25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7981190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926282729ca22c86cd5270a0bf5e00b749b60314fd66de150b83653a230a0978`

```dockerfile
```

-	Layers:
	-	`sha256:0941203d06bdcb2ef0d12b70f1947a5fe5c526710661cbaae10fe80a98c076d0`  
		Last Modified: Wed, 24 Jun 2026 03:39:25 GMT  
		Size: 8.0 MB (7968487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65eb31de8eb5a967a2e42ef331304ba23a13be953a2b5830a04faaf114f490f7`  
		Last Modified: Wed, 24 Jun 2026 03:39:25 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:f8ec8a80f2bfa685d8032968fe821ba902cb8c35da113021ec38565e7f13460c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.9 MB (176894111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40586da176f0025d2f7d2db023498832d19d59bcba562e668b33b55996a2081f`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:23:22 GMT
MAINTAINER Rob Hoelz
# Wed, 24 Jun 2026 03:23:22 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 24 Jun 2026 03:23:22 GMT
ARG rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:23:22 GMT
ENV rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:44:20 GMT
# ARGS: rakudo_version=2026.03-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 03:44:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 24 Jun 2026 03:44:20 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebca214f1a4b66acfdb0bd20aa3ee139d1747885ef4b0f3d07aa2a68459230`  
		Last Modified: Wed, 24 Jun 2026 01:44:48 GMT  
		Size: 23.6 MB (23613316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533bb0e918720911be6cb7a1a5ba9ad0e1a308fcbf24961a23aba0cd220df6cf`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 64.5 MB (64487706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c32b61f24bfeac908f4fa80138b057694e491f1f04f3e5eaaa1b86afbab6e71`  
		Last Modified: Wed, 24 Jun 2026 03:44:35 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a014c5abba4a415526b0a1b12eb5a0269bee2bbb48507a9c743ee528df5c7e`  
		Last Modified: Wed, 24 Jun 2026 03:44:37 GMT  
		Size: 40.4 MB (40400651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:02e30c7df02694647fa2f6b014806452a4138867f44b95177b32d8d2080e52e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7987678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0b254bf0b6acb64d5068f1a59583d40bad801ef4e8580f564f878305dadd49`

```dockerfile
```

-	Layers:
	-	`sha256:a59ec6b761b08db7d79711c26dc8bc2b96c5fa58bbd387bc7d8f48901e036e49`  
		Last Modified: Wed, 24 Jun 2026 03:44:36 GMT  
		Size: 8.0 MB (7974880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51e67d04ce7721afb4e950d99bd49560909dc0a7ab6eae5b1cba44eee1a47fea`  
		Last Modified: Wed, 24 Jun 2026 03:44:35 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:d647e6a4bdd94b23b739c2948ae20d541a8e90eb60035b852fdf25a819e696e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:386d31d900fada8f5be9cc0b4fa746c8ddece74063b7e8544cc4f6aa9ae3f9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185130703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b353603fb398e9f0ca86d8c408fd7773ea6d619c9df5468b25eb67565af31b00`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:23:33 GMT
MAINTAINER AntonOks
# Wed, 24 Jun 2026 03:23:33 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 24 Jun 2026 03:23:33 GMT
ARG rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:23:33 GMT
ENV rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:38:47 GMT
# ARGS: rakudo_version=2026.03-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 03:38:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 24 Jun 2026 03:38:47 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280f7a0b1b651497042babeb1f45116231df6f0965ec64af328c96af9ed26d05`  
		Last Modified: Wed, 24 Jun 2026 03:39:03 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22c1a545811f69fc4ca940d28ad6d07d0ce0389b10919f52566d9de055d2fe0`  
		Last Modified: Wed, 24 Jun 2026 03:39:05 GMT  
		Size: 42.4 MB (42397135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:ed7ed5b8a272afc479544a5ed5d3af100b1dcda7c053d013e747e21616336d0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad1b93ff2859c5fe8b6ad4287c26fdfb4b33464ffbd4f468f603d414f9c2d40`

```dockerfile
```

-	Layers:
	-	`sha256:00a0581d74ec6c6647b1049afbfaf2d77ec79387a0649e025a69fe3f5be80ff8`  
		Last Modified: Wed, 24 Jun 2026 03:39:03 GMT  
		Size: 7.8 MB (7770924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f875c89fd9303506322249f4186c9e5633d3c9df6580d22ee7b13997b6e31a5`  
		Last Modified: Wed, 24 Jun 2026 03:39:03 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:669137eea8dbc0a9b392d3f86be4ffd86d2a084f1bbe514057557197af2efee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182671538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1804ff2d42150a2b206f97a6e2108ab6ade28becd4f126df84b135e2e55dbe`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:23:15 GMT
MAINTAINER AntonOks
# Wed, 24 Jun 2026 03:23:15 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 24 Jun 2026 03:23:15 GMT
ARG rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:23:15 GMT
ENV rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:42:38 GMT
# ARGS: rakudo_version=2026.03-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 03:42:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 24 Jun 2026 03:42:38 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd7f827aa2fe5d90569bb454079cfc0c20a86a2a412068e3734e539f84129f8`  
		Last Modified: Wed, 24 Jun 2026 03:42:53 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65cdac8d08049871904f58f78020b6fd3ab868e2f1909c4375e907978533532a`  
		Last Modified: Wed, 24 Jun 2026 03:42:54 GMT  
		Size: 40.4 MB (40370398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:2c336fbd88338c90e4ac68e889e850179b455430d6fd0e00ca59116609e71c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa983ca6b609c046a9dc0c1cc619624923a04fc7476b52b0f93c8c6b3ab3092`

```dockerfile
```

-	Layers:
	-	`sha256:a1e1142ed83957128fc7a6af0610e881c5e29eeec248f04fb411dd0507138125`  
		Last Modified: Wed, 24 Jun 2026 03:42:53 GMT  
		Size: 7.8 MB (7777962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3447eecc7749ce26164343879cc4442033d37c150c799195b97adbbc2c8d712`  
		Last Modified: Wed, 24 Jun 2026 03:42:53 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:d647e6a4bdd94b23b739c2948ae20d541a8e90eb60035b852fdf25a819e696e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:386d31d900fada8f5be9cc0b4fa746c8ddece74063b7e8544cc4f6aa9ae3f9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185130703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b353603fb398e9f0ca86d8c408fd7773ea6d619c9df5468b25eb67565af31b00`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:23:33 GMT
MAINTAINER AntonOks
# Wed, 24 Jun 2026 03:23:33 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 24 Jun 2026 03:23:33 GMT
ARG rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:23:33 GMT
ENV rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:38:47 GMT
# ARGS: rakudo_version=2026.03-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 03:38:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 24 Jun 2026 03:38:47 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280f7a0b1b651497042babeb1f45116231df6f0965ec64af328c96af9ed26d05`  
		Last Modified: Wed, 24 Jun 2026 03:39:03 GMT  
		Size: 3.2 KB (3241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22c1a545811f69fc4ca940d28ad6d07d0ce0389b10919f52566d9de055d2fe0`  
		Last Modified: Wed, 24 Jun 2026 03:39:05 GMT  
		Size: 42.4 MB (42397135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:ed7ed5b8a272afc479544a5ed5d3af100b1dcda7c053d013e747e21616336d0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad1b93ff2859c5fe8b6ad4287c26fdfb4b33464ffbd4f468f603d414f9c2d40`

```dockerfile
```

-	Layers:
	-	`sha256:00a0581d74ec6c6647b1049afbfaf2d77ec79387a0649e025a69fe3f5be80ff8`  
		Last Modified: Wed, 24 Jun 2026 03:39:03 GMT  
		Size: 7.8 MB (7770924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f875c89fd9303506322249f4186c9e5633d3c9df6580d22ee7b13997b6e31a5`  
		Last Modified: Wed, 24 Jun 2026 03:39:03 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:669137eea8dbc0a9b392d3f86be4ffd86d2a084f1bbe514057557197af2efee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182671538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1804ff2d42150a2b206f97a6e2108ab6ade28becd4f126df84b135e2e55dbe`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:23:15 GMT
MAINTAINER AntonOks
# Wed, 24 Jun 2026 03:23:15 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 24 Jun 2026 03:23:15 GMT
ARG rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:23:15 GMT
ENV rakudo_version=2026.03-01
# Wed, 24 Jun 2026 03:42:38 GMT
# ARGS: rakudo_version=2026.03-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 24 Jun 2026 03:42:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 24 Jun 2026 03:42:38 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd7f827aa2fe5d90569bb454079cfc0c20a86a2a412068e3734e539f84129f8`  
		Last Modified: Wed, 24 Jun 2026 03:42:53 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65cdac8d08049871904f58f78020b6fd3ab868e2f1909c4375e907978533532a`  
		Last Modified: Wed, 24 Jun 2026 03:42:54 GMT  
		Size: 40.4 MB (40370398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:2c336fbd88338c90e4ac68e889e850179b455430d6fd0e00ca59116609e71c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa983ca6b609c046a9dc0c1cc619624923a04fc7476b52b0f93c8c6b3ab3092`

```dockerfile
```

-	Layers:
	-	`sha256:a1e1142ed83957128fc7a6af0610e881c5e29eeec248f04fb411dd0507138125`  
		Last Modified: Wed, 24 Jun 2026 03:42:53 GMT  
		Size: 7.8 MB (7777962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3447eecc7749ce26164343879cc4442033d37c150c799195b97adbbc2c8d712`  
		Last Modified: Wed, 24 Jun 2026 03:42:53 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json
