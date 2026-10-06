## `debian:forky-backports`

```console
$ docker pull debian@sha256:0d3d6a9a3f7d4278401356d178a8b321bbfc48c8b594fbde438af3b907d370fa
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
$ docker pull debian@sha256:684a6583d11c103074d9d124b93f19abd72bb1d3e16abc0949e32dadb1c8c623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49649383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7dc655b23e02f52d6337f166c311aad057805c1286c9c4e58281c3a0f375551`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:14:37 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7469b51a5634026d0ec3b005b5a4726cfcf2e658e06e0d7f08c5489d9b1760fb`  
		Last Modified: Tue, 06 Oct 2026 00:13:38 GMT  
		Size: 49.6 MB (49649159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154b5f1661d81b34284ac077d67e3e0d441930e4bd265ed1bac2b586f1d45044`  
		Last Modified: Tue, 06 Oct 2026 01:14:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4195ad3810286832de1d049c17ab85df8d64418ba304e538f619ac0a04a30aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16e099a2424589c34c93863a90ba2a08480b593fda3879c2d89285642d40f38`

```dockerfile
```

-	Layers:
	-	`sha256:0ab314f88e8c29330e69677462defabf88fb6110095437122fffcd85cf0efad9`  
		Last Modified: Tue, 06 Oct 2026 01:14:44 GMT  
		Size: 3.2 MB (3184173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac2934877052c4fe1f09b752cc6f6510eaec1ce44f7e8d15d3c40c2d578dc43`  
		Last Modified: Tue, 06 Oct 2026 01:14:43 GMT  
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
$ docker pull debian@sha256:8fcea9f790ebcb1927a39d8bc1fad86a68ee2a49183c5a2556e966277c0817fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49048164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7094f10f41f0deda29ad12e7d56f2eddb2879fc9dd24c109efcd6f52d7692b43`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:14:22 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e248a7d56738c8f8ba4b2a2297d1668d1b8e939c7f77503cdecaa73940dfdb15`  
		Last Modified: Tue, 06 Oct 2026 00:13:14 GMT  
		Size: 49.0 MB (49047941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bb5acf3778fb917c42c74e27027e9885d2dfbe6a9498a75df640e104ad4097`  
		Last Modified: Tue, 06 Oct 2026 01:14:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:33e928257b64436823dbb9cf9143e316d1f63cb4a0da6c4f9ef8ebf56de255df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b48e2300afdc3c201ba0735d7563409cb06ad385713c70a8ac91161b015837f`

```dockerfile
```

-	Layers:
	-	`sha256:7b9d2748fe4bef41ca6bf1cdf6537ab7df42569ca8591734edc1253a6401a4c4`  
		Last Modified: Tue, 06 Oct 2026 01:14:29 GMT  
		Size: 3.2 MB (3187622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03b7f6b812d61f97c35a2d0aff87a22a39b25e4257e50743253ddfd4d3e78679`  
		Last Modified: Tue, 06 Oct 2026 01:14:28 GMT  
		Size: 5.8 KB (5846 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:f93993c9181332e653f449badf15f55ee8ed4da96505c908ac235f5b604dcb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50774080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a94b5bf57bb684f8439cc3ffc576c2d262fa4733eb70661aeac5a73c8649da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:14:29 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:fbda3f7c32e707d7ecc3e8261c4b9b2b897138641aa26be42e13abbe6cc98387`  
		Last Modified: Tue, 06 Oct 2026 00:13:36 GMT  
		Size: 50.8 MB (50773856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ca778b70066b043caf8fd7e749c63440da77f957ccbccd7e3037d77f82fe79`  
		Last Modified: Tue, 06 Oct 2026 01:14:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:eefc0d1a489acaeffac72eb4b3accdbedf3ba6ed6d3407762778b8cb4a508150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6027db7644a262dea27f2d4d7ad3d49713409b9205497808c907ae4b971fdc88`

```dockerfile
```

-	Layers:
	-	`sha256:04e86740de51ae5ae4f9e4500f71479371b7a695928e55d0058589fb583ae085`  
		Last Modified: Tue, 06 Oct 2026 01:14:36 GMT  
		Size: 3.2 MB (3181272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a153f75ed5a6562cbebd32a94d2f0ebbec7cc94ff566ae77e50e0c243497d51`  
		Last Modified: Tue, 06 Oct 2026 01:14:36 GMT  
		Size: 5.8 KB (5761 bytes)  
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
$ docker pull debian@sha256:d67eb713359d8e477df5a069da52e3cac7177d02d7e5ccacdba120c8625280ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47131990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25744d6e2c812d3236356cb0c72292e545335b9acf78c8a83de0f114aa7f987a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 04:21:33 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:602e6ba11a5967cec241891aa1d375f916daf410a1a5df988936e1af6d96be3d`  
		Last Modified: Tue, 06 Oct 2026 00:15:01 GMT  
		Size: 47.1 MB (47131765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06e6c039927fed7b7be7842790993b2be9e4e6e550fcf9e6c6d9b5c47eee94e`  
		Last Modified: Tue, 06 Oct 2026 04:22:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f1c0bc363866bfc49ed2976a62e658bec7fa5eca3d98d3ba821c1807e0b8f9b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb1c76a4a3e66e949fecc0408e4e2bbcac00bbb1b4136c8d53cf5b91cdf80ef`

```dockerfile
```

-	Layers:
	-	`sha256:61f3ae4b895075406a990c20c3ed3a561338881ff9c668a696ee3395c3c0c7e1`  
		Last Modified: Tue, 06 Oct 2026 04:22:39 GMT  
		Size: 3.2 MB (3175718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b85fe9ff7912ae2bfc61f16a647decc5a0425194b171faf80edfb8c6c88585d1`  
		Last Modified: Tue, 06 Oct 2026 04:22:39 GMT  
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
