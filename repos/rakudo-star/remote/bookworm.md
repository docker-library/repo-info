## `rakudo-star:bookworm`

```console
$ docker pull rakudo-star@sha256:d1017fe6552de0c783d14040563bc758278742465f31a2fe731e3f8d15f7cb44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:dd1ae0353dcfed981d53b4765c54ade1030fef158936bca9b16eb212b7e84e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176492512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e792a32849389c109d228844e301396a3a7955dcc387c4febc5c3f16e1a7a4`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:39:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:23:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:16:19 GMT
MAINTAINER Rob Hoelz
# Wed, 28 Oct 2026 03:16:19 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:16:19 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:16:19 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:34:44 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:34:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:34:44 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd0ae7831394e9635b737d684810716dadcb662b5b9b80eefd89cee1d65395`  
		Last Modified: Wed, 28 Oct 2026 01:39:43 GMT  
		Size: 23.9 MB (23873246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661ef7e1e7b1a9919ab256de1deb5be9107b28a15fea74b39921bec95b713038`  
		Last Modified: Wed, 28 Oct 2026 02:23:17 GMT  
		Size: 64.4 MB (64432590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6360ff89a221647cd45c70a4d4455a9e8d880ad386438d58ff1bf080ed4b72`  
		Last Modified: Wed, 28 Oct 2026 03:34:58 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c141f9cb3582dd1be47f811a2258b1431c05d9cf9d7d75e08674f49cb0693b56`  
		Last Modified: Wed, 28 Oct 2026 03:34:59 GMT  
		Size: 39.7 MB (39658885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:9cec853e61c1b8d2ca7117b47132f09238d699ce5903b805eb057d2705112693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7983655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56da87300b52d46297446cd391d952baf4c37199292604dac450b096db66dfc1`

```dockerfile
```

-	Layers:
	-	`sha256:60c88c7e0b80d7496b3e19c71301c5ce3c84f87369c434d7d95f4f196b4ba8ce`  
		Last Modified: Wed, 28 Oct 2026 03:34:58 GMT  
		Size: 8.0 MB (7970952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66d9a722e832a5f95aa7771047bda81b7809e7072e807e37a50b351f43f69188`  
		Last Modified: Wed, 28 Oct 2026 03:34:58 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:4173d8c3f198f66cc5ed2095aca88426e79f3d729218f4190a7003147d56e255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175108072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16252d3f0911c7da10a578313ffa824de2b0af6d84b1e5ed72e447edd5b16e3`
-	Default Command: `["raku"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:34:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:18:57 GMT
MAINTAINER Rob Hoelz
# Wed, 28 Oct 2026 03:18:57 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Wed, 28 Oct 2026 03:18:57 GMT
ARG rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:18:57 GMT
ENV rakudo_version=2026.09-01
# Wed, 28 Oct 2026 03:42:37 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 28 Oct 2026 03:42:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Wed, 28 Oct 2026 03:42:37 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8782a51b4859547b9e75033fe9ea76035a0145a516f9599564fbb0a9b01212`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 23.4 MB (23439758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9f3d35258fc5018f37db87b726c6d8be6533cd7f9a10f219d805efa5969df3`  
		Last Modified: Wed, 28 Oct 2026 02:34:39 GMT  
		Size: 64.5 MB (64528622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5737f87ba43f97ac2dca9d0081347c841fde3d318dae9e84c5e9662bebe81ef`  
		Last Modified: Wed, 28 Oct 2026 03:42:54 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f783a6001a7aa43fd00b75eb28bc07b185595776203677bb0eea5f5cdd55b673`  
		Last Modified: Wed, 28 Oct 2026 03:42:55 GMT  
		Size: 38.7 MB (38731283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:b6ac09bbee789da58458bc75485c8cc1dadbfb2f302bedebf94b7fe867f108a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7990143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0938a856fda63bf69783e6caad8f32ed0eff0d29aea5ad39c07d06cc148b82`

```dockerfile
```

-	Layers:
	-	`sha256:3369a00f9140f9e402c4bbd6d6044ffeb62917c28c5f46572176c6f0ed0818c6`  
		Last Modified: Wed, 28 Oct 2026 03:42:54 GMT  
		Size: 8.0 MB (7977345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cf276aaf49d71d8d4eac140656270b8e4bba98f05eb60b90eae17834a9a74b9`  
		Last Modified: Wed, 28 Oct 2026 03:42:53 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json
