## `debian:testing-backports`

```console
$ docker pull debian@sha256:e81c8b437de39257bb6bfb96933bb4a9c8caa905d71758f22096bb71c26af05f
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

### `debian:testing-backports` - linux; amd64

```console
$ docker pull debian@sha256:a217244fec7b60fd65ff2efefc421a08e03a73aaddf1ee554281783eb8789a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50824699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e5be059d3994c38de1ad1d115df5101852e6df2f257e83997aaa043e5c8a21`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1795392000'
# Tue, 24 Nov 2026 04:13:18 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:894c99e7929b6dd8a6d3d7b2bec705e1055dc87b70b70d04215bf5a659f20727`  
		Last Modified: Tue, 24 Nov 2026 03:40:18 GMT  
		Size: 50.8 MB (50824476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849aacd1c003355196d5cc2bc7f2a5bf8d908b03dff8b1bb87ff0c244a2873f`  
		Last Modified: Tue, 24 Nov 2026 04:13:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:12a71805566280a1af3609039f80ec556c45468506c45b3d1b1646425df66d2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a2d72ce95aedb2356a2c7974e58aff10c61786e4f5e219937f5ede78bfb65d`

```dockerfile
```

-	Layers:
	-	`sha256:f3b8c6e3a0d3d6a478c7d885eb5cdfcfd343723aa6cfff4a4724cd94318a69a1`  
		Last Modified: Tue, 24 Nov 2026 04:13:25 GMT  
		Size: 3.2 MB (3192749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:899eeaf56a14bee94f832b17443556fc7b68a3c4145c1f7211de60655ae4984b`  
		Last Modified: Tue, 24 Nov 2026 04:13:24 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8a8f6c4dc5ace0dfc13230e03216bed475345ece32784087bfc2c6a935a5653a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46761511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70a15e88484cfc800d8d5981bf7d1609edca187e35a57cb669c43ad323156ab1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'testing' '@1795392000'
# Tue, 24 Nov 2026 04:13:37 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3dd7461193956173d7aa0f1e409d96ca24dfbe4f117409ed915fb1374ae8a77e`  
		Last Modified: Tue, 24 Nov 2026 03:40:53 GMT  
		Size: 46.8 MB (46761289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f4131df159840bbd243da3ddbc9a4407c36f79ce30388e0d0013b62fc181b7`  
		Last Modified: Tue, 24 Nov 2026 04:13:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d7af90fcbff547f763ada03f13c0cc696fd5340d8c0ce10bcf405dc0b19fc1e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dbe37cfaeac791f404606139560c292cd6a8e8c172a6eb47e7815e3fb4e3b19`

```dockerfile
```

-	Layers:
	-	`sha256:1376487aac38d41c205024f77738fc9eff5d66e878cf6d59b82c6339f8f14084`  
		Last Modified: Tue, 24 Nov 2026 04:13:44 GMT  
		Size: 3.2 MB (3194321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ac47a3a6d9ea78a376a668028f40ee9658e94771a1651fa8453c12a6e129b32`  
		Last Modified: Tue, 24 Nov 2026 04:13:43 GMT  
		Size: 5.8 KB (5850 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:a49f55a0fcdc3e40575261ea15264a33bb0f438dafb11b80daee31966aa483a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49959756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904ed77e7d6891578ff98020d35d7c297e1f644bea327b9c059fe104f0488e34`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1795392000'
# Tue, 24 Nov 2026 04:13:18 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:01607144353775a70d512c3abff11b6d05d618e99c9005fa4a970fb5a9dd1b9a`  
		Last Modified: Tue, 24 Nov 2026 03:41:00 GMT  
		Size: 50.0 MB (49959533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff3144380164ce6cc0960f675164bb87be0de7e809baca4660e3e35ea950746`  
		Last Modified: Tue, 24 Nov 2026 04:13:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:72fbde26d5c18b9751355e2ebef029e2c89aa968eb626970b67ef4eaeafdaa0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a393683b2b807346f0c0506708736a155293ad8537b61b939140ea294c5b64f7`

```dockerfile
```

-	Layers:
	-	`sha256:342d1cd62debea36f3ca03970c7ddb4d3b1ee59260483d61e6976c5976d9bfab`  
		Last Modified: Tue, 24 Nov 2026 04:13:25 GMT  
		Size: 3.2 MB (3196213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc36028fd714469b718c9e92208a0c7a3f719081800570c50ad816ad21a2dd08`  
		Last Modified: Tue, 24 Nov 2026 04:13:24 GMT  
		Size: 5.9 KB (5861 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:373af658e98d931a34907f7371f58ab96ae4fafa536e0c9c152ba88925f9229f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.9 MB (51898720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a584fb4d24078cc78e8a2dcf4624483b6249c4a6e6c748b56e52ea75cd51dd12`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1795392000'
# Tue, 24 Nov 2026 04:13:35 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:129b76adac1581bcc410dbfe964f920fde30e773686ae1c2d138f0666db0b1dc`  
		Last Modified: Tue, 24 Nov 2026 03:40:51 GMT  
		Size: 51.9 MB (51898497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bc1538f229718f6b91a71eb9db425c8633429f6a4c849f5d3fcb716843f860`  
		Last Modified: Tue, 24 Nov 2026 04:13:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e1a70c21b2822ee16b9053a0fef466cc010b187be068a7b01206138f324ec17c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3195592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f3ac55445bc0c02da606893341a4c54a184c323f37f9b2cb232751d9406db8`

```dockerfile
```

-	Layers:
	-	`sha256:7a4168fd22ec3251a0199fcd85e7984d8a9114ac543ac5b12de82fa657307f15`  
		Last Modified: Tue, 24 Nov 2026 04:13:42 GMT  
		Size: 3.2 MB (3189815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:779b9a521bb28d7560bd9a279d579e4ab02ad06fdca4684f2f01a9a95216cafd`  
		Last Modified: Tue, 24 Nov 2026 04:13:41 GMT  
		Size: 5.8 KB (5777 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:e3c60d11734209f968263673e0705d7a06cc4bdcc6229605f45ad5cad7356c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55430960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00446b376a19e55422becbec826ba909b5d4dfb0ae3d379d6becd5c616e39785`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1795392000'
# Tue, 24 Nov 2026 04:13:26 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:41fc97a0dfedf7e7f772faaf975303a5634001f6f86dc376b2fedd8ee24a8b32`  
		Last Modified: Tue, 24 Nov 2026 03:42:14 GMT  
		Size: 55.4 MB (55430737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94259ad355fa38c830faf2de73b4807ba115fae34c9aabdd2a1cf6abff969a6`  
		Last Modified: Tue, 24 Nov 2026 04:13:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f130d77ba25eb6fedc429a53a1ef8fc7956ca6de1a6f596810e426f3838e97b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:895e435987de2d6b56dd77ea01f936c23562041410948ad0f87f78d5cddb5b8e`

```dockerfile
```

-	Layers:
	-	`sha256:e71b547ef6145909d18498a7945bdc502be59cc864e1738e5c1c3f6336010887`  
		Last Modified: Tue, 24 Nov 2026 04:13:39 GMT  
		Size: 3.2 MB (3196596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1728013dc5726f588b8fb298fed5d9dcf551a3b47f9b634fdcc2cf456ca7ad93`  
		Last Modified: Tue, 24 Nov 2026 04:13:39 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; riscv64

```console
$ docker pull debian@sha256:d1d7e819f390bd888ae7b3479b383a1d3822a118a1522fe91798718c9e50e0e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47263204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e319952a0d36e721ba2f5587c3f9fe3c8c6e1f026e69189828d45b3f6eb856`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1793827419'
# Thu, 05 Nov 2026 08:47:48 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b951c2473dc72e9e2abfe2a5279de7725125dde28a61b3a4e22c27149b11938e`  
		Last Modified: Thu, 05 Nov 2026 07:32:58 GMT  
		Size: 47.3 MB (47262982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b5211c2531c3e8f6a1fa7c04677d69f0076bd04eecae4bbdd23433f67b439d`  
		Last Modified: Thu, 05 Nov 2026 08:48:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6790a265a6c69c68c0e834272f1ae7030751a2bf29b8cc168913991762768edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:180e0920256c90cfdfe8e4f3aa062b44ac310f23f7663a04258b428a6b555f65`

```dockerfile
```

-	Layers:
	-	`sha256:bca2100d2a5b3c53962ebb6e0e0b3367cec83c105bb344df13403aac0e982e6d`  
		Last Modified: Thu, 05 Nov 2026 08:48:55 GMT  
		Size: 3.2 MB (3167772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fcb526158bd51b414ee0e976824114bb939519a6de3b1e15f2074e98a0e7a3f`  
		Last Modified: Thu, 05 Nov 2026 08:48:54 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; s390x

```console
$ docker pull debian@sha256:9c1d7f73b9768f8c8d58bf0c5a99b02b555eb914ceafa5c4e0ccab7d9c747ace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49863491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a097b14160dbc9b2dc2887149f3c907252e7fee43f5dfdd8b3ef7ef54da66c35`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1795392000'
# Tue, 24 Nov 2026 04:11:49 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bb3f8bf18583e80de62777884a823b287d9b32bc3ad3fe673ef8fe64a8d385d6`  
		Last Modified: Tue, 24 Nov 2026 03:39:38 GMT  
		Size: 49.9 MB (49863269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48812db0419593a232f7246c11a388e55f87eea2da6ff22d304ca94496f4c087`  
		Last Modified: Tue, 24 Nov 2026 04:12:00 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e81612edfb06cd7df84209b97d08e685542bfb04b84bad4a3c3e177a78173ff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3199924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6941804e1969ee3aed7921b8bff3ee906dccf5e1c96df517323459cab389739f`

```dockerfile
```

-	Layers:
	-	`sha256:3088da4890c9d0009697cab46f85f13d28d3459b57aeafe4aaa0c778dc33533d`  
		Last Modified: Tue, 24 Nov 2026 04:12:00 GMT  
		Size: 3.2 MB (3194130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be058b150b22d23f5fc03759fcbcf4705361362c1e4340228880dfaabc9e5a11`  
		Last Modified: Tue, 24 Nov 2026 04:12:00 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
