## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:f211cc83a5036df166eb94ff60fd4396b58587c7cdd477f52e4a83954cd28cdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:091e64ce0abb7a77c275dcb9bb09c082b574f77a7e2750301a0ad95261b293e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187762835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4056415ef0337e54b0426fd2c5f1d5b00f9e675135e426e2645ae59b5c770a9e`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:22:15 GMT
MAINTAINER AntonOks
# Wed, 05 Aug 2026 02:22:15 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 05 Aug 2026 02:22:15 GMT
ARG rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:22:15 GMT
ENV rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:37:42 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 02:37:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 05 Aug 2026 02:37:42 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fcc77a3752d88f427220b544ec6990f194c49ffa8bcac98607761fa6da30c1`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 3.2 KB (3242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeceda6a9f00cd7186731bb90a6089902f82b8a1cc467aeeb2c8509f585a8256`  
		Last Modified: Wed, 05 Aug 2026 02:37:57 GMT  
		Size: 45.0 MB (45010643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:01f88ba15143b01c8dd0883de18fd170bf4fd4e9f86e12a876ce557a58858eb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e415199af52ef2d61d6748a25199a8a75065b63f06ed37b6d36776fbaf5b5a`

```dockerfile
```

-	Layers:
	-	`sha256:7e0a7d9bc58ad67a51f55bbd5e98924a45f4bd8211114fb750af63a6c53beaea`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 7.8 MB (7771046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edc190382b569ba9a871cd619c5c0cdb547618642c23197220cf7b810e75ec0c`  
		Last Modified: Wed, 05 Aug 2026 02:37:56 GMT  
		Size: 13.0 KB (12992 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:6de50fcfe5261ba7759bb1bd81b7f25f696e08f160f2c9df58289a3594c4d827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185311928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d60d4129496d3a00e6fe52e63f45d0b91e9d4d92b8252b69a5f370e72d8acc`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:22:47 GMT
MAINTAINER AntonOks
# Wed, 05 Aug 2026 02:22:47 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 05 Aug 2026 02:22:47 GMT
ARG rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:22:47 GMT
ENV rakudo_version=2026.06-01
# Wed, 05 Aug 2026 02:42:21 GMT
# ARGS: rakudo_version=2026.06-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 05 Aug 2026 02:42:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 05 Aug 2026 02:42:21 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6387288076940feebdfd78c561fffec593d90767c42d6a76d18540ffdff656`  
		Last Modified: Wed, 05 Aug 2026 02:42:36 GMT  
		Size: 3.2 KB (3240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf282d1f566e2cfa1db6e953d8f48b418ddefa112909d6adc1b6f1215fbd4e34`  
		Last Modified: Wed, 05 Aug 2026 02:42:37 GMT  
		Size: 43.0 MB (43007786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:latest` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:2ab1f89c9bce300c505f7e261c150aaf63b95fcaee58c264e5891194acec4377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d4f5a5dc2f7f46bd2207d0848a179c3b1ea83e78de0d2120b47f846e62724c`

```dockerfile
```

-	Layers:
	-	`sha256:cddaaad478ae8d1528b53802aca455a1cdaf7403081fbe073628dd6b9d147a80`  
		Last Modified: Wed, 05 Aug 2026 02:42:36 GMT  
		Size: 7.8 MB (7778084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d84629446f2fee76256c9a252c2cfce64610b055c08d04e20ccf459b1f1ae8c1`  
		Last Modified: Wed, 05 Aug 2026 02:42:36 GMT  
		Size: 13.1 KB (13099 bytes)  
		MIME: application/vnd.in-toto+json
