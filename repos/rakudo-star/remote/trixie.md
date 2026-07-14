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
