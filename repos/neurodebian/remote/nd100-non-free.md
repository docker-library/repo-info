## `neurodebian:nd100-non-free`

```console
$ docker pull neurodebian@sha256:6e5573fe7ba81f2e9fe83d54c6f658fc7d4851a05f0f1ed04341ab36fd610a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `neurodebian:nd100-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:969701c15cf828205e2e244cec2efdd097873e3a5d0e7269e4d0fab1f5a3f62c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61260033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6dee5da7c8b6825e36de66b249e67429c8863cc942b37b6878d24f720ae4a71`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:23:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:23:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 11 Jan 2023 06:23:02 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 11 Jan 2023 06:23:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:23:11 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dc6dfc286394ee7aaf55455b8e1f85e112e046915f75bf0ce7c1d26d8dd659`  
		Last Modified: Wed, 11 Jan 2023 06:24:59 GMT  
		Size: 10.5 MB (10504443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46601b5ea0bc6023f3ad2030837fa241ee5a79f601c0623c0fa2d3b3d8641e0b`  
		Last Modified: Wed, 11 Jan 2023 06:24:57 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d335610aa76034a5426cd0a2c062b24eb453b702526afc42f0a034971ff35fd`  
		Last Modified: Wed, 11 Jan 2023 06:24:57 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38429dca1f81120dea7af2626c34da2ba65ee4b474a34ff325ae0de0506098f`  
		Last Modified: Wed, 11 Jan 2023 06:24:57 GMT  
		Size: 304.3 KB (304310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad1f2cd9f99e9da4cc6fc75f43d15de1e99cc87d10824195d41cb35488a520c`  
		Last Modified: Wed, 11 Jan 2023 06:25:07 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `neurodebian:nd100-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:2576ff85074b549b6c2e0aaaf24fa1df1efc19a56131efd80d8667b38fb12150
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60050746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dff8c5a53644bb8e3eade4454229f785562990d9cbce708ae1058f2653efead`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:49:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:49:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 11 Jan 2023 05:49:56 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 11 Jan 2023 05:50:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:50:03 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fec4ab712f6fc00e6c4773e11c392b75adfd6dcc38997ee82e580723feae4c`  
		Last Modified: Wed, 11 Jan 2023 05:51:39 GMT  
		Size: 10.5 MB (10510291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957de5cac0f2446ef3db7e1ae53c91de9f326fbe268b5a4872fb7ee8e584c47`  
		Last Modified: Wed, 11 Jan 2023 05:51:38 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dce7b90ebb61a7ab64d259f5f6bede578b3d90d930e15910306e9a6a09eba7`  
		Last Modified: Wed, 11 Jan 2023 05:51:38 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc98335ba001fa7e8464308de969b54704e8c7a0375f5b5ba2b4efbc6db99039`  
		Last Modified: Wed, 11 Jan 2023 05:51:38 GMT  
		Size: 304.3 KB (304281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e64991912fcab428871e5ab252b4d317a3df128d3272854604efb85da9ec032`  
		Last Modified: Wed, 11 Jan 2023 05:51:47 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `neurodebian:nd100-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:64c060fe8daf9324e412ca8222795f2cfb20982335660512fc997bb636dc10ae
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61991486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983139566782855befb204807472c0a668d3cc3492aa58866ad4cadbd8c0e775`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:19 GMT
ADD file:8dffdae65db31d57b6a4946bc86469afb548c4c52bf49970da0b113ce9d79d67 in / 
# Wed, 11 Jan 2023 03:16:20 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:59:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:59:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 11 Jan 2023 05:59:58 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 11 Jan 2023 06:00:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:00:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs
```

-	Layers:
	-	`sha256:5a7dc875a0464942e7ebcaa41090f3f519845bd311f57a36c844c3c04ed97fa3`  
		Last Modified: Wed, 11 Jan 2023 03:22:23 GMT  
		Size: 51.2 MB (51207833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7756620baab0ffd354ce419e4e0310139c20c9b894f6fe54b1885133a761c362`  
		Last Modified: Wed, 11 Jan 2023 06:02:12 GMT  
		Size: 10.7 MB (10672590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0db8a827ab3a9e7e1925d41321f2795a5b63a370af8c1dbd9d91d1d57829fa`  
		Last Modified: Wed, 11 Jan 2023 06:02:11 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f166543484f58341bf806e188a0e12001697845922a253983eadbab6b15f978a`  
		Last Modified: Wed, 11 Jan 2023 06:02:11 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bea9fc3eba69cca241be59b8270af9ac88e8a56a65cae1ea0f854718d4bae77`  
		Last Modified: Wed, 11 Jan 2023 06:02:11 GMT  
		Size: 108.7 KB (108718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07837889a0d59d7959beff59e4b327e2931b1200a05de41844afe29e39127027`  
		Last Modified: Wed, 11 Jan 2023 06:02:21 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
