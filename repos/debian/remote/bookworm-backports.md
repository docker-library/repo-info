## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:214856ce4d3712be160960e972c3a7233bdfa1960e3629948da89b22dccf7658
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
$ docker pull debian@sha256:791ab39ec4c342f946a359f57bf4ed27c191d5fd29d0202962e8bb0f2185dde2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49485346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbdf6a663476948f85d743e2ac17f784a5df039ea9ad63069f5dc90b133a8c11`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:15:10 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f12fa423f989a5befc9757e374e285cd3486ebf5c17a2deef8bb913d19332f`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:63c0c3cd9cb1c826a8ca763dfdb07f157530b37f4f3ac13b50e619206e1ba7a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8da2083e1c92a6d84eb21c5995123de0a02c15924b3ebb44c24c9191d0af346`

```dockerfile
```

-	Layers:
	-	`sha256:a623af92e57ab2b1657a8d2cbcefeb2954bffb80207cf19e4fa1a8e763d0eaae`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 3.7 MB (3731342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:080c38810d3d7476a232e4985d68f336e50cfded72ec262fe2d99e51c520f9aa`  
		Last Modified: Wed, 05 Aug 2026 00:15:16 GMT  
		Size: 5.8 KB (5787 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:0f1f2196e5a47635a4f0dc3c5510548386e3bf7e381c0f0da146ac4076edce14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52341701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94eb97ec242647c32327b88c3c579bfed1ee0f6feabcc39b60d92790cd9bb473`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Tue, 04 Aug 2026 23:54:17 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb8394aca8a77eb316f3483af55ee4483e69d9c5985f0b868a4660363e4133e`  
		Last Modified: Tue, 04 Aug 2026 23:54:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:89ee326a05fe78270a1c29a22e684540785f5de3ff5a66ce5d37b802f24fa7d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0bafe69357f5c681f6a69731a4390e0f6050895b0573b7d7738c52f77846664`

```dockerfile
```

-	Layers:
	-	`sha256:5e75798cc658858da2f3b424312fb01072f3a55f7be49031011b8f973d4b46a1`  
		Last Modified: Tue, 04 Aug 2026 23:54:31 GMT  
		Size: 3.7 MB (3738504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb4185f0f2a20d55ae82937b4bd277b2aabd6df1ff64ee1406c62e21e8a11a6a`  
		Last Modified: Tue, 04 Aug 2026 23:54:30 GMT  
		Size: 5.8 KB (5830 bytes)  
		MIME: application/vnd.in-toto+json
