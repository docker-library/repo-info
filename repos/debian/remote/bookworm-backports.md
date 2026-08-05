## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:f9f767a3adf1f18ee7dc67a7d9e86facaada44884fd72b268ce1a3986d9052e2
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
$ docker pull debian@sha256:01c98510e9faff54d8d930c9afa5a38020b63881e7a09b1b453dd4b3f47040e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48497316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf205492b58dea1f06fe25c121e145fb1ff27068d2d4cfe360a25a0c9bd8fca5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:14:36 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d8d66e1e5c4dc3961dd84c10accbcf9c30d5b77f577f6118a14e8b0bd9ecb1`  
		Last Modified: Wed, 05 Aug 2026 00:14:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e48fabe360cb81c1a0db95bc1a12560d4be61d492d37251c8288b9d1c30650f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05891cbb5c4d0859b75382a18c354aab81606a7d73fa5a6c2d5f3986163f960`

```dockerfile
```

-	Layers:
	-	`sha256:5ccb43828ba5dff304100de5c18d81cff9cae2c3c8cebdc84a742abcace33cf9`  
		Last Modified: Wed, 05 Aug 2026 00:14:43 GMT  
		Size: 3.7 MB (3734146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ec3e1cadb2bebbf9ad65a68f6e805fe2d3af7ce57434d174805e20807e80da`  
		Last Modified: Wed, 05 Aug 2026 00:14:43 GMT  
		Size: 5.8 KB (5803 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:15601eb0c15fb435ff4fa4916402c851362ad48ae4807fd9c0ac08db27a0aa9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44203096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3b09e8a47a883942d9c59a7627ac0fa847d39d54c1acbf34d1dc62c89f59f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:14:41 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d712f8e969acff76cccb6f0d1442d96c27349080212121863417a16895027a69`  
		Last Modified: Wed, 05 Aug 2026 00:14:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7588a7e9746c8cd66ce4332645cbed8be304bc21fc1a2fb105ca574c0674903e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15043b720ec2e0fa8dcb505147b7ed69f6def4755e0f06befa32fc520460802f`

```dockerfile
```

-	Layers:
	-	`sha256:c87b8c800407313a8af12dceb922ce7fba904ea6462a09bd6f8f892c2a9d984a`  
		Last Modified: Wed, 05 Aug 2026 00:14:48 GMT  
		Size: 3.7 MB (3736325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0a1d73839b697106e06ac70c63937722dff6c2e5a5b8e51d794b5a40fb40410`  
		Last Modified: Wed, 05 Aug 2026 00:14:47 GMT  
		Size: 5.9 KB (5860 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:85e34e6f3958c93e2630aa98cf8a1e9bf477076222dc67759c04ca38ae3ae005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48383602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e688da07e40d59fd5fab7d77f2635c0218a546b81a4a178a4e160ae560ec4df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:14:27 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7650ed6dab69adac65d22a9035a0f9fcfaf2dc86faf9ed843fc6a9921d1ff68`  
		Last Modified: Wed, 05 Aug 2026 00:14:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:08b4628872f4fdc3bd451eaa1fd2841af46ca04ce0b3c35340e047e12f04c24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9503907fbc9e0f9c222605d91afbb1347847774656c51dd5ac0b15b0edfb47ce`

```dockerfile
```

-	Layers:
	-	`sha256:f79a3cefbe3fde652e9f5dbf52b735ffb5f47edd8bb065f034808684b30fb73c`  
		Last Modified: Wed, 05 Aug 2026 00:14:34 GMT  
		Size: 3.7 MB (3734361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f467bbba25033e07587a65f6293a265ea52ee02a5e40db59be1ef0ce4238070`  
		Last Modified: Wed, 05 Aug 2026 00:14:34 GMT  
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
