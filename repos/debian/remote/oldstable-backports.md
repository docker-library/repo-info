## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:ef133b8cfd6674d426c0230429655532a31ea2945c28438b0f4f4e489dac2713
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
$ docker pull debian@sha256:f3563d6f01fe55babd0762970d7866fdad2c68a8d44e4ff1c03411d1623d83c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48503670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0ad993c59824b7e7099e6ff3c95a258b7faef4300e56367245c052e7fc33ef`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1789689600'
# Sat, 19 Sep 2026 00:12:12 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3aae93f03e47f0ba1ca06d5c6113f34d49875f780715ce7e1e91961b7cb818da`  
		Last Modified: Sat, 19 Sep 2026 00:03:59 GMT  
		Size: 48.5 MB (48503445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea7b9de51df8c5a5d5021ba7ace9c370344d10e4c7a9eb40a3e540eada4a419`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:97fb764f96ea485224f33072fde137c6d4a78a775d016213c7462aaf308c828f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22936b652a15834d378afdc3938d29a3ee541be8da97df4c49cef14dceacdc5b`

```dockerfile
```

-	Layers:
	-	`sha256:28226e8b4ef0b6e188d8e5ba16363a8cd18e4be1edc3a302a4729a519528dafa`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 3.7 MB (3734184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a4e3dd88d1098568cc5237585fe128b24cb14269675ef03f7449cc67b0b7d91`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 5.8 KB (5809 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8f3bd94fa09f08f769a91503c01263a81ce01caab49817efc746c7336cd47d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44202436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b724a75fe890e2c60de6e975a02a83813fe0f68012f1404ae98401d739e19c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1789689600'
# Sat, 19 Sep 2026 00:13:04 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8635a2bbe7bc071834151d57cab06bfe7eb3595fb908a7cf77b5ead6fa7f62aa`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 44.2 MB (44202212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f4d8d859e197ff5156c479918cb559292dea3f898b76dbca7ce1ac7773ab71`  
		Last Modified: Sat, 19 Sep 2026 00:13:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5b6876f88b6dd5b29f4ed0b1ecb906eb0492e834195f8347d454a8b847a60428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c72afc4559c0589c1c5708623075f09f0519e7e7d4ebb8557cf3cd871d700805`

```dockerfile
```

-	Layers:
	-	`sha256:b7cd08ece75631f0270e587bf7adaeda49b9fb77ba31f4eae5ce33a287d87cec`  
		Last Modified: Sat, 19 Sep 2026 00:13:11 GMT  
		Size: 3.7 MB (3736363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a02bbb1ed2b359829fa1f269d95b49550e281b7cdd4f9767e3bc43930177c7a0`  
		Last Modified: Sat, 19 Sep 2026 00:13:11 GMT  
		Size: 5.9 KB (5865 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:d7a02851c89e7fbddd5a882e71b582ad334a8258ca97da0b5e000468bea1044d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48390142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77cf9b3a84c460c0b50041565a2b8d364b1f5b72683ab133435b21961b97be0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1789689600'
# Sat, 19 Sep 2026 00:11:59 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2764c4de57bb2bd517596922dd93d700a5369bce63f7875d3d67bef3c1bf7f0b`  
		Last Modified: Sat, 19 Sep 2026 00:03:46 GMT  
		Size: 48.4 MB (48389919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101cefb2383abf480cafe91b7181e03b85cf0a238d0298ed4305b8ae0337937a`  
		Last Modified: Sat, 19 Sep 2026 00:12:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d4b344b300fedc90f528c64f042396f524559b2385180cfe58a76cdb9fdce260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad590e22088c409a35ce1004ccb6cd9403da3bbdf416eb290dfd261da3825cf`

```dockerfile
```

-	Layers:
	-	`sha256:599f829eee8fa1063c60776ba3703db3e26b57b7cfdaad3acf9b7bcb72ab9529`  
		Last Modified: Sat, 19 Sep 2026 00:12:06 GMT  
		Size: 3.7 MB (3734399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3dc1c34b0aaedb798b4f6861459058705a58879f973fe3d14ba927426052780`  
		Last Modified: Sat, 19 Sep 2026 00:12:05 GMT  
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
$ docker pull debian@sha256:7c9326b931914bf7eeea87d6d4c149a953c6c876ef15f11ee2e79972fb61f373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52349538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d7c8153588fead5cde409473e76f4db026dc95380c6d87d65594d73c40291c5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1789689600'
# Sat, 19 Sep 2026 00:12:42 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bb9fa382753b0ede2de9f557910ac6f3b6a4d59f718a0bd4f27f74ea6da0810c`  
		Last Modified: Sat, 19 Sep 2026 00:03:58 GMT  
		Size: 52.3 MB (52349313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021d49bfa1b5181581743d28266a6e9e4b7e8747cc892811a8db5d6dc03cd215`  
		Last Modified: Sat, 19 Sep 2026 00:13:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4fe0322f7e1cfa2d9cfa3dc59f6e71597443001397d222683277a709046d0efb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d059e4506c1b39c5ea17c5f5da91d2b613736ce3420af29e8dbb3817066e38aa`

```dockerfile
```

-	Layers:
	-	`sha256:6097e66e2e09c0080b7a85eb548640b11ad852bab57acc1311c0fe2aba15ed5c`  
		Last Modified: Sat, 19 Sep 2026 00:13:13 GMT  
		Size: 3.7 MB (3738542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:025693e550448c597e094e627df944766b3d9155954afdd7c12e76755fe8ef34`  
		Last Modified: Sat, 19 Sep 2026 00:13:13 GMT  
		Size: 5.8 KB (5836 bytes)  
		MIME: application/vnd.in-toto+json
