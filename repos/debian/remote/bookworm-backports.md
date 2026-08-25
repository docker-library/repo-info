## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:c886e17131a40f57921b05f32d7fa0cfe80191ac03fe229cf9994cbc01f8f5ef
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

### `debian:bookworm-backports` - linux; amd64

```console
$ docker pull debian@sha256:0765c14bf826d55e20867ec9729d25e96aaabe6946710f808da9e0203360e509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48497588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1153055aa70ea80d9e0c0215f906cef977a27f59e41e91f50f51b551f04c42`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:15:14 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf46cdb8ea12a05ab51d91d0322564d46c9b4f73024e649e5664ab4ce0ce19e`  
		Last Modified: Tue, 25 Aug 2026 00:15:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:89be6c8758c351d70464658de79fda43ce2c2507088d2c158f0c09ea940832a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af215b30d0327d2b0b8be636c934dbfdf7019a1fac2107048b46b94c0b85b631`

```dockerfile
```

-	Layers:
	-	`sha256:9bf57b4ee903e884d4dd2a26f0871a441ed525019efd17e9ad3f2e79f91ffe3a`  
		Last Modified: Tue, 25 Aug 2026 00:15:21 GMT  
		Size: 3.7 MB (3734146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a246c178db35aa228aadd96039b577128cd1095ad6525fe0d3d5327c1331776b`  
		Last Modified: Tue, 25 Aug 2026 00:15:21 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:18d8148c4ccb5958297755f55000ab3f8d75aa6dc38df89c92223a831769867a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44203349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5fa52c3ae79303ad214fbff02edc9bf13311f647391383b3d1c36481c65c52f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:14:44 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3ad4511b6c998d715f89023444a626bb82ef4e93dc5835afb7a0942ddbe4ff`  
		Last Modified: Tue, 25 Aug 2026 00:14:50 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5a9bed38a2dbe407cd7fab4298cc62fdf4dc6f00caf8912635cfd7f946d33c50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b374a0c84d2875b90e9cfba67dea880143fb23f5207c38dff07b72460dc92e5b`

```dockerfile
```

-	Layers:
	-	`sha256:754e2dbb4a15bb4629380f21810299573152b5f006e3a3621a33885f9b76a638`  
		Last Modified: Tue, 25 Aug 2026 00:14:50 GMT  
		Size: 3.7 MB (3736325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b003eab0176e24672ade9906ae67e38da4a4206bd24a752136b4f470d26bcb7`  
		Last Modified: Tue, 25 Aug 2026 00:14:50 GMT  
		Size: 5.9 KB (5860 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:446f5675d4feebdc321c1765072e6d26896fc030ed6b2de25819998815d510e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48383874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67b0058ffdd7a8da595650be5e174d1ec98322ff2ba04bf8e05de594d4a0b978`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:14:44 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3ad4511b6c998d715f89023444a626bb82ef4e93dc5835afb7a0942ddbe4ff`  
		Last Modified: Tue, 25 Aug 2026 00:14:50 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cc61366e89f6f4932098c69aa9eebb884fcb5103b44be117145ebf8a0de74b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93376da44572e6ca530acb6cb68b2261a2863b2f37afd5784fb89391086cf03`

```dockerfile
```

-	Layers:
	-	`sha256:864378d35c5cd2b506af10237dc79d0bac0a8ca5983bc6eb21e0ac0b0a4d16a8`  
		Last Modified: Tue, 25 Aug 2026 00:14:51 GMT  
		Size: 3.7 MB (3734361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:167d5bedada9b5e3d09d09e6581ff85d9711175e91ab74da1fe504a8a9da341c`  
		Last Modified: Tue, 25 Aug 2026 00:14:50 GMT  
		Size: 5.9 KB (5872 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; 386

```console
$ docker pull debian@sha256:afd145da797bbda480bba10fcce69ad531f3c2df2beed6e5e5aec553f6e930c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49485619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c755ca011031c16628a41317db80465f8880bfa6a15e6aa26818de4f2552ce7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:15:17 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae81624f56221a6c1a02efd5cdc40397592d6293b48459116799cb79ffd43e7`  
		Last Modified: Tue, 25 Aug 2026 00:15:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e9a988bf7e91d54553c7051baef6fe1518bff83ce65a5f25dbede59723755a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540cf0699913100e317324bab10514e7e1b30b9e8ad8703a83eed7dcadc4b241`

```dockerfile
```

-	Layers:
	-	`sha256:31c547b7c53b6910815c8aa964706c1339c767a14bcf14bbe603ca1e38824aef`  
		Last Modified: Tue, 25 Aug 2026 00:15:24 GMT  
		Size: 3.7 MB (3731342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64371204d1b1380c6a4f2d109aa318f7c622896bfe66512ead419df4b4ffa272`  
		Last Modified: Tue, 25 Aug 2026 00:15:24 GMT  
		Size: 5.8 KB (5787 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:e7d3d495fedfc279bdf6cfff10154b26cc87316f6e92772c327615da424c3216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52341988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6251a18734c9f8cec7f4098565ea773d555bd2d2c37493c0effae060903f983e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:14:05 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75cb1d0ec5223a75f4503762eca77acd526ff37b04d8b5db8859d662a771c0f3`  
		Last Modified: Tue, 25 Aug 2026 00:14:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:21f15a6e0508161b262dd9701333fbcbbe86b3e46b662ffa780c685ab82ed2a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c700fc4e339d8203a08549ed39c019db7b54a7ce98ccb8bb411d7cbdefeed4`

```dockerfile
```

-	Layers:
	-	`sha256:b776cc3ec63ec98c026e8c0358414b48f3e74ec3a5dd603432da47cbcd129dc2`  
		Last Modified: Tue, 25 Aug 2026 00:14:18 GMT  
		Size: 3.7 MB (3738504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31a49593c90a903fa7cff9cadbf973fa060572d666739a165a87900e91536b7`  
		Last Modified: Tue, 25 Aug 2026 00:14:18 GMT  
		Size: 5.8 KB (5830 bytes)  
		MIME: application/vnd.in-toto+json
