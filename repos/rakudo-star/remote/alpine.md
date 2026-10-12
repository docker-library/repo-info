## `rakudo-star:alpine`

```console
$ docker pull rakudo-star@sha256:a71e38b3f7f92f05c8ba52bd2f4616dbfe882caea7d0da07c1861946dca32333
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:alpine` - linux; amd64

```console
$ docker pull rakudo-star@sha256:f2d9bbd4d0a224a02185007fdef790b923f489d8e5eab244e975fde0983ecb30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50232787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:509b7f89327529a4b18125b51c2ab67b1813cc3581516f1cf0a4f288a57924e8`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 17:59:08 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 12 Oct 2026 18:22:38 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:22:38 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:22:38 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 18:22:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:22:38 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f01630ee6836daca9c15bae80eea94d43af92899281b33f6f4a5ab125a7c66f`  
		Last Modified: Mon, 12 Oct 2026 18:22:49 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf03121ecc3d3ad1e5e568520d830742f13fe821fa7119c4f4b7f94e247678f`  
		Last Modified: Mon, 12 Oct 2026 18:22:51 GMT  
		Size: 46.4 MB (46382102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:418b983db0bed26b6b03e8068412e2bdf99edefcfcc2c82f668a7e013ca41a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a4e08879b9d0a9daa76b2c642715e80c04c2063e7f22c777d492b49c7de3384`

```dockerfile
```

-	Layers:
	-	`sha256:e0c2bda01cc4e778d1498a94a3b6871196aa0c719712e715e8a4ea4986e4ce43`  
		Last Modified: Mon, 12 Oct 2026 18:22:49 GMT  
		Size: 185.4 KB (185363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aad36d57f65614f571b4988e80209fe726c964e1bad97e2e61d992431c3ce1f`  
		Last Modified: Mon, 12 Oct 2026 18:22:49 GMT  
		Size: 11.7 KB (11718 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:alpine` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:0bf3b0bf0dfa0b4037b5ab95c49c11d5a85cd6f1ef54b74ef356557cdc5202aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50298977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eae8ffb95cf9ecb9096e1645c30be2c06658eb565ad7d2ec33da8d0da2b795b`
-	Default Command: `["raku"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 17:58:35 GMT
RUN addgroup -S raku && adduser -S raku -G raku # buildkit
# Mon, 12 Oct 2026 18:24:44 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:24:44 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:24:44 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         bash         gcc         gnupg         libc-dev         make         perl     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="${tmpdir}/gnupg"     && mkdir $GNUPGHOME     && apk add --no-cache --virtual .build-deps $buildDeps     && apk add --no-cache readline git     && mkdir ${tmpdir}/rakudo         && wget ${url}.asc -O ${tmpdir}/rakudo.tar.gz.asc     && wget $url -O ${tmpdir}/rakudo.tar.gz     && wget $pubkeyurl -O ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 18:24:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:24:44 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeea6500fc25d2c3375d8d8775f55fd0b0eb509dd0b3de09505f13caeeb4475b`  
		Last Modified: Mon, 12 Oct 2026 18:24:55 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cbbad61bb369f0ab74c2754e5c87134afdf0ce3c5b10e02ed06130042a394f`  
		Last Modified: Mon, 12 Oct 2026 18:24:56 GMT  
		Size: 46.1 MB (46110371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:alpine` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:5d1e9044205ebe661678d49fbf9d1029f2f776161fa85fd43ea202933770c0f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 KB (196558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67879226c7af8de6fa8d37ac504e70d73500c814c83b109b4a3ff960d312350d`

```dockerfile
```

-	Layers:
	-	`sha256:80db117be692721e73763f3c732b6b0f498ddb0efbce5d9f22f00f7c12637b65`  
		Last Modified: Mon, 12 Oct 2026 18:24:55 GMT  
		Size: 184.7 KB (184745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7099e3c796ea417b06e02e2d114ecbb6ee905d5f00f8f816574c21b90f071cb4`  
		Last Modified: Mon, 12 Oct 2026 18:24:55 GMT  
		Size: 11.8 KB (11813 bytes)  
		MIME: application/vnd.in-toto+json
