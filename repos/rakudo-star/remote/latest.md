## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:339bf7cf763124fb822d45cab3e274b28939583bdaf35c4e72330ec705719f5b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:8e22c2c235e5c37cc0880dcd127070916645124aff05c9cb3939115267dd6230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182539672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf836f14cb2dcd872b11b10f0ca06d16e7f7604953e7228e797d0c43c9bf4e2e`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:16:14 GMT
MAINTAINER AntonOks
# Wed, 28 Oct 2026 03:16:14 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:16:14 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:16:14 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:35:40 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:35:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:35:40 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3b752bd4f060dcf33c0f54d1fad29fce8ff42b8fb544f9ec95372f0933bf`  
		Last Modified: Wed, 28 Oct 2026 01:40:03 GMT  
		Size: 25.6 MB (25634411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0168c6e6744fc499abc90618818f9e4aaf652a587fb6345b3882dc57de1495c`  
		Last Modified: Wed, 28 Oct 2026 02:24:06 GMT  
		Size: 67.8 MB (67818749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af54c45b1d58bfb114eda2162127ae94c99a3b72a35146179a8d68f4e3665536`  
		Last Modified: Wed, 28 Oct 2026 03:35:54 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0557546cbe0839ec6cc6b2eae5d9ea8c1173ad979da2db2a6a119b09227fc6`  
		Last Modified: Wed, 28 Oct 2026 03:35:56 GMT  
		Size: 39.7 MB (39675377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:dccb11a6692b6765836e7e112f2d50fbe229c15c6b929e28b6f3f42dae017d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a587f4d137a331fd942668307436372ad5fbb424e7ba8069fa8ceace0e16c7`

```dockerfile
```

-	Layers:
	-	`sha256:1dbca75201e6f28f44860bbc6660f7c24b9effd8e3ce6df7d183bffa0f9273a7`  
		Last Modified: Wed, 28 Oct 2026 03:35:55 GMT  
		Size: 7.8 MB (7778134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88e306407b62041051061ac604a05878db20bf023971ed45230826035c5b0a90`  
		Last Modified: Wed, 28 Oct 2026 03:35:54 GMT  
		Size: 13.0 KB (12993 bytes)  
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
