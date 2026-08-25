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
