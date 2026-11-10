## `golang:tip-trixie`

```console
$ docker pull golang@sha256:98da661f9b078467008cae0a4b8b4192f771df7befc023178ecb2b38b663e826
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

### `golang:tip-trixie` - linux; amd64

```console
$ docker pull golang@sha256:e9d9d080d5802ae11c4b1d3010f8110ea8f771041fa517cac34828898f9bbf47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.3 MB (350252877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef5de3a167e483a36be4df9c8b73c111ff7bc023da781293099b9bda6281224`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 10 Nov 2026 18:31:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:32:16 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:32:16 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:32:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:32:16 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:32:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:32:18 GMT
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
	-	`sha256:084e94ea3b355645d2c52906838e4836d8cfa508068f8f0b1346b8737bbed9ee`  
		Last Modified: Tue, 10 Nov 2026 18:32:49 GMT  
		Size: 102.5 MB (102470195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd313759153838f796efbe8ecb7e9f68ae45d9185f3ee5035b06feab8320df21`  
		Last Modified: Tue, 10 Nov 2026 18:32:49 GMT  
		Size: 104.9 MB (104916932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4a09d6b83a5e7cfb0523da3d6bd522b3ab92b68ac9df5fbb5a76df01f83f4b`  
		Last Modified: Tue, 10 Nov 2026 18:32:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:c03705d2bc53a4ce5ae2828e1a2a753e805aa01b177dd662102bbef769a55127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa636ec5df60c6ec1ae7a0db38d918dccc36581d54ef7db2a1a87afc847db867`

```dockerfile
```

-	Layers:
	-	`sha256:b75bdc471dc0b2ca5e754930e4d7004eca290dbe824af715a91b7fc0f703a125`  
		Last Modified: Tue, 10 Nov 2026 18:32:44 GMT  
		Size: 10.8 MB (10795463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf869fdd64dee7118dad76ebb25ec96852f1c11ed2794e1728c0bf888c7b7da9`  
		Last Modified: Tue, 10 Nov 2026 18:32:43 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:1fee48ba3aebd6534b96d00b9c5b4136e9a78eabb872b0536c7f6571e9724ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.4 MB (306357147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50774bc7e976248174f15a72ddc78fbee9ac988dd4e98cc82dd7f75f56879f8c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 10 Nov 2026 18:30:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:32:15 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:32:15 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:32:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:32:15 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:32:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:32:18 GMT
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
	-	`sha256:7aa226686e76d4934696d706d37d93d741788b4dc6787492e53ee77cf6461643`  
		Last Modified: Tue, 10 Nov 2026 18:32:45 GMT  
		Size: 73.1 MB (73115112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8c5d5684401dabd1fd899d30e738f679aa5d8d625523450ff2b44e95ef70d2`  
		Last Modified: Tue, 10 Nov 2026 18:32:45 GMT  
		Size: 101.0 MB (101014185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f584b8014a5bfb4f227f299a9b52005c41b7c47ece48d897fec74bdf5dab52be`  
		Last Modified: Tue, 10 Nov 2026 18:32:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:5042dce8c9484c6037b31011108456ea2178948546397df0803b5136d3c8cb7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10620159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c08001a0749fedba6070e6f79a6bd727f981c786925c21fef89788b1f2b7895b`

```dockerfile
```

-	Layers:
	-	`sha256:44cfa51682aada118a3103348d6da4a3c81223b67368105b9ef177700bc4ab6d`  
		Last Modified: Tue, 10 Nov 2026 18:32:42 GMT  
		Size: 10.6 MB (10591351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e1d2c87a69c209682138c5e0370b669e9172564c081f46116f768647403f323`  
		Last Modified: Tue, 10 Nov 2026 18:32:42 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:15c200f69f453af1429d6703fd7bcfa7b3ae8116dd133bb735778ea11842c46b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340388615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff7d81b55a2346a4d028f9ad2bf9e1be099a64eebc60b1f33585d96c8ea9bf6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 10 Nov 2026 18:30:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:31:57 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:31:57 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:31:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:31:57 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:32:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:32:00 GMT
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
	-	`sha256:0668d4ba7c2859c1e7a43f37018592c224e40048570bfabaaff8d4d7519f375e`  
		Last Modified: Tue, 10 Nov 2026 18:32:29 GMT  
		Size: 98.6 MB (98617891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3e4d8481dc1f4c516e9c0d29e711572906b73996a0301834aa7672262b80ad`  
		Last Modified: Tue, 10 Nov 2026 18:32:29 GMT  
		Size: 99.3 MB (99320677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e4eda44cfebb31ea509e4a1be0efbfe42ae74c139b104c7074c081a7b5654c`  
		Last Modified: Tue, 10 Nov 2026 18:32:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:541b882db53b654226c061a5421bce945374718a4c3b5a34d77efc41b81e94f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10944118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf629e83011f8ed2f8d9a7c12ba21e95515537b138b1ca9f3966097232a6bc7`

```dockerfile
```

-	Layers:
	-	`sha256:2267dfe4eedd3175b02d84ce87a77148f3d783867316bb902dd048e66f960e81`  
		Last Modified: Tue, 10 Nov 2026 18:32:26 GMT  
		Size: 10.9 MB (10915282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1744cad9dec2303ced2e097682b9f715aa2fba9e4acaaef03d3603019e636d48`  
		Last Modified: Tue, 10 Nov 2026 18:32:25 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; 386

```console
$ docker pull golang@sha256:bdab4b51cf04b361603259db2069a086ef5c18c2fd1ab5f4fbaec3b2ab6d0fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.3 MB (351345156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64fcc216cd64e3732ee1712d96298f372865ac7bab3eda582c17a0e0fab8c05e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 10 Nov 2026 18:29:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:31:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:31:06 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:31:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:31:06 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:31:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:31:09 GMT
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
	-	`sha256:e83034a81c99bb5bece2106517ac23fb0feb670f6d0cf69481048266bb7c423a`  
		Last Modified: Tue, 10 Nov 2026 18:31:38 GMT  
		Size: 100.9 MB (100915927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0cb944cc32c8be677db6402bc98890b64e4c0bdf5c7c8b6a87327e36040b76`  
		Last Modified: Tue, 10 Nov 2026 18:31:36 GMT  
		Size: 102.9 MB (102852137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac18fd1354ba76735f646988885e292795daeed3d6aace5d427f20217a273acc`  
		Last Modified: Tue, 10 Nov 2026 18:31:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:a6972ea46b2764ae50656d38a1799c80b292543bcf27c4e70f522fd3492916e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10795367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9453327321d263be195ce86a98cf4f796bd97d2bef7d8d3375a4b6f4c8ab0a`

```dockerfile
```

-	Layers:
	-	`sha256:ccffd0c6016d0171d466f74cfa5e9667c22d24493f7d71a466343f95984ae5de`  
		Last Modified: Tue, 10 Nov 2026 18:31:34 GMT  
		Size: 10.8 MB (10766725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86fc8165204eed6dce1dd34701a94cf24963d03d515d6b9625b107a9bc7a854a`  
		Last Modified: Tue, 10 Nov 2026 18:31:33 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:67b104a16fc079a5aa1e4c3145c19310ac3c4bca0e98bc97459ef473f4164dcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348145819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3a8e38b980710c5d962183518849061a28d76c03ec49e913ce246377cb8243`
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
# Tue, 10 Nov 2026 18:33:12 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:33:12 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:33:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:33:12 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:33:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:33:22 GMT
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
	-	`sha256:9af7977e7fa3bbe7e79dc06e299aeb4cd33cbc2e7c2a3def33a2d2799376f2ea`  
		Last Modified: Tue, 10 Nov 2026 18:34:32 GMT  
		Size: 101.6 MB (101625035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0bef11cd341bfdda988973cc63319cab945c47f7219c3cbaf2c43e7683ce72`  
		Last Modified: Tue, 10 Nov 2026 18:34:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:ba0c26bd68793b040f4a7f1ea5b5851a04d042df230f65521277c6eb78721d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10819816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f6187ad5b2aca844e89cf1ad5142c646061deaccb523eb42b30a77e5686431`

```dockerfile
```

-	Layers:
	-	`sha256:85c57da7b8ececa6766c42caebf8fe616997c5ffc210a328abd285032c8d87b8`  
		Last Modified: Tue, 10 Nov 2026 18:34:29 GMT  
		Size: 10.8 MB (10791252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:369eb1ae07ae55b9b77ade0be2fca5be197bf67353d5d5f0566ae88bcfd5143d`  
		Last Modified: Tue, 10 Nov 2026 18:34:28 GMT  
		Size: 28.6 KB (28564 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; riscv64

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

### `golang:tip-trixie` - unknown; unknown

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

### `golang:tip-trixie` - linux; s390x

```console
$ docker pull golang@sha256:876302a72d980d29bd5a007852640d6238b49772bf4384939898f472501b63fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324920396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1619f961ec94c9f6976e60101a0086c3bbfd261ef0a202863d7cf0080c3ed6c3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:20:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:33:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:33:06 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:33:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:33:06 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:33:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:33:15 GMT
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
	-	`sha256:98903b246525978eb23277ea714f52e0e9776746e5a299b63d76e87759ce448c`  
		Last Modified: Thu, 05 Nov 2026 09:21:08 GMT  
		Size: 76.3 MB (76281751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1ed5a594baa672006a3d9d986e5d24a45aba2b1302e2aae6ac4ecbfe371f57`  
		Last Modified: Tue, 10 Nov 2026 18:34:16 GMT  
		Size: 103.7 MB (103675946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f1f9cfa263e91f2776fb795e4aedee4b8a4ca769091edb61cf167e35d773ee`  
		Last Modified: Tue, 10 Nov 2026 18:34:14 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:119753ecf4545cb30efd633910c9000432e78fa1ea34ce63c0395cf70f9680b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10634542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7076b5c4601f432d8b60ee8c559e1976d7ceccbedd1b1b5eb7f25e461e3049`

```dockerfile
```

-	Layers:
	-	`sha256:2dff5ea7b5f53209efa569f159846f826e387243a16df4a87e965f4cf88ab5ee`  
		Last Modified: Tue, 10 Nov 2026 18:34:14 GMT  
		Size: 10.6 MB (10605862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53f7719c1e6632e5dff2f20687945797f98f76664dcd75289f50e3a8437e4333`  
		Last Modified: Tue, 10 Nov 2026 18:34:13 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
