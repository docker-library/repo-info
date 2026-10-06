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
$ docker pull rakudo-star@sha256:fe29762ca2202555cd386fbef0f4d0001f25f81b2a6995870414d9b3edcc4773
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:be30b935ec273036234091a354886d1edc705d7ca6cd85220da2ab561f1c7b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.3 MB (184341539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a34e569aebcbe463a8077b8662998afa7e46a9356b88d12ad951898cde32fa`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:17:01 GMT
MAINTAINER Rob Hoelz
# Tue, 06 Oct 2026 03:17:01 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 06 Oct 2026 03:17:01 GMT
ARG rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:17:01 GMT
ENV rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:32:31 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 03:32:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 06 Oct 2026 03:32:31 GMT
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
	-	`sha256:4547dfddcbe6a24b9c0cb10494cd151ad4d0c0d2e18879aa776ac78d247d3993`  
		Last Modified: Tue, 06 Oct 2026 03:32:45 GMT  
		Size: 3.2 KB (3235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c1352f771beba4ed85b5eeac9619c03d06e44c6bd634a606f4f72d166c1cb0`  
		Last Modified: Tue, 06 Oct 2026 03:32:47 GMT  
		Size: 45.2 MB (45229962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:7aff05e454852533e9b1d954783e7652ac1c5d11760a0cf402e16bc976e50d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064a8c56a18146d00ff0a952d2962048c7dc647edab9c4f8db447d454918cdcb`

```dockerfile
```

-	Layers:
	-	`sha256:514cab8203277f6274c7e4405fe48cc455999044d261818fb5c094ed13a54318`  
		Last Modified: Tue, 06 Oct 2026 03:32:46 GMT  
		Size: 8.0 MB (7973023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddb1a52f38dae27891922ed5829f076122c245b82d344274db8113cdafad8c54`  
		Last Modified: Tue, 06 Oct 2026 03:32:46 GMT  
		Size: 12.7 KB (12702 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.06-bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:1bc25ed812b43f6a4c492184d669f9b1ee59672c32334660d0fe2f6f5ae1c91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (181028785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9fbfaabf6b7d920355a05426ea5eda2674a351562ce1397c0f14c0e0cca4ee5`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:16:58 GMT
MAINTAINER Rob Hoelz
# Tue, 06 Oct 2026 03:16:58 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 06 Oct 2026 03:16:58 GMT
ARG rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:16:58 GMT
ENV rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:37:28 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 03:37:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 06 Oct 2026 03:37:28 GMT
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
	-	`sha256:97b19bcc39c3ea2da67d615a26f8a1110ffce1142fa653cef4276eb8ac89be7a`  
		Last Modified: Tue, 06 Oct 2026 03:37:44 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1760b49e5fb0122054194dfd14bbec7ec18d57b7688a4592ccc58cb1a6785c90`  
		Last Modified: Tue, 06 Oct 2026 03:37:46 GMT  
		Size: 42.4 MB (42411910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:2384428b29d42c6198b80d1f81c61d524a6102122cc3389e7f36b6bc1c13936a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7992214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99adb9dd670ef4430fd518fb4e56892d61edae3329e1f76602d40549baa2b057`

```dockerfile
```

-	Layers:
	-	`sha256:1f51e34271af37d61d55c48a25d1e7f7facd65b4365cb9fe12ffc1c16e86fec9`  
		Last Modified: Tue, 06 Oct 2026 03:37:45 GMT  
		Size: 8.0 MB (7979416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:934db15d1a6e81cb6e8e2264421ab15026095f0038b865a2f346427da19c728e`  
		Last Modified: Tue, 06 Oct 2026 03:37:45 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:2026.06-trixie`

```console
$ docker pull rakudo-star@sha256:eaa067bd45f2864643af85d6cf25ab01db4ce5231d60ae7f3886560066c0c7f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:2026.06-trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:fb62b820ba78b6acc2e20fd69814638be4e0339bf9571f91654b5231599371c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188088750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afaf1b5f4f0462f3d6ccc71d672ff620651a5a74163e6f58824723696348b4dc`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:54 GMT
MAINTAINER AntonOks
# Tue, 06 Oct 2026 03:16:54 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 06 Oct 2026 03:16:54 GMT
ARG rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:16:54 GMT
ENV rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:31:44 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 03:31:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 06 Oct 2026 03:31:44 GMT
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
	-	`sha256:3282a5a2f25100fce3a5d562279a09b576d369333dd95d3a26db9c470ea8a15c`  
		Last Modified: Tue, 06 Oct 2026 03:31:58 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb9424e33507edb4d6351fcc7d891853e16653f2225e9a1df07a94dcaca8967`  
		Last Modified: Tue, 06 Oct 2026 03:32:00 GMT  
		Size: 45.2 MB (45244875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:c6524a491c5e20ff40637df99780146c987a3cfc367c30497b5d6394c2e24ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:560c0a87c673ffffe787bf0fd76a273e903df40f167fead3ac7eec2cf2b74872`

```dockerfile
```

-	Layers:
	-	`sha256:18923350af62a4533bc86c93f149c40e9e52408b32c964928bfaa06841528ed7`  
		Last Modified: Tue, 06 Oct 2026 03:31:59 GMT  
		Size: 7.8 MB (7780187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce8da1ebc9aa336f370f93380d61a54b82b2e7d7bc7cba125d8eaa1bbf40c4b5`  
		Last Modified: Tue, 06 Oct 2026 03:31:58 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:2026.06-trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:bd8fd4bb262df6b0c525561717d1979849821df1f698f7b64a38e9c7ac7653da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.7 MB (185672534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15041faed4d30967e3a4c437b67f52efba8acb028bf217d24cc427d10f9e40e`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:55 GMT
MAINTAINER AntonOks
# Tue, 06 Oct 2026 03:16:55 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 06 Oct 2026 03:16:55 GMT
ARG rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:16:55 GMT
ENV rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:36:45 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 03:36:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 06 Oct 2026 03:36:45 GMT
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
	-	`sha256:c3d6884d690a0ebd8cfdb6612bddd282ac71dbb4b12bde89ca9adead0abaadf1`  
		Last Modified: Tue, 06 Oct 2026 03:37:02 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead1173d6d7645a9a022156d3c75b17c9f2714ddea95a560f0750e5de432986c`  
		Last Modified: Tue, 06 Oct 2026 03:37:03 GMT  
		Size: 43.2 MB (43246919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:2026.06-trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:024d10aada1d2176f5c193e102e7675fd91941d54061d3823bcc4c7aed4cfb32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7800325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25208c490de5cfdd480c90e3d5623a45bce2d493db700662494ab2539d65ff79`

```dockerfile
```

-	Layers:
	-	`sha256:98d6d834b4c5f4a27ec4275717b2a22f2d085040fc93e6eff178ae1cc98056d5`  
		Last Modified: Tue, 06 Oct 2026 03:37:02 GMT  
		Size: 7.8 MB (7787225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea8c47e860458f15d320d0f48242b0c4bb5d93898e504996c4ba9920d9a7b97`  
		Last Modified: Tue, 06 Oct 2026 03:37:02 GMT  
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
$ docker pull rakudo-star@sha256:fe29762ca2202555cd386fbef0f4d0001f25f81b2a6995870414d9b3edcc4773
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:be30b935ec273036234091a354886d1edc705d7ca6cd85220da2ab561f1c7b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.3 MB (184341539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a34e569aebcbe463a8077b8662998afa7e46a9356b88d12ad951898cde32fa`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:17:01 GMT
MAINTAINER Rob Hoelz
# Tue, 06 Oct 2026 03:17:01 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 06 Oct 2026 03:17:01 GMT
ARG rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:17:01 GMT
ENV rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:32:31 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 03:32:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 06 Oct 2026 03:32:31 GMT
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
	-	`sha256:4547dfddcbe6a24b9c0cb10494cd151ad4d0c0d2e18879aa776ac78d247d3993`  
		Last Modified: Tue, 06 Oct 2026 03:32:45 GMT  
		Size: 3.2 KB (3235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c1352f771beba4ed85b5eeac9619c03d06e44c6bd634a606f4f72d166c1cb0`  
		Last Modified: Tue, 06 Oct 2026 03:32:47 GMT  
		Size: 45.2 MB (45229962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:7aff05e454852533e9b1d954783e7652ac1c5d11760a0cf402e16bc976e50d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064a8c56a18146d00ff0a952d2962048c7dc647edab9c4f8db447d454918cdcb`

```dockerfile
```

-	Layers:
	-	`sha256:514cab8203277f6274c7e4405fe48cc455999044d261818fb5c094ed13a54318`  
		Last Modified: Tue, 06 Oct 2026 03:32:46 GMT  
		Size: 8.0 MB (7973023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddb1a52f38dae27891922ed5829f076122c245b82d344274db8113cdafad8c54`  
		Last Modified: Tue, 06 Oct 2026 03:32:46 GMT  
		Size: 12.7 KB (12702 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:1bc25ed812b43f6a4c492184d669f9b1ee59672c32334660d0fe2f6f5ae1c91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (181028785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9fbfaabf6b7d920355a05426ea5eda2674a351562ce1397c0f14c0e0cca4ee5`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:16:58 GMT
MAINTAINER Rob Hoelz
# Tue, 06 Oct 2026 03:16:58 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 06 Oct 2026 03:16:58 GMT
ARG rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:16:58 GMT
ENV rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:37:28 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 03:37:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 06 Oct 2026 03:37:28 GMT
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
	-	`sha256:97b19bcc39c3ea2da67d615a26f8a1110ffce1142fa653cef4276eb8ac89be7a`  
		Last Modified: Tue, 06 Oct 2026 03:37:44 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1760b49e5fb0122054194dfd14bbec7ec18d57b7688a4592ccc58cb1a6785c90`  
		Last Modified: Tue, 06 Oct 2026 03:37:46 GMT  
		Size: 42.4 MB (42411910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:2384428b29d42c6198b80d1f81c61d524a6102122cc3389e7f36b6bc1c13936a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7992214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99adb9dd670ef4430fd518fb4e56892d61edae3329e1f76602d40549baa2b057`

```dockerfile
```

-	Layers:
	-	`sha256:1f51e34271af37d61d55c48a25d1e7f7facd65b4365cb9fe12ffc1c16e86fec9`  
		Last Modified: Tue, 06 Oct 2026 03:37:45 GMT  
		Size: 8.0 MB (7979416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:934db15d1a6e81cb6e8e2264421ab15026095f0038b865a2f346427da19c728e`  
		Last Modified: Tue, 06 Oct 2026 03:37:45 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:eaa067bd45f2864643af85d6cf25ab01db4ce5231d60ae7f3886560066c0c7f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:fb62b820ba78b6acc2e20fd69814638be4e0339bf9571f91654b5231599371c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188088750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afaf1b5f4f0462f3d6ccc71d672ff620651a5a74163e6f58824723696348b4dc`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:54 GMT
MAINTAINER AntonOks
# Tue, 06 Oct 2026 03:16:54 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 06 Oct 2026 03:16:54 GMT
ARG rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:16:54 GMT
ENV rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:31:44 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 03:31:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 06 Oct 2026 03:31:44 GMT
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
	-	`sha256:3282a5a2f25100fce3a5d562279a09b576d369333dd95d3a26db9c470ea8a15c`  
		Last Modified: Tue, 06 Oct 2026 03:31:58 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb9424e33507edb4d6351fcc7d891853e16653f2225e9a1df07a94dcaca8967`  
		Last Modified: Tue, 06 Oct 2026 03:32:00 GMT  
		Size: 45.2 MB (45244875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:c6524a491c5e20ff40637df99780146c987a3cfc367c30497b5d6394c2e24ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:560c0a87c673ffffe787bf0fd76a273e903df40f167fead3ac7eec2cf2b74872`

```dockerfile
```

-	Layers:
	-	`sha256:18923350af62a4533bc86c93f149c40e9e52408b32c964928bfaa06841528ed7`  
		Last Modified: Tue, 06 Oct 2026 03:31:59 GMT  
		Size: 7.8 MB (7780187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce8da1ebc9aa336f370f93380d61a54b82b2e7d7bc7cba125d8eaa1bbf40c4b5`  
		Last Modified: Tue, 06 Oct 2026 03:31:58 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:bd8fd4bb262df6b0c525561717d1979849821df1f698f7b64a38e9c7ac7653da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.7 MB (185672534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15041faed4d30967e3a4c437b67f52efba8acb028bf217d24cc427d10f9e40e`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:55 GMT
MAINTAINER AntonOks
# Tue, 06 Oct 2026 03:16:55 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 06 Oct 2026 03:16:55 GMT
ARG rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:16:55 GMT
ENV rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:36:45 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 03:36:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 06 Oct 2026 03:36:45 GMT
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
	-	`sha256:c3d6884d690a0ebd8cfdb6612bddd282ac71dbb4b12bde89ca9adead0abaadf1`  
		Last Modified: Tue, 06 Oct 2026 03:37:02 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead1173d6d7645a9a022156d3c75b17c9f2714ddea95a560f0750e5de432986c`  
		Last Modified: Tue, 06 Oct 2026 03:37:03 GMT  
		Size: 43.2 MB (43246919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:024d10aada1d2176f5c193e102e7675fd91941d54061d3823bcc4c7aed4cfb32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7800325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25208c490de5cfdd480c90e3d5623a45bce2d493db700662494ab2539d65ff79`

```dockerfile
```

-	Layers:
	-	`sha256:98d6d834b4c5f4a27ec4275717b2a22f2d085040fc93e6eff178ae1cc98056d5`  
		Last Modified: Tue, 06 Oct 2026 03:37:02 GMT  
		Size: 7.8 MB (7787225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea8c47e860458f15d320d0f48242b0c4bb5d93898e504996c4ba9920d9a7b97`  
		Last Modified: Tue, 06 Oct 2026 03:37:02 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json

## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:eaa067bd45f2864643af85d6cf25ab01db4ce5231d60ae7f3886560066c0c7f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:fb62b820ba78b6acc2e20fd69814638be4e0339bf9571f91654b5231599371c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188088750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afaf1b5f4f0462f3d6ccc71d672ff620651a5a74163e6f58824723696348b4dc`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:54 GMT
MAINTAINER AntonOks
# Tue, 06 Oct 2026 03:16:54 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 06 Oct 2026 03:16:54 GMT
ARG rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:16:54 GMT
ENV rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:31:44 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 03:31:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 06 Oct 2026 03:31:44 GMT
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
	-	`sha256:3282a5a2f25100fce3a5d562279a09b576d369333dd95d3a26db9c470ea8a15c`  
		Last Modified: Tue, 06 Oct 2026 03:31:58 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb9424e33507edb4d6351fcc7d891853e16653f2225e9a1df07a94dcaca8967`  
		Last Modified: Tue, 06 Oct 2026 03:32:00 GMT  
		Size: 45.2 MB (45244875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:c6524a491c5e20ff40637df99780146c987a3cfc367c30497b5d6394c2e24ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7793180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:560c0a87c673ffffe787bf0fd76a273e903df40f167fead3ac7eec2cf2b74872`

```dockerfile
```

-	Layers:
	-	`sha256:18923350af62a4533bc86c93f149c40e9e52408b32c964928bfaa06841528ed7`  
		Last Modified: Tue, 06 Oct 2026 03:31:59 GMT  
		Size: 7.8 MB (7780187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce8da1ebc9aa336f370f93380d61a54b82b2e7d7bc7cba125d8eaa1bbf40c4b5`  
		Last Modified: Tue, 06 Oct 2026 03:31:58 GMT  
		Size: 13.0 KB (12993 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:bd8fd4bb262df6b0c525561717d1979849821df1f698f7b64a38e9c7ac7653da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.7 MB (185672534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15041faed4d30967e3a4c437b67f52efba8acb028bf217d24cc427d10f9e40e`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:55 GMT
MAINTAINER AntonOks
# Tue, 06 Oct 2026 03:16:55 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 06 Oct 2026 03:16:55 GMT
ARG rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:16:55 GMT
ENV rakudo_version=2026.06-01
# Tue, 06 Oct 2026 03:36:45 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 06 Oct 2026 03:36:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 06 Oct 2026 03:36:45 GMT
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
	-	`sha256:c3d6884d690a0ebd8cfdb6612bddd282ac71dbb4b12bde89ca9adead0abaadf1`  
		Last Modified: Tue, 06 Oct 2026 03:37:02 GMT  
		Size: 3.2 KB (3238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead1173d6d7645a9a022156d3c75b17c9f2714ddea95a560f0750e5de432986c`  
		Last Modified: Tue, 06 Oct 2026 03:37:03 GMT  
		Size: 43.2 MB (43246919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:024d10aada1d2176f5c193e102e7675fd91941d54061d3823bcc4c7aed4cfb32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7800325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25208c490de5cfdd480c90e3d5623a45bce2d493db700662494ab2539d65ff79`

```dockerfile
```

-	Layers:
	-	`sha256:98d6d834b4c5f4a27ec4275717b2a22f2d085040fc93e6eff178ae1cc98056d5`  
		Last Modified: Tue, 06 Oct 2026 03:37:02 GMT  
		Size: 7.8 MB (7787225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea8c47e860458f15d320d0f48242b0c4bb5d93898e504996c4ba9920d9a7b97`  
		Last Modified: Tue, 06 Oct 2026 03:37:02 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json
