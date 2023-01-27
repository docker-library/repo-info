## `buildpack-deps:focal-scm`

```console
$ docker pull buildpack-deps@sha256:a29405ab015fa1d2b344c60cb9559ae1d7b299c1e2b625e71b8aa24880a97c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:focal-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f0f3b9cd20a92e87f0cbd64d7b1414cee198c999b684ae4cad83a614beff0fef
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100678159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86f02e6766bda991f1ac0d54922e8c26ff7b486d9164fdb981b7ca4eb2dbe83`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:56:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 03:57:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ece640f49fb1397c83804887cde8d349b23a6cac4bf4479469ad9c7aa70c777`  
		Last Modified: Fri, 09 Dec 2022 04:08:40 GMT  
		Size: 7.7 MB (7733512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02424bb37bc22e67006f26bc52e5cb9f72555b7940c2cd6332888270a03d467`  
		Last Modified: Fri, 09 Dec 2022 04:08:39 GMT  
		Size: 3.6 MB (3627135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2208c2c67be31eab7bbd90011e316488c66f4ae84f1af8a1e8ea7d6e2612ba8c`  
		Last Modified: Fri, 09 Dec 2022 04:08:58 GMT  
		Size: 60.7 MB (60740630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:focal-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2c5d0149fda4d8820c495cbf20d43fca9d9580b833869707fdd08819e0d99fb7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89867040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75c4093e1c4655b08187e3b4fefde272d28404de159ced886e9daf9c953f8316`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:16 GMT
ADD file:b21aa237ba47147762a1b92947251163795189df45212a32e07ea3438a186e03 in / 
# Fri, 09 Dec 2022 01:36:17 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:37:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:37:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 02:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cfbc8b467b3eb89e7c394402566b2965c83f3103dafb141203e0020a8acd3774`  
		Last Modified: Fri, 09 Dec 2022 01:38:40 GMT  
		Size: 24.6 MB (24589003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bbb3798bf5d39f007ffb92890ba15a4431d25be08e000ce5ad67cabeb3a24b`  
		Last Modified: Fri, 09 Dec 2022 02:54:55 GMT  
		Size: 6.7 MB (6726425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c89b24579b584aa34092b2fc2fab0ed46c81496c76c296373f5ecf95df9dc84`  
		Last Modified: Fri, 09 Dec 2022 02:54:54 GMT  
		Size: 3.1 MB (3106803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034738c63a0d52537c84e7e5fdb2227a78ba9fd5f01b0518e8b8392aeccfe794`  
		Last Modified: Fri, 09 Dec 2022 02:55:17 GMT  
		Size: 55.4 MB (55444809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:focal-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:9a3af5885475465c19b25c25e7a74a4881ecef566f52400252db82a53490e074
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99220807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e08e03628457680a6fc06ab229b2dfad284bbe223f9e900099e565202bdca2cd`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 04:27:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:27:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 04:28:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a220fe66fd19d356884552813c33a63fe842057b9322374143114515f1a5ad`  
		Last Modified: Fri, 09 Dec 2022 04:41:33 GMT  
		Size: 7.6 MB (7597548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df2d47b74b4a15e824762c5f7680d0b3886b358fe2c546d72ad4c8d8215b140`  
		Last Modified: Fri, 09 Dec 2022 04:41:32 GMT  
		Size: 3.6 MB (3616366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43422ccdf0859ff598f2a2882879f28fb7eb14c1975937a512e8a455064a08e7`  
		Last Modified: Fri, 09 Dec 2022 04:41:52 GMT  
		Size: 60.8 MB (60813725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:focal-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:792b2c9ded96525a6c317c703aea451bbbc4025776d92537a63930bcd0b6b923
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116007607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc6f81e7edee281a62f162db183618724b91c01cfe05e5714d969bfe9adf860`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:27:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:27:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 03:29:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d15e7b82062d4fcbb005c56495982a12e9f10d147d0231c076fd7ce2ed6193c`  
		Last Modified: Fri, 09 Dec 2022 03:51:43 GMT  
		Size: 8.7 MB (8688320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6edae5d3a5f241b21af3b849332f9a34575f17df796867c8b980fd65a4ffea`  
		Last Modified: Fri, 09 Dec 2022 03:51:43 GMT  
		Size: 4.5 MB (4486862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7848d1dd0afbd722d083b19691a628ac74df59b2afe1ca5c669c15e09d370411`  
		Last Modified: Fri, 09 Dec 2022 03:52:13 GMT  
		Size: 69.5 MB (69532952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:focal-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6194784e1309e0c34286eaf613101864ae837f61ddf968a1fc484d2399b7052b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (97954067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a63ef44bfacdd6a04afff19a72a22dbf639e4817e8c100574b0487bcd23bb30e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:40 GMT
ADD file:3d26982d2188d52ed2423587d3d2597c1f8ff614c19408d892cadc91d3743deb in / 
# Fri, 09 Dec 2022 01:52:43 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:39:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:40:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 09 Dec 2022 03:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5d330d9ae4f68425a719ebb93a3911994ee56b1328cf256fc3c44a4050de22ec`  
		Last Modified: Fri, 09 Dec 2022 01:54:57 GMT  
		Size: 27.0 MB (27016083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb5c8dcb9e8f11d1d9c856fbb15f6003729b3c2d2c3aabfe36a2c8ce5290d03`  
		Last Modified: Fri, 09 Dec 2022 03:54:59 GMT  
		Size: 7.4 MB (7374071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3845b13ae3c42969d60b06acd4cc5e34858d2a4352d84ba4c3cd5c138abf2d5`  
		Last Modified: Fri, 09 Dec 2022 03:54:58 GMT  
		Size: 3.5 MB (3542376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcb353f743a9d5efc37b3fb477a75f00692b46f2a1796a1163463c0af3a543d`  
		Last Modified: Fri, 09 Dec 2022 03:55:14 GMT  
		Size: 60.0 MB (60021537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
