## `debian:forky-backports`

```console
$ docker pull debian@sha256:daf9e686d0acfdde7393191e6dadce492556428683a64f9a38ba14b06b713c99
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
$ docker pull debian@sha256:4c97d8aa03ef4160f685c3844bd4cde9ba433a347105c29c5d34b6305dd54fc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49814560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468bfbd9d0cdbcb57a7686073a39784a0048c8db0a0243e06c890d1662c4480f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:14:36 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2fe4b6091574b3f1b29a730c59818868b10f42ed61e8c86f51e916f6230cfed6`  
		Last Modified: Tue, 20 Oct 2026 23:30:29 GMT  
		Size: 49.8 MB (49814335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4545c0e65ec4d6d98679af68b3f16b19faf93c9506d5a05d4196c3094369cf58`  
		Last Modified: Wed, 21 Oct 2026 00:14:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a5ddfabcd8471ddf21f37c9c36385f97b628b8d84385a22b3ab53937f6a6388d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5eb0674fd0876069218aea83839886d2ae27c0e8a4891ab31d6558e74a50962`

```dockerfile
```

-	Layers:
	-	`sha256:39df7b9a63ff9c47b92e2c2671cf12adef245e1bfa5909a322c9ae15a6636087`  
		Last Modified: Wed, 21 Oct 2026 00:14:44 GMT  
		Size: 3.2 MB (3174594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f7187077355ade277301460986a54d4c279cd2b9c33999bb82d7cd7482d517c`  
		Last Modified: Wed, 21 Oct 2026 00:14:43 GMT  
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
$ docker pull debian@sha256:88d156035946ad91e0da44af5c257bc0acfba8784d1be78c8c5f4e77951eeed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49142673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d872ea51606222b7f625d2858eaa763daf510700da34da6ed619844bb4e8de`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:14:33 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:92027717a2c3877f42b4322ce7e4584c8ba10b96c54d312a7823fd9df6cd664a`  
		Last Modified: Tue, 20 Oct 2026 23:30:26 GMT  
		Size: 49.1 MB (49142449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3482c18854952617a853e0155207314ededdcf4c932976112ea3b91616996efa`  
		Last Modified: Wed, 21 Oct 2026 00:14:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a64058615ce161682031ee1133e9fe003b7e2db61041ce68a45e0d30bbf53a2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ddf9f9af9082f68fc1a1e16c03d79601b21679c954ac6aafbd00eca1111968`

```dockerfile
```

-	Layers:
	-	`sha256:7d00258ea5426f0c562dbe75f94c8d4453b0f2ab3215fc7a57d48ae719107de1`  
		Last Modified: Wed, 21 Oct 2026 00:14:40 GMT  
		Size: 3.2 MB (3178043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:556b40ae17ac147d42489a6d4ec48ca0970239b26f2baadbc3e3d0d5b68e677d`  
		Last Modified: Wed, 21 Oct 2026 00:14:40 GMT  
		Size: 5.8 KB (5846 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:a75b4d1188151d0e1b6428ac3c028366dd66192bad50e2756eb940dc8d10de87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50934573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f0ab1ba9833f612758c2d17669404078cb562f96397765cc665e6d64dd57ee`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:14:52 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a82d12bb7ac6591825acca7b46cb1bf53a45a71b72bdafbeffec867fb8981dad`  
		Last Modified: Tue, 20 Oct 2026 23:30:34 GMT  
		Size: 50.9 MB (50934347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df965d61fb346c493175c472bba14b0917ae93910ba121e11374b08006c293a7`  
		Last Modified: Wed, 21 Oct 2026 00:14:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f556400a187d65f7a506ce3aebd6b50c090a667a38242c8b2ec6da73cb12b42a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab8d6cfaea5ca842b6cac8d827c604a047f535c0441400a0ee6ea5c1c2bd682`

```dockerfile
```

-	Layers:
	-	`sha256:3af5e143940561f5818384ce625d28f734628bdc41637f9e8d0527eacd3d6cb2`  
		Last Modified: Wed, 21 Oct 2026 00:14:59 GMT  
		Size: 3.2 MB (3171693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e47ab0fcf55e0263debaf659f32df080532d5de7bacebb160281e837047e2c1`  
		Last Modified: Wed, 21 Oct 2026 00:14:59 GMT  
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
$ docker pull debian@sha256:5f1f11e346728c56c5bb55df15687b22b0e426fcc5007dd90b02ff64d6bbab0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48912279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0318ca2516326475772279545da469c9499195773002c90b0ac56fc1f0d0009`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:14:20 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9cae28ecaf50579691c9c86615c8c483a4effc3bfb6a1813d6dbe1e36528a31c`  
		Last Modified: Tue, 20 Oct 2026 23:29:15 GMT  
		Size: 48.9 MB (48912053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5758841933f132e071a1c2e09a4cf36af037d0352ae34fd5f00a039c28b535c`  
		Last Modified: Wed, 21 Oct 2026 00:14:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:bcd0f3f4a388832fc7332370eff0a1e656be319d41aebbdd68cba798c78ed723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f722c8bd60c451c9ac0da6760acbc4e0a6f0b2f12cfc25c153d50697fb0f9d8`

```dockerfile
```

-	Layers:
	-	`sha256:afc88bbecddaaf5101f5246ba3714c64dbe4d5d588dc0c8a4d8a9a6d96f7248b`  
		Last Modified: Wed, 21 Oct 2026 00:14:31 GMT  
		Size: 3.2 MB (3175990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e0d32c03b9aa9f1f1cc40aebcc3b4a407dfe599a72095db9b637a3d66b0c571`  
		Last Modified: Wed, 21 Oct 2026 00:14:31 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json
