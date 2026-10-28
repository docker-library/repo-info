## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:ec9edf012b4f45d729dc43d00ad996edf8ab8f4c3c26f30e9787db7684307cbe
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

### `buildpack-deps:curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:106d3a7bd7eaa8debd75b18c38462c8ba6a406e401e25c2aa4368e8e257cb308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75042306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1dbc0bd387cbfcec5f297aabf419e3cad9ef58d6b0653868c4de4a081275c6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3b752bd4f060dcf33c0f54d1fad29fce8ff42b8fb544f9ec95372f0933bf`  
		Last Modified: Wed, 28 Oct 2026 01:40:03 GMT  
		Size: 25.6 MB (25634411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8a4c3f1d1898b04a6068b71b30380e5280b7429e2b982d3f0eeef9700dac8a5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e227cebb591d567b40490c7a47296de9bef427c686ace4069137e065c3b460`

```dockerfile
```

-	Layers:
	-	`sha256:51e6d287ebd758c5134e3735bcbb01b743e87770b6be46690973ada3de5c65c1`  
		Last Modified: Wed, 28 Oct 2026 01:40:02 GMT  
		Size: 4.1 MB (4128059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c396a0df7f0aaf2aa148209c46d5b37c2ee6bf40f9fee8cfbb134705d98ad7ef`  
		Last Modified: Wed, 28 Oct 2026 01:40:02 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:3d87770e9642fdd9214bd401e4ead112c269fcf04e2e7ba1cdf2fcc2b917ad93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71940007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7959db850babbb4ba91aeaae388d7806bab444b5a2e5bd28e78e3278f227210e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:49eebe9825563c4d645a935992f1602e05bccea6dfe4c79e51c1fda75045c88e`  
		Last Modified: Wed, 28 Oct 2026 00:10:20 GMT  
		Size: 47.6 MB (47576128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295a6d424e5dc332d064da509d1423ae9e34dea3a27d50d590dd9e7527ae50ac`  
		Last Modified: Wed, 28 Oct 2026 01:40:12 GMT  
		Size: 24.4 MB (24363879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8dc8aa1bc818b6b954ce72f369f6a1d8160cdf6ae6d89f7de1d44cc381b97e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d73a41d6ef999ce21e7e299d61672f9e54c4c8aae06d69d30cbe16d115f570`

```dockerfile
```

-	Layers:
	-	`sha256:9080e752decb71b3a043d5b5ae83798c192f2c5fcdbf138b3eaf96b377198a60`  
		Last Modified: Wed, 28 Oct 2026 01:40:11 GMT  
		Size: 4.1 MB (4131049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbf3149c289df32710c3e4bbfbc39a8d03de870348f9e59ea2f88cb17b6deaf8`  
		Last Modified: Wed, 28 Oct 2026 01:40:11 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:289e0a03d722ea5e8eedfd9bb3922768ecff3d0fd25fa3d53b989043091d7e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69465753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a684923cfed39c0a352f6f93bd74377141b6351efe417d229956f2782f8d02c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:05cefee146590a5be2c7703c704e5fd78889941e24ab1dfa8296ebafd4153810`  
		Last Modified: Wed, 28 Oct 2026 00:10:51 GMT  
		Size: 45.8 MB (45829380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a1c0c7b220c9feb691744bd05f84ba55525499337ec4765cb6cddb293d793f`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 23.6 MB (23636373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:23df84a6cadc78ad628aa9de55e2f1693f4bb5088d8eeff01959933a029444f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4136718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59d85abd5b52c6a53efe0eb0f675e794ed345d2ee449259f83d2ad6c6ad7409`

```dockerfile
```

-	Layers:
	-	`sha256:cc305850c5fe9b9dbbad9f8751446e9a76f822debf319e1014fa0dbcbca1f992`  
		Last Modified: Wed, 28 Oct 2026 02:21:37 GMT  
		Size: 4.1 MB (4129560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0ad36a0f383b8f1dbc2b72e5e8af9cbbc2d433d8674aab02867c06e59deeb06`  
		Last Modified: Wed, 28 Oct 2026 02:21:37 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:79786426db0884cd14ca43aa2ee09970423e11758ae48d8d50feb08aebdec59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74813517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c36f90e668d01dc3d87eb37492bcbac7d732d9c4a74e79864e5b3dda4f96cc7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:01cc335ab8281dca57e5390d8c2faa0069e013f4295da997bb45a65346ae0fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4136142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52aa3ac1895a6f11a023774d909d776df838d3577a41abe13beb82ff077c353e`

```dockerfile
```

-	Layers:
	-	`sha256:448f9c232bb1c45c1a2ff14546a3e2115d1e3bc0a1273d6bc851d9d731d6a3c4`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 4.1 MB (4128964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a67e6d43ffe66a698e5de58425e99fdcb4fbef469ade0700ed103d86174c509d`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 7.2 KB (7178 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:a19b335aab4caa7d2131f48843047f5738b5372e8cb441fda7593f2889fc3943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77721066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074ecdbdef6fecc045d82408152aab1064354464bb202060dce3a1a9d9f43650`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62933a21b583195e4f59a0ffcfb66f567701192ffacb0e69c5e6b700655a5147`  
		Last Modified: Wed, 28 Oct 2026 01:43:19 GMT  
		Size: 26.8 MB (26799499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:18c189f6fc5f81f3d88c38926a06e78ec685d82f9c684a4dae065bf17910480b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4132226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e7a1ac6bc5506917b48cd4c481f7d285db7da9f23df4594384738fbb544330`

```dockerfile
```

-	Layers:
	-	`sha256:de91606a98f164b1763ca21130a3705056c16611584d069320fb8098e7d243f0`  
		Last Modified: Wed, 28 Oct 2026 01:43:19 GMT  
		Size: 4.1 MB (4125168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2e2e2ef0069029672f0e40b087c8310d68c7da8236c804323993abd7ea48d83`  
		Last Modified: Wed, 28 Oct 2026 01:43:18 GMT  
		Size: 7.1 KB (7058 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:1c6d226768884592bc640007ff98e6e9d70e02471e8ae66515f5ef8b73361357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80245394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d80f9e3e34b0332c32defcb6a0ed22d237f93d2f3bcbf09d8fb1210cc582da`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0211c9ed62620780a710c0cb995ed73df4683591de20af0c8ccc39999890b`  
		Last Modified: Wed, 28 Oct 2026 04:20:40 GMT  
		Size: 27.0 MB (27023152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0ce7ea547518d09d7f1a03df712a3d89fa84df0cf27946d5cfecdf6563be396f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4139027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730074d5b793cd9a85c490fd582a03017689817c4ded69173b24e53386691c4f`

```dockerfile
```

-	Layers:
	-	`sha256:51203a9cad5e66939984ce4fac01f4a8ae6951e12855f8fd14d8b394519da0ea`  
		Last Modified: Wed, 28 Oct 2026 04:20:39 GMT  
		Size: 4.1 MB (4131903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c748d23c412e7e9eae00ea70e79bda0d2fd855ba8164265d81e8569915af28a6`  
		Last Modified: Wed, 28 Oct 2026 04:20:39 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:0171bd19a887e735f3d7897425a0590bf7f15ab44aebb111252e15344c2ffcbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72850151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19e8762dc7deea3d564a0a6ad6490a497e6c2ff22069ee7f552b47c25d136ab`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 05:15:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e2f042c7c15ffcf761b9add85d4edee585d3d2835fa5118e05f7a7803f078b20`  
		Last Modified: Tue, 20 Oct 2026 23:47:25 GMT  
		Size: 47.9 MB (47876636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32139541f4549e36734c5a88277feea7f893f4a9131721e90b51bf8f6e15227`  
		Last Modified: Thu, 22 Oct 2026 05:17:47 GMT  
		Size: 25.0 MB (24973515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c8f4f3960c229604be739d8026d5d015e566d8bd591069691fd74c5e4d7e5190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f3cf7a8ec84fdafbf8743275d8398b7e1faf07298f6d70a36c42803806b9cff`

```dockerfile
```

-	Layers:
	-	`sha256:0eef8af283120f3801d61c5d6e81d42bcb529b51da787dffaf9ab1d3acbd3de2`  
		Last Modified: Thu, 22 Oct 2026 05:17:43 GMT  
		Size: 4.1 MB (4121345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:771766e03e48b903e4f2c8650575b7898e6a17aff7a8098cde3c842d63bcc18a`  
		Last Modified: Thu, 22 Oct 2026 05:17:42 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:94f6b38ed8173470cef7de2f3df99d428dd1fddddf102025e6ff22f4e4beedf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76287635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0264d607e75b80abbd5469dd82399da6532bd1dcb3ef66af7e57ccc922762d92`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2250e610e1393c26b6c89de550932ab3d31129c6532b4cf00f5c62c0d6bda7d2`  
		Last Modified: Wed, 28 Oct 2026 00:10:37 GMT  
		Size: 49.5 MB (49475831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ee5e1f1d6256810cb42c0392efc9c686df4046ca11a10101e09b70baca67e9`  
		Last Modified: Wed, 28 Oct 2026 02:43:16 GMT  
		Size: 26.8 MB (26811804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a6e7863dfde091529be4b7f2f8a344491e5365714ad4fa0d29034c73ef1f8c9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4136555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe3c9cdc06cfbe7a87bd357b6cba23dce134bad329ce273836d28b326f14056`

```dockerfile
```

-	Layers:
	-	`sha256:6dc4dbfb097ab6ccd64067e7575888d8fa1ef37679a07b60b8641079f051bcec`  
		Last Modified: Wed, 28 Oct 2026 02:43:15 GMT  
		Size: 4.1 MB (4129469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd6c5db09beaa0a907982d58529a52377499210570a8f1adb03067b4b22c7c8f`  
		Last Modified: Wed, 28 Oct 2026 02:43:15 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json
