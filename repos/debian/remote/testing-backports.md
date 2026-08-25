## `debian:testing-backports`

```console
$ docker pull debian@sha256:b464867c5c68fe97994ffb2a167b8bf63334a8d3659d08b2bae48a9e396c5dc5
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

### `debian:testing-backports` - linux; amd64

```console
$ docker pull debian@sha256:11388a194708a6c4dd534cfd814dd634e98d8bae01852ef8bb0a3d08a927729b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49685735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c03d6b24207b65e397701502e8dd1050732b5526e1e3a91719918cc59f088b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 00:15:49 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f231312a278fa20eb3e5cb57154e9a26e5d50271619823c7de8c60d1592e0d2d`  
		Last Modified: Mon, 24 Aug 2026 23:21:23 GMT  
		Size: 49.7 MB (49685512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cd7b8df780d67eb0537d1c983661cf70b42c1f851c439197931229124794d43`  
		Last Modified: Tue, 25 Aug 2026 00:15:55 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7d191833b72d29200a4ded24ef9dae104e59c91fb6f9541dc5f721865edbcc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b75aa6671cfeef571e0bf5e9e18a73b4c1e2485cdcfbf6b079351c40e7ef6a`

```dockerfile
```

-	Layers:
	-	`sha256:d999c3bcc61fce2f0cf2494bc48cbebfe06704c3e8ef8a2180846ee85cab2da5`  
		Last Modified: Tue, 25 Aug 2026 00:15:55 GMT  
		Size: 3.2 MB (3194785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a545c41feda4c4dd4db4aa44a3b4ca02dcd4ab160be5243cc04c3eb03d7d83b1`  
		Last Modified: Tue, 25 Aug 2026 00:15:55 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:ddf40875965811c2e6207903513dc0b12f1585c12f3bcae9b1b78337e2d510e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46383209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7432a0a84cf8696ca0a812daef399ca010b42d23a40abb6dea6709dbc54a895`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 00:15:31 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6db283a185157fdda0ef737cf06934c0d310e77471b868fc99da2e4de52e08c2`  
		Last Modified: Mon, 24 Aug 2026 23:20:46 GMT  
		Size: 46.4 MB (46382987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e0a451f35a3ef2145cb942892221340fd1bc7c391a9ac7153629910571ce3c`  
		Last Modified: Tue, 25 Aug 2026 00:15:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7dd409ef814b2d45ddee6b606d809fd34d0e7353afc18d98d988fa41767daf93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c99d238d9f25269cbf5ec7f18e6c2079c9eb6b4945245ab6f9da611517389d`

```dockerfile
```

-	Layers:
	-	`sha256:5a3a7e0dc7565b12de7b6fd2995f3feb3f6bd1d78edcd96d3e98dc2f2c9cfe1f`  
		Last Modified: Tue, 25 Aug 2026 00:15:37 GMT  
		Size: 3.2 MB (3196312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7036b81ca5b38818777ef32d187b503baca4567765b8d32fdf7b5ca4d3a809a`  
		Last Modified: Tue, 25 Aug 2026 00:15:37 GMT  
		Size: 5.8 KB (5850 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:2ad66b22c51954ead6055664fcf6350952df89c5f06042a559cf1d2bb10f690c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49504142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7aca87b39017a6f37a8a8948a48f1551f7886111a74aca2a62aff7d8e7f892`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 00:15:32 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:30f4d11c972e1812e323af417c2a97df915c25e06b3f845e71563f63add52edc`  
		Last Modified: Mon, 24 Aug 2026 23:20:42 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4deae375611bcfcb38affb8e9510031ddafe04a7076b7b713453a67cff0220c3`  
		Last Modified: Tue, 25 Aug 2026 00:15:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8a5dac3f13b6a540273d9137513dc975f979e64b44ddece47bda48faeffd605b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab544d59b44dec0f563f026d0aee462ccf9551793e5d72f08a9af6f71c23fa4`

```dockerfile
```

-	Layers:
	-	`sha256:df9894c34274d3428b3a4eecdd74251536cf8abace9a0ccf442598a1a3158858`  
		Last Modified: Tue, 25 Aug 2026 00:15:39 GMT  
		Size: 3.2 MB (3198872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dde91a7b491de9bd0754c9adf6d7cd26749607572f488ab591896611ea5d8b9c`  
		Last Modified: Tue, 25 Aug 2026 00:15:39 GMT  
		Size: 5.9 KB (5862 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:e694519d4ee6e735a0471511d4d55c0510b62c090e544d57ba13d5b2fb8a759c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50668913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6030756df7315a24d830a337d1fc655a81de9d5eecd3459ffe53de74c3ee310a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 00:15:41 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e81e7765b059fde13f1a2f82cc061535670382b46f819b7059ea4bf04245e09b`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefd07453abcc369265e2f7ae668999a415c05df9d086c36467a06d34d0be945`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0fb92eb528c18a8fb0f4f22970b09eabfa763e31c3cb2015df971d73df0ace0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055f21e03aa2e0c3fe8f48a2971954a61c6b41f15c6c78fd91aec047c5ffaf45`

```dockerfile
```

-	Layers:
	-	`sha256:6a16ec85da03c3553d49b6c92297c6f1ad3b861127c45ac9f25ea0a39a5f6a11`  
		Last Modified: Wed, 05 Aug 2026 00:15:48 GMT  
		Size: 3.2 MB (3191378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c363a7055fb73189e42b3c8312dde165e98cb99e736423212d6b9f011c907b6`  
		Last Modified: Wed, 05 Aug 2026 00:15:47 GMT  
		Size: 5.8 KB (5777 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:aa17fd9ab51ec7fd00ce0b1fe3e01364e7cc7eb99e2dc7eca28cdf822a5564ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54675245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c062101f2d729a43b1519b9a8675a71e350dc90b9c69c792930900ca5ffc65c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1785715200'
# Wed, 05 Aug 2026 03:51:42 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b3c052ddbda2f7849811aa46e2373f6622480959099a141a9275a23e79947523`  
		Last Modified: Tue, 04 Aug 2026 23:52:46 GMT  
		Size: 54.7 MB (54675023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7334fd17060face260e678fffee0eed20046edcb441f9798af804b04746e91`  
		Last Modified: Wed, 05 Aug 2026 03:52:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8c051a573cc901f8af04a7e966b20a395e92a473d64decf8e77fcc035170ec56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3203867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80888b256bf7e05d891e43464f923f6e8beda37be7541b0f8e02724c71995e5`

```dockerfile
```

-	Layers:
	-	`sha256:31ba3646eed51ffa390235af9a5e150f0a18e6e138f5d8dd13ad79500676d49c`  
		Last Modified: Wed, 05 Aug 2026 03:52:04 GMT  
		Size: 3.2 MB (3198047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b45a07d151fc13b1d3b7f1333c813fefc0127015480a3562ef1b8b41ed2ad9ab`  
		Last Modified: Wed, 05 Aug 2026 03:52:03 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; riscv64

```console
$ docker pull debian@sha256:b3624a3e231c2ee0b36e55aaf1a1b97901263d166ef5f2b9d6ef09c75150a60c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47567161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcdec3ad366661c8f8594c64c59a17c4359ecb301c79dd5adf2dcb0ceafab69`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 00:18:52 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f33a0e77617b6a02ab7e4e826ac7fc5a884ffa7e99c53d58d509af52bb898973`  
		Last Modified: Mon, 24 Aug 2026 23:32:59 GMT  
		Size: 47.6 MB (47566938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd18937ba18a74a6f401b0e293959667bf4a4fd45100bb9947e23ae72ca9437`  
		Last Modified: Tue, 25 Aug 2026 00:19:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:bda06a55fbfe89ddfc59eb9a187259d2cacbf7629f06b97496fac6a5055f3bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7b888f7dd2ce867b6ad7b77705a9a8a88c8aa592e3470d68514b08d59c2c5c`

```dockerfile
```

-	Layers:
	-	`sha256:b73a942910888c9920c48b0f9b635a2e2b7109bf327feb66c0bbaab44de363ff`  
		Last Modified: Tue, 25 Aug 2026 00:19:45 GMT  
		Size: 3.2 MB (3187147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39f57d53e00768f9fac95f8e6deea56ec48a76c6ce4d24d17032a25a20e02464`  
		Last Modified: Tue, 25 Aug 2026 00:19:45 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; s390x

```console
$ docker pull debian@sha256:8e8fa1554bb315eabb1078db7d14e53cb5a459a711c33f33e6e6ae27877d8d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49244281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a93243602187d28ad8fdb8d0c427f7c7123a926b96d46ed0b0c9d2ebc4581b1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1787529600'
# Tue, 25 Aug 2026 00:14:24 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:35a77f309c3eaae2a44e7e3f47abaf35fa05ead1a3b5a12ad1b9e0dc1f49fcef`  
		Last Modified: Mon, 24 Aug 2026 23:19:57 GMT  
		Size: 49.2 MB (49244057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e72a23589d88e92a7f6f8012d1aa56e74129a17d0ee14215b289de3ec1b42b`  
		Last Modified: Tue, 25 Aug 2026 00:14:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7f62431fa7460741e84442ea089f11a68ef11c7af810144ef104b1710d1ef845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18092af55e7349dc9e1f7c2072064a03217c8151c3ed04dd1bd6cb79d0add8d`

```dockerfile
```

-	Layers:
	-	`sha256:b7f3204a97716612b07a8151602b86ef978fdd1a991cafeab659ff4bfe7f978d`  
		Last Modified: Tue, 25 Aug 2026 00:14:37 GMT  
		Size: 3.2 MB (3196181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbf430d604768add684a96212303ef13f839a2b085a70ae1be8300b0c0d986fc`  
		Last Modified: Tue, 25 Aug 2026 00:14:37 GMT  
		Size: 5.8 KB (5790 bytes)  
		MIME: application/vnd.in-toto+json
