## `debian:experimental-20230109`

```console
$ docker pull debian@sha256:d5e6210a282f3310044c81271e98003ad8b77aa81b403474fa8168b50a3c4607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 9
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; mips64le
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `debian:experimental-20230109` - linux; amd64

```console
$ docker pull debian@sha256:61bb4c8b0a8a8925f81269d63dfa87985812776fb1e5de5f74a60d666952bef2
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49040961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954b2d3030589a7d68db242b93feb772405f1eab6bba877d02855b2cd4671b98`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:36:48 GMT
ADD file:a472be541f4793676ca4459eecc1317f0a0a37318f675b0a0fcb25651bef94de in / 
# Wed, 11 Jan 2023 02:36:49 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:37:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2ea704eb82faab6fb3931c69ced55d3151ba782c09e34f82ee3f517a70bdf0de`  
		Last Modified: Wed, 11 Jan 2023 02:42:17 GMT  
		Size: 49.0 MB (49040739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15e7038da5a7a69a3e99e905d905d9a29f88e7fa5934495fa1e4ba2c25306a3`  
		Last Modified: Wed, 11 Jan 2023 02:42:38 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20230109` - linux; arm variant v5

```console
$ docker pull debian@sha256:3179663a7e61b6b83eb09d8098b346007bb021c2aa34eba49690bfd3d3e70cda
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48018183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c9f2d7613eae444b27895c80fc3e1fcc0cb6d36cff3977bd8e71643eb66cea`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 01:57:08 GMT
ADD file:f8addf0f27d3efc8283bc4e3a7ca9f06b6cc9b4fcbcd09ba7ed7d39c9c16c5a0 in / 
# Wed, 11 Jan 2023 01:57:09 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 01:57:23 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:8b3394d1cdf2a55f5514dc0fddd06a144e5ef0a0ed6b78a11bb2363f9f66d3c5`  
		Last Modified: Wed, 11 Jan 2023 02:03:09 GMT  
		Size: 48.0 MB (48017961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a89375b610348f4f7c93b4fb7a666d3114a508d7b77c8e4e7e35861d6502201`  
		Last Modified: Wed, 11 Jan 2023 02:03:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20230109` - linux; arm variant v7

```console
$ docker pull debian@sha256:b7304e8cf7476939f2fa0647461211392092109ad3e67f8ca2d64b26be45386b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45836855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c140aaf9a162c6a41640772e0c8bac0eb10538a785a34d9eff7be66f634afc7c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 04:03:38 GMT
ADD file:8250684cb24bbe28aba315042e15060dc349550343b17ffe179a748365ae86cb in / 
# Wed, 11 Jan 2023 04:03:39 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:03:59 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:22657498a9d4bf53b1371d61d5726596dea208d057aeed5b0a9363530b559490`  
		Last Modified: Wed, 11 Jan 2023 04:11:46 GMT  
		Size: 45.8 MB (45836632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff8e2d8df1f85d04df084267a44eb5fcd6e58690a3e6f6081d26a333e2bd83d`  
		Last Modified: Wed, 11 Jan 2023 04:12:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20230109` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:351770a99ee8f402e1e2134044921d7fff85aa4e5da47078e62f0161448ba98d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49084770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d884efce7a0826d706d0c490e79ef96a61d863429a3ff204d43da4e575834293`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:59:01 GMT
ADD file:340469c7e9d21ec908d8b07fb16fba1e70836f1b72c18a65eda82e4aa37d7084 in / 
# Wed, 11 Jan 2023 02:59:02 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:59:11 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:62cda9971d1a0fbbfef8e70c8535d75041604d167dfa6996f54b284133b006e6`  
		Last Modified: Wed, 11 Jan 2023 03:04:22 GMT  
		Size: 49.1 MB (49084549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97763a913c163086254eb5381b54a88ff1472cd717e097588c0c3cfed7b6375f`  
		Last Modified: Wed, 11 Jan 2023 03:04:43 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20230109` - linux; 386

```console
$ docker pull debian@sha256:75610b9861a3edfcc1744ba4ee486cb23f4c01f78a3e7a4078f04971c154d5c8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50082721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a40e8c104459d06c6117cdf901a8e070004f3377994af2d143764a93f7dcf28`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:18:35 GMT
ADD file:b8c0b3f08139908a3d62cce0249becd363113cfcd5b6df670eeffb243451060c in / 
# Wed, 11 Jan 2023 03:18:36 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:18:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f78a5db153f285d87f16381f41bc7ed343caa75849d766e7e28ee78b8f4ea3ca`  
		Last Modified: Wed, 11 Jan 2023 03:25:36 GMT  
		Size: 50.1 MB (50082497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659875b94febc06eec57b6f4dff112bd85453accf6a3d4a9e9e684e1b8a96d3f`  
		Last Modified: Wed, 11 Jan 2023 03:26:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20230109` - linux; mips64le

```console
$ docker pull debian@sha256:fcaa624bb84416eea3abe5206e862263daf9cc0523b3066461f3eb63d6a3c827
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49043293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008bc5e62e8c99575b35faf2c20613725aa4d83bdee6991a461370f75ba4e33a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 16:39:08 GMT
ADD file:b6f9e129b458abeb46f29bde9ef4b7a2f2a6730a6bfa446c773760e775307389 in / 
# Wed, 11 Jan 2023 16:39:14 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 16:39:58 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:da23c6d00689c02fb3afb8d2f8d3eb62dfc45b502ab75e528137a9c0d599e2f4`  
		Last Modified: Wed, 11 Jan 2023 16:47:38 GMT  
		Size: 49.0 MB (49043070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793c93d020f247a86cb64faae45592591cf60ddf6e42b6e6a9e5bc4aa9564312`  
		Last Modified: Wed, 11 Jan 2023 16:48:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20230109` - linux; ppc64le

```console
$ docker pull debian@sha256:28a0aefa5cd78bb21b9cf6c3d0836520b578f17127694ccac496bd18b5d75125
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53077932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629d839eca658475612c81d0fad1134e1c122165cbd1b18c6ca19926f41a0776`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:51:55 GMT
ADD file:7cb42dbd2f65536bdc4309fb973e22cb3dab0375522f790a88b1a6b26a73abff in / 
# Wed, 11 Jan 2023 03:51:58 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:52:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f26643ab531aae0b3d2dcce29417c75c0aee939c94fd997fa80723d071c2188e`  
		Last Modified: Wed, 11 Jan 2023 03:58:24 GMT  
		Size: 53.1 MB (53077708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ded31cf0ea000dc9c6f7515c2822bb3d68359e60c290b08007688aefc3a904`  
		Last Modified: Wed, 11 Jan 2023 03:58:54 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20230109` - linux; riscv64

```console
$ docker pull debian@sha256:d05803a718b0980cf7f37c38137c8108a6d3bdd5d09194d03bde625d275f9f49
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46470931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90bdd6d86920142fa0384920f8f024553be230e23dd32f389683544d0767d8dc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 16:18:27 GMT
ADD file:874234987d4ad6bd13a7a56aa69863e33fab1ac263902054ffb0a68d046db9a7 in / 
# Wed, 11 Jan 2023 16:18:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 16:19:13 GMT
RUN echo 'deb http://deb.debian.org/debian-ports experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:8b06514c6efa491d92295ea0362ec27163d61e8d92358f6b89e6791ef416c014`  
		Last Modified: Wed, 11 Jan 2023 16:21:53 GMT  
		Size: 46.5 MB (46470702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe728b7ed4998a70099e4baac87ce8d83f1f2d4cd7fcd4e161e68d885e3306`  
		Last Modified: Wed, 11 Jan 2023 16:22:40 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20230109` - linux; s390x

```console
$ docker pull debian@sha256:b9cf6538294881b8d7727c53a17a525afddd2d464be92f9436e9faa97fa2a25f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47434307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa52dd895d0ea4b580208ac14a2b650d5053cf58a8315ff74363239763b7d4f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:24:11 GMT
ADD file:8a39e7d372aafafec15540b4371fb3e5d10767a2938856a7ec6d49761815a2f5 in / 
# Wed, 11 Jan 2023 02:24:15 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:24:32 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:83741c7534d43b1ff77d8fd7a8f11f5add467189dec5a410d7310b6c372f90d2`  
		Last Modified: Wed, 11 Jan 2023 02:28:24 GMT  
		Size: 47.4 MB (47434087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4932f50c96a8d8f03b99575743a0d2b45c868e3b23953a2675fcb89af53b09`  
		Last Modified: Wed, 11 Jan 2023 02:28:41 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
