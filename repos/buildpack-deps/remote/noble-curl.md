## `buildpack-deps:noble-curl`

```console
$ docker pull buildpack-deps@sha256:820add8053279dd54478c0d9364428ec901bc1413c086290bfc83fe1162f1e3b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:noble-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:4b426bbaa943d4562f2a9652a71194876a48ada25766e03e02bb4bfa45317a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43355098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d58a4f22b50b2552935309d4d9169f5c71a0fedae7ee1c3ec0a95045d5892c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a26ed5c50085191e934a3af3bdec8361492a36a904904f1355347415e919e8`  
		Last Modified: Sat, 17 Oct 2026 00:12:04 GMT  
		Size: 13.6 MB (13589340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:41602e368ccf2dba142da3945070f7dfdb860bcfc006c56a65f2d59c6c6307d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2598581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d650d0335abe982eac440930b17a730aa97dd7fe6745be39238ff407906087`

```dockerfile
```

-	Layers:
	-	`sha256:36164b58b367c03e3c3f739dfedfeb3bd2da5e17e0d708f05f412ca4b0f1466f`  
		Last Modified: Sat, 17 Oct 2026 00:12:04 GMT  
		Size: 2.6 MB (2591665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:867805e019b2d16b6d1d9540e6f5a79b1e294784eb0e9eb1b926048bda7de6c8`  
		Last Modified: Sat, 17 Oct 2026 00:12:03 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:7755c7766de2e957bfe64225c6451c290f6b0229d00c518a0db87f89cb201b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39640833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d2b635f1b46d6aef8e0453303b20387a73a5ac5f0aea10bb7d9336eccf1f0ca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:21 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:21 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:24 GMT
ADD file:23a54ed1daab980a150295ab5c21e769c0a6ede1385ebb69249df9e6461c3a52 in / 
# Fri, 02 Oct 2026 08:03:24 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cfda03319c73b24fb02c0806fdf981abb07b3d5025d2e7c9710f93347cee3d4d`  
		Last Modified: Fri, 02 Oct 2026 08:36:29 GMT  
		Size: 26.9 MB (26896728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d0f1fa2016ba4f86515095f960794ed4ea33b7f4c8821ca919e56bffc3afc4`  
		Last Modified: Sat, 17 Oct 2026 00:12:28 GMT  
		Size: 12.7 MB (12744105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:83614416d528d4b2df832f639bfeb773a4342bc454dad0c71a57689bc2fa2562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2600948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cb509245a4cc64460742ea4fba8b5dd1553d64568d499ddf5d19ebf3f8656a`

```dockerfile
```

-	Layers:
	-	`sha256:282b7bcca1c0ca5ec2987ff1a4ee75733ef4e659b55290938f8ccadd81754147`  
		Last Modified: Sat, 17 Oct 2026 00:12:28 GMT  
		Size: 2.6 MB (2593969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3949e3ac165aeec7373a5db6731722e8c84fea17254600bf06263776a2c4d32b`  
		Last Modified: Sat, 17 Oct 2026 00:12:28 GMT  
		Size: 7.0 KB (6979 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c975ce4edd436f5e102ece6f1c2e9416e0a3ce4b5f8477a0a371238828182132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42372638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5728b22cd5d05fea757a733bba4fdfef36dbbd026732446795bbfeebcb32fc5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb9e33f85c1fdd1f02fad18caf003f89f5011ad69e295a5250ea23ca4e22f4d`  
		Last Modified: Sat, 17 Oct 2026 00:12:08 GMT  
		Size: 13.4 MB (13432877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7e5d4ca7ddee5f67a5263aafcf01eb53772f0e3778e906e6b3710d39fde444e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2599719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a181b7887e2198d9ad776b2c04d31f9ece0171e9f7267561ba20baf004f518`

```dockerfile
```

-	Layers:
	-	`sha256:5ff1a9bc5e35e45602ce58770bdb0a1119c30b47e9b5cefc2a48f9eba4d23eed`  
		Last Modified: Sat, 17 Oct 2026 00:12:07 GMT  
		Size: 2.6 MB (2592723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11c29a8344973ba1b99c3b67bf32be6a1ce72b9146799974df9dfc58bf3fcb9e`  
		Last Modified: Sat, 17 Oct 2026 00:12:07 GMT  
		Size: 7.0 KB (6996 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:20cce6390be6e29ad6d70c12364a281ab17d59bbe18f0a6cfda73bba6f230502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50294853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e8ea030b0a7c4f8cb627d2c5ecd3fffda59d5e71b8c231540f243a8a6b9309`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:13:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc6fe5f42708d68a91c8079a369eda83842f43ebf55ad50a52d811f8865b040`  
		Last Modified: Sat, 17 Oct 2026 00:14:03 GMT  
		Size: 15.9 MB (15916863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:faf3fc3869004fbb2378a3853c51f7fc1b5a89d2a752ed750f80dfcbdcd1ab68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2603232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bef0520dc14c579b772297bafb9fb7aa6cd409b006b6d6b5528d4e51ae124f`

```dockerfile
```

-	Layers:
	-	`sha256:9f7c7583a36afe4a04bc9fad890f51bbbb931b1c87ca64dd12643e6d722088be`  
		Last Modified: Sat, 17 Oct 2026 00:14:02 GMT  
		Size: 2.6 MB (2596284 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86e0e9794fe8e6745a6ed5ce40ebb28252c9ead124ef6ee84b71fae2a38746c8`  
		Last Modified: Sat, 17 Oct 2026 00:14:02 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:72f5c498fd4359ae29b01717587ee23c2e4c722da560ec7214685b08813d39c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47511854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc4c8f73ba4f81785a2dd6e606cc3324828942a69efbedfe82b2cdad145db44`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 22:20:53 GMT
ARG RELEASE
# Fri, 18 Sep 2026 22:20:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 22:20:54 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 22:21:41 GMT
ADD file:3a1916ce71708268db17b5ce7c5482fc86a6dce4c032062460878125231681f1 in / 
# Fri, 18 Sep 2026 22:21:45 GMT
CMD ["/bin/bash"]
# Sun, 04 Oct 2026 20:41:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f744af9afcd9f5fe3c98a1581df8785f8f3920cb60a4a7ba86497465ccf35413`  
		Last Modified: Fri, 18 Sep 2026 22:30:18 GMT  
		Size: 31.0 MB (31049980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb35850526da01bc65f0adc2581a6148eb028798013159608be0e37deca406e2`  
		Last Modified: Sun, 04 Oct 2026 20:42:52 GMT  
		Size: 16.5 MB (16461874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:eb09a7e232a215038e2966f2d1693090028049d35486d5ffbf7dae0a5e5a67f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84283bf96d2daf3984238da0dafe0c23a793e47fd14334d44ab39d2c7c5245fb`

```dockerfile
```

-	Layers:
	-	`sha256:eac0e47eff0b3581042603431d7cce164a24b53e5af44b526c0ade11c999cb55`  
		Last Modified: Sun, 04 Oct 2026 20:42:50 GMT  
		Size: 2.6 MB (2585558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba5e7290ff9d0fd5628a05fa384f04d087367b873ea19b6385fb5795d5c1d9f3`  
		Last Modified: Sun, 04 Oct 2026 20:42:49 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0046d178243d957f6ef7d4d93e3db3a0f06ee0773c7a239a63c54c59834587cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46939517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0993cd270e6c478f9a86fcfc08efb953088e40939dbf0752e351807506cf45bc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:12:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cd4e7372c422f6dd092c87d7b8d982498eb40b4deddf969419e88c7590a03d`  
		Last Modified: Fri, 02 Oct 2026 01:13:43 GMT  
		Size: 17.0 MB (16994197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e68f2e90376908da88f568775533a9b6e7becd4472cd583cf88049121d06bf89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2601400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dba6b70062a1555355271762ae2ebdb64e6629d54883357f3887b47ec726d0`

```dockerfile
```

-	Layers:
	-	`sha256:7b73df604eca5ade0dda796348cf169a2aff3d68f266dee14f2e2b64e35f82ff`  
		Last Modified: Fri, 02 Oct 2026 01:13:41 GMT  
		Size: 2.6 MB (2594484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c0781f2b952ee67b33c328570ef1117c4674a2240e7d071945b93fa3972836c`  
		Last Modified: Fri, 02 Oct 2026 01:13:40 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json
