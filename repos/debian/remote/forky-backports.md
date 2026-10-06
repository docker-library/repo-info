## `debian:forky-backports`

```console
$ docker pull debian@sha256:fe480f876c82a15d94832212f216659f4fe815a4de59722c5eacc40a3c87467a
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

### `debian:forky-backports` - linux; amd64

```console
$ docker pull debian@sha256:c87f2bb9e2446001a4df0352ab6e30a6bfc352238a7fea09036e88f35913beba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50075302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57afafe3fdf61498367c105a9d67350cfd8d16b0f147da4519fe445649fc970a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:11:48 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cef6b9e146b59354ff9c67b76eb738a3cbd721da62af9fea96e49a9203bfbc82`  
		Last Modified: Sat, 19 Sep 2026 00:03:30 GMT  
		Size: 50.1 MB (50075078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731ca9ae889adac0940de3cfedeb763ff2b636447295c464d0808187536d7a82`  
		Last Modified: Sat, 19 Sep 2026 00:11:54 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:86367e621bea30043f14bbc54e84d8c24d1e0b8dfcd8e9c06c3aca802204be1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35ce4263deaa64e728714820939cd0fdeb659859936f62db5d446398d7a15c7`

```dockerfile
```

-	Layers:
	-	`sha256:1f155cec0af56a21bad21b442d3bdb318ae313f1a56ccd396d88d5c3460a29a5`  
		Last Modified: Sat, 19 Sep 2026 00:11:54 GMT  
		Size: 3.2 MB (3194717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec665b268b573db4f2263006b0248f60c12e9537de73d74ab17a3ded3dd407f4`  
		Last Modified: Sat, 19 Sep 2026 00:11:54 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:802ba2fd429466dabacc25f751976ae1118a89e36f8567597f5661d3197c5fe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45925142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35a4e8e4ec59b20f3c3f5156f2443f7ffb16c6bcf45067675fbcb54272b6be8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:13:58 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3a78d12b86d9577977254cd29839c594a5572094c28e6dc8b2362fc3315645d5`  
		Last Modified: Tue, 06 Oct 2026 00:13:43 GMT  
		Size: 45.9 MB (45924917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95679043e3563b454da6b1d40abe7224b175442d0fed410b553df77b3b91040`  
		Last Modified: Tue, 06 Oct 2026 01:14:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c88b97532c1b7877f87461547806332ffeda2cee317a3637d5b8ba4a7efdcbd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e68b278bd77911e365c89096eb2acd954435294b4cdba6f47603a8894bd481a7`

```dockerfile
```

-	Layers:
	-	`sha256:18d4a27b77d121d2279245b9ae8c53a2e59692ad921b012b010abda45ff3e8ab`  
		Last Modified: Tue, 06 Oct 2026 01:14:05 GMT  
		Size: 3.2 MB (3185700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ac01343b6b18739445b7674b605b8db738a3cb91ebaaea62e065f8d65771fbb`  
		Last Modified: Tue, 06 Oct 2026 01:14:05 GMT  
		Size: 5.8 KB (5834 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:1facb22736daaf43b5feed80f8deb9308bba90d6e2889dec336208865c8e4330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49556709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf070806d9364193fbac2c815a41ef26a86d2db5dc00f815944645debe38905a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:11:47 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bc8b68ec4249a062f0351d0b052f82733e554595d28d36e1fb5f71baf24fcc1b`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 49.6 MB (49556485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1add6bcfd50abf7037028c627ebc7cacc1090aada9fe050a84e84e48fae8a3`  
		Last Modified: Sat, 19 Sep 2026 00:11:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:39a33121f3a6084ea1fef01aa89354c7b4a3f0198231d26fe113508e10afcefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079801bc13a81865f4eb1c5498fb192f374e33ba002cb011c0eb5a0c64fdd21a`

```dockerfile
```

-	Layers:
	-	`sha256:3e8a9ecac41975ff419de33a3c81a39bcdb4aa4292586a1d73b4803dee26f279`  
		Last Modified: Sat, 19 Sep 2026 00:11:53 GMT  
		Size: 3.2 MB (3198166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22bb0537bf47c3714d08b19d3ff3aea109a9cb9b4934afe2b74eabbf4c3f7350`  
		Last Modified: Sat, 19 Sep 2026 00:11:52 GMT  
		Size: 5.8 KB (5846 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:b0ef091ea4e6bc1591f1b099eed18259029c9c14fe15e8db1441b42cd6d4347d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51213502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c0e78972b1419afd66c0e0707b804296cf826fb31e2416980d39e792c77bfb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:13:16 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80567be501664338112db95ee071ef620d401fa82a8bcc4c1528d95bb47c22`  
		Last Modified: Sat, 19 Sep 2026 00:13:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:3d2aa38f98daa939a20650964607ac682da11e9023a8eb43080f7e552c9982be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b057b770ce6978d0ba269a38870198046ad30d5f70fc18903821a3ddb3153951`

```dockerfile
```

-	Layers:
	-	`sha256:0ba3e89f3a875411909dd18545ff612e131e4f0c656163db070d4c98f88663ae`  
		Last Modified: Sat, 19 Sep 2026 00:13:23 GMT  
		Size: 3.2 MB (3191816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebf4d5f5fd8ace55795e993bb7284245cd482b4dfe0e4545a24aee4dd685ae31`  
		Last Modified: Sat, 19 Sep 2026 00:13:22 GMT  
		Size: 5.8 KB (5760 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:e111bf28f9195a7a930098a9e1123b700bdc4b25c0dbb85d5ebfe0753896249f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54325243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8b12002a417e2f16879a67df6eee23d29e76885410985d47bfb68192b4af93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:13:38 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:24e970ec93a434808c1ff38e4aa6d0236d311b8d999043bdbef87e821423afbf`  
		Last Modified: Tue, 06 Oct 2026 00:12:48 GMT  
		Size: 54.3 MB (54325018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f37f566a3727bd20ccadfed44544f9f024dbc989b370254b1ced2b86f65a71`  
		Last Modified: Tue, 06 Oct 2026 01:14:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f7953223d6a1f901a7059a408f16fc51aa8091c799dc23a7d82b50aee2b69257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34211795193fa10f3ed2d9c06665ee8f6666e431ab0475f4f84e3c139cc12e39`

```dockerfile
```

-	Layers:
	-	`sha256:060abb31aa3b36324eea3108c5bb0473f1c32f4ab5f8d38acc60b4ba17b6738a`  
		Last Modified: Tue, 06 Oct 2026 01:14:30 GMT  
		Size: 3.2 MB (3187935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c007d2f0d51489f7409ef108909bd1b8edfdb66fe76c401b3f2a4aaaed24f1b2`  
		Last Modified: Tue, 06 Oct 2026 01:14:30 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; riscv64

```console
$ docker pull debian@sha256:c83c6c0ffed305608ed124980ad16eda8c0b601521ad8a5fb154e63c8577cb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47644324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718018b3201edf44bcc76920dba64f66378536e2018740e11904108b78f6c63b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1789689600'
# Wed, 23 Sep 2026 04:42:28 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cf3253bbe95a1084c47d384bd326e2e3ea3a863f4a42281ad8260ddc95d7b83e`  
		Last Modified: Sat, 19 Sep 2026 03:52:30 GMT  
		Size: 47.6 MB (47644100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:475b50303bf790da18fabacc496057f1572c551b3ebdbf28696277ecfee18d92`  
		Last Modified: Wed, 23 Sep 2026 04:43:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b589d245399dd8021c02413f52dd53799446e5049185b0c072b1b621a847f633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e5399b3fa35d35c2240326f020890fb7370226205af1851501764ed26bec3`

```dockerfile
```

-	Layers:
	-	`sha256:3de21c42d8784ca4b4d492d48966179320d0f45966bb46af74f5a8f2fc1e2ac7`  
		Last Modified: Wed, 23 Sep 2026 04:43:26 GMT  
		Size: 3.2 MB (3186262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97a279978ececdbbeb42106103751fca9d67f13ee026ec6c1e1d610ca3218637`  
		Last Modified: Wed, 23 Sep 2026 04:43:25 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; s390x

```console
$ docker pull debian@sha256:0b30281a8b79e32a49694bd9ed8b36babe56e42ca1c0470a27244f1a062f56e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48824827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0e093b5cb1460854e343cea64d576c44299842ebf411db2db590d44712253`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:13:11 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0ee6ac8b43a7e6254145fd3ccac4ef533ea7f9092fc66943615402bc3f1a9cc3`  
		Last Modified: Tue, 06 Oct 2026 00:12:14 GMT  
		Size: 48.8 MB (48824602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5826e5472334b59a568984d4de87906e8d8b5e33715be1f5260cf871514c0f`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ca2c9ba6c4fd014a3aee9cfcc9a07760e7ac162638f2f062ddd1ab63b395d113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00641b8ea6eaeca1982d3baf99eb31637f0734b19271813c15c5be3d825c156a`

```dockerfile
```

-	Layers:
	-	`sha256:727b1d55866f16d76385004cdbd902d65016060f07ddce7ef412d2bf4e96e0d4`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 3.2 MB (3185569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e4b64204e9e63e5b9eea5805d8377a4222af52c2308b3b8a7a0631f8f3d1d14`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json
