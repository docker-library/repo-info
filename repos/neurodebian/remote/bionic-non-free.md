## `neurodebian:bionic-non-free`

```console
$ docker pull neurodebian@sha256:fbbced329d4645663e40e4ace163893b7800b71f297dcad8f1f54a92c7453f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `neurodebian:bionic-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:551179579d439be0e35be9aeab452b7710bbfc4f9d93f962149415891f77dbcd
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31773787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:895ed355e2fc360516ed62af977aa6e570951b72637ad9c1b3a511ede7f8cc30`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 20:40:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 20:40:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Mon, 02 Jan 2023 20:40:29 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian bionic main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel bionic main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 02 Jan 2023 20:40:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 20:40:39 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4842fbaada67fd60026558399bfeff9767bca2cedb9ce648d7be73c683d160`  
		Last Modified: Mon, 02 Jan 2023 20:41:37 GMT  
		Size: 4.8 MB (4819807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bab21681ed8951c5e33a9354be4ff8c002e969b0c171a1c95fdbc36f6e1942`  
		Last Modified: Mon, 02 Jan 2023 20:41:36 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb12ca619e4afbd810e8ac037095e5a77e3e37b5b3b9bdeece0f661fed84825`  
		Last Modified: Mon, 02 Jan 2023 20:41:36 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d785e988e2569a7a840b463478f260b2ebcea03fe8dccb1c63ec4d478791481`  
		Last Modified: Mon, 02 Jan 2023 20:41:36 GMT  
		Size: 240.4 KB (240373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6e44471083e5bc605631adc12d870a3e887a9a0c02dedc9edab05f98ea72f8`  
		Last Modified: Mon, 02 Jan 2023 20:41:45 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `neurodebian:bionic-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f9ed2515193010c718fe1797ff0a8b39d6600f504078b80b5826d42269183e15
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28381026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ddd133d2f664e51081264d86b9ca773ce9738cd29aa5342525eb8a6fa25a731`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:09:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:09:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Mon, 02 Jan 2023 19:09:11 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian bionic main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel bionic main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 02 Jan 2023 19:09:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:09:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe20e3b0dd22ec88b940921428b1d3b4b31f96173067e8909552d712bf4323f6`  
		Last Modified: Mon, 02 Jan 2023 19:10:19 GMT  
		Size: 4.4 MB (4402703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec2f641c5a12870f8c6c4dd45a1160422a70d9005bc0174b5e718c847e97016`  
		Last Modified: Mon, 02 Jan 2023 19:10:18 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0acf5fd7998554fdeb37c076bdc46774aead33a40a5599c5f89645767cd65ba`  
		Last Modified: Mon, 02 Jan 2023 19:10:18 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742c62e5a56664e9b03398d10544826defd47221c73b14f79272ffe1bbce345b`  
		Last Modified: Mon, 02 Jan 2023 19:10:18 GMT  
		Size: 240.9 KB (240946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bdb8a1fd282708e9b9d7f53318f8d85be7818d31dec814a776c4e0de97f2e`  
		Last Modified: Mon, 02 Jan 2023 19:10:26 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
