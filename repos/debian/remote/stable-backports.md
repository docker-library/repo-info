## `debian:stable-backports`

```console
$ docker pull debian@sha256:5cf788f1723bc35773654b62101e4bb98551a1470dd7599c61e361c00bfe7d72
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
$ docker pull debian@sha256:7f2a0652da3a28b16aa85cbaf031f55f3808e7de80e4c4c03a80e349520b3ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49393423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d67285010560d8942f49562f84efcc35ec58dc9ad93b001e633f53b65ebb526e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 01:14:57 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cb5a9a3759a429515bffd67fa30dcd8e7fc1b456019f59e11b850401862b4567`  
		Last Modified: Tue, 06 Oct 2026 00:13:59 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cfcd5452d7b8f96cde10d39969c2f7378cadec31a67315a854672ddaf1cf58`  
		Last Modified: Tue, 06 Oct 2026 01:15:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:55b9707e81f40bff78a45c00fc3721b9f8ef438fa993c7b339bd926d3ed7f22a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06f06f7214b08f03f7052ce97d60f8bc18b75ced7ed586d7fa7d055fb297386`

```dockerfile
```

-	Layers:
	-	`sha256:1f50e9c1db295805b39c9c826c22dbffe2df96f194c73e8c3ce365bac3cf6f3a`  
		Last Modified: Tue, 06 Oct 2026 01:15:04 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32b8eb7d2b7818664d2b5eda501824c4c3fa588d6181b858689458ff7a5e2e31`  
		Last Modified: Tue, 06 Oct 2026 01:15:04 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:eebdc4dfefc73f9d8f96614d8501883e54d9e23bc0b44a12f14e84b2fc919be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47559633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c708f187d0ecef4b0d725dcbbfcee9dad0df7eac10317cf6ec6d55107887c6b7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 01:14:45 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:457f81f6877136540bcc27437ff4bd57db3115f602a8ef65cc6b212f97216370`  
		Last Modified: Tue, 06 Oct 2026 00:12:34 GMT  
		Size: 47.6 MB (47559409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40941907547a892e9b7b27c53461b81ed0052b22db9e865ca92df17913db6266`  
		Last Modified: Tue, 06 Oct 2026 01:14:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9c6293b4929ef596d653a399e96662e1eb69808cb4a640a49e945938271349bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141c1894bfbb7d68cf06d605602bbbdf1e06ac1dacc7288fa6bbcc73b0753807`

```dockerfile
```

-	Layers:
	-	`sha256:8b108e8c529e825bdfe5c6933597ac9a0f757e7ed4d564a6464749ddd9b3484d`  
		Last Modified: Tue, 06 Oct 2026 01:14:51 GMT  
		Size: 3.2 MB (3183813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f73260d34102f1cc77716d32ac4cec09927be02237bafbd9522029ac044c3176`  
		Last Modified: Tue, 06 Oct 2026 01:14:51 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:be7a80c9a57122b1b1dd723f8bed8a9a1ae6a8ecafe8dd6a26351131d3f158fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45813488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e8fc5a299f504c44b839f14f84480c6cca02e652b427eb1d13599ea71e2f7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 01:14:14 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7b2a6440cdd94d908064bd7e7d9adc8c46eb29bb8e18433a0ab85e5a4fe4dcd4`  
		Last Modified: Tue, 06 Oct 2026 00:13:33 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0dc28d68ea6474d8ff781b77fb9790ea32ba14183c0ba6d3745f7850a405f5`  
		Last Modified: Tue, 06 Oct 2026 01:14:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5018ad3b124b0f2e73e4887bd70510dcab8080030c9eabd58dfaf49e1f0183df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6ef3ddbd4c34c7518fd1e1b81dd2b10dd8c807c26a8419448af1d7eb42df86`

```dockerfile
```

-	Layers:
	-	`sha256:8aba1ef05451f553906fff635f0cc1bcd18e1daaad7aeb8ae5f408e498cb38dd`  
		Last Modified: Tue, 06 Oct 2026 01:14:21 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbbef8d251b0673e4d5b443a7cfc0a51e652a105f185c1731b36cbbf28702a0d`  
		Last Modified: Tue, 06 Oct 2026 01:14:21 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:862b63bafacee9bdb8eb18a511e9a590dd09340ae1950474fd41b012d6a1969e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49761328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef7b144a930de8a8fe82709b916792e3246b7d176e5f53442b9057ef8cf0376`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 01:14:04 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:fb5abc37f968ff58d11879cf84b3d0a77af64524961d36ea1973275352ca57a1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7172068e8a733cd4e178fad4d412341bbc3eb6c092eccd674f902ea48291aedc`  
		Last Modified: Tue, 06 Oct 2026 01:14:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:af1fd8d3ad0163962f851d1944412d897d1b2a2641277eb57157ad9d1492184a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fac05ae2ad4b6ffbf82ebac813a6c0599ae308d462325fd54c5f5b1d81abaa`

```dockerfile
```

-	Layers:
	-	`sha256:65bac0fe1a994dcc8da7b131df80d65e9a0f52939d5939e2dbc00f7113b91c3a`  
		Last Modified: Tue, 06 Oct 2026 01:14:10 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0135752e665ded63e34b5b8d278eef7910dee2bed1d70e7d4871353242bfb414`  
		Last Modified: Tue, 06 Oct 2026 01:14:10 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:4ac57414ab8af780a6bd2965af82cf4126b46cd50f5dad1c8823120459699060
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50906316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457f32dd89045a3e90c37b816e2cdbba58fec0d272b59d5d8c073881b2cebf12`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 01:14:50 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cfd5a6db042b78caaa5b38cd185d65b6af26347417535d1b3104ddca156eef2b`  
		Last Modified: Tue, 06 Oct 2026 00:13:39 GMT  
		Size: 50.9 MB (50906093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d1bce661019340e746684ef6b6dd8ea0fe47fcffd0b26e020699ef65a39291`  
		Last Modified: Tue, 06 Oct 2026 01:14:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:635c249cc7edf965d9ccc08fd75299854f80e71977f81381a13de5f3b0d5235d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8abd45d0704e860d623379abf9eca09d97d3869aee39bdba3a53cbd215a0f5`

```dockerfile
```

-	Layers:
	-	`sha256:f6dbea02050e4d40fc14c6fd07bc2c67942c6df5fac5917f7aadd52d8501a0ae`  
		Last Modified: Tue, 06 Oct 2026 01:14:57 GMT  
		Size: 3.2 MB (3178079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa41a6e8551b93bd594f54301464d412cefb0de2bbe988d1cac9cfed69edf2c4`  
		Last Modified: Tue, 06 Oct 2026 01:14:57 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:f456349347a3297462d9eae754f69120328d378480c89177a3f3cad36d0aaf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53207346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6596001bfc7324b44ec439a9f1a9a37fb708adff8dbe457c9c6e835b5ef814`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 01:15:33 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8fedd03f2e9c614f807be54b884e68e54c6b9053775fef673a5e9cf3ba6dd7e0`  
		Last Modified: Tue, 06 Oct 2026 00:14:52 GMT  
		Size: 53.2 MB (53207123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad70e87971d8c11285f56bb42b8f928b8fdb461c778f89f95fe9db7fcbfcb73`  
		Last Modified: Tue, 06 Oct 2026 01:15:55 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:07b15606f40b2ec4a5e1d0929d723fa0001f04b074c83f64834f9a7b04083550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30338f2f1a544c4e5f8fe1bd297fc2774886d03d066baa72c10a620daed2cd93`

```dockerfile
```

-	Layers:
	-	`sha256:945498a997626ad7f13e4f6ae932f0857f09f65f90f06a0a7b332db87e257a55`  
		Last Modified: Tue, 06 Oct 2026 01:15:55 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a65c40f0dfd61d1c5dd71c9f07baff364ea25b735125503a3dd47abd83db7f31`  
		Last Modified: Tue, 06 Oct 2026 01:15:55 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; riscv64

```console
$ docker pull debian@sha256:c3e090475631331fb0b5239f91a67472272cea8395957cb6a0538bc8306059a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47876553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bff9fc795725fbd7fc35ab5c6a3413014d1a1b8647b133396e30083367f4f51`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 04:25:17 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4471b90eb86ccf5b7e987addd81df0485aa9b26be32a0d10b8349fde0b62aa68`  
		Last Modified: Tue, 06 Oct 2026 00:22:44 GMT  
		Size: 47.9 MB (47876330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1095cda14d29c0547a99fe4f62635c9c40079e382d41ce9545d2a2857be0696b`  
		Last Modified: Tue, 06 Oct 2026 04:26:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f565f87f657b44799f3500bcedb8212f7ecfced08e7f004cf1adb76646bb8183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c3f2e104138fb13015b3d1802bfb00789a9b20fd4fc9d36abce438182ae974`

```dockerfile
```

-	Layers:
	-	`sha256:7dafc0ad9233776c8fcd53d480d603c93aacb0b83c5422c14cf3777c8481dd1b`  
		Last Modified: Tue, 06 Oct 2026 04:26:22 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0e26ab5360e124a76ff74f4ad618ca4a33bc1315ad2dca1d731da476d7d905d`  
		Last Modified: Tue, 06 Oct 2026 04:26:22 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:71d17600c90185afa852e85766ce0da66c5d8a352f85a8c79746ea71d718b3d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49457228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcbbe6c71dbdcd6e4eb9a4350708432179abd82dcd921fd7f675adc8f916e33b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1791158400'
# Tue, 06 Oct 2026 01:13:13 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d1263d0bd5fef17839d39d3755ac838918284aa2e7eb7b530e897e1ebb795db5`  
		Last Modified: Tue, 06 Oct 2026 00:12:43 GMT  
		Size: 49.5 MB (49457005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00df0986d75c1373066651b93f1a2913cfefca9a800872e78b661d3053078710`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d334960eda4764f3c0924f429acb1e865de09bdfe83929995ac5a38580c72b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5700212353073167f6364e23df029df258097261e443d8a6442873d0fd3564ee`

```dockerfile
```

-	Layers:
	-	`sha256:81c9da6ae5a7dae6629821efbdf7b8243a4fc61e4fa40f38fb586b02e42e9515`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02884307b158bfea8ef7a086aad1ef999106fd9df3f7e44f624215491f9c4dd7`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
