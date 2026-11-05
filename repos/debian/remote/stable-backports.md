## `debian:stable-backports`

```console
$ docker pull debian@sha256:81c782be1097b2d3e3881328182cb629c567da7f4ff8377b01b99bc3301f2685
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:e34846687191ad1d90e957fd7bac60ab37e6dcafa12232b12c596aced9b02bf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49412732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0030e00641fa8d3e17c662d42e45f95a222c8f6f863036af16a75f004c71095b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1793827419'
# Thu, 05 Nov 2026 07:12:58 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:39698b5ea12bf893496d3b19a785cdf437615404ef919985643c19e58c08a1ea`  
		Last Modified: Thu, 05 Nov 2026 06:16:11 GMT  
		Size: 49.4 MB (49412510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800795fec5e9cc53f6ffea7663a75a6d91c7c30daa0265cdfdab69df628ed4e3`  
		Last Modified: Thu, 05 Nov 2026 07:13:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:004523aa78dde68c560252c056ffc0dcd63760236ef60f6cbcd7b34abff9eced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd42e6e7e73ce31e1fdb2811795ba37911d33ba6052e5e9286993e538d3244e`

```dockerfile
```

-	Layers:
	-	`sha256:319a28bfeaf41c6d756833b58854e2f592d687ca2d4709e34ced0bb62ab472ee`  
		Last Modified: Thu, 05 Nov 2026 07:13:05 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dbb1eab4dafdbe7e720a2a357999d22bcd2ae5da5d302c6c56fcaf53cd9e5d3`  
		Last Modified: Thu, 05 Nov 2026 07:13:05 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:dec5d7b1a24afb2507360c7198096c78e4ff0951b85709c525a06665219b581f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47580083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2bb1e8d3f70ba8d9ba693cadfbc34a7ec24ac0ca0caa47c46ec92864e06c97`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1793827419'
# Thu, 05 Nov 2026 07:12:06 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f44ed9c8a53ce765c55dbe5356726752abf6478c1008e5948b2a7140643b84d2`  
		Last Modified: Thu, 05 Nov 2026 06:15:36 GMT  
		Size: 47.6 MB (47579859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a51c9e08a3297e5a2b59dadaeaeb2215fcd1c54f897e57c04ad9865fd8cdb895`  
		Last Modified: Thu, 05 Nov 2026 07:12:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4b83729646ac5d29ca2ee56ca9f72add3571a6954e3f386ea7b7de3210a4869f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a844c687505f7eef7295dc3dbb8d303e6734a9650a5f91de8f696389e4118a80`

```dockerfile
```

-	Layers:
	-	`sha256:21d3abaa5add095d5ee898ad12b846fc5dd760a25e36758ceee2a6d42f7f8bd5`  
		Last Modified: Thu, 05 Nov 2026 07:12:13 GMT  
		Size: 3.2 MB (3183813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faf5bd51b4aefacf41bf8a2c43a2a30d299f44b8d0e6669028ca9aa3a1d5d8b7`  
		Last Modified: Thu, 05 Nov 2026 07:12:13 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:7bcc68944d063b95339c715696a536e9683b7139cc26953c7c90b655632bbe1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45831345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6904ae313ccff340afe350a927cf968b55dbfb246c2cf15f61275d380da973d9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1793827419'
# Thu, 05 Nov 2026 07:12:39 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4bcbb160701a8f0142e152d3ae40fc87167f90c58ed399f624a0e8bad03b0253`  
		Last Modified: Thu, 05 Nov 2026 06:16:02 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050b56e6af53f70fe44c2fe7e684c3b60827d8335539d0df72bef20c3fa72658`  
		Last Modified: Thu, 05 Nov 2026 07:12:46 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e6ddce94fa5ea455bf72ed8667c23197e9f0b7342414041f16ac6a3ec13325bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e37cdc4f0a21037043c35e8325bdd66be744c71004d71e12c59e99fde565ea`

```dockerfile
```

-	Layers:
	-	`sha256:fec28ac9c21708ecc03a6d218e438da5d10a84d37569af01f2deffefa0a9ab57`  
		Last Modified: Thu, 05 Nov 2026 07:12:46 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2a89031d64dc889e50c501ffc170907185c56e6ceaeec8376b97153de8e8b73`  
		Last Modified: Thu, 05 Nov 2026 07:12:46 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:7881878253f5a2f926077a97e4fc9a073b9024919e5609dd3fc8358f6919bf80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49778832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03712d6eb23e4139d924811ce43f32dabdb531d427e1184195fafaf79c449d14`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1793827419'
# Thu, 05 Nov 2026 07:12:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:14a5a4d8cff3b5f9bdc21a9d0f75142b2a9a21cf46f664f4c5568f346b7fd1f1`  
		Last Modified: Thu, 05 Nov 2026 06:16:26 GMT  
		Size: 49.8 MB (49778609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38143aa0e7a131e3e8072399a0c50633fd96439b1222ae75ad82e5756e3cd080`  
		Last Modified: Thu, 05 Nov 2026 07:12:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:17c39202e3819145abafbed1511db260b0fbf24290877d23122129e2befa9f21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b35a27ca96dc61764c4bd495d65eed32aa4495f36fa12265486d4856eb87f0`

```dockerfile
```

-	Layers:
	-	`sha256:04be84ed702ccbb91c23f594cfebbdeb2117079a598ace6934c703a8a679ac4c`  
		Last Modified: Thu, 05 Nov 2026 07:12:42 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56b3314a903815080f687e92f31abc9f4eada281f0055f44a390fbc45f37772b`  
		Last Modified: Thu, 05 Nov 2026 07:12:42 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:bde860d6c85cfb75cc645cd717f40b1f701f54b1435223104810f6fadb916cac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50920795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85f67d07c90e74ab6b8d6e70fbcf11b80fc525bf8cb10fe76a3ac824a5a227f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1793827419'
# Thu, 05 Nov 2026 07:12:53 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:537be8a75995372afc57c779525e485ac2d93a4a790dacc644c8d0eb0cac5b55`  
		Last Modified: Thu, 05 Nov 2026 06:16:06 GMT  
		Size: 50.9 MB (50920571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1f4da164df542ff53fdb97633714c9e11b4c45865eb598666cf227834a1113`  
		Last Modified: Thu, 05 Nov 2026 07:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2faf13e7d35c91065373218ff8be4e6542f366cc287cc32e2c47391871fd3abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be9b220c67851219816c57127c0481c08ac111617421d5f6414ce22467658c0`

```dockerfile
```

-	Layers:
	-	`sha256:c271d5d6c01353017519bb10ebffa43553a28da2f37121fdbac0a12f744d980c`  
		Last Modified: Thu, 05 Nov 2026 07:12:59 GMT  
		Size: 3.2 MB (3178079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49d658506cf39bac30b2a3bed1e88632a9eb2fb74e9926fcc6295b4d35d2da7b`  
		Last Modified: Thu, 05 Nov 2026 07:12:59 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:907c7888c3780e25395068e64552a3aea049b152d2ad29f3bdf5faaa2e5ba44b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53225811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6af906b16f21c74540ae371141a216e9af1498a55b2b7012e73694a0c49fa74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1793827419'
# Thu, 05 Nov 2026 07:11:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6a4064f6da005910e5546aa877bbff0182d3b186d388e87ded22fe4fbbfbe8f8`  
		Last Modified: Thu, 05 Nov 2026 06:16:48 GMT  
		Size: 53.2 MB (53225587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde0e4084e7f5e5ce757f1cd4713398d7e9fe99d604ad3c493d6b963f6e70464`  
		Last Modified: Thu, 05 Nov 2026 07:11:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0df50271227fca1971061bf3612d2bb2c01715f1169a84531eee6da9bb20074f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ded1293be5f3d63a680307fe0d8cfb949362bd785d187349b345879b50d0af`

```dockerfile
```

-	Layers:
	-	`sha256:0b00ce8c557ceca6f97bca090a4240ba8b5e15ebf51ffcfa1e0dcab9d7657d2c`  
		Last Modified: Thu, 05 Nov 2026 07:11:49 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:310769367dc0d19069033dd326d1abe6ef5b3feb5d3979812d9367f7a951fb55`  
		Last Modified: Thu, 05 Nov 2026 07:11:49 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; riscv64

```console
$ docker pull debian@sha256:69d99f370ed1b1d19591192e93e43f697463b8158d69965808ddbc492d4c12a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47892453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c066c4de50c13bc46f4f973cfdba550e86243f3c836cd441699fc0badf79ac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1793827419'
# Thu, 05 Nov 2026 08:43:56 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:25011dd3d007dbbe426da6f63a92af28d5933ee685b1da3c7853ea582e859de8`  
		Last Modified: Thu, 05 Nov 2026 07:28:57 GMT  
		Size: 47.9 MB (47892231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734ca07c1fea0f2edc98c7223e02f03799dd47e70f25d7cd3dd021199e5f914b`  
		Last Modified: Thu, 05 Nov 2026 08:45:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6a6d14788441a3b5bcca134be783c458bb1e6eb62ce45e0ec737a7e88a96e743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1107771d6923a8f7b320f83c1fb7df5cd4183633ac4cb96de5dfe530acb08143`

```dockerfile
```

-	Layers:
	-	`sha256:4a089ce9679bcbd18b7b713d97e1a6e9544a5d735142a2feab5548686b318a6d`  
		Last Modified: Thu, 05 Nov 2026 08:45:05 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d070f4fa6496524644124b87e91f1c6f592f0fd6315627c2fe76a918e352ed9`  
		Last Modified: Thu, 05 Nov 2026 08:45:05 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:8914fdd441e189ebff6bf651f18e8a19758bd448da4efeeb2387b60b267e2c9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49479410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0bb119a2cbc6bd5c8cc0dcea930688fef074a401ccd1a6dcd12e8c50a21ffc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1793827419'
# Thu, 05 Nov 2026 07:11:46 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:5633f1d51fa0fdb97a1e3e9693b4af69b2ce5d870d3c9469aab501832fa37d8e`  
		Last Modified: Thu, 05 Nov 2026 06:15:14 GMT  
		Size: 49.5 MB (49479187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb57b5cadf4881f187a30a8a805be2b681618cb319f368751463c4f7be917dc`  
		Last Modified: Thu, 05 Nov 2026 07:11:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:07e63e58b1027cf010a904502d5d4206da064c9381496dd3d564a887c786c73f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd181371f83c32fbf2ef3021e7b0b3f2bb4e2363eb244ee002c68c541a04cb7`

```dockerfile
```

-	Layers:
	-	`sha256:219e3d0f3946b9f97338c31340187d9dbe29422dce20dd5fef2dcb5adb9049a9`  
		Last Modified: Thu, 05 Nov 2026 07:11:57 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd0ec8b8728af0e87316d6d49abcc5af28b6b978cde7a32fdc56a8b8f8dccf3c`  
		Last Modified: Thu, 05 Nov 2026 07:11:57 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
