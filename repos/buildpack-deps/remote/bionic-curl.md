## `buildpack-deps:bionic-curl`

```console
$ docker pull buildpack-deps@sha256:c4303b42d6ec81393ba63eeb2c7b75012f88169945cb8da3ec7567577defe8b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9eb7d88d03c4679a0cdc63ccbf18182ea7abad7c0374a2ce0e6ca1fca88dc408
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36354564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee827e1a0d0bc8086be9ad2a403723233bb9975134a399da9fb9f651cab07ff0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:09:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:09:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70e1735669b0f58ff8d77a231156d8439ba4d153be7da76d0d62793cc801a79`  
		Last Modified: Mon, 02 Jan 2023 19:17:54 GMT  
		Size: 6.6 MB (6617147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9a31ed2ee5d3aec4310bdf9842467af28116765a8b61aad646b9743e9dd28c`  
		Last Modified: Mon, 02 Jan 2023 19:17:53 GMT  
		Size: 3.0 MB (3025975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:85eb35d792c0d04405f3b5a7c24a10a7d3b2fae02c64c8bfba29e6a7fbfffbc1
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30569100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f01ffb47f24d0cd3c4683940f55b526b037b8f993b93d00f1ae07f26ba15e370`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:24:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:25:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e540801c42f8432293d458d53e5bc0b6ef91b8d645947689839a7231dca6961`  
		Last Modified: Mon, 02 Jan 2023 19:39:15 GMT  
		Size: 5.7 MB (5678197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91387436a7cdbf2383b0e9a88100a86c5dad038d936ee66b8f471b2fb5aaeb8`  
		Last Modified: Mon, 02 Jan 2023 19:39:15 GMT  
		Size: 2.6 MB (2585770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:366ccccbe0847130898cc613cb765fe81697fce4515d69f1d97b6d23c8d09047
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32580070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7bec01d161e5f7ed4a37e463f6fde9e9f38e7b67c219cf7126d830bfda2e35a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:47:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:47:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57589a61e75b6fd9c40b958bcd242697d3bd9c18d4e46b2ab119920727081ae`  
		Last Modified: Mon, 02 Jan 2023 18:57:37 GMT  
		Size: 6.1 MB (6054448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fe4f939a742980b846ab4256c36fd2e683a0409f5c4655aced05555c4bf9ee`  
		Last Modified: Mon, 02 Jan 2023 18:57:37 GMT  
		Size: 2.8 MB (2790412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:1c967b86edc86a6f37019460490e7787e99fa7aa209ee7f679770ecb0faaefc2
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37109590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7670feca3b83449f297a04c491c56f43fc850975346f5576a22190b008bd581`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:00:42 GMT
ADD file:dc76519390168deb6f9bb6052d08c6e7840908a831276d99bb19c6c245f8517b in / 
# Mon, 02 Jan 2023 18:00:43 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:22:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:23:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1b284dbae22f155bfee2a25073c97c9758e66aa7129a455cb533d8e2cbc873f9`  
		Last Modified: Mon, 02 Jan 2023 18:01:17 GMT  
		Size: 27.2 MB (27165399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd588f5ab18433db51d33fb54b32dbf18f5af8fb4dbd30b3407f93e99ff057a9`  
		Last Modified: Mon, 02 Jan 2023 18:28:46 GMT  
		Size: 6.9 MB (6902109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bf514bf8c4c2f919659a2f58d292672576181c783d997d3caa71f5818bb613`  
		Last Modified: Mon, 02 Jan 2023 18:28:45 GMT  
		Size: 3.0 MB (3042082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d00accab53c5270df1198eea88a9b1fca15e01ed049666433fd85f8b6e71be1a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41216705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ff22df1c27c786f55f08b5d04941b3c4518a138e89133b2adb6bc5285f6d57`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:48:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:48:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befd0bb839ab8fc69203938758828b00be2b7fb37d5210551ea3d90ebda94183`  
		Last Modified: Mon, 02 Jan 2023 20:01:31 GMT  
		Size: 7.0 MB (7033777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844adca0bb9cb09cd253aede357521a09c1c33c3ad28d1bfd07c2efac2d3eecc`  
		Last Modified: Mon, 02 Jan 2023 20:01:30 GMT  
		Size: 3.7 MB (3740443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:8c11e12fff346aa885d17e3b57252aeabe8bd71e751f3141c178218ab4bcc942
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34654590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7887a08344684da4e824569df8e67003c790b769b39cf57483358b90f5d448d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:43:32 GMT
ADD file:735e44144d502635bb4630f743d35453afe550177166dec1f1f6f698c04d4a07 in / 
# Mon, 02 Jan 2023 18:43:35 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:02:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:03:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:22dceda0ac2bcb2588338678999c8d219d3822e36f9e1f3c16e9cd33703c859b`  
		Last Modified: Mon, 02 Jan 2023 18:45:16 GMT  
		Size: 25.4 MB (25371161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf51485d61dd8920d8818bf878a63bd6646875b39b7f02a1de09acee5bf9113`  
		Last Modified: Mon, 02 Jan 2023 19:18:54 GMT  
		Size: 6.3 MB (6306901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1bc61dc0e7c8ccf856956e64b47fa0b7e11797064ed4be5051e07d6931c558`  
		Last Modified: Mon, 02 Jan 2023 19:18:53 GMT  
		Size: 3.0 MB (2976528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
