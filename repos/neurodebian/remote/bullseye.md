## `neurodebian:bullseye`

```console
$ docker pull neurodebian@sha256:097aa5b340351a6c0f2750ab03fc6acf524ec30183c57118b49a00b6bf037c87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bullseye` - linux; amd64

```console
$ docker pull neurodebian@sha256:269dc147b283a31b14c6016930738a98fa82b176604e8cd22024d2f7ad5b2cbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64983524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd5217c62beab262ad626f521d96d63e9441f7f478581b773b261887601207a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:46:39 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:40 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1868e29dca8d06ec08c63ec980f73bd80cdb22b3813910c1873869b040ec3d8`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 11.1 MB (11103422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7087263fd78fb380f156c7edd254418253aca5e7b59dc9aa73d2b1b6cfe1eeda`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 1.9 KB (1896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d59d37b7f7672c731a3e8462229225236a916be67ffaea89452c374d7d4a2c5b`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d549ddb73a0a4de17371e0860fa6527688f898fbf08c79eaf70d5b2dbce04d`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 101.4 KB (101366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bd326cd3f8c9c5453282b146542d4dfd2d13e30987839440218069868b54a7f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4374da68c99e956a9efcb4959e0ed2d04b1f115afa2dddccfdc695296cd63a`

```dockerfile
```

-	Layers:
	-	`sha256:a356c6ed04853a345d9b43294162eea5ef19882e15b766437d00f7454beb85ed`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 4.4 MB (4367918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:149388ac369bc109592412db29c3caab79a8b4e6bf6979e06d63b12b5d17bb28`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 14.0 KB (13966 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:db59150e751ebaa071eb88c9583017dcf50b6cc32b44d5066ef37d6672d96c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63470392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15c5f54a99b92da342a05240b46cf097f9c2f2d13936aabc3188e1ee6db9cda`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:48:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037be84758bc22877872eb5e8bae0fb6b5a24b036a722baec88bce9d18cbb72d`  
		Last Modified: Wed, 24 Jun 2026 01:48:22 GMT  
		Size: 11.1 MB (11109739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1629be750b53935b30f20697f01e7ad67e4311230ad659d8f3ab4886977dc98e`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c053c356cd8dc393187e4945b31af66a06066b54b5b2fd067387a4fdc4effb87`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 266.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b076d91feb322621ed0ec2e6fec0508fe4221893de8b2d698b29db11fda8541c`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 101.3 KB (101274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6070782fb7e61c2aa5ce40d7ec6b5e256830d0d8c540bd2d05a5c4eddc0f9487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4381616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4e2450573dc185b54b0c1593696dddb4d2947e99f4723a3ee09ed26b182972`

```dockerfile
```

-	Layers:
	-	`sha256:6c316f1ea7db0f3b301010e7675b83e3629819025ee707d974b103a8ec4551d6`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 4.4 MB (4367525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f425de449966bd8f7d72af390daa02ed78e42a03953fc18faaea8f9159a64da`  
		Last Modified: Wed, 24 Jun 2026 01:48:21 GMT  
		Size: 14.1 KB (14091 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye` - linux; 386

```console
$ docker pull neurodebian@sha256:9f35da4ff70ed85a70ab71d39fb5f524016cc009c8fec5e7bb66b65777d9156b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66318703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c46c123906a6b6f4e05214801735f434fa222050e99e05827f8d42e0af0073f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:44:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:44:29 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:44:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:508ffc251196056212d40e318af0b7425af79fd3069a3f9ab15fd6220917ec75`  
		Last Modified: Wed, 24 Jun 2026 00:28:09 GMT  
		Size: 54.7 MB (54712884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298666005f69b95992813969bd32c4cae80a09d7a17409259401b918abbeb26c`  
		Last Modified: Wed, 24 Jun 2026 01:44:41 GMT  
		Size: 11.5 MB (11502409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac279db5a42d6355e94e1981ad3639bb2f054828fd54864b12506f48574260b1`  
		Last Modified: Wed, 24 Jun 2026 01:44:39 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d79ba6075cbe6463ecd9269efee1c58965da52722bbb3f1ec79e15f7c3a59a`  
		Last Modified: Wed, 24 Jun 2026 01:44:39 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a46ac06ab5d6ba6abdd9fe0c89da4ce35fbfb58a21aebaa0e637bf81fbbeaeb`  
		Last Modified: Wed, 24 Jun 2026 01:44:40 GMT  
		Size: 101.3 KB (101253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6cf44b8104edff7b8af64d7c01dd3ee113221734d70e7ba192464ccfd19549e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4378375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdeda03f3056b1791d9164b1e5a1d6578d8bad73aa0a0096a4cdd4d78af79280`

```dockerfile
```

-	Layers:
	-	`sha256:2f50690e5b0c8d3d71bb1b9f6c83d01207b6c36353c3f7a09a28f161327f8beb`  
		Last Modified: Wed, 24 Jun 2026 01:44:40 GMT  
		Size: 4.4 MB (4364437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138da5b781ae675e3c02e2e23d82f4d3f46b9b896840142ef2e9ccb107575ea1`  
		Last Modified: Wed, 24 Jun 2026 01:44:40 GMT  
		Size: 13.9 KB (13938 bytes)  
		MIME: application/vnd.in-toto+json
