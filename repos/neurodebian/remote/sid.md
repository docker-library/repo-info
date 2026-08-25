## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:2f4ea1a65dfa7e47c4c96725af8e194bd1bedd528a35f0d7f8c2a3824c837c3a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:2c5f4a3b777c62b947a2abc074d6a7708fd1ea315cedc4dee00daba08a50b8e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61544654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c06f657ff76f240428d0dac760b18ceca76944a59ac0b16ae9f1f25cad8d62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:54:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f16f5a97d51498e5eccf3dd3e5e6ca2746febdb9dc2913a353263b85031a5c09`  
		Last Modified: Mon, 24 Aug 2026 23:20:40 GMT  
		Size: 49.8 MB (49841754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b211eb1458562948456608481f7b1d889be5f3d9081b801aa1e8141861e93c41`  
		Last Modified: Tue, 25 Aug 2026 00:55:06 GMT  
		Size: 11.6 MB (11609927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07207ef0788a5d0d763b41c99dbeea2bb97492e71aff39c4221508bcc02aaa1`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393a25bd147b242eda3d4ba1cf660313bd17485ab17885f05f27dc31f9b5ac2b`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11735447b7f45c39b0fd251892926600d4f98ce7679be17eb849ba10a89ef736`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 90.1 KB (90070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:be7f0179bb1201c6fe45864116ba3d62e7bbbc3dd3ffddc053617487a41b56e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69fe42d521cc225175a76f12aa5f9d489371253ad64cc81a259350a71d3ea664`

```dockerfile
```

-	Layers:
	-	`sha256:17139fc1afc85db5f947250815fd33ff84a8e391e687c1a673a25708c3e030b5`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 3.6 MB (3605920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:543ac00753219c7c046ff0a210ca07b737d6b17ab676b5eeb0bd55c6fe695ad0`  
		Last Modified: Tue, 25 Aug 2026 00:55:05 GMT  
		Size: 13.9 KB (13903 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8db426407991f762f1407a61d12bb630bbf2d3d24055b930c03b92aac217eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60752988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e5e08846191013e2321203d6fb671dd6f176200f60ff984027130f5439d90c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:57:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:57:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:af77545e1040c204ae857564446e939a826968bdb50dffaaaaeb4179e7b846d3`  
		Last Modified: Mon, 24 Aug 2026 23:20:32 GMT  
		Size: 49.5 MB (49493769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6005b5acaa3a0b2bd1252afec311d3eb9a6eccd9f61344a24db71eea1023c2`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 11.2 MB (11165710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b541020cf7c9541e1172f8bdbb821478373672d83dc914d33adece748eefbdc4`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3570fa9af3d2d7da40505a9a55ec5616165fc1d63115b3779926291a272010`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6553ed43ca213b706e7400e04b7a5c480fc87d47d7791393a0d22f41d93b0f6b`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 90.6 KB (90603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7a2ffae65ef3e88bbd38fd9450b99b06c719c9ecd482fa697696c2c8ef220aac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3624069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f95cf8beb667022257f101daf0b81b635b7ec1e945fefc5fbb701d999ed200`

```dockerfile
```

-	Layers:
	-	`sha256:68fbd0a9fcf5603e170fc87deeee7c1710dd07daedac1c87abd933fcd398302f`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 3.6 MB (3610042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b004c344a5142a42d88fe87c4c8d13e319c4438f8e9c3e0dac1e45acafd5728`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 14.0 KB (14027 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:39a9f8f8a0b6098150bc5afa58d6c9fcade2082c8b12a8a912ac35b57fdc9aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62926512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d02b01d136f5fb53458c3e3fa7f4428e61f838ab5d1be5c1429a5f1e4e6573`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:53:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e01d3901aa4016b5ea48582531a16356a61eed1c133860429fd1cae83ee61798`  
		Last Modified: Mon, 24 Aug 2026 23:20:39 GMT  
		Size: 51.0 MB (51017431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4371e7626550b21b08dfe985c6c582c43fe7a37ef95b3a89a91c0dfef61c795`  
		Last Modified: Tue, 25 Aug 2026 00:53:24 GMT  
		Size: 11.8 MB (11815808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a699418efaa4471a4a7788fb05a01539a0803fe4ad4b5840b9bb4470fcf95cf`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd58aa25429eae77116a3ecb3a10bac50adb0060eedff57d08e95a9a9f58e6a`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354e0092d1fff4b29d30cf9fa2c8ee5e8d880ee93f5ff3a9cd69b89c7199d9ce`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 90.4 KB (90367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:daded7ba1a6867f0f291e22340d54f7ad27782c2aab90f4048ae0198b3c32224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2018931a0ff6e5ebecaa831e09ef786af9c0649b49c21e988e4462d71878c316`

```dockerfile
```

-	Layers:
	-	`sha256:ee97205b2cc2ceee733e18766b7c863a007a49641390d648fb597b5e618ea126`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 3.6 MB (3603765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8fadbaaecbefe5f776238084d57aaa316adc45877287b81fbfed6d9424945df`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json
