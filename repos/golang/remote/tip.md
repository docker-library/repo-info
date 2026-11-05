## `golang:tip`

```console
$ docker pull golang@sha256:daaa7cdd1d7995be797cbba4f340c68289a050fe6a48025310e72092071acfa2
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

### `golang:tip` - linux; amd64

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

### `golang:tip` - unknown; unknown

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

### `golang:tip` - linux; arm variant v7

```console
$ docker pull golang@sha256:74defb5bdf2261d76e61b7c704064b47e1d1c335b0d1ae2ac73423a2c28d030a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.7 MB (305697504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d199e27ba5a6bc053fcbf00cddcb5818d7b4e089627ad99e0b114cc9b811c024`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 00:55:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 00:57:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:28 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:28 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:05cefee146590a5be2c7703c704e5fd78889941e24ab1dfa8296ebafd4153810`  
		Last Modified: Wed, 28 Oct 2026 00:10:51 GMT  
		Size: 45.8 MB (45829380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a1c0c7b220c9feb691744bd05f84ba55525499337ec4765cb6cddb293d793f`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 23.6 MB (23636373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0126d5d4fff102f74230092157c786fe380675192253be404b15787941f55b`  
		Last Modified: Wed, 28 Oct 2026 03:47:33 GMT  
		Size: 62.8 MB (62760118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d37f8ffb1a8815569da9c5cd98588321da71d3171f8683647733cfdad79a3e`  
		Last Modified: Tue, 03 Nov 2026 00:57:57 GMT  
		Size: 73.1 MB (73115289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99d7321bc2c634c84fcec56f141b2c3d8e988dc683cfc89c801cc80bc7a7da0`  
		Last Modified: Tue, 03 Nov 2026 00:57:43 GMT  
		Size: 100.4 MB (100356186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acc24b0566873590aa06a51848a820a9d32492f3e4c136f22dd4eaed0705997`  
		Last Modified: Tue, 03 Nov 2026 00:57:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:d4cc67558911528bd3b277190a7c0357c8a9be3b6336c476ed5f0de3265e03fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10620159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c28b55c298fa902feeb64a8c10f954925b1485fb88e4c386fb2dd2f00de5a8c`

```dockerfile
```

-	Layers:
	-	`sha256:4a5b1527582b70c83555687edf59770efbb2c50a46feeaf67b2ea91675e42183`  
		Last Modified: Tue, 03 Nov 2026 00:57:55 GMT  
		Size: 10.6 MB (10591351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:922d50797278004e8a79663eb08aa60bf7581384dcc530d50627977764411eec`  
		Last Modified: Tue, 03 Nov 2026 00:57:55 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm64 variant v8

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

### `golang:tip` - unknown; unknown

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

### `golang:tip` - linux; 386

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

### `golang:tip` - unknown; unknown

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

### `golang:tip` - linux; ppc64le

```console
$ docker pull golang@sha256:202d1e203d130facb2a635d0e76cd91f64d3fb8cdc5a59e26bc8c894273db730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347607307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d74c8261d5dcf1b242e5ce9b05320a670706e4dc2ac0c7ae2300866559d7f4a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 01:27:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 01:28:50 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 01:28:50 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 01:28:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:28:50 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 01:28:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 01:28:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0211c9ed62620780a710c0cb995ed73df4683591de20af0c8ccc39999890b`  
		Last Modified: Wed, 28 Oct 2026 04:20:40 GMT  
		Size: 27.0 MB (27023152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8d8ceab2b16cf2542e733824abb0b41dde9a2e11d20fda83fd8246cfb3e620`  
		Last Modified: Wed, 28 Oct 2026 11:57:57 GMT  
		Size: 73.1 MB (73093257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d89f632c60882d3fd002196bf40c0e4330e3a2d509fdc0ac22e89642794b5a`  
		Last Modified: Tue, 03 Nov 2026 01:30:06 GMT  
		Size: 93.2 MB (93178316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb982b356b87d80bb7f1d8c2c33f7bc1ec026469cef4eb9595fff52794f2b6d4`  
		Last Modified: Tue, 03 Nov 2026 01:30:06 GMT  
		Size: 101.1 MB (101090181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4234d453546fa27e2319c5922706c0473248ac50793ee50cc94a125f83efb555`  
		Last Modified: Tue, 03 Nov 2026 01:30:02 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:0a397dfb7708309e1e65e4c3a4ac2fb8769348620380340398605cba2b7c1429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10819988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f04883b86d7ef83c0778159fd27316ddcc89d4dad10c5ac44d4033a85ce41ca`

```dockerfile
```

-	Layers:
	-	`sha256:97451b58958fb2df6ddbbb41752116d370d79602e0dcba9f32d3fccfb8f3dfe4`  
		Last Modified: Tue, 03 Nov 2026 01:30:03 GMT  
		Size: 10.8 MB (10791252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:766f168b325f88345c51d9e0d4dbda1e639e46663e72e967960568722ea3ea47`  
		Last Modified: Tue, 03 Nov 2026 01:30:02 GMT  
		Size: 28.7 KB (28736 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; riscv64

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

### `golang:tip` - unknown; unknown

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

### `golang:tip` - linux; s390x

```console
$ docker pull golang@sha256:f6c442830d46359326b03a36531b29118e95b3331d277d60fd45bee341fea43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.3 MB (324282131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc8f735be1d14278ce6cf4a2ba6fdb7014f9420157903df86dbe2f64883bb4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 01:01:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 01:03:27 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 01:03:27 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 01:03:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:03:27 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 01:03:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 01:03:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2250e610e1393c26b6c89de550932ab3d31129c6532b4cf00f5c62c0d6bda7d2`  
		Last Modified: Wed, 28 Oct 2026 00:10:37 GMT  
		Size: 49.5 MB (49475831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ee5e1f1d6256810cb42c0392efc9c686df4046ca11a10101e09b70baca67e9`  
		Last Modified: Wed, 28 Oct 2026 02:43:16 GMT  
		Size: 26.8 MB (26811804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdbcc8858cde6193263947c31b5152380d626a1b64ea15511915cf0be7d9cec`  
		Last Modified: Wed, 28 Oct 2026 04:12:36 GMT  
		Size: 68.7 MB (68663295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a9720b399f53fcb17ef20506e068759bf0030b428ce646a37f424ed4ecd0fd`  
		Last Modified: Tue, 03 Nov 2026 01:04:11 GMT  
		Size: 76.3 MB (76282172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ce80c322577cbabbedd50927ea6355481abc36458b7d6b30272314b5201096`  
		Last Modified: Tue, 03 Nov 2026 01:04:12 GMT  
		Size: 103.0 MB (103048871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90d844274cc6b3f036d00d49fb9858fd571d8818c5cc49fb05fbbee4b29884d`  
		Last Modified: Tue, 03 Nov 2026 01:04:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:70ca4f39d12e2f2d9a4a62d44dced8a970a4fc7d0328a3b5e1b609346d7fad76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10634542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfec50f93824928ec94bd3753ea285b8d4b6bb08ff97338bd8a6dd89a5c4475a`

```dockerfile
```

-	Layers:
	-	`sha256:cbde4cc7602f9b3e904a45ad5044e4bdf1aab1fbc080f42d13410fd51f45af81`  
		Last Modified: Tue, 03 Nov 2026 01:04:09 GMT  
		Size: 10.6 MB (10605862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:881d875758d7010f8070f1b3fa159835984fce3cda921a68db40f611b9ade15b`  
		Last Modified: Tue, 03 Nov 2026 01:04:09 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
