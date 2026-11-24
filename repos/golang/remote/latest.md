## `golang:latest`

```console
$ docker pull golang@sha256:5f1b98fa02fe396ebce2a0227a0e08309e11792915b9dd2e1f71053d7e7e6666
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:e65b9442d27a8cbb2fde9128832d75154664528d8ab6b5b6e951800d613cc12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.6 MB (316629006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bbeef4f5aa5dc3193e87e61e6c27d2b13b8dc589fc9ff97958a4c5a0e429edb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:15 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 06:15:15 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 06:15:15 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 06:15:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 06:15:15 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 06:15:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 06:15:21 GMT
WORKDIR /go
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
	-	`sha256:85676bd03b422ac9e56cfa27ac34c2bde09c4e32ec6c8adafcb54f609e270b80`  
		Last Modified: Tue, 24 Nov 2026 06:15:48 GMT  
		Size: 102.5 MB (102526113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d129a974dd319fef9f5f496bf3a04194c14ba0fbf95635c2d5577185dd0b2f`  
		Last Modified: Tue, 10 Nov 2026 18:20:43 GMT  
		Size: 71.2 MB (71223837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a735b0e68498f0a9294f98d02ad37ebf22a6f30d2f9860aed527a962ede12ea`  
		Last Modified: Tue, 24 Nov 2026 06:15:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:efc4b1c99be76d73e347b57a6b4767275f2431143886b924ce1402507fe74def
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b6a3b16e76df08e7b27aa62b4182a3f4bca0e212abcbd09342e801e1abeb133`

```dockerfile
```

-	Layers:
	-	`sha256:597db392fb6e4b1f9fc479ba94fdd3b8c2bcaa01150ca66d49f8f92a006c8a5f`  
		Last Modified: Tue, 24 Nov 2026 06:15:46 GMT  
		Size: 10.8 MB (10794600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e1c3de3cf5c07aca34a328aa46b276d9c9945e8b4cef81d1c41ece1ff06cae9`  
		Last Modified: Tue, 24 Nov 2026 06:15:45 GMT  
		Size: 28.4 KB (28378 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:4a3b8810130fb8c25bd627d4c1089bf4b7a2f0800d243055f6683a52a030a933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275145171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf0c77470ac530001a7d81f5974a025f98916b2d700137dd5d1bbc724edc8dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:16:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:42:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:12:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:12:40 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 07:12:40 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 07:12:40 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 07:12:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 07:12:40 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 07:12:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 07:12:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:dfa0232b027632cfcd6c75af294b9fb093493d5e9bedb208e40bbda0d946291d`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 45.8 MB (45838797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206e093b7d6b9756ce6436106bd63bfb623d6bd0cde12e4a8b4c232298b048d`  
		Last Modified: Tue, 24 Nov 2026 05:16:21 GMT  
		Size: 23.7 MB (23657477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8301dea1564c32e919589729d3a99d246c0e513c2f4ce53d05c49a87fcba793e`  
		Last Modified: Tue, 24 Nov 2026 06:42:28 GMT  
		Size: 62.8 MB (62752711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c181bfae488d37a2c0c1245d53b8a9ef715c4cf7428ac68ab9f143d2049bce3`  
		Last Modified: Tue, 24 Nov 2026 07:13:11 GMT  
		Size: 73.2 MB (73163493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ab9cea82d17d7b101f541f4ecfbb6f5af2bde3cf6c49715c9fc54b6864466b`  
		Last Modified: Tue, 10 Nov 2026 18:20:03 GMT  
		Size: 69.7 MB (69732535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae84ee677c9130c06b9293c2a786acebaa84cf945aeae0ad74118fda952052a5`  
		Last Modified: Tue, 24 Nov 2026 07:13:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:f8d2971a5a5c8e4bc12bc023a5616911150d0c7d5f76dc079f36621cb839bac9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10619034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c80023b3d0ecf5d08ae735f101592204beeca2f0f40ba9b6b57938069ab5a77`

```dockerfile
```

-	Layers:
	-	`sha256:2a5cbab9017b9e624da89f6a52a7d40a54ab74316ccff22e537dd5081ed70f9f`  
		Last Modified: Tue, 24 Nov 2026 07:13:09 GMT  
		Size: 10.6 MB (10590522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:292d113c0f64ee460edcdbdbb3cbeb9d8f2dba8e6e7a382eb0f7351c4b2600f7`  
		Last Modified: Tue, 24 Nov 2026 07:13:08 GMT  
		Size: 28.5 KB (28512 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5bd30d78fe7788dc760abe3e3437434781b3164e50fadc24611fa7fbc0cfb6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.9 MB (308909115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbd1b0ecc87070a73e69b6f23f2857b3a9be7765178380073e2a6596466f5cb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:13:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:13:22 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 06:13:22 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 06:13:22 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 06:13:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 06:13:22 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 06:13:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 06:13:31 GMT
WORKDIR /go
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
	-	`sha256:77330a6b9d88725fdcdded8b31174db31793005ca044005f764048857fcc3729`  
		Last Modified: Tue, 24 Nov 2026 06:13:57 GMT  
		Size: 98.7 MB (98674487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2570c62d304fb94a946f8e736b532b0adcafee91acb6c9c2d10806ac87bb96bd`  
		Last Modified: Tue, 10 Nov 2026 18:19:55 GMT  
		Size: 67.8 MB (67784510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d766d7d230fe52175fa8f8a33416fbd46d91db9bd4e5d52848d52618ab248779`  
		Last Modified: Tue, 24 Nov 2026 06:13:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:162d71cd1224acdc7d1d290520eb7f19e578614f55542dded87b59d8f903e0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10943023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda261567df534d40b5dfab772aaa0b4c2531f06513a96b13d1a816b79b1aa0c`

```dockerfile
```

-	Layers:
	-	`sha256:ef2b6552ba563640d67d441d317c587e7fe16afe7a3e45ba247e2f70c5f75f80`  
		Last Modified: Tue, 24 Nov 2026 06:13:55 GMT  
		Size: 10.9 MB (10914467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ce023d07f41f41c848322fe79f7f6c447b25514f91fad35cdf924a7a9d40c1`  
		Last Modified: Tue, 24 Nov 2026 06:13:54 GMT  
		Size: 28.6 KB (28556 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:5e4cc51c8c4cc6098540d8cd692fcf54e6644a8b442910adf8a15de1893490be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (317965283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb6e81e7c4c9b0431704f477bbe6fda29eacb23aa3f88e53ef61793b37c2e68`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:24 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 06:15:24 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 06:15:24 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 06:15:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 06:15:24 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 06:15:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 06:15:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad941d6d2e360c11be5bab67f076a725561b77784d7d2677f094938e20cc0c5`  
		Last Modified: Tue, 24 Nov 2026 04:41:39 GMT  
		Size: 26.8 MB (26810342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57f569e4512c64e1bfa4a948ff7d606bc67eb9529e900abeea67665fe98f04b`  
		Last Modified: Tue, 24 Nov 2026 05:25:20 GMT  
		Size: 69.9 MB (69857338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71337e0376d6972324c4950791874ca110e559c14523b433fe70c05e3782c6e6`  
		Last Modified: Tue, 24 Nov 2026 06:15:54 GMT  
		Size: 101.0 MB (100967682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74abf8975a8de6101097451affb3e791d46e0600b7751c037cf3467c0973248b`  
		Last Modified: Tue, 10 Nov 2026 18:20:20 GMT  
		Size: 69.4 MB (69404318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e4a9b2def5f42eebca933718d3bff2bd8d0184ba10ec8f9a9e9a536d3d3763`  
		Last Modified: Tue, 24 Nov 2026 06:15:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:69ccb4066121af24b40e8b8453b95292d419e8eac977f999513f91b21baab99c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbaa9a1e7403bc78d7eb0d867368beb029e7bf501e03e1553dd3fd80b6c952d9`

```dockerfile
```

-	Layers:
	-	`sha256:d33fa46c27c6f101ed34f894da3851907f8e81becb4f2a6db20f260a7e2193ab`  
		Last Modified: Tue, 24 Nov 2026 06:15:52 GMT  
		Size: 10.8 MB (10765845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc3889c7456d38faeb6a9df932fa63fdeeb14e128fffd93f45dbf6e925a61984`  
		Last Modified: Tue, 24 Nov 2026 06:15:51 GMT  
		Size: 28.3 KB (28322 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:2573dee7d7dcb7ce47e9bf43f9a12f8709727f7fb700de7db6bd7a1121267d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.1 MB (315149197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1c3a476d3cc753e3eaf76bd45e97559e03907bd07e5462ee96aeb2e99634e7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 06:52:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 14:04:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 17:01:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 17:01:31 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 17:01:31 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 17:01:31 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 17:01:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 17:01:31 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 17:01:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 17:01:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f511b5b325c69d6a4a96a572a778958b1386314d7c6a837c0a1d614395b62b`  
		Last Modified: Tue, 24 Nov 2026 06:53:10 GMT  
		Size: 27.0 MB (27042631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb0c5e858e334a1201fd045983093765bfba0cfd88b8f8f40614e0937845326`  
		Last Modified: Tue, 24 Nov 2026 14:05:39 GMT  
		Size: 73.1 MB (73087385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc52f7b9da8dbadc490b986af969766db27942ea61b1abbcca4ea47fd1a3ebdf`  
		Last Modified: Tue, 24 Nov 2026 17:02:52 GMT  
		Size: 93.2 MB (93232716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936ff7bdd356b6321d4d066574778945eb16f3eeb57dfe78006287ea6903e635`  
		Last Modified: Tue, 10 Nov 2026 18:19:53 GMT  
		Size: 68.6 MB (68556462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bf8dd6b2164406d7bc40f7769fdf8b942a8cb547e23accdcd8bd8f13835148`  
		Last Modified: Tue, 24 Nov 2026 17:02:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:90a97f0ba7fe3d598ab7d022062056d011e57e67e99d3e2258081aea32e37db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10818855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5787ebb1a7f74766f9f3541b8c2f18d1c4d4fce13c5bfd927eded4735c590643`

```dockerfile
```

-	Layers:
	-	`sha256:acfafc029d30c9101b8f050f5cb20c68384bd75f19ccd84296ae2f60e5ff541c`  
		Last Modified: Tue, 24 Nov 2026 17:02:49 GMT  
		Size: 10.8 MB (10790409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:149da011db36e5a2898a51014ab104e32e52a666715262f4ca3a1a8801f5cc52`  
		Last Modified: Tue, 24 Nov 2026 17:02:48 GMT  
		Size: 28.4 KB (28446 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; riscv64

```console
$ docker pull golang@sha256:ff27215e20fe95fd807c361b4dd77338005ebea6406f23003320510a2bdb199f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.8 MB (340810741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f083582d95a7b12c5375975ea71d6559261eb38ba911be0a69417e612dddf16b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 18:57:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 16 Nov 2026 05:22:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 05:22:35 GMT
ENV GOLANG_VERSION=1.27.4
# Mon, 16 Nov 2026 05:22:35 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 05:22:35 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 05:22:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 05:22:35 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 05:23:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 05:23:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c14b8ddf6f44cf7593992e51d2d8638d5bf0eab35fec3f4b384bc222453acc76`  
		Last Modified: Thu, 05 Nov 2026 07:37:06 GMT  
		Size: 47.9 MB (47892235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d09fcfc16843f31e6a8131b39886115ea1fdc3bbc9a4874cd58d30f18e2a46b`  
		Last Modified: Sat, 07 Nov 2026 04:24:28 GMT  
		Size: 25.0 MB (24972690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82501d6feec2e203eb2ab6488cc6d27a4a030dc401b02e7c1049226026f71ce7`  
		Last Modified: Sun, 08 Nov 2026 19:01:44 GMT  
		Size: 66.7 MB (66713146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:201d38831fedbada962a11bcfd0f74ab1abada8344f9364b67dbadff838a0281`  
		Last Modified: Mon, 16 Nov 2026 05:31:51 GMT  
		Size: 132.0 MB (131983369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9795cba6dd160f3c15d8025d2d30912eedffd2eb3c226c21bab4064243c1680`  
		Last Modified: Mon, 16 Nov 2026 05:31:41 GMT  
		Size: 69.2 MB (69249145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b47814110a084c53d0830c8363822af7906f71a3bc48d9e89fc7d4883db5f2`  
		Last Modified: Mon, 16 Nov 2026 05:31:19 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:04b25641f3caabf71fe10f4cab8e9c04bdf70ea531eb9315eff5acb36a0a3b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10893462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f900353da80837c27f79332cd0954d1cac39faf54c81b529b86a0963e5c2710a`

```dockerfile
```

-	Layers:
	-	`sha256:07f015965f77c5fb543d7428c0a2fc3793bb2b79f11d1a165c86bb532a340807`  
		Last Modified: Mon, 16 Nov 2026 05:31:24 GMT  
		Size: 10.9 MB (10865012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f361214f6a027045dae5d5484ce2bb3c29b4afc87911f122c6f9f1e1d7f0f65b`  
		Last Modified: Mon, 16 Nov 2026 05:31:19 GMT  
		Size: 28.4 KB (28450 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:1b9b98c3aa8238e16933a1f86fdbfb6227035a024721782b1a6da4436c6035f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.7 MB (291675342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e597d1ca0dadced8cd9b7d1f84f68f860f40ce921894a23ee2dc1852561984`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:53:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:13:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:13:34 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 24 Nov 2026 06:13:34 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 06:13:34 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 06:13:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 06:13:34 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 06:13:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 06:13:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e99295c5b1d848573a03490220a471f79f26f0d941445a1a1aafd0b9580e414f`  
		Last Modified: Tue, 24 Nov 2026 03:39:40 GMT  
		Size: 49.5 MB (49482692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3f4ce2bcba42a9f49e1dce7fbd9adaa01993b467a604f99739eb8a2c8ef380`  
		Last Modified: Tue, 24 Nov 2026 04:53:37 GMT  
		Size: 26.8 MB (26829608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b882c152e55bcff64f0d4b9871cc103b5a85e1de8b9ff0bc0015cf9263213ba7`  
		Last Modified: Tue, 24 Nov 2026 05:42:22 GMT  
		Size: 68.7 MB (68663169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655258223ce4965971161618087ecc4c4483384d9afa5c90e27421fff478a6c9`  
		Last Modified: Tue, 24 Nov 2026 06:14:09 GMT  
		Size: 76.3 MB (76341979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de8d0ebac894dd2fa17e9f4b4e946a13dbd458a348605d2271be16c9081a6ff`  
		Last Modified: Tue, 10 Nov 2026 18:20:02 GMT  
		Size: 70.4 MB (70357736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b039a13e1c898ec1f3a54aea928515bc2325539bc7efd852fab23e93312a0bd`  
		Last Modified: Tue, 24 Nov 2026 06:14:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:latest` - unknown; unknown

```console
$ docker pull golang@sha256:80e10cb8c6538791de98eb13a6cc5fdb68febe5a6c5def12905d7486feae8292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10633869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:251589e2e10ebe3e765e04a82c39c23d98ecca7839c37362334b0fb83f57aad7`

```dockerfile
```

-	Layers:
	-	`sha256:354384fa7793d20a188483dabfd90012fc476999402b1ff706660e4fa35e7460`  
		Last Modified: Tue, 24 Nov 2026 06:14:08 GMT  
		Size: 10.6 MB (10605495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d56d39248d5033e82fedc062876f741ea062f81386411953d085f74496999e49`  
		Last Modified: Tue, 24 Nov 2026 06:14:07 GMT  
		Size: 28.4 KB (28374 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:latest` - windows version 10.0.26100.33828; amd64

```console
$ docker pull golang@sha256:08233431a13c2648e143a2e0396349aed2c4a9572f8caafd2cd743c0e2703195
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2524624285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbce99c410b331009ce9dea250d7089aa64927071de233a0a9a9914ec303b334`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:04:42 GMT
ENV GIT_VERSION=2.56.1
# Mon, 16 Nov 2026 20:04:42 GMT
ENV GIT_TAG=v2.56.1.windows.1
# Mon, 16 Nov 2026 20:04:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.1.windows.1/MinGit-2.56.1-64-bit.zip
# Mon, 16 Nov 2026 20:04:43 GMT
ENV GIT_DOWNLOAD_SHA256=4a92850b6e917da4fd010669b614b55dccf5b0ec333a534cc4be4700dfefdafd
# Mon, 16 Nov 2026 20:04:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:04:55 GMT
ENV GOPATH=C:\go
# Mon, 16 Nov 2026 20:05:00 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 16 Nov 2026 20:05:01 GMT
ENV GOLANG_VERSION=1.27.4
# Mon, 16 Nov 2026 20:06:25 GMT
RUN $url = 'https://dl.google.com/go/go1.27.4.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '178ab98950ac69ab25069307dc6ade79f3816e414cce95b4da166a115cde1e7e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:06:26 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258b8ca421c56b5c9c99b175da794c28dc2695af7af6c8065e63deab793a98d2`  
		Last Modified: Mon, 16 Nov 2026 19:54:22 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82a3b19138c7a5ed94634d27faa41b97c9a927c624b1b78b31fae52b38406cf`  
		Last Modified: Mon, 16 Nov 2026 20:06:37 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9bced516c679171da13f8235fc7f45ce09b6f39c106699b0e343ee910a07bf`  
		Last Modified: Mon, 16 Nov 2026 20:06:36 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e90cd0fae423eddcddf168f2bc8155830ff2447331d8efaefd4d4397a556394`  
		Last Modified: Mon, 16 Nov 2026 20:06:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5347ca3d8acbd5547dc561fc1c0b74b47cb572474d8db7f0c6c005cec7898be`  
		Last Modified: Mon, 16 Nov 2026 20:06:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1921c4b4493838e0caa6b0cc9fc5e363fdc2d915c8a23fee127bae3f42c26c46`  
		Last Modified: Mon, 16 Nov 2026 20:06:41 GMT  
		Size: 43.3 MB (43343352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7195a5149e84ccec31b8a1c406b8c8b32707a22cbe4c63bfe7a79a767013e3f1`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096b236a6299327caf91aa47021cd4c6559aa2303cd53b88fc5ce90ff46b3365`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 337.8 KB (337828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3e6a8da0f4bfae63c85c6614b4b110d5742457b31434f90bafcde9b354a175`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3741dc8b65d58b0538d49590060b5572bad883401455c92eee6c5f4dbbfafa2a`  
		Last Modified: Mon, 16 Nov 2026 20:06:45 GMT  
		Size: 73.9 MB (73864875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc691753cb7f7656ffa5db49fc9c7864f0d5f5e2c506b91cf3d18a3ef12d4f`  
		Last Modified: Mon, 16 Nov 2026 20:06:34 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.20348.5873; amd64

```console
$ docker pull golang@sha256:1bc59fbbf5e04a62b0d60cc24f378dea268b96851f57f4893d725cbf65c97c4e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2363618814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5baf11e144b645bed97fb6b9aea5183c3e747d91c366d64d24f05749f89be309`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:55:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:06:21 GMT
ENV GIT_VERSION=2.56.1
# Mon, 16 Nov 2026 20:06:22 GMT
ENV GIT_TAG=v2.56.1.windows.1
# Mon, 16 Nov 2026 20:06:22 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.1.windows.1/MinGit-2.56.1-64-bit.zip
# Mon, 16 Nov 2026 20:06:23 GMT
ENV GIT_DOWNLOAD_SHA256=4a92850b6e917da4fd010669b614b55dccf5b0ec333a534cc4be4700dfefdafd
# Mon, 16 Nov 2026 20:06:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:06:36 GMT
ENV GOPATH=C:\go
# Mon, 16 Nov 2026 20:06:42 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 16 Nov 2026 20:06:44 GMT
ENV GOLANG_VERSION=1.27.4
# Mon, 16 Nov 2026 20:08:20 GMT
RUN $url = 'https://dl.google.com/go/go1.27.4.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '178ab98950ac69ab25069307dc6ade79f3816e414cce95b4da166a115cde1e7e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Mon, 16 Nov 2026 20:08:22 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d1d4428786cff57e799560ea1abdaf3b97bf6b120df6d7396db9deb86178c0`  
		Last Modified: Mon, 16 Nov 2026 19:55:53 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c925a15dc0dcbfd156f09c3bba7489664c1fb065188dc8e4a82c7e18ff904f`  
		Last Modified: Mon, 16 Nov 2026 20:08:35 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9581ed18be73b89eae9e030569973aae7f68fdd940579d8e12b6e5adce1719`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa47839fb5095ee31bfb832ab721ce7c947571744de14585398ed113a39be02e`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad8128e3f63ab8b706f1ba3f28f07b9edd5ffda0ef961fe14da3e63b185c602`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfc78ca8419ece385894d9a3210e30c36d92222996517b045839bc0ee18437e`  
		Last Modified: Mon, 16 Nov 2026 20:08:38 GMT  
		Size: 43.3 MB (43338163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce133c64f5112ee00601164e946c1e853c1c20045775da1f59af28d6bd220a13`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81633b6b3291d29581c8a5217b624de063e495e8e257b2419167d95c21c7136`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 328.6 KB (328634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e19149e960e133a29c75dc18ee64c026d96ca05650a2b05a87de7d933a53f02`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c0f51b87348368484b85cbedb0c68417b471c73ee064d0a4691b4ab2dbe024`  
		Last Modified: Mon, 16 Nov 2026 20:08:43 GMT  
		Size: 73.9 MB (73850642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cd1b81ca1421cbbd9047e12988991a74a3e4da4c11077f56f4137552e2b143`  
		Last Modified: Mon, 16 Nov 2026 20:08:32 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
