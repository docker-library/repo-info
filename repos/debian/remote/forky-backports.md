## `debian:forky-backports`

```console
$ docker pull debian@sha256:b39f55c99d7e57034159ee2c8834c9b59d18fe3986fe2f16c0e50f975be44308
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

### `debian:forky-backports` - linux; amd64

```console
$ docker pull debian@sha256:684a6583d11c103074d9d124b93f19abd72bb1d3e16abc0949e32dadb1c8c623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49649383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7dc655b23e02f52d6337f166c311aad057805c1286c9c4e58281c3a0f375551`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:14:37 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7469b51a5634026d0ec3b005b5a4726cfcf2e658e06e0d7f08c5489d9b1760fb`  
		Last Modified: Tue, 06 Oct 2026 00:13:38 GMT  
		Size: 49.6 MB (49649159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154b5f1661d81b34284ac077d67e3e0d441930e4bd265ed1bac2b586f1d45044`  
		Last Modified: Tue, 06 Oct 2026 01:14:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4195ad3810286832de1d049c17ab85df8d64418ba304e538f619ac0a04a30aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16e099a2424589c34c93863a90ba2a08480b593fda3879c2d89285642d40f38`

```dockerfile
```

-	Layers:
	-	`sha256:0ab314f88e8c29330e69677462defabf88fb6110095437122fffcd85cf0efad9`  
		Last Modified: Tue, 06 Oct 2026 01:14:44 GMT  
		Size: 3.2 MB (3184173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac2934877052c4fe1f09b752cc6f6510eaec1ce44f7e8d15d3c40c2d578dc43`  
		Last Modified: Tue, 06 Oct 2026 01:14:43 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:de7e311762fc82e8e5a64187863f1a849efd1229f890f06cb083e61225602083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46004373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437f8f4e9c9a3d9edbc57d58b950c128153745c223c28e7ed8fda26dd4e81f52`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:14:39 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2b392fd5f07f5ac3cc7f94fe6fea253d8373fff52e6f33a7f4c7991028e3c990`  
		Last Modified: Tue, 20 Oct 2026 23:30:17 GMT  
		Size: 46.0 MB (46004148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93245df889a82d01b9e7d7a3a08c9ee6f5c4296e53ba1eda69669a8f9d41a45e`  
		Last Modified: Wed, 21 Oct 2026 00:14:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:aa84ab44b10f840a2d317232cb8a73dd6ac40e8b34ec6a1d42e7c324237942b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e57ae28fe81090d38f0d39416cbc1d46005e8678abb0bd687f5505522e8410`

```dockerfile
```

-	Layers:
	-	`sha256:7d9e8b11f4723de04f82446ba0b1198714289f3f418e8fc06c556d9b19ab2d6d`  
		Last Modified: Wed, 21 Oct 2026 00:14:45 GMT  
		Size: 3.2 MB (3176121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a8f969f52c95f30136988b9cf3414ac53cbafe14813578a38120194d5c64f7`  
		Last Modified: Wed, 21 Oct 2026 00:14:45 GMT  
		Size: 5.8 KB (5834 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:8fcea9f790ebcb1927a39d8bc1fad86a68ee2a49183c5a2556e966277c0817fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49048164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7094f10f41f0deda29ad12e7d56f2eddb2879fc9dd24c109efcd6f52d7692b43`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:14:22 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e248a7d56738c8f8ba4b2a2297d1668d1b8e939c7f77503cdecaa73940dfdb15`  
		Last Modified: Tue, 06 Oct 2026 00:13:14 GMT  
		Size: 49.0 MB (49047941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bb5acf3778fb917c42c74e27027e9885d2dfbe6a9498a75df640e104ad4097`  
		Last Modified: Tue, 06 Oct 2026 01:14:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:33e928257b64436823dbb9cf9143e316d1f63cb4a0da6c4f9ef8ebf56de255df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b48e2300afdc3c201ba0735d7563409cb06ad385713c70a8ac91161b015837f`

```dockerfile
```

-	Layers:
	-	`sha256:7b9d2748fe4bef41ca6bf1cdf6537ab7df42569ca8591734edc1253a6401a4c4`  
		Last Modified: Tue, 06 Oct 2026 01:14:29 GMT  
		Size: 3.2 MB (3187622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03b7f6b812d61f97c35a2d0aff87a22a39b25e4257e50743253ddfd4d3e78679`  
		Last Modified: Tue, 06 Oct 2026 01:14:28 GMT  
		Size: 5.8 KB (5846 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:f93993c9181332e653f449badf15f55ee8ed4da96505c908ac235f5b604dcb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50774080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a94b5bf57bb684f8439cc3ffc576c2d262fa4733eb70661aeac5a73c8649da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:14:29 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:fbda3f7c32e707d7ecc3e8261c4b9b2b897138641aa26be42e13abbe6cc98387`  
		Last Modified: Tue, 06 Oct 2026 00:13:36 GMT  
		Size: 50.8 MB (50773856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ca778b70066b043caf8fd7e749c63440da77f957ccbccd7e3037d77f82fe79`  
		Last Modified: Tue, 06 Oct 2026 01:14:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:eefc0d1a489acaeffac72eb4b3accdbedf3ba6ed6d3407762778b8cb4a508150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6027db7644a262dea27f2d4d7ad3d49713409b9205497808c907ae4b971fdc88`

```dockerfile
```

-	Layers:
	-	`sha256:04e86740de51ae5ae4f9e4500f71479371b7a695928e55d0058589fb583ae085`  
		Last Modified: Tue, 06 Oct 2026 01:14:36 GMT  
		Size: 3.2 MB (3181272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a153f75ed5a6562cbebd32a94d2f0ebbec7cc94ff566ae77e50e0c243497d51`  
		Last Modified: Tue, 06 Oct 2026 01:14:36 GMT  
		Size: 5.8 KB (5761 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:4399be5b7807461292e480c76c7eec21cb564de27629ec2012e9e22b3917d5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54501853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25c5e9c0b80f99d33511b032d7fa333ec41c453edf6c4d700dbbdd4652ad4d8e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:14:21 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7563a816b2fdbaba742be8a6a1b6e59423cab6e5ab5f29d804cd7dabee35741b`  
		Last Modified: Tue, 20 Oct 2026 23:31:51 GMT  
		Size: 54.5 MB (54501625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57057058db6e276b8a3a7a29af75441c9bcd0ce4020f35621cd582a508b8ec5`  
		Last Modified: Wed, 21 Oct 2026 00:14:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c312f8d207ebe8574a213e1116d96f6604fabf2b9c752bc6c1f8c6d4aa2549c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3184160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d4d8d05b7cec116e0362b40b33cacca589aa3532e1b790ade4c44c118318e6`

```dockerfile
```

-	Layers:
	-	`sha256:e52bce981717c000dbc942c11c1dafa2c0b3365e7a6b8e045c92b11c40fce61a`  
		Last Modified: Wed, 21 Oct 2026 00:14:48 GMT  
		Size: 3.2 MB (3178356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c834332f2f948420348ab45e7ac47a08f1a0f23a65cc49cefeb240aefa517eb`  
		Last Modified: Wed, 21 Oct 2026 00:14:48 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; riscv64

```console
$ docker pull debian@sha256:e20181179ac7a9f35abbbabc7dc333a4db1d7313014fe1fab0cbff108b8c9a32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47232662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91194e5fabcaca32643e50c6f15291203548a23fc122042e9adbc433daf4b122`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:16:06 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:adfc591135148650dbf526110c7a281e2348fa5b65b8e9b8f646cec906264d49`  
		Last Modified: Tue, 20 Oct 2026 23:31:20 GMT  
		Size: 47.2 MB (47232438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33bb057e0e07abd18f89a2171abce695b10b992a77184525720abb2a6c86e3ec`  
		Last Modified: Wed, 21 Oct 2026 00:17:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4f86c16b5098f7563a63223b699996fadbe9193aba98d3fcd987f6bdf16c6c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3171942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41342110f7e838444f364dd66e7e8e0b5dddbaf42065bab16398b40aa927c2d5`

```dockerfile
```

-	Layers:
	-	`sha256:fad4f2a9f842c48b578b17c6a37a78d4401c75711e2456b8329b906ed6e6277e`  
		Last Modified: Wed, 21 Oct 2026 00:17:13 GMT  
		Size: 3.2 MB (3166139 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1a661693fd5d1ee52adebede7a76edd9e94ab87a2adc388d31a7db1c7e209ea`  
		Last Modified: Wed, 21 Oct 2026 00:17:13 GMT  
		Size: 5.8 KB (5803 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; s390x

```console
$ docker pull debian@sha256:0b30281a8b79e32a49694bd9ed8b36babe56e42ca1c0470a27244f1a062f56e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48824827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0e093b5cb1460854e343cea64d576c44299842ebf411db2db590d44712253`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:13:11 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0ee6ac8b43a7e6254145fd3ccac4ef533ea7f9092fc66943615402bc3f1a9cc3`  
		Last Modified: Tue, 06 Oct 2026 00:12:14 GMT  
		Size: 48.8 MB (48824602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5826e5472334b59a568984d4de87906e8d8b5e33715be1f5260cf871514c0f`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ca2c9ba6c4fd014a3aee9cfcc9a07760e7ac162638f2f062ddd1ab63b395d113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00641b8ea6eaeca1982d3baf99eb31637f0734b19271813c15c5be3d825c156a`

```dockerfile
```

-	Layers:
	-	`sha256:727b1d55866f16d76385004cdbd902d65016060f07ddce7ef412d2bf4e96e0d4`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 3.2 MB (3185569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e4b64204e9e63e5b9eea5805d8377a4222af52c2308b3b8a7a0631f8f3d1d14`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json
