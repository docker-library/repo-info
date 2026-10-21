## `debian:stable-backports`

```console
$ docker pull debian@sha256:238458231be4d380061373d0d7800cfa20fea7af86a838ddf03419ec56afcbda
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
$ docker pull debian@sha256:96b40a3704c7b570c6542bf7f8da248e4ac2336a83ba197cffa8db93b3256a4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47560120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9285da6bf792b27d1f5c0728bb58b6ef488f929a787183c86cf9c957ecb26c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1792531975'
# Wed, 21 Oct 2026 00:14:21 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2895b332406842e8089d67632af23b8d0bab93dfea30a0fef5644e9e33d869e8`  
		Last Modified: Tue, 20 Oct 2026 23:30:14 GMT  
		Size: 47.6 MB (47559896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f88f36b10fb7837c56ff41f3b25181f39d872c2fb37d4690d7afb314d4073a`  
		Last Modified: Wed, 21 Oct 2026 00:14:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d674a9c1d0a091818f5839e82ceef165c23051bf3227b553ed0ae2c1e8d8ed8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6208965443d53dbfa4a2fc18b3869df682f2c364efeb268326ba75d996a1d00`

```dockerfile
```

-	Layers:
	-	`sha256:91891166c6e66d84db106b15e350ecf96d9b08df74006bf26f14f5a6da09aff9`  
		Last Modified: Wed, 21 Oct 2026 00:14:29 GMT  
		Size: 3.2 MB (3183813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc192ebfee4ccd3ed8cb9238a71aa8815f61100cfa45e8dc2c5dee55ae87f3dd`  
		Last Modified: Wed, 21 Oct 2026 00:14:28 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:69934722ac06275df307adc08f15df337b16b775c4ca5d7b907c00fe6cf33280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45813822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a127ed6f549eff79e9a33ccfa690eeba74d2867cfe5aaa92d2019aa4d09161a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1792531975'
# Wed, 21 Oct 2026 00:14:55 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:27dc8a0f7c3122218ebc7d068f459595758b05ad30a124afec45f6e426596837`  
		Last Modified: Tue, 20 Oct 2026 23:30:34 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1af55431463182dff71cce8e6438c834457a76ba843b5eb3264ac30b0896f5`  
		Last Modified: Wed, 21 Oct 2026 00:15:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2c66bfe7333256049c498f04e718048375c308af8bc8d57e34df9892726cf8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9213b379ba3edc9bb7ab0f3a4ad55ce31c6df9167f77adbdd960f54343febd`

```dockerfile
```

-	Layers:
	-	`sha256:e6493c08965dd6a08fe624a6762cd34dfacbf8e1379c63536f23f238e0943681`  
		Last Modified: Wed, 21 Oct 2026 00:15:02 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de4a27fb2747618bef3411ccccc7104ecba54d84bb6f777fb2e98a8c16f742ea`  
		Last Modified: Wed, 21 Oct 2026 00:15:01 GMT  
		Size: 5.8 KB (5839 bytes)  
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
$ docker pull debian@sha256:3a679dc688a36651654931375ccb44b08485121618b07517af56d4ecb4cb3427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53207802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca0b34bb3abf49ef87c73d32e261dc75c09f9ed86576a411156cef6f2cd7f0f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1792531975'
# Wed, 21 Oct 2026 00:15:14 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:ca20de5977ce99f15ff83489b86a7c604e0ee5bda953725cb654eee9d023b3ee`  
		Last Modified: Tue, 20 Oct 2026 23:33:59 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63acbee2ed5b8f033df94bf78441189fb1858a2b1801a94e25bcb14d3b92527b`  
		Last Modified: Wed, 21 Oct 2026 00:15:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1fb2a867fa9bf7c6ca002da5580e7f925000e5166c595058f35b9b77abe82b9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6570b6da86befc18c07a6493d234a5fff06f1bfa02839e129bcb2ce5f6e7097`

```dockerfile
```

-	Layers:
	-	`sha256:e6ba8f5cdc9605a0e6ced5cc02e67a0f11d6514a9164a62cf194208e8a59592a`  
		Last Modified: Wed, 21 Oct 2026 00:15:27 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c23d6ca86a01dbfa1dacac341b36b6a42e4d290417e3ae798245c578ea09927`  
		Last Modified: Wed, 21 Oct 2026 00:15:26 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; riscv64

```console
$ docker pull debian@sha256:cc74b8fcb03a40b4cf1080b2644c34829ec3f9c316d0f8cbde99532a970ef4d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47876864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be5f088288013f6929e2a87030af3e5f33be9ee2f8e8f72e75fab702f947bb9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1792531975'
# Wed, 21 Oct 2026 00:19:59 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4e964a713d90be1561e5456317f840df10795c381cf4249462d77364e7dbdab4`  
		Last Modified: Tue, 20 Oct 2026 23:39:23 GMT  
		Size: 47.9 MB (47876641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8c3156a1ee5247178fa0877ec2e72afaf1261893ad12f6a7932eb50020c112`  
		Last Modified: Wed, 21 Oct 2026 00:21:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:72f42967257ca782c172657a1395e1e70bb1d77c6fce57147d7cd8f01b1a51b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9510571b6b22e986ccb7481c1bc88d228fbd503c3a37237208eb60211fcf70fa`

```dockerfile
```

-	Layers:
	-	`sha256:7f2615c2546d548190744d717ef7330a9f88bf751879eebb9e85c22e77bb80a9`  
		Last Modified: Wed, 21 Oct 2026 00:21:07 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73af6fbb8f7379ae24ad9ca9255093e970bf12b9904b679183a83b36ae4b4ce2`  
		Last Modified: Wed, 21 Oct 2026 00:21:06 GMT  
		Size: 5.8 KB (5809 bytes)  
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
