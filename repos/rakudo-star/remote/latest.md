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
