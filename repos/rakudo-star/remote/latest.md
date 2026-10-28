## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:c7dbc3f0b4de8ac2f698546fdab4e1e549b25ac78b8fbbe7292eacb2e38b5cb8
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
$ docker pull rakudo-star@sha256:03cd7d3362309710f57367b6349ae7331876e61b78dd160f011e24e6b4f790c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181200849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdeefa71bb4d72948a041b48e826dd05c2ae4ecfcab63a878eb1b789705cb00`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:18:58 GMT
MAINTAINER AntonOks
# Wed, 28 Oct 2026 03:18:58 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:18:58 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:18:58 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:43:49 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:43:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:43:49 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4b90fd50ae9344f8cbc0278e99128039111a416dade187601456448045108e`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c094d6ace5ff08cb932ca970dd857f4e1cd314f9beeb1a842f3b7fc81478aa21`  
		Last Modified: Wed, 28 Oct 2026 03:44:07 GMT  
		Size: 38.7 MB (38749905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:da40b3cb1c15eb1acc10e4b95857ad418c715e7d1a45fab8631666fb9f67b693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7798272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc10e02a68a3e4e81ded7c4c7270e2626e9bc6bd4ce73c98f7d3eb0bc0e5ea6`

```dockerfile
```

-	Layers:
	-	`sha256:482c55607e67ec2f1e3b3b8d04f503625547dc1702b86b09941cfec1cfd07773`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 7.8 MB (7785172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a832876cae7c1dc3bfd9b8eec701815a6bfe625a2d86bc100c78cea234f9137`  
		Last Modified: Wed, 28 Oct 2026 03:44:06 GMT  
		Size: 13.1 KB (13100 bytes)  
		MIME: application/vnd.in-toto+json
