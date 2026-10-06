## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:b8e3100255426b21f43c599391f77de80120748566d9b15e2129451771dc965a
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
$ docker pull debian@sha256:5d072b3472652f5f51ab90a40825b54780018c3c618a05d4bf7870734ac9ba60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48503664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad3a1c1d3865a5ff12d33d5c640a902ff6fd4f6be3c391d7fd4c3e012c0d9fe`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:12:11 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1d3e29d690d541dfab39cba18af7f9fd3dfc797872d5c3e4f651d77cdebbfd`  
		Last Modified: Sat, 19 Sep 2026 00:12:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0f264367c8f8c51c8e0a6f7b3b90400f7c597068fcb3eb70f8c01d6f13071ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d1fc77f74fa962ae07eda91fe73c345cca58f706fa6eb85d37fc7156318886`

```dockerfile
```

-	Layers:
	-	`sha256:034cdd91714a3866df4b89e7ad686d0a6519d4976eefe11a831624d936586534`  
		Last Modified: Sat, 19 Sep 2026 00:12:18 GMT  
		Size: 3.7 MB (3734182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10377ae79a5fc44f8d4e178e69c73f0e43527805696a9bf4905fe1a010c8d152`  
		Last Modified: Sat, 19 Sep 2026 00:12:18 GMT  
		Size: 5.8 KB (5802 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:428223b7ba8af20374a601ec0644639cd71959e9c858150cf8e912196a674308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44214138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31f909627054a518cde45ce69f69c649db841b0be36c7bb2bb61885a8c5f1b0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:13:52 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fee050d17ddfe974e1cb628c27c4d4d12c370447da52082a0dbe62c790aeb39`  
		Last Modified: Tue, 06 Oct 2026 01:13:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6835c6cf0894bc8e6f5f6fc31aad3e5c40f5a34c08349a3262717573132a43a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa56f9da5e6bd5c2fd63c771fde145814080905e60a7494b5233499995ffd4c`

```dockerfile
```

-	Layers:
	-	`sha256:7d255be4e436d2494efb10c84607661fc8479aaf21a82ebcfac99ebaeb60291c`  
		Last Modified: Tue, 06 Oct 2026 01:13:59 GMT  
		Size: 3.7 MB (3736361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509bc0dc5cc35a6a4dc5e8b1a4f475943fb017bc8417862d65f177d441667bab`  
		Last Modified: Tue, 06 Oct 2026 01:13:59 GMT  
		Size: 5.9 KB (5860 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:3856918f30ef61ed47d9aadc35376716840609c08ddf59d8f48cc93bc07d1634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48390135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64baef1f128ae61c81db8f5aba3dd1fb9402a0e3f0b220c78c4d3b97eaa3a68`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:11:34 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af6ef0ff9bd23baefd428fef7c2668ef6fa3e9daeeb48417508d0f0719ac362`  
		Last Modified: Sat, 19 Sep 2026 00:11:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f86891db9e95a8075a1692473f15a7921da645b35d745fd75cfa91515a8c3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06530741fb638f6ca95315fff1132ec2b2269008a30a922aad2171fe4f75b775`

```dockerfile
```

-	Layers:
	-	`sha256:6675be3634fe2cf5a2a63034150fe404a59d91a2d3e0e10e7dfbc2ae596b2837`  
		Last Modified: Sat, 19 Sep 2026 00:11:40 GMT  
		Size: 3.7 MB (3734397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d228b54a2b84e2cd3ccb6c2dceb7a6d6358837b1ba43931958a9ddff34742061`  
		Last Modified: Sat, 19 Sep 2026 00:11:39 GMT  
		Size: 5.9 KB (5872 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; 386

```console
$ docker pull debian@sha256:d0a87687265ef4595d65e5fba36e29348ed7818b38541e216a9c16af2ca511cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49491629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de15daf640264113a000e2f38b3f44026ec150700b2342c9c263e2c958b44a7e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:13:00 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20b262fa2c6af9f28715c363585871f9edf599ae523b8ceddff21f2f78a1566`  
		Last Modified: Sat, 19 Sep 2026 00:13:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:04b526bc4848454c928f4a354b8bebc1422307210b2b07ac9ff79a50c358a949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490756a601448c4993e617f893b2794abe5d0d0da68bc7f3be626bfabce5b18b`

```dockerfile
```

-	Layers:
	-	`sha256:0a0713c80056cb56e67396391123cb6b1e25c5e2672a219b9476850fdd82b700`  
		Last Modified: Sat, 19 Sep 2026 00:13:07 GMT  
		Size: 3.7 MB (3731378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3ec0a2c27ef5e7adc21ed2a95bd575b1d1fe26efad02a9e84092a7255cacda`  
		Last Modified: Sat, 19 Sep 2026 00:13:07 GMT  
		Size: 5.8 KB (5786 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:bfde0cb76a8c2e4a3726215104adf6984d05bc57bace3ef7c57a7688a4782493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52362965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0a0f04b940ac697ea00e626c48f2fbb64d096a6f329bbf4548c0e1878c57a30`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:13:38 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f545bf96f6e63519f53eac64c6c71513336b65eb7b6499cceee79b167caeba`  
		Last Modified: Tue, 06 Oct 2026 01:14:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0d239c1c81245b01caa97c1c66c8c3e497bfeca1286bafafcfb52f54cf22bccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c34676d8ce27baa4c4362f51bcf958bcd06b51932abd02eae6f0b17a0625157`

```dockerfile
```

-	Layers:
	-	`sha256:7a0b3cc940ea8e68328bf22a2109a11d8673c049a5b549fb046218a765e74ab0`  
		Last Modified: Tue, 06 Oct 2026 01:14:31 GMT  
		Size: 3.7 MB (3738540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01c61bf92d776a95421996528ae4ec33b265e4e35a6870a3e48e5f4dfef25134`  
		Last Modified: Tue, 06 Oct 2026 01:14:31 GMT  
		Size: 5.8 KB (5830 bytes)  
		MIME: application/vnd.in-toto+json
