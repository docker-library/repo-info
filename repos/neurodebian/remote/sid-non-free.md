## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:702a9a4bd9f4bfd504c20481357ece86d5eba83f530c95305cb4e2f28645cd13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:fed2300bcf8e59224fdf85d7262ac6940c3dc3beb32059745067673dccb98e55
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60973365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed670a2b56b17850ae777af1f76c61cf6c99966fbebedf5d205dc3c1140df21`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:41 GMT
ADD file:3bae49887734af64f153e9e3668684efface6dd04ba31139b3d6b3aeb7589128 in / 
# Wed, 11 Jan 2023 02:35:41 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:24:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:24:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 11 Jan 2023 06:24:04 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 11 Jan 2023 06:24:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:24:11 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs
```

-	Layers:
	-	`sha256:a0e522725e09a558b80e5d58e7b360150ad3fe901915db5358002bba7e461b9c`  
		Last Modified: Wed, 11 Jan 2023 02:40:40 GMT  
		Size: 49.0 MB (49040747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b093824ed1f576c50312d2531a60249f8b342a49baa7f5f0a9d9a6b9cec0b70`  
		Last Modified: Wed, 11 Jan 2023 06:25:54 GMT  
		Size: 11.6 MB (11649490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2422ed7b998669c36c668d35db3cf1da32dc2a1f5711146a19f303ec480fcc`  
		Last Modified: Wed, 11 Jan 2023 06:25:53 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcfaa5a5a9c6adc89eaf021d00c00b9020445247993e0a90f958212bd60607e`  
		Last Modified: Wed, 11 Jan 2023 06:25:53 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e726242bbd62259ba52ab5e26c3bf090f9854f4eac92df4e9af5e3799256c7a`  
		Last Modified: Wed, 11 Jan 2023 06:25:53 GMT  
		Size: 280.7 KB (280725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d493770bdc3fd16bdf15eeeaef16f87b9f6dca634c22fe61fd3d61e9a83c6998`  
		Last Modified: Wed, 11 Jan 2023 06:26:02 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:af88b34894d7b7f01c2765c14f299b63cd755e36de76165af94fb5cf43cd9f8c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60979567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a17336e16bd22b4b15623961817e6c84f58d5ff4842686b5d3dfaf0c0b37d96`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:58:15 GMT
ADD file:b780242785904e4fb27dec85c00f7e10bcc0dbb0d7006b133d9038c4328c7d83 in / 
# Wed, 11 Jan 2023 02:58:16 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 05:50:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:50:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 11 Jan 2023 05:50:47 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 11 Jan 2023 05:50:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 05:50:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs
```

-	Layers:
	-	`sha256:57ec0bfa7127b6c459b1b1f099459b850b4fa150e388b2c3ba10105c4a746caf`  
		Last Modified: Wed, 11 Jan 2023 03:02:47 GMT  
		Size: 49.1 MB (49084551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd28cb560887d2b6183375fcc67b6d3071f1c6e08bc75e07457c5dff669e0b5`  
		Last Modified: Wed, 11 Jan 2023 05:52:33 GMT  
		Size: 11.6 MB (11611494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2888f25ce7d2a0ba18d18a36262e18e05aaac6aa1157c90c9524bee3cdf99332`  
		Last Modified: Wed, 11 Jan 2023 05:52:32 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bbb3ddee4c421e251b23894f08b3655bdd6acb794423c14c6d87826230323d4`  
		Last Modified: Wed, 11 Jan 2023 05:52:32 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc38aec5ff07f18cc019948b2863d7f98c6d10b79ae4060c655a6e72ccd11d35`  
		Last Modified: Wed, 11 Jan 2023 05:52:32 GMT  
		Size: 281.1 KB (281118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d774519926945c6539a9c64f729d787869711d3fcacf7eff02fbef4eb7480d7d`  
		Last Modified: Wed, 11 Jan 2023 05:52:41 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:774b377396445562c86816c5c6c8aef8b4c9df61e0ff328853abcce8926f63af
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62058186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0073958a65ce70cff308ad4be5bda5a72460d9bcc738a7f1b68aeefead70f52`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:17:15 GMT
ADD file:70daac43e15ae08f49ca2f191e46f20fb9df90f6fa25b199b61103e75ae43d16 in / 
# Wed, 11 Jan 2023 03:17:16 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:01:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:01:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 11 Jan 2023 06:01:15 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 11 Jan 2023 06:01:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:01:28 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs
```

-	Layers:
	-	`sha256:19edd03a92bb4010fb5a10c8cc739c02db9ae484e4e25247ce4b7e0977cf1e9d`  
		Last Modified: Wed, 11 Jan 2023 03:23:48 GMT  
		Size: 50.1 MB (50082487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f499715b73481f8ed830e3119b016f36fbff9017066f4501e5d2292e80ec6d`  
		Last Modified: Wed, 11 Jan 2023 06:03:18 GMT  
		Size: 11.9 MB (11881711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3157fc8065bafacb7cea031b92ef19ebf4a95828b4891548b2ed70279d295`  
		Last Modified: Wed, 11 Jan 2023 06:03:17 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993baf5675aac33222c34733d36710a1a9a8989f8b60b85486f77fd339ee55f2`  
		Last Modified: Wed, 11 Jan 2023 06:03:17 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b981c6b645a66da18351c765208968b066e0172c6f98a173ff8553106121119c`  
		Last Modified: Wed, 11 Jan 2023 06:03:17 GMT  
		Size: 91.6 KB (91612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e088fe89051c220a7ca3156943daf14b4dd286d3fec02aa43027b70a0c68a91`  
		Last Modified: Wed, 11 Jan 2023 06:03:27 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
