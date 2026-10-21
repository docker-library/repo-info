## `debian:stable-backports`

```console
$ docker pull debian@sha256:f04ba09efcbe015279be1c6cdfdd29f9dd9a3573724db271a5b1cc68217f25cb
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
$ docker pull debian@sha256:d24191834f92a4ca0394fd617ac25ee2b273812e5281618e30a6f5ad279d19fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49393844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0df701989d3221dce9e06aac4054563b0b2b19ee977a3b2a7fe75a6c8110cc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1792531975'
# Wed, 21 Oct 2026 00:14:57 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:51736eb5702cb5f4cfc51b2b6f66759e085c6f6ab623a309ea15105aa0fbfc32`  
		Last Modified: Tue, 20 Oct 2026 23:31:12 GMT  
		Size: 49.4 MB (49393623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f69f06b05af9b265dff86accbd3442cf374a5d3ce3ec216b6255476866dc47`  
		Last Modified: Wed, 21 Oct 2026 00:15:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7224031fa7061347276dccbd337ecfc96ca4f364ad5b99a1a2b7c4321b923d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05bf927d52c0e1930509aea97f79d7f0a61df8fdf36e6bcf972d2f217f3e4a8f`

```dockerfile
```

-	Layers:
	-	`sha256:4cefdb7dff4b5c4594b44f14256cbf7ed894fb2b91291f56513e7e79fa9f8fc2`  
		Last Modified: Wed, 21 Oct 2026 00:15:03 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddbf0a6c38202a7e08ab6195f6d249f6aee9f308e85c125169e2c5265714341a`  
		Last Modified: Wed, 21 Oct 2026 00:15:03 GMT  
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
$ docker pull debian@sha256:24abec0df67b5272d42aad282cc587c53adf645a6894cfab8e6d70159944fa79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49761827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ee5b9817baab1277ec7238e8cbec9902fe20e5a81e6db287e1304c64a16042`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1792531975'
# Wed, 21 Oct 2026 00:14:38 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cf9ceeebdee6353cfd3115c7ed03ee408024ac0875fd41b79bec5d8cf9985876`  
		Last Modified: Tue, 20 Oct 2026 23:30:26 GMT  
		Size: 49.8 MB (49761603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a986e29f1e36da5406d55d018a8da0331099316eead8f8ba353aad57d8ea8137`  
		Last Modified: Wed, 21 Oct 2026 00:14:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b54465d58b8be5662633a324824521f2e5f1864649e01351028fd065181ee759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbecef9b47d2317d35c841a3e43f3f1dd290a6c2e99e648edc83c6f535acf23f`

```dockerfile
```

-	Layers:
	-	`sha256:e48e8e0ea7a1f4d07b20687734e6e7be6550b21bb241505ca0067a9e0b03486f`  
		Last Modified: Wed, 21 Oct 2026 00:14:46 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22f0d84f8ad6012cbb5edc5fd2f1c3e687938fad5a53baa2e24cbf145c73d1e2`  
		Last Modified: Wed, 21 Oct 2026 00:14:45 GMT  
		Size: 5.9 KB (5851 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:e97b261abf54a3f9b53047ff8b3380a04e3b84c290aad4fe532873a5fbbeb4e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50906769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59f3c7b107779fc0e946875231d5170d47089f2a8435f84d42ef109bb8088b9f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1792531975'
# Wed, 21 Oct 2026 00:15:11 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bb0061c85fd0e38d33c6780d119eace573fe464f28881f5f384fc7de3c613c1d`  
		Last Modified: Tue, 20 Oct 2026 23:31:03 GMT  
		Size: 50.9 MB (50906545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ae2adb0640ac239e83a418e1f9bbcfb786e4a0063d6e380c9c5220f08f1a53`  
		Last Modified: Wed, 21 Oct 2026 00:15:17 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c95b91e64272956e1eac1d7ce70f22bec8f7bd53587043c02d95db2d31916e97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506a0cabca2cfb28e8a262f558a349b3b0d8a8d678e1cf0074e07f3203860f0b`

```dockerfile
```

-	Layers:
	-	`sha256:c861032ff1106598a66065da1801f780cec304e4fbd4e246b46a22fa93ef4834`  
		Last Modified: Wed, 21 Oct 2026 00:15:18 GMT  
		Size: 3.2 MB (3178079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c54c9c2531719eebf57c9feb684ecb05bcce53b28f5514a469776bd5427039b2`  
		Last Modified: Wed, 21 Oct 2026 00:15:17 GMT  
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
$ docker pull debian@sha256:5928c3e17604fbef301467e77da95adf8e724ba6e98a4e09b935f0501c6f8bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49460365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728335522aa1c2ffe3e2ea9856916348d3753857640ec2cac0423bf5fa6d7c92`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1792531975'
# Wed, 21 Oct 2026 00:14:25 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:ad2176b08fa2203ae1a43929ea7c675e3ae195bff650c41fa6bf1a09d34f0df0`  
		Last Modified: Tue, 20 Oct 2026 23:29:45 GMT  
		Size: 49.5 MB (49460143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86346776ad69a5e3bdbf7a30714c15b28de9c11ccfe2994ad370528926899a27`  
		Last Modified: Wed, 21 Oct 2026 00:14:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f21256698f16d5658a10cdb60d4fb9da69ad4f48cc72720ea99a41a491dce7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b921ae86bbd2a99b0091281f7a1a913c352ce9b87f53f75a22669f202edc4465`

```dockerfile
```

-	Layers:
	-	`sha256:fec1502ac7add509acd2bc97b824b378ad60c48d0cc761aa41f92cab731070d8`  
		Last Modified: Wed, 21 Oct 2026 00:14:36 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87accd0db42b651a1f0184c5470bee57166a1272ec5cbda83c30f209b790f8a8`  
		Last Modified: Wed, 21 Oct 2026 00:14:35 GMT  
		Size: 5.8 KB (5783 bytes)  
		MIME: application/vnd.in-toto+json
