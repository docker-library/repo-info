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
