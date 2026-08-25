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
