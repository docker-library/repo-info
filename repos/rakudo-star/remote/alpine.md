## `rakudo-star:alpine`

```console
$ docker pull rakudo-star@sha256:6018574138b411d05254950b0b34db36e0579e64921d95e77786bd73b0e3e4f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:eef7be44d55f72e31f85d5364210cb27e5e901ee0bee45614c4cf85b61ea2dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55429282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd25fa0cbbad74c3cf1b8c16653e982e80f3cb1afd811cc9c6842481c6ab535`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 19:12:27 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 06 Jul 2026 19:29:51 GMT
ARG rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:29:51 GMT
ENV rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:29:51 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 06 Jul 2026 19:29:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 06 Jul 2026 19:29:51 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addf929aacfc2bdc328fee5efac150bf24ee61fb1862fcf5ea6fe7bd645c3ec1`  
		Last Modified: Mon, 06 Jul 2026 19:30:03 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff6f4f4e407d63ba2a3a7b8bb0f8fd291b628a60a9825638cdb209bde9f170d`  
		Last Modified: Mon, 06 Jul 2026 19:30:04 GMT  
		Size: 51.6 MB (51581945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:547158bef7714a9ee75c03e1baee5840012e3508ddcd960fb31709ff1e5a3820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7676afc1961432bea6078634e7dd3d59a6342d863f3dfa7911be8e0c247da7`

```dockerfile
```

-	Layers:
	-	`sha256:9493105ddd2fa16c669736859e5e477b05d44923a6952083583f7f837bacb19b`  
		Last Modified: Mon, 06 Jul 2026 19:30:03 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84471f02e3b5aca4ff2d60f6a2f69ca144b7e531226ca7d61e2524199653f85c`  
		Last Modified: Mon, 06 Jul 2026 19:30:03 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:408074e4d893052438a8dbd8debead0ed402287c4caf28f2704ab48de9e5d642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55496137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffea641c2f5fcee09fa2a735fcc1568f3d7df643660e2286cbd346225760a91c`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 19:11:53 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 06 Jul 2026 19:34:39 GMT
ARG rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:34:39 GMT
ENV rakudo_version=2026.06-01
# Mon, 06 Jul 2026 19:34:39 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 06 Jul 2026 19:34:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 06 Jul 2026 19:34:39 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac380d2d3f85d0b698b35daae4087de6d10c5655360719496e51adbb86cbf2f`  
		Last Modified: Mon, 06 Jul 2026 19:34:51 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:961fcc95c5f7c8a75567eb83f46ec986d818a795c80b17b0b1e622fa9da088de`  
		Last Modified: Mon, 06 Jul 2026 19:34:53 GMT  
		Size: 51.3 MB (51312153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:b7831f4e8f6a470d4428356d8bbb49b5849ce1fbfce894f2989b142cdcf33d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f949a997a2be727dd07b016f235198c64041f1bbda2bf2f8900e39dae0e1e9`

```dockerfile
```

-	Layers:
	-	`sha256:a43da7a1b74dacab2429b81b463607921779fe43d05c8fea9274b73de3bd2d01`  
		Last Modified: Mon, 06 Jul 2026 19:34:51 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12b6e53c802987f429451c70982daa0be5ad0c985524a3e09061056336e3ff09`  
		Last Modified: Mon, 06 Jul 2026 19:34:51 GMT  
		Size: 11.8 KB (11813 bytes)  
		MIME: application/vnd.in-toto+json
