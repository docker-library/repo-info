## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:3d595fdcddb9329d1e9387c9f5accb56f09cb9a9e57ea283f08651853df1ee63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:978eaae27609a2d15e6a7e508c68ee039eaf1509fd4be1af0c38dde9ce1fc211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48497588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aaea2c99adc5552274c05ba1f9f35c1e0c60ad841ad4bc92d28711f9152a937`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d2873ad9fe06c6927d0a951391b2491901c760eafe856161e4abfcf76808c08a`  
		Last Modified: Mon, 24 Aug 2026 23:21:06 GMT  
		Size: 48.5 MB (48497364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e2504db36f0c41c04134c97fcd4a201159cd6ffaaf8e6172d26410d643faa88`  
		Last Modified: Tue, 25 Aug 2026 00:15:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f01df9440bfac043c6b083cbd6058da109ec4d352845280b68bd00d7ea246ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ac741453697256ce77f4e1383b91829ec1892546b5e3527010b497f87e9ed6`

```dockerfile
```

-	Layers:
	-	`sha256:ba42569ff6e51244059fccfc29421b16533dffd9a0c195338eb115013dc20a53`  
		Last Modified: Tue, 25 Aug 2026 00:15:40 GMT  
		Size: 3.7 MB (3734148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bd07ed6c512e1296991808481b063aa35a64a86f0f8a2ff906139369d9ce6f7`  
		Last Modified: Tue, 25 Aug 2026 00:15:39 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:a9ce6c6226ce8813db8c05f086ccbbe486fa3db716f9cc31c51afe5cd7c4e206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44203354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba498219093dc0e9e5e8f37bda0c1ecdc0b12c8023e7a415d8fd90317278c755`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:05 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:05453ac77b9f3f224439e4976bf6f5aadcbc088bfd672f9aa843e83e7250d197`  
		Last Modified: Mon, 24 Aug 2026 23:20:58 GMT  
		Size: 44.2 MB (44203129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf199987800273d3038370e96fa2eedc2d638a2d8666852bd2d8e1f72b4f4ea`  
		Last Modified: Tue, 25 Aug 2026 00:15:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:894565cf8ee0fc51ca9fad52adcf2f4999791dfdea6beeb9cbd953fc170a8425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef4d97ecc5f60a0c1dfc69bd001ecd5036cb9e4c3da9ac9d715659ffde72ca64`

```dockerfile
```

-	Layers:
	-	`sha256:96b7a6b28d631fa8e9943828e890529f2f8ffec10ed1f054810c1444b0d77250`  
		Last Modified: Tue, 25 Aug 2026 00:15:12 GMT  
		Size: 3.7 MB (3736327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fb890232058edfe91c5c1d0742b2f148082bd44296e0d25361219ec591e0e77`  
		Last Modified: Tue, 25 Aug 2026 00:15:11 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:ea2ab303507d88197cf5bf77db0405c23c45f30e3885d437ef09c0b2d908b7f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48383877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3773b62ac9daae26047832466833c8d0a8bf840b81126cd3106982f824f4b5b0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:09 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:658bc503f0f988a735ae2db35c79a46a0b736320c22fbfdd55c2dd7aee95e93d`  
		Last Modified: Mon, 24 Aug 2026 23:20:59 GMT  
		Size: 48.4 MB (48383654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b024bf917dcbe024e2eba5df20b8c0b478c72f1149d6da4a8f0d6b905694924`  
		Last Modified: Tue, 25 Aug 2026 00:15:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:30ddbdfc8ee306a21a3e4bae954817cbbd81649ca58b0a04822581625864309f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e455e0743543cc7a038c2426b791c2613abf3f2fad096bb075c3bc8a56809ca`

```dockerfile
```

-	Layers:
	-	`sha256:bffd287ab60c490324efad75df2a45ac501f01c17083f1d60f95be3eecaeedb9`  
		Last Modified: Tue, 25 Aug 2026 00:15:16 GMT  
		Size: 3.7 MB (3734363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18e394cc037d54e760523f9e3523a7d54ef99f4f27f353318d3c32b293783202`  
		Last Modified: Tue, 25 Aug 2026 00:15:16 GMT  
		Size: 5.9 KB (5878 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:7d150665203d9588c894e88a4b9f353c1796a22c9a5cc0f3536908bf5ffe41a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49485626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3641d81513cdf674cfc8b1a1566b108c02378c613832cfd506d127b63a6c57ea`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:41 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:56ffec70762823fab8639a8d63e1532764129bbd660acfaedc21baf53350a991`  
		Last Modified: Mon, 24 Aug 2026 23:21:07 GMT  
		Size: 49.5 MB (49485402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876919fb07727e5c0ec1878fa415cff8c8030b32afa5de5b948d5f978700ccf6`  
		Last Modified: Tue, 25 Aug 2026 00:15:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c9798b9686a7d7eb1ad53473a96801d3666b5bf76d03963d5cfd1f3af687f71f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057c89dda1912a01304710b5f0a3ecbaf4f56cbde9dab37a7bb1b437c06723fa`

```dockerfile
```

-	Layers:
	-	`sha256:571ac1db417370f1bcae32eaa5c7cbe6e0c14ad4aa3ea6e235d9b1f55dda6ecf`  
		Last Modified: Tue, 25 Aug 2026 00:15:47 GMT  
		Size: 3.7 MB (3731344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:216c6a1c609d6c58580149a0a90b8580b03963e3b505394d1b2b897faa8a8936`  
		Last Modified: Tue, 25 Aug 2026 00:15:47 GMT  
		Size: 5.8 KB (5791 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:1af0cc77f87958eab17c0b8d30bfd93cb0d905d0961f554a69fc0675bf587c26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52341992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca75d4a91a27ac39d573e0702c761369cf19ba71d422ab871f680635f1ec102`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1787529600'
# Tue, 25 Aug 2026 00:14:34 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3df4b2150c009adb9650ad81fa0c31af11f145ec1c61bc512916aeba37bb56ce`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 52.3 MB (52341768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19290b732a17f7d2cc97ff703949279cdc0f741d74422e2e8a2a6355ea6160ba`  
		Last Modified: Tue, 25 Aug 2026 00:14:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4d5b2ed9593ab083b3f37637b41236665b0b2de00b381cafa4853bee5b078782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c5aa6490ff835683c7e0f7a0616062dd4c99eecd112bf880db093b45f3ff62`

```dockerfile
```

-	Layers:
	-	`sha256:a25f5edf585c77e3007e63a64713d16e39a25709f5cccc2ecc93b682d91bff9b`  
		Last Modified: Tue, 25 Aug 2026 00:14:44 GMT  
		Size: 3.7 MB (3738506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d38c51e96fdeba407a72c07e97201858a1fd504846b8d129534f0677e035bbf4`  
		Last Modified: Tue, 25 Aug 2026 00:14:44 GMT  
		Size: 5.8 KB (5836 bytes)  
		MIME: application/vnd.in-toto+json
