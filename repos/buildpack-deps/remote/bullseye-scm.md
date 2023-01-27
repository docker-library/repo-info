## `buildpack-deps:bullseye-scm`

```console
$ docker pull buildpack-deps@sha256:1d2306e685c2ba84db06c5587ede5ca451ec6ea800410be58b8970fa0089bdb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 8
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bullseye-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:1fc4f04cc44ed62cafe4a23daaa1958ddb2d2c4b56cba6ceb09be8b3d7d27df2
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125648924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7c821b3adc5397e2795821f4488eb6a730300dd69c60386cc93f8919d07ba4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd150679dbdb02d9d4df4457d54211d6ee719ca7bc77747a7be4cd99ae03988`  
		Last Modified: Wed, 11 Jan 2023 03:12:22 GMT  
		Size: 54.6 MB (54583611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bullseye-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:3ee5d5b37c62e0e56de9479002c3b5887f0952454332aa1489c4e26259959da4
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120495998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf0e8d8d2f21333694ed4e3f04e4a1224bd70d00e9de526f5f5c70fd2c0205d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 01:55:21 GMT
ADD file:37f880fde966ca6538f60068c4025b396f3e23cdf2cbc8d99c7ab2f6bb46a82d in / 
# Wed, 11 Jan 2023 01:55:22 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:25:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:25:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 02:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:07e0d63e97bf89a5c9e120008604cfeebc92d155c136c0f88685e1f70c16fd1a`  
		Last Modified: Wed, 11 Jan 2023 02:00:09 GMT  
		Size: 52.5 MB (52529956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdae3cec496b20668efecc8632139b94b3403a6c16339bc73fc160e86e193eb`  
		Last Modified: Wed, 11 Jan 2023 02:32:44 GMT  
		Size: 5.1 MB (5070983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff68f7018ae97bce79d8cf74dfadbc72f7ee992a4c03f7cca5af31152b32768`  
		Last Modified: Wed, 11 Jan 2023 02:32:45 GMT  
		Size: 10.6 MB (10573811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfb73cf9544762533c9045dd08c47a64563ffe022966a8ba513276a9535f01c`  
		Last Modified: Wed, 11 Jan 2023 02:33:09 GMT  
		Size: 52.3 MB (52321248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bullseye-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4ba44a59e8f9a8a72af3fc22731d375969d5d7f163570fcb8d10b68e31ea6ec4
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115683663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1840660c1e2ce4c12f476d335124ccfe9c05a49a04886780bbfe7375572da4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:17 GMT
ADD file:48f6407691a382c3ad731f05f78d4210efd40f1a00abfd6c043d8401c6ca1811 in / 
# Wed, 11 Jan 2023 04:00:18 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:33:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:33:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 04:33:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d705c97ea3a2300e9dda9a18ff662a98c2811b41147a15d4f4791f475ce8be47`  
		Last Modified: Wed, 11 Jan 2023 04:07:17 GMT  
		Size: 50.2 MB (50190808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40c8c22d251f4b5db1459714e722a41f58f37155eb88da1b4155fd032f90153`  
		Last Modified: Wed, 11 Jan 2023 04:43:56 GMT  
		Size: 4.9 MB (4931090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97570844854b4122edbc4c60110b4f0690133f761a66c1d6b732b80d4e1b26be`  
		Last Modified: Wed, 11 Jan 2023 04:43:56 GMT  
		Size: 10.2 MB (10217786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a51a81f69b9de7a348ea8adb056e02781fc7587fffc6c2ca9d30983b6fa866`  
		Last Modified: Wed, 11 Jan 2023 04:44:20 GMT  
		Size: 50.3 MB (50343979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bullseye-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b76ba75cacd09330e379361baaa234b373b6b3d465214452e90e80a0edf2abc2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124387947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df81d14cc0f83918d4858e4faedfc91cf79d7c7ca232c249b85dd4d37ed0d136`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:24:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:24:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:24:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b716680367d1dac0e54c48f75506323e0bb03628542a0fd6db39efeeee9adf5`  
		Last Modified: Wed, 11 Jan 2023 03:31:34 GMT  
		Size: 5.1 MB (5149712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0855378f8903bde22cfbcee08cd239678716cf01f24a3fca9478ef4121a84d91`  
		Last Modified: Wed, 11 Jan 2023 03:31:35 GMT  
		Size: 10.9 MB (10873659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb8dc93d4197860c2bff47f2c2f280c2dd8ed699e7b3241aa325ecee53c7d7`  
		Last Modified: Wed, 11 Jan 2023 03:31:51 GMT  
		Size: 54.7 MB (54682717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bullseye-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:04297c4e6b2adff24abc2d330e1f6f100981a0711e420eb6ec9914fb6ab26ffb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128251762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f207378fe00a2afc95b420b446c62d0c4c6faf1ba5788100823476666df5b89c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:15:51 GMT
ADD file:92d8f809db3287489506ac143940f0e87d91ffd2d40c99318ab865e9fae1e6d4 in / 
# Wed, 11 Jan 2023 03:15:52 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:46:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:46:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e322a78778338013392b4956017b1d3ad99541f9ce0749e46105a6a52ddfb637`  
		Last Modified: Wed, 11 Jan 2023 03:21:32 GMT  
		Size: 56.0 MB (56005290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570aab5be6ef21ad7a5b183a409e28f826d5c384d45be14e506f76c10331f7ab`  
		Last Modified: Wed, 11 Jan 2023 03:54:38 GMT  
		Size: 5.3 MB (5290942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edecabcd081a0baace43bc2d9d5c85fab7cba301d9919dc0796b4733bd40a77f`  
		Last Modified: Wed, 11 Jan 2023 03:54:38 GMT  
		Size: 11.0 MB (11032539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3424ca66696ab7b69ec8fc82efda8381a70781a83af075cb271e01b9d16f28bd`  
		Last Modified: Wed, 11 Jan 2023 03:54:59 GMT  
		Size: 55.9 MB (55922991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bullseye-scm` - linux; mips64le

```console
$ docker pull buildpack-deps@sha256:c5e417e009d1fbb472648d4c03aa69bf62620c2d3df62eb366fd50d5b3e4be4b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122336716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b104b108a0e1dfa31ec9db8f9e57095eda63c8c90f958577096133ee7574a3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 16:33:42 GMT
ADD file:8c29f17eac3e24c302d9d5569b89e9c08432801b4ae509971a7b4981c1946a6e in / 
# Wed, 11 Jan 2023 16:33:48 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 17:21:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:22:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:23:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ed9c81424eb02ba70b9582fe73080191ccd4486689354a607c1eb45a6129c865`  
		Last Modified: Wed, 11 Jan 2023 16:42:37 GMT  
		Size: 53.2 MB (53245158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9374a6c2b903c210b287514b63a17b6d52732a6b2652058450b82ac8067f0bdc`  
		Last Modified: Wed, 11 Jan 2023 17:43:00 GMT  
		Size: 5.1 MB (5124172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a91d6107a086f391d63672b23562ce046d3602c73826aad883cf070c1726ca`  
		Last Modified: Wed, 11 Jan 2023 17:43:02 GMT  
		Size: 10.7 MB (10662140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9930e377d464d7aaeebbc0449b70826e0e383ea39dc0e150802d2735ac297c`  
		Last Modified: Wed, 11 Jan 2023 17:43:50 GMT  
		Size: 53.3 MB (53305246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bullseye-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:02bf7ea90c144d130e8bfce546de7669a683754fb07c73e01853208b5cac3b72
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134806247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45d19385093d631ba0f6164df618824de2edc9b3a566977b221489c375b29ba7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:49:05 GMT
ADD file:9b8f1afc3870e9ea3bacdbf146017c3fdebee0140a9ad896fca12bc5a1927c0a in / 
# Wed, 11 Jan 2023 03:49:09 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 07:14:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 07:15:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ab68a4092b73f1d14a0c9ccbe7c004408a6b0123b637274d22899b983919c917`  
		Last Modified: Wed, 11 Jan 2023 03:54:58 GMT  
		Size: 58.9 MB (58897136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82767595e0d312840f3377a13b01e75755e3d2ea746a167b9ac4b9f0df4ea3f4`  
		Last Modified: Wed, 11 Jan 2023 07:25:55 GMT  
		Size: 5.4 MB (5413012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9c6ddc1a974f319bc514bec61ed28b2a96883198d3147b839997cd0882a430`  
		Last Modified: Wed, 11 Jan 2023 07:25:56 GMT  
		Size: 11.6 MB (11629738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc74a709656cc014af14517d8435f3ce3eb9c8987b7a80399ec8b2652e6fa9`  
		Last Modified: Wed, 11 Jan 2023 07:26:24 GMT  
		Size: 58.9 MB (58866361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bullseye-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:310450c217d3678df8688aa85a6d7d6443f22758c4e0f9eb42ebc05998131eb4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123226088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b497ac25766e10ac2f8c0a3f20b2e66c6eae29d881a3b97d2fd8d3f75ad7c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:22:04 GMT
ADD file:a605485c9a58f2aaddd6bfcf07e5151b73e50e298efd5e961994458a9e5a0198 in / 
# Wed, 11 Jan 2023 02:22:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:48:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 02:48:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 02:49:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:88b68ca7ea4f57b6a28bed828673ab2975209726cda9d30ec7f98f640c0edecc`  
		Last Modified: Wed, 11 Jan 2023 02:26:32 GMT  
		Size: 53.3 MB (53258446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1925ea73774ccbedefa921e7fc71ef1331934c007223aa03923d58253b80a5e7`  
		Last Modified: Wed, 11 Jan 2023 02:56:37 GMT  
		Size: 5.1 MB (5146970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba901cfdb734c7bf529ae6983af3e4cbee77886b57959083ac3b6b1247c7f9a`  
		Last Modified: Wed, 11 Jan 2023 02:56:38 GMT  
		Size: 10.8 MB (10766016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f48eb029238d0ca62cad138a9fd5d5c2e2dd455eb46f8cec13b8a78c07a488`  
		Last Modified: Wed, 11 Jan 2023 02:56:54 GMT  
		Size: 54.1 MB (54054656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
