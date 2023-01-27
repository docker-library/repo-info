## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:9103846258ae7957780553fb501e97460705c41cb1b79bd16022bef038073e4d
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

### `debian:bookworm-backports` - linux; amd64

```console
$ docker pull debian@sha256:d749d4c72a0ceac21221239a4d737a43dc5bfdefdf1e1f49b86731fd755a0f79
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50106755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9021cc31fa23c876a1153be051d77e3619c7df16944b28e7ebbb6ee5017bb542`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:06 GMT
ADD file:cbb7762965e1100a173296573d49c70a5e56d5318572ae1b037854e45a3c81df in / 
# Wed, 11 Jan 2023 02:34:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:34:09 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:248f02a8d7fb9e98e764c3ef93b9922d99e6b305be444aa17bace4ac12a55508`  
		Last Modified: Wed, 11 Jan 2023 02:38:08 GMT  
		Size: 50.1 MB (50106530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90acdc78afdffbcbf3c56656d0cb0a3c64741cb0f58d5305b35892e226e758ef`  
		Last Modified: Wed, 11 Jan 2023 02:38:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:bookworm-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:4a7e332f7fac29107004772de910bdb09c61a03ee98633844fe47a62ae27de32
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49082557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7950a01ad51be409d726902e29302c4c07e200449ab4089883d2034c3373d1a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 01:54:53 GMT
ADD file:5d45a8dd4f8495c2419fecb2fbe1375bee8fdd9c4ecd8482c9d93073ceaf0eb1 in / 
# Wed, 11 Jan 2023 01:54:53 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 01:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c18e65c95b83dd67fa3b288d25c836639aed042685d4b545ff41efbf3046505d`  
		Last Modified: Wed, 11 Jan 2023 01:59:27 GMT  
		Size: 49.1 MB (49082333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305bcf05180d1c29c1577472abd8a1a96e9487a1e4f3dda0c377ecfa4e79a69c`  
		Last Modified: Wed, 11 Jan 2023 01:59:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:77256615df02ef628b7eb0728587b83bd5556f4250807bdc03f0d45c8f936e9a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46896426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75aa37d1f8509b4c1fff2e55981367274a426ce84e768a68ce4b4f706961147`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:59:43 GMT
ADD file:b6a187b9130cac841492cfd6fca00af190439f4343e640b8bf9a62de450ba611 in / 
# Wed, 11 Jan 2023 03:59:45 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:59:52 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:702c5cffc9db6e776f7684c8b275c47d1706fe0c1c6ae97ecbca1158b5344ce9`  
		Last Modified: Wed, 11 Jan 2023 04:06:34 GMT  
		Size: 46.9 MB (46896199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0b8de4bfbe9ea0e8f8841ed12c667fb98d157ee37ddfef614dacd70eb109cb`  
		Last Modified: Wed, 11 Jan 2023 04:06:45 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:d2bf0ff9fbbf57d0470d2522774709158979a3232f264554add5fb48fd307b41
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50161837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd96249a3010cbf43185807e560dfe08bd3d0500b32d9f6b472f6dd96d83592`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:06 GMT
ADD file:c43d870f9cc5c78ae2b5929a9b3ff0e3b1f78609ed1778045e9ce2cf6c85b0c9 in / 
# Wed, 11 Jan 2023 02:57:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:57:11 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:464937bea8f251db8aac33b1f72ddb6cd41283ccba5ec3cce468797a236e3411`  
		Last Modified: Wed, 11 Jan 2023 03:00:25 GMT  
		Size: 50.2 MB (50161611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8eca3eaf68dbc9048862a660aa1dc3a51373029ab74eec72ba2c5c31b2d53e`  
		Last Modified: Wed, 11 Jan 2023 03:00:33 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:bookworm-backports` - linux; 386

```console
$ docker pull debian@sha256:ac721e133f5b7d709de18aa93b29837e3a94f44d237f977deab04c86942bf610
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51145278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962c503e8427c3110e7c0295053cdc6ea3875cf78e89ebec955c39e6be45a196`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:15:25 GMT
ADD file:06e348f9dbb5c60f5fd91cd10d8ee7ea08880c456ebafe9abda4790022b4df0b in / 
# Wed, 11 Jan 2023 03:15:26 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:15:31 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a47c0f7cbd17d33fb9f2b6cf8675588aebc0fec7ed1b046061cdf73f126e59e5`  
		Last Modified: Wed, 11 Jan 2023 03:20:53 GMT  
		Size: 51.1 MB (51145053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d936c918a06f550455605c9c9957925fec4c5075645872f110b0c2fe967f9c92`  
		Last Modified: Wed, 11 Jan 2023 03:21:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:bookworm-backports` - linux; mips64le

```console
$ docker pull debian@sha256:9ba915d876be8b3a892cf4bd31fc0bceebaa504c67801c002aa9900007585f05
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50120793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a1cf37a8565f09616d2ba53528938f63a0d254f7b4ec6d070690ff94c710c31`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 16:32:17 GMT
ADD file:aa37d39fc83f9cce3f1f8522cce22a9c3f9734fea6996431d00a2921079da343 in / 
# Wed, 11 Jan 2023 16:32:22 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 16:32:37 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:951f9db918ae0d2bc2c008522e4d5801e026653a12e21d76a02a48b96faaaabf`  
		Last Modified: Wed, 11 Jan 2023 16:41:22 GMT  
		Size: 50.1 MB (50120566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c71284ef19f3799e0ef596dda9b75ea15d39c1586ff1acc0fc72c671e212e8`  
		Last Modified: Wed, 11 Jan 2023 16:41:32 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:3065ec755d2234476eab4cbfa0532078538c547fad47e55473987df92003330c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54144078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c4f5b6c476dfc41c435c9a0a4e40f07114a35cad8abd72a28c62f8d292c64a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:48:20 GMT
ADD file:be85aca9c16cf896fbced9508d29913a52fd69f8b2fd24c49efca520a37eeb1e in / 
# Wed, 11 Jan 2023 03:48:23 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:48:31 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:752672804a573b7cec5745cda59b6068007db5af1aef95a3e7929331c20247e1`  
		Last Modified: Wed, 11 Jan 2023 03:54:09 GMT  
		Size: 54.1 MB (54143855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50bc5edd6306858739dfdfd4a6f2ac8503b3879bee2a2f565415eed8a241ce`  
		Last Modified: Wed, 11 Jan 2023 03:54:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:bookworm-backports` - linux; s390x

```console
$ docker pull debian@sha256:062ab035a6d6577c0a6924f4d2a168e6b7eae8ffef6a66ba641a83f448c129c7
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48490604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f32f0fb81798c54547d35fc1504ddb894960214d61d3fb930c9765f6ecb5845`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:21:33 GMT
ADD file:1ba7db44596ea26688f29eb4d23da5507a0d71de49facb85ffddbea04928e97b in / 
# Wed, 11 Jan 2023 02:21:37 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:21:42 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:cc45c63d26bf6e7676d21861c5543952964197c106b2cd255789a8aa3734c0de`  
		Last Modified: Wed, 11 Jan 2023 02:26:06 GMT  
		Size: 48.5 MB (48490381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a297fb6ec391cc7d0119405d54ce612c8d6bea0efcdccabff9c3d46b3b369cd3`  
		Last Modified: Wed, 11 Jan 2023 02:26:12 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
