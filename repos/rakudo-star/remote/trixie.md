## `rakudo-star:trixie`

```console
$ docker pull rakudo-star@sha256:e522b8b8cafe4fbf76ed89926b6e884875fa8bf88ce107d50fdb7663b7a9105e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:trixie` - linux; amd64

```console
$ docker pull rakudo-star@sha256:b92eb368e49cdb176a4561f2af2e200d26e81263bcceb55e0f8b74569faf0031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182602238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27623e66fdbae08ab530b78efe27f6059481dc11c31269c061b0107a309d9bb2`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:18:18 GMT
MAINTAINER AntonOks
# Tue, 24 Nov 2026 06:18:18 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:18:18 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:18:18 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:35:17 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:35:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:35:17 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be6780dc18eb58a60fabb4c8bedb0c3ea852f4f3c7d199d0dd2ca073068d3c`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 25.7 MB (25650878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2acb1a7e2440113768de2c5a81ca8c6c89281a433d4e9f05eecc3082aac2c04`  
		Last Modified: Tue, 24 Nov 2026 05:21:36 GMT  
		Size: 67.8 MB (67818732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508d549e51ba98b91cadd0368533ba2274d786d30ac563201f2fde3822b87ae6`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef4b7773e762856a7f42b9be1477f2a485721f1e3e736fbbc816d3f692a24b0`  
		Last Modified: Tue, 24 Nov 2026 06:35:31 GMT  
		Size: 39.7 MB (39720103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:1e205e6a101f5de6953b1b5e73c5d10286e2d0b06553471415ba43b8518699b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7790354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c17d3c446de3b3b0184c5bf0b89e3cda4591b3544987eb51e6dfcd0b85e3a62`

```dockerfile
```

-	Layers:
	-	`sha256:9a323eeb929a2cc17b89a601939eb804e95a90f76d0b700ee1b086b5ef213839`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 7.8 MB (7777362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:099adc2c10b85102b48b08c0b7bcbc0a276cd66d355f859aa93eafacb7e19dda`  
		Last Modified: Tue, 24 Nov 2026 06:35:30 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:trixie` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:133f0d3eaac1b4da260229d539396bbff6d860d008aa964cadaa8b3b7bba0c36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181160179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd4541240bc8928703719966d82221409ce1bc25e5517deeafcee18eabdff9ed`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:16:58 GMT
MAINTAINER AntonOks
# Tue, 24 Nov 2026 06:16:58 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Tue, 24 Nov 2026 06:16:58 GMT
ARG rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:16:58 GMT
ENV rakudo_version=2026.09-01
# Tue, 24 Nov 2026 06:42:40 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 24 Nov 2026 06:42:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Tue, 24 Nov 2026 06:42:40 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dacf7f1531c38a9330958dd49f965097481ac7feb033dbc834cab26a8120fa0`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 25.0 MB (25045881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873295aab70feef1201ca10ab9b403b459ce2e560c88640595466a3bb0b2c5ed`  
		Last Modified: Tue, 24 Nov 2026 05:33:30 GMT  
		Size: 67.6 MB (67633993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f721c37fcc04857fa7507b207e805c5bf1faf5ecc37080ec57a382946a12483`  
		Last Modified: Tue, 24 Nov 2026 06:42:56 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09790d70cc5a8e54bb86fb8a30c1758e24c22ce1ff3df723f3578da61611a258`  
		Last Modified: Tue, 24 Nov 2026 06:42:58 GMT  
		Size: 38.7 MB (38706980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:trixie` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:e8dfaa04b704fffab37494ad52cea4b92a7439bb3f517a8fcdf11af9cc16172c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7797499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86338691aa56d3e4b69a180fd5cd5e6d358c1622d7b84acb0576692771f721cf`

```dockerfile
```

-	Layers:
	-	`sha256:a170dc600d5a1923d99134c76c184fad99787877888c6a0295cc2a6632470dc2`  
		Last Modified: Tue, 24 Nov 2026 06:42:57 GMT  
		Size: 7.8 MB (7784400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82d242e0e4b7d677df8eba34c40eb53afbc7b82478a197f5dd8bbf58bd9d962f`  
		Last Modified: Tue, 24 Nov 2026 06:42:56 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json
