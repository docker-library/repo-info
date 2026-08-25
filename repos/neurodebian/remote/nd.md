## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:2bca33fa994c35fc953fa59b86947e415bf254f47444a600bcddefcf4f7f9d93
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd` - linux; amd64

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

### `neurodebian:nd` - unknown; unknown

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

### `neurodebian:nd` - linux; arm64 variant v8

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

### `neurodebian:nd` - unknown; unknown

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

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:f5cf06294f5f4a698404b3d77105647df7590afc6cf4860dfa9aa66c71f19bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62512791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397cf6d1fbe4aab0520ddcd98588996616e929baaeb77a0b5c7e291ca60c2803`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:49:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:26 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b61b6a4ebfcdd6c039a5d180b3b18ee9ce5f66d37284539c979790961740005`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 11.7 MB (11717131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6073913f8cb705a9aec08618482d9761a122261be2de0f833392631f86c455`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:177f415b570fd12ef60e0a16ab11e8ccc56e5baf4f10835fc3e867424c7a4f83`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b9537caa03c7712f8d28198d60d1f6a4f9e8dd00db7a7fbff841482a843475`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 90.3 KB (90280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f193c2e371e2f9f1d52fe459fea3ba1ff8ae969664f568f78e6b81053353084e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784814d1701414a627f888af1b9583c9b7510095d59732792c48b86d01d4659d`

```dockerfile
```

-	Layers:
	-	`sha256:b4653c22cd2ccc6793f480866a029bb2486bf303f33704212aac9ccc971f8c03`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 3.6 MB (3600716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37242d26b4196205e663f47ac61fddf3bb3f2b3194d2e4339ba233c6f67e24de`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json
