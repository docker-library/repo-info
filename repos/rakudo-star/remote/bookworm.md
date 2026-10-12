## `rakudo-star:bookworm`

```console
$ docker pull rakudo-star@sha256:dc302d335a9b9bdd67ebd2315f30c9014a9f4eb489efd214c5e17529e0e821cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `rakudo-star:bookworm` - linux; amd64

```console
$ docker pull rakudo-star@sha256:2be5e72957c5a2446aae48f62ba8636020f34d39d70dd19200ece2be3b1d50ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178811122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52133c165a7ef426a1bf0eac4ee7bbd492486f29ad75d7fbbcf23629ada1b619`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 17:59:12 GMT
MAINTAINER Rob Hoelz
# Mon, 12 Oct 2026 17:59:12 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:59:12 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:59:12 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:21:31 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:21:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:21:31 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c71fff0869aa9bd48cf80d66e30b83adc9a3fe5e77dd9aaf266282c6ec64ff`  
		Last Modified: Tue, 06 Oct 2026 02:34:58 GMT  
		Size: 66.7 MB (66718068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10edd9d8bf5e29e9d53d33bfc3f79cb2ad2d83079dda91b89891ba41d2a0415c`  
		Last Modified: Mon, 12 Oct 2026 18:21:47 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a9c77e2584e461f454471b737db9abfcf7227e9595a4d02bdb90cbabf3e564`  
		Last Modified: Mon, 12 Oct 2026 18:21:48 GMT  
		Size: 39.7 MB (39699541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:cace0f82430df25846c9e49318cc1245e380d50f6212dd21f41c96cb7f8e12dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b72d0b9b0582bf6a4b9a5fa6a2edebb3556b53b325880fd6ed04985e5b8388`

```dockerfile
```

-	Layers:
	-	`sha256:a4ecf0f7ee6f6d639ecdbcfc7a1f410afa15a66ef38d70f0bf22ef1a746515d2`  
		Last Modified: Mon, 12 Oct 2026 18:21:47 GMT  
		Size: 8.0 MB (7973023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:558432bcdf4d75b00e9e466c0056d6a1b94e1fc3da34ba515c8199fd0714a121`  
		Last Modified: Mon, 12 Oct 2026 18:21:47 GMT  
		Size: 12.7 KB (12703 bytes)  
		MIME: application/vnd.in-toto+json

### `rakudo-star:bookworm` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:e045ccf9679d0063d0923458fdcc52107087d6f3933a5da23fb8b710e7ddd643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177383063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0b74d98454d965b292ab48e7a936104d2dae747d938708965990ebdb6f220f`
-	Default Command: `["raku"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 17:58:39 GMT
MAINTAINER Rob Hoelz
# Mon, 12 Oct 2026 17:58:39 GMT
RUN groupadd -r raku && useradd -m -r -g raku raku # buildkit
# Mon, 12 Oct 2026 17:58:39 GMT
ARG rakudo_version=2026.09-01
# Mon, 12 Oct 2026 17:58:39 GMT
ENV rakudo_version=2026.09-01
# Mon, 12 Oct 2026 18:21:47 GMT
# ARGS: rakudo_version=2026.09-01
RUN buildDeps='         gcc         libc6-dev         make     '         url="https://rakudo.org/dl/star/rakudo-star-${rakudo_version}.tar.gz"     keyfp="3E7E3C6EAF916676AC549285A2919382E961E2EE"     pubkeyurl="https://rakudo.org/keys/rakudo_github_automation-${keyfp}.asc"     tmpdir="$(mktemp -d)"     && set -eux     && export GNUPGHOME="$tmpdir/gnupg"     && mkdir $GNUPGHOME     && apt-get update     && apt-get install -y --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir ${tmpdir}/rakudo         && curl -fsSL ${url}.asc -o ${tmpdir}/rakudo.tar.gz.asc     && curl -fsSL $url -o ${tmpdir}/rakudo.tar.gz     && curl -fsSL $pubkeyurl -o ${tmpdir}/key.asc         && gpg --batch --import ${tmpdir}/key.asc     && gpg --batch --export $keyfp > ${tmpdir}/${keyfp}.asc     && rm -rf $GNUPGHOME     && mkdir $GNUPGHOME     && gpg --batch --import ${tmpdir}/${keyfp}.asc     && gpg --batch --verify ${tmpdir}/rakudo.tar.gz.asc ${tmpdir}/rakudo.tar.gz         && tar xzf ${tmpdir}/rakudo.tar.gz --strip-components=1 -C ${tmpdir}/rakudo     && (         cd ${tmpdir}/rakudo         && bash bin/rstar install -p /usr     )     && rm -rf $tmpdir     && apt-get purge -y --auto-remove $buildDeps # buildkit
# Mon, 12 Oct 2026 18:21:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/core/bin:/usr/share/perl6/site/bin:/usr/share/perl6/vendor/bin
# Mon, 12 Oct 2026 18:21:47 GMT
CMD ["raku"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99713dbe79ee22ead7509cd8c7c37d309206e5ddd834ba41611459b49e6ddc06`  
		Last Modified: Tue, 06 Oct 2026 02:25:53 GMT  
		Size: 66.8 MB (66769669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c380a2e83b4c5e84adaccb5d0878664ae561919ea8a8c5528a53ceafe2557695`  
		Last Modified: Mon, 12 Oct 2026 18:22:03 GMT  
		Size: 3.2 KB (3239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed3c5f4e50d132e732495cadaeb3004034a2f003f1c7aaf4aef96e5a50369e7`  
		Last Modified: Mon, 12 Oct 2026 18:22:04 GMT  
		Size: 38.8 MB (38766188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rakudo-star:bookworm` - unknown; unknown

```console
$ docker pull rakudo-star@sha256:0161c7285de0244472d08ac6bfb609f24e976025e9388e5427fb33072e7e4b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7992214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c3fc1f50d6030f91d8f3591251b22049591d309baef8a3d01ddd44eae6b531f`

```dockerfile
```

-	Layers:
	-	`sha256:55dcf9a46474fe31a2fc11c14f16a093fb8ff1a51c707449bc606ca03793dabb`  
		Last Modified: Mon, 12 Oct 2026 18:22:04 GMT  
		Size: 8.0 MB (7979416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92bc565bbcd0f37321040af4f45e462cb15c03c60b25b6b575c445bf4cf81060`  
		Last Modified: Mon, 12 Oct 2026 18:22:03 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json
