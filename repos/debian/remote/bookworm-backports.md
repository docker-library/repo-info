## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:5dd603555010de39da3fe6f5528a5df40fd61051993445b2eaa7f8d34fcdb58a
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
$ docker pull debian@sha256:56075530775ceab82723941d45eb431c536e20e38bf44064b3151a9c84bb784e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44202434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f8eec485ebc1589a9baf006b4c79e56c87c4b482438e9e79eb062874a574c5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:12:32 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab97ce378701b60f5b581a0f7b9d063b5ead23278f34eca31634128f7cb187f1`  
		Last Modified: Sat, 19 Sep 2026 00:12:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2de6fd754316a6880e84c0c9d17efb564c2d5fe80ce3c4b86f0975654e29c488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2656dd8261b7aca343c1ce801b0d27f76464da5d1f9aad30c1cb01c15872c1b4`

```dockerfile
```

-	Layers:
	-	`sha256:df6c58f6819092f0781e0e8b2a58fdc5b6d4d349afd55a0d57b1d409f0c6c088`  
		Last Modified: Sat, 19 Sep 2026 00:12:39 GMT  
		Size: 3.7 MB (3736361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46541f121ae57b609105c095473dbb506a453efa86389eda55fc987e92fac1e0`  
		Last Modified: Sat, 19 Sep 2026 00:12:39 GMT  
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
$ docker pull debian@sha256:afd145da797bbda480bba10fcce69ad531f3c2df2beed6e5e5aec553f6e930c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49485619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c755ca011031c16628a41317db80465f8880bfa6a15e6aa26818de4f2552ce7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:15:17 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae81624f56221a6c1a02efd5cdc40397592d6293b48459116799cb79ffd43e7`  
		Last Modified: Tue, 25 Aug 2026 00:15:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e9a988bf7e91d54553c7051baef6fe1518bff83ce65a5f25dbede59723755a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540cf0699913100e317324bab10514e7e1b30b9e8ad8703a83eed7dcadc4b241`

```dockerfile
```

-	Layers:
	-	`sha256:31c547b7c53b6910815c8aa964706c1339c767a14bcf14bbe603ca1e38824aef`  
		Last Modified: Tue, 25 Aug 2026 00:15:24 GMT  
		Size: 3.7 MB (3731342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64371204d1b1380c6a4f2d109aa318f7c622896bfe66512ead419df4b4ffa272`  
		Last Modified: Tue, 25 Aug 2026 00:15:24 GMT  
		Size: 5.8 KB (5787 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:0f3ed37c8031fccfd408a113524ef98e55fbbc7ead1d8ae6b3cbe332fdc2cfe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52349529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ac49ae12f62de51c2589aa804e6e2d720dd18b20e274c61faeea095300d5e3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:12:04 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2142682fc69a23aa431cd4fe6562d3a682e9ddfce511a2b97ee29f06214cc7e`  
		Last Modified: Sat, 19 Sep 2026 00:12:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a22cdf86284b2ed4867d769de70ee7b3b6353484605817644e33ec564aaf9a14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad00f2b97e5390a3e5cb8c2f83886b3b96b2b1641fe26054b594c6022fad761`

```dockerfile
```

-	Layers:
	-	`sha256:6cc63194aca09af0c993aa6f9a955dc1145f5000f7ec5270b5647459f4d995cd`  
		Last Modified: Sat, 19 Sep 2026 00:12:25 GMT  
		Size: 3.7 MB (3738540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79ae659deac9305fddde854bc1648f479e7c65a2c82ed83690bf45e76447b3c`  
		Last Modified: Sat, 19 Sep 2026 00:12:25 GMT  
		Size: 5.8 KB (5830 bytes)  
		MIME: application/vnd.in-toto+json
