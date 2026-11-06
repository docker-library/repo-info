## `golang:tip-20261101-trixie`

```console
$ docker pull golang@sha256:47a04190779d253020b552cfd765d39a1c02208f74ca2f4afe8b8b2f704f1a78
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20261101-trixie` - linux; amd64

```console
$ docker pull golang@sha256:6e852a712a732db3ce740bfda594a2a23368899c35bd4779687b50e378eafe42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.7 MB (349725443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7263f8722437608676900593b47c5307881ae6c8783c39d4ccac0b03d2c878`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:16:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:17:45 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 09:17:45 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 09:17:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 09:17:45 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 09:17:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 09:17:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7413e9d53fe7e447006df3ddb864887cbfb4eb9d1a017d80ece604c2ad7941`  
		Last Modified: Thu, 05 Nov 2026 09:18:23 GMT  
		Size: 102.5 MB (102470035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd35beab66f9320765c5f7a2a506372f5a6410782483671acaa1e1af5f461ae7`  
		Last Modified: Tue, 03 Nov 2026 00:57:17 GMT  
		Size: 104.4 MB (104389658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06acc0cc3367fe18082fbca17aaf8625ba6fa6b111f47c20f1247ff4fe9c6ffb`  
		Last Modified: Thu, 05 Nov 2026 09:18:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:c6fcc7251a5d286de0425582a08b139960480dd6779d4464e8c0a944e8ed9ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8880fd48240ebc83052cf8fa04bf2c0ea4d52df17c792b6ebd8d810606f19509`

```dockerfile
```

-	Layers:
	-	`sha256:9aa7c5fedcda17af5231a05df779d01a07f8760c9cec934041850ce4ba5a660b`  
		Last Modified: Thu, 05 Nov 2026 09:18:21 GMT  
		Size: 10.8 MB (10795463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c3b7af136d79aee9e7eb1d9b3b5ea76ff78a1dd150b29b672bce26eabb846ac`  
		Last Modified: Thu, 05 Nov 2026 09:18:20 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:6ca6a70725de1bde34fe41aa7a13149a4bc998026bfb23baf66e7a9642d4d761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.7 MB (305699043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f417a78c68b5f917a4c2b446c63f8f9030dddeeff11b0117bd9a8924494e7a0d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 11:15:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:16:44 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 11:16:44 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 11:16:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 11:16:44 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 11:16:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 11:16:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22bd8270a456c344320ca1bfb723ebee36d6367951065776d9dd7282537e25`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 23.6 MB (23636480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f984886b94a931860c42ddaa1f808f518535286e993896a737731d0219bcbf9`  
		Last Modified: Thu, 05 Nov 2026 09:24:27 GMT  
		Size: 62.8 MB (62760090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8c5b8776dfb463d8b41c390d9ad20dea50d5b68e15fdbc4d2eb70239d257fc`  
		Last Modified: Thu, 05 Nov 2026 11:17:13 GMT  
		Size: 73.1 MB (73115005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99d7321bc2c634c84fcec56f141b2c3d8e988dc683cfc89c801cc80bc7a7da0`  
		Last Modified: Tue, 03 Nov 2026 00:57:43 GMT  
		Size: 100.4 MB (100356186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143f4898931f580331891155dc258984e002fb79b6421198685665a888719324`  
		Last Modified: Thu, 05 Nov 2026 11:17:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:044cc9df3120e84884f334bf7ec0fff537ebb9d4bdb08442ed9ab8462bbf2f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10620159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635aa3460dafb0b07e23c641462f66665f68b910890d80325bc1c431c909f1b5`

```dockerfile
```

-	Layers:
	-	`sha256:c43d17df7f2be81023b5cf4c0332fa47612b1fe118fff892cc5676e304934b72`  
		Last Modified: Thu, 05 Nov 2026 11:17:12 GMT  
		Size: 10.6 MB (10591351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ab1d7abc7de0576f4785a6d4ca6a3b54b28bca231e31720d8617867e16c6db8`  
		Last Modified: Thu, 05 Nov 2026 11:17:11 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:129b5795b8abb291632b7f008b2f59e3be9cd92a89bac5b654c8859c020c7c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.9 MB (339938540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d982ec47c96778ff0597bff6059b8beedd2e7cd35aa8e6911d75ddfe04758ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:27:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:28:03 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 09:28:03 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 09:28:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 09:28:03 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 09:28:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 09:28:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ef4dc039660063951d26aa850806f53f6d0c67044abe6af2c1b0f5a56301da`  
		Last Modified: Thu, 05 Nov 2026 09:28:41 GMT  
		Size: 98.6 MB (98617903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02be16c5cc8cd90f80fa09f773930298fc4772e6eecff5f27de48d2f357cf4`  
		Last Modified: Tue, 03 Nov 2026 00:57:12 GMT  
		Size: 98.9 MB (98870589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b3ae325c53771a29b3b9c076d7f1a7e98e13b683581b022ed8f9280b87559b`  
		Last Modified: Thu, 05 Nov 2026 09:28:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:d75958005788d232c90e51951c4f2b87f6b42eafefd07e4822febfc4bbe0bc20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10944118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bee3a22a536ab01612b19bd2b43cb178438c63af4e151ae00698b86f0f1281e`

```dockerfile
```

-	Layers:
	-	`sha256:96dfb7bca8e40e567122fb25ac65d6dd4a3482ba9db66438d70442cec0ab6c4b`  
		Last Modified: Thu, 05 Nov 2026 09:28:38 GMT  
		Size: 10.9 MB (10915282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7529e315945fbeade923a911e03eb98dd900e8923f778185465aaee12940cce`  
		Last Modified: Thu, 05 Nov 2026 09:28:38 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-trixie` - linux; 386

```console
$ docker pull golang@sha256:db34ecb8631776ce129af6b2c57b33715358082c47e9632c64ecbbbf3ab5ed7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350718805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288bcda6d77a655c272dd9c6698d3f3c8167fc6d9a865166c016a62c2fb6ef69`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:13:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:15:08 GMT
ENV GOTOOLCHAIN=local
# Thu, 05 Nov 2026 09:15:08 GMT
ENV GOPATH=/go
# Thu, 05 Nov 2026 09:15:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 09:15:08 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 09:15:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 09:15:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b96b64012e3ccbf1b300a19570dd596c9a0cd7a0a5a03551ebb02b2ec36eab`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 26.8 MB (26799507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b19228f96bf86cf5dec51abfdfdb655b9c125b586d1d9776e28024470540be5`  
		Last Modified: Thu, 05 Nov 2026 08:25:24 GMT  
		Size: 69.9 MB (69856854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce597c7e10879ce78ef3c217999f658431394903b90caeee52eac68e39f54143`  
		Last Modified: Thu, 05 Nov 2026 09:15:35 GMT  
		Size: 100.9 MB (100915776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd75b5188259c9b268ed753f81ba2e38b1d9d992be8e9e3b374fc45933b99770`  
		Last Modified: Tue, 03 Nov 2026 00:57:32 GMT  
		Size: 102.2 MB (102225938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20350114fe3b778e56f231188c403c56582ecfc437c173c7397d28a4fbeeb2f`  
		Last Modified: Thu, 05 Nov 2026 09:15:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:c3c5c0dcb3daf182a89850d45fa732d77bf27f31026779f34f60bfc88e51119d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10795367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73974b940aab55d72a7fb796ad262d2565104f9813df4fe7459aad680dff819`

```dockerfile
```

-	Layers:
	-	`sha256:121a10c047cdba29434acadf048141ce6d82b6420cb8e77ffe59e43dcf709085`  
		Last Modified: Thu, 05 Nov 2026 09:15:33 GMT  
		Size: 10.8 MB (10766725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb63e427155591aaf7a305bd1d3d0b33769d7ddbc94fa35eaf8ce8ca4a7bf0f5`  
		Last Modified: Thu, 05 Nov 2026 09:15:32 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:65d36423b526793812228d14dc01bd71cc9b3802ae76abb1d0557edf9e071b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347610965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a8ac9d224f07a714bc0b1a5c7da3f8dc73ef21c1b1354fc51f3c6b0ca9004e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:26:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 20:54:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 06 Nov 2026 00:25:13 GMT
ENV GOTOOLCHAIN=local
# Fri, 06 Nov 2026 00:25:13 GMT
ENV GOPATH=/go
# Fri, 06 Nov 2026 00:25:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 00:25:13 GMT
COPY /target/ / # buildkit
# Fri, 06 Nov 2026 00:25:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Fri, 06 Nov 2026 00:25:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eacbf9637539d8aa77e81054651dcf509dbf3851a0a1aa8980495316a23c2e`  
		Last Modified: Thu, 05 Nov 2026 17:27:43 GMT  
		Size: 73.1 MB (73093471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088f544464ccc68bb2fa206ce89e09e7138da8df265edea104d7076e0f9e0275`  
		Last Modified: Thu, 05 Nov 2026 20:55:24 GMT  
		Size: 93.2 MB (93178365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb982b356b87d80bb7f1d8c2c33f7bc1ec026469cef4eb9595fff52794f2b6d4`  
		Last Modified: Tue, 03 Nov 2026 01:30:06 GMT  
		Size: 101.1 MB (101090181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b21ecb3022d6c9914d7dc3c754dc02167e675265b53668c26053e106c3c1a48`  
		Last Modified: Fri, 06 Nov 2026 00:26:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:b15315ec0547c304513c62c21607e3c8c6022e47e9523e4e8b134f3ece32dca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10819989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773dbf2caea71cfacafe38d7c8c3017312ccda170270c77794391552fe9928c8`

```dockerfile
```

-	Layers:
	-	`sha256:eacf720dbba0ce66ff59124b1f239b351fe5d79794cfcb385041ca1822a0c34f`  
		Last Modified: Fri, 06 Nov 2026 00:26:33 GMT  
		Size: 10.8 MB (10791252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b8532f86db61c9917d1c792d0f42d837957a064fb05d5a7668f3a0781f234c0`  
		Last Modified: Fri, 06 Nov 2026 00:26:32 GMT  
		Size: 28.7 KB (28737 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:8819fa7a538ece116949aaf19c4956133f7c0f725fba91191c8e28a6adcf495a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.9 MB (372884958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb40bc83dba111a8da0606d82393cc5919d858e2e3ed380d79d587e44ca6075`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Sun, 01 Nov 2026 11:21:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 07:43:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 04 Nov 2026 22:07:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 09:59:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 09:59:47 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 01:54:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 01:54:57 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6b9c47bfdb663aa1d432fc6bfee0c5338e5f9e48ccd84b41427dc0fd31a54dc4`  
		Last Modified: Wed, 28 Oct 2026 18:37:39 GMT  
		Size: 47.9 MB (47891536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7c51a9da84f9a2839fc5053032d47d7167c1d7b755a3ac418f3c281c9a7469`  
		Last Modified: Sun, 01 Nov 2026 11:23:30 GMT  
		Size: 25.0 MB (24972796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5454531f1631dfbcd80e0c769a250fcab56937072652b2af592f111515e13cb`  
		Last Modified: Tue, 03 Nov 2026 07:47:41 GMT  
		Size: 66.7 MB (66713002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0654659357f6ee57c719579931b10f47df4175b8c5c6815cf1986e70fd9b75e`  
		Last Modified: Wed, 04 Nov 2026 22:16:02 GMT  
		Size: 131.9 MB (131949234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f407f2d466bfcd495056aca7e9a0c35ac87e4089ae72db918b17348bab9a459`  
		Last Modified: Tue, 03 Nov 2026 10:03:39 GMT  
		Size: 101.4 MB (101358233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cf91bfece1ce2ff1f600c39c74dad924809695e92433e68e1694e3dc7b1766`  
		Last Modified: Thu, 05 Nov 2026 02:00:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:f73a5fcb9388da84a22565ceae4d8253c97f1192426101bb2b6a74662175f12d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10893824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f134a995fa3369637e9bdeadf8b87c000a4d4631fdf3fc4c200d297aa704a77e`

```dockerfile
```

-	Layers:
	-	`sha256:c96f6592596a93a0d4774e085a4e0ae4d00d4ceeb8f9727d2ffae61703c8fcb5`  
		Last Modified: Thu, 05 Nov 2026 02:00:16 GMT  
		Size: 10.9 MB (10865081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64485c584c072fc00f9382a73ccbc1cbf600373d8d19408dfb7d36c5d61752cd`  
		Last Modified: Thu, 05 Nov 2026 02:00:14 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261101-trixie` - linux; s390x

```console
$ docker pull golang@sha256:d9d1a07baf180f7f0eaa93daff2f8e3ed7041ed595eb1a57d647ae6d05eb08d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.3 MB (324294049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245297088715305581fbe9fe6bc6a4b19acbff2c3e549bec1736b2530cafda08`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 01:04:09 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 01:04:09 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 01:04:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:04:09 GMT
COPY /target/ / # buildkit
# Thu, 05 Nov 2026 10:14:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 05 Nov 2026 10:14:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8460bb8f6558dc3ddd4a8daa929584f2696b8bfea7fce567fd1593ed616a1ee3`  
		Last Modified: Thu, 05 Nov 2026 10:15:43 GMT  
		Size: 76.3 MB (76282477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ce80c322577cbabbedd50927ea6355481abc36458b7d6b30272314b5201096`  
		Last Modified: Tue, 03 Nov 2026 01:04:12 GMT  
		Size: 103.0 MB (103048871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252a2aaf345ee9d300cbbc23179269b83ec93ada8e592a7e44606a3d5282ae18`  
		Last Modified: Thu, 05 Nov 2026 10:15:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261101-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:c65c891b8ea792fc69a17f962ac7d2028dfb93e2dfb6b078ed0d930035491cfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10634542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62838d8578726e51c4adcf5f6be1527909f6045047db857be7c6d02ab3b2889d`

```dockerfile
```

-	Layers:
	-	`sha256:39b3958bde4ca398c7233c1539ceaf3d1ce85edaa960393bc3fac3e99edf0ced`  
		Last Modified: Thu, 05 Nov 2026 10:15:41 GMT  
		Size: 10.6 MB (10605862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd2ec2a958f1791ef7e17ff3f813917d620f752b8d40caaae4d534b162c289b4`  
		Last Modified: Thu, 05 Nov 2026 10:15:41 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
