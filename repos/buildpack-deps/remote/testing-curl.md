## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:3e5cbd037b7ed81065b42cdfe9798e1a7da5e18636b393bee7e58b1495624ce2
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

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:30f050357e1b3937e17bf12622cca69489a8c3d080095f334946b7673811b5fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78241412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbefec0e775a9df8aafdf2d80b5941ebae145443d0d04af7026b16dc96a9bde3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:38:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34adeb06c2a31397c5d2536ff0284a8c250aafe6291026b02f01a24762a15dc6`  
		Last Modified: Thu, 05 Nov 2026 07:38:17 GMT  
		Size: 28.4 MB (28403902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2faf91768ea823fa7549ac27da8faea64c7d6e4295cdd362188be954e49a1534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4075093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d83e5250298da9a9b31d193c4142193f749617765c128a74e9c11605719bc97`

```dockerfile
```

-	Layers:
	-	`sha256:0919bab277680aaa476a32c7754a60c9439b8240e74117b7b151c9d9259e3059`  
		Last Modified: Thu, 05 Nov 2026 07:38:16 GMT  
		Size: 4.1 MB (4068320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83d77e567db612c0442935609bcaf55ca2aa067ae67bdfed2d343ae32115b3b3`  
		Last Modified: Thu, 05 Nov 2026 07:38:16 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:faf97be1946ba335de08ae641ebccae13cbf9266655bae9d07bd9e9707df88da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71652387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd68874f8fa05a38ad9435a6c54db8c7900c22386b905749bb8bdcb6c3b9ad64`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 08:18:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f4571deac5636a396a2163d6b48f873d6a8a303954c381d1bc5b38f11cd16c10`  
		Last Modified: Thu, 05 Nov 2026 06:16:03 GMT  
		Size: 46.0 MB (46026021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74027cb3ba07a0f98d9ab9adf2ca28c59642b10768028ace48ac6d161679e66`  
		Last Modified: Thu, 05 Nov 2026 08:18:37 GMT  
		Size: 25.6 MB (25626366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bd9298918c929055886a4e76cd239f2e80626a728c5f09957e57c4e065f98a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4076809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80fbca22acd307a81245de185796a787886b556dcab1eff518281b5b2b30ced3`

```dockerfile
```

-	Layers:
	-	`sha256:1d2a30f70017c8aaf551aa1a7982b5f6a80219ab54715c459a9f310a63500576`  
		Last Modified: Thu, 05 Nov 2026 08:18:37 GMT  
		Size: 4.1 MB (4069972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d709176685d7c6da137e7e761dd86e50558eacdd0b771f2cd9b45fb00c91a5f8`  
		Last Modified: Thu, 05 Nov 2026 08:18:36 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6dc225be0cdaafddc8e2d7aba88ce5eea240346470ade4f29dc74eaab832ea7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.5 MB (76534693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a87653ad84ab1086980863faedaff69c701ca4d300cd1dd8d07fc6841a3411`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8135f0fcea163d1131a17fb32e94824499ebd8b67b4fb8cf37f4bc98c95fc2f`  
		Last Modified: Thu, 05 Nov 2026 07:42:10 GMT  
		Size: 27.4 MB (27354458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bcdc1bc662a56f39703c58685eb56d71200ea3ca7787c67f87ae046d24ed0e7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4078673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3aa813a0167ebb9165bd92709bfd3da95e12acad4d73928b1d073a6a655dfca`

```dockerfile
```

-	Layers:
	-	`sha256:2982220d7c0307da1373b97547acaf9f71e1f6abfceec25840e950697278c05e`  
		Last Modified: Thu, 05 Nov 2026 07:42:10 GMT  
		Size: 4.1 MB (4071820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44e00e738550676c69bd4b358915cc96446570bee28c47bc1f5f459758f3007b`  
		Last Modified: Thu, 05 Nov 2026 07:42:09 GMT  
		Size: 6.9 KB (6853 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3eb2268a3ed91beed8961d08efc6470cefe7646e0c4ccfe7d0e4d81f31078cc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80544155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c72d862c2c5f46170e13d40e5b2fb87130390e662e8a1af920421c9f57e8745`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:41:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:88279104588a0d5efe47acaa871a7b60ac245f575d2fd177222855c5f58e2e1c`  
		Last Modified: Thu, 05 Nov 2026 06:16:02 GMT  
		Size: 51.0 MB (50970700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39dc637507b579a05ec1c9ea890e4b42ebb92e8acf8251a5fa89480c3d621ec4`  
		Last Modified: Thu, 05 Nov 2026 07:41:29 GMT  
		Size: 29.6 MB (29573455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b94dcc542624e9fe07958b8382f67f83c5d1eeb3ca271b73126f75f6e164e821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4072081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326918bd884596c012b33f33dc5c68502ad2aebe5ac14f177b5c1994aa3c95f9`

```dockerfile
```

-	Layers:
	-	`sha256:d06c219897540e19d4883756b06d4ac65766731e375821a20a99b88b62c4b1a8`  
		Last Modified: Thu, 05 Nov 2026 07:41:29 GMT  
		Size: 4.1 MB (4065330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b6ff97569cd0fae3d5d3f2ed0abcbfb057be611fb3dde9b5c98778ecaba4856`  
		Last Modified: Thu, 05 Nov 2026 07:41:28 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:545512dff79622b97157851cf07a6c162437f2aeb93c7b059179bd08820b2c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85012981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8831c5c2d0e6eb1fce741a8f1c9704d3664a423e2201a249627922f76e35cad7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 10:08:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9ec24ed89fd499a55bd6dbf4d5bf634cd52f8162f30831727cb57d35595f9ca2`  
		Last Modified: Thu, 05 Nov 2026 06:15:10 GMT  
		Size: 54.5 MB (54524271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1182c08a2b24dc381354b1007527c1b1b3c8308810b4dba7d8d5f5e8b13320db`  
		Last Modified: Thu, 05 Nov 2026 10:09:21 GMT  
		Size: 30.5 MB (30488710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b9518f46b630c72a306b0d51bf03e9e3988769598ce6a8206a02fe28c070f18f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4079224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49018fa23f6491605358d24d6ea4ed4a180b0d5bdc511fe50e85a20c86117e0d`

```dockerfile
```

-	Layers:
	-	`sha256:93e21226d9bd63e5247752e00ab9a9c29c1262361036400f9166df70772b6374`  
		Last Modified: Thu, 05 Nov 2026 10:09:20 GMT  
		Size: 4.1 MB (4072419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7aca04d838a575a4f8b3b0b7f43714a755940de7790ac700f9fa2d1c5013fcbb`  
		Last Modified: Thu, 05 Nov 2026 10:09:20 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:a42d50bf66899e670bc0bd96d11dd6fea4351b75d1967b832fafab2e8e6ed7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74721197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32859f4bdaf30bba3887900a04f7a723cc285d6f7445c17d4d219c6234c914f6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1793059200'
# Sun, 01 Nov 2026 11:14:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d74c33bf8f97f791074fc5b54f462c860011ccb4fdcecc6b8d30a950e5338695`  
		Last Modified: Wed, 28 Oct 2026 18:21:22 GMT  
		Size: 47.2 MB (47233071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2030a2f188e8f3256397c9db33723c89de0d930386903c29e1e5fdaca7a106b6`  
		Last Modified: Sun, 01 Nov 2026 11:16:13 GMT  
		Size: 27.5 MB (27488126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b45cd9c2bc3dd2fae737cb9511d4387f4dc89eaa13f8f337b21eccd498b1f6e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4067657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f531399f477f161415b52bd496d39a26e57a58a0642ea1dbde244b1b3b9c1859`

```dockerfile
```

-	Layers:
	-	`sha256:9fc426e333e3eb36b14b62edfcb77f02c1efe613fa771818d5e37d7f8996ac3a`  
		Last Modified: Sun, 01 Nov 2026 11:16:09 GMT  
		Size: 4.1 MB (4060852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6b2c19b5025dcd9aa2d854b0154be69c6a68e4516ed7392a27a46be15cf029f`  
		Last Modified: Sun, 01 Nov 2026 11:16:08 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:8c6336d47484a4cf8c2f868c984c8c9786845ae6adddf844ea35e38b934ab0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76675206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eead7ff1a8df898d34270c4e86fd9658b46b942c6c2caf7653e5a0c211d6c7c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:56:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cc8ac2db6c9fd29c12c9ec3701cdeda90a0db47520cd2c224978701e217d1ff1`  
		Last Modified: Thu, 05 Nov 2026 06:14:44 GMT  
		Size: 48.9 MB (48937313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dad4e05ab9117aa621e40ab2282d406dc226ef06ff442de712d5e449395fd04`  
		Last Modified: Thu, 05 Nov 2026 07:57:18 GMT  
		Size: 27.7 MB (27737893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:26dd1224e3359a6e5a5871bdf6a060589c790f646dc8c8f2c3ccd59488d8686b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4076450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13048fd05b51bcd4adca865d35452fc5d9a476f02ca33de8f950976cbcf6717`

```dockerfile
```

-	Layers:
	-	`sha256:fcd55442b61e8c00aaf30e06bad33be265b176ad9ad14e714883614fe5bf91e5`  
		Last Modified: Thu, 05 Nov 2026 07:57:17 GMT  
		Size: 4.1 MB (4069677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1699d422210451ec3d741611b6f0229b8018697dc57d52ab66fd252d8ebe98d4`  
		Last Modified: Thu, 05 Nov 2026 07:57:17 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
