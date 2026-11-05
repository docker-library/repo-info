## `rakudo-star:bookworm`

```console
$ docker pull rakudo-star@sha256:8c1e027bf950c3bac6e595128bbd0c8eb41520de67ce60306cd013c04985d988
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:0bf6c74d5f300281321a280b50690893a5185dd209c9ee9c5c4ccc8b9b8bdacd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176510863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a2b6b6a1063ceb7a0dc94527e5aa2c672a87b64cb691678479da39fef0d604`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:35 GMT
MAINTAINER Rob Hoelz
# Thu, 05 Nov 2026 08:54:35 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:54:35 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:54:35 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:11:22 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:11:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:11:22 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a9926e81be5179814bb4adeb098247225b8a08f97b89a23224bdab5882544d2`  
		Last Modified: Thu, 05 Nov 2026 09:11:43 GMT  
		Size: 3.2 KB (3237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2f85ead9cf4543cb50e57b477b5dd961bdffaa3ea3ca44e1efcc1444a68af1`  
		Last Modified: Thu, 05 Nov 2026 09:11:44 GMT  
		Size: 39.7 MB (39675305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:4c415916547ed7a29c2d33b6d3edc7748298000ca9928b773b0935ded5933e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a73d9ef75009c7741963f8b27b595186239e1a8432ea36a7b8777941c9f368`

```dockerfile
```

-	Layers:
	-	`sha256:bc0739a3763142348c0b18be6058c137ed07c66e005aa9df51614774348ccfdc`  
		Last Modified: Thu, 05 Nov 2026 09:11:43 GMT  
		Size: 8.0 MB (7971006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85716e7f85419bd4f6aa00ae66263afa3109745f009685ea3464ddcf3f0b79a8`  
		Last Modified: Thu, 05 Nov 2026 09:11:43 GMT  
		Size: 12.7 KB (12702 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:825bcc3cca37454bf6049facaa90daf7b9f23660c683cb8e4e9b4153f928e93d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175135264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c950d5451ce87a67a28292798811306483f5fdb2db7d0b39eff533e392ec52`
-	Default Command: `["raku"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:55:16 GMT
MAINTAINER Rob Hoelz
# Thu, 05 Nov 2026 08:55:16 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Thu, 05 Nov 2026 08:55:16 GMT
ARG rakudo_version=2026.09-01
# Thu, 05 Nov 2026 08:55:16 GMT
ENV rakudo_version=2026.09-01
# Thu, 05 Nov 2026 09:20:00 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 09:20:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Thu, 05 Nov 2026 09:20:00 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76cbc8255d36651564737237769568a36bf122726381d1994d90279fc2dbb523`  
		Last Modified: Thu, 05 Nov 2026 09:20:17 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0813c1f83c5070bc214d0844c31738a7ce605074b65312d61bc5900d2a71037c`  
		Last Modified: Thu, 05 Nov 2026 09:20:18 GMT  
		Size: 38.8 MB (38750448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:237a67f1e61c8cd1c06903a556ccead4b228bcf6136221f980755f4e26c63262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7990197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc301c796133cc21b1e8306e68ba14e1fea12bb7531cf3b3a1480e729e7f6eff`

```dockerfile
```

-	Layers:
	-	`sha256:539bb636dbff98c3b40b41108d8cc749db77b1ba7a44843e6a2a871d6455a5ff`  
		Last Modified: Thu, 05 Nov 2026 09:20:17 GMT  
		Size: 8.0 MB (7977399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3650f78f309e8ad5b5816a6b21244fb506306174e5404d368983aee2bdf65f57`  
		Last Modified: Thu, 05 Nov 2026 09:20:17 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json
