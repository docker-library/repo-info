## `neurodebian:nd120-non-free`

```console
$ docker pull neurodebian@sha256:e0d329a188218273f7e831b66c770d4a3bf81ab158118bf9d9622feafc579238
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd120-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:1e668e912522a108d60c3602a33882b7e845af8897ed4042f84121973163fd1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59896353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a213fd64bafaf2975c3e8b8e06579f38f5c671362374a36b6ccad22b9171993`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:40:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:40:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:40:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbac99e4ac2cf3bbadc4c7ff858020487a5a2faba5461670df24f811950b972`  
		Last Modified: Thu, 05 Nov 2026 07:41:02 GMT  
		Size: 11.3 MB (11273826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308e63639489ccca261cec3512ee868ac1674a1e167294ec7611bc09d00e787b`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1934dd94465445855802b453c9779497b0aa950972e33a302220a32dae601d3d`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470bf179d4b92ccae73a1597eaa38d80ccd1663e2e8d54299fb9d7899e873797`  
		Last Modified: Thu, 05 Nov 2026 07:41:02 GMT  
		Size: 93.4 KB (93417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3cc6e3c4da7a568fd52f45a098508b8a22c176f9425f68ae6450a73b6ab164`  
		Last Modified: Thu, 05 Nov 2026 07:41:03 GMT  
		Size: 453.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:61429c653dd9a3e37a52211a85f32c02b94b12d5a59a4dc03af48d985aa1ef2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492fabb1dd625f51493c36171aa52f4080818ff80fad29c2984090ef0f373c57`

```dockerfile
```

-	Layers:
	-	`sha256:44a87f243ce9a11709c701255e5f015cea9ebcf2d6b2cbc95c562b6579d29014`  
		Last Modified: Thu, 05 Nov 2026 07:41:02 GMT  
		Size: 4.1 MB (4076077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aed2cb45a3434682ca6c658d1b0b2c9086bcd0d18a178a6a2e2110e96b64b52`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 16.0 KB (15992 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1ea6068d171d2e441541e43ac9c7eb740fa036bdcb8295bc804b69bb37583797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59761644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c11179eb3800d6c31df31e28bdf6f43f83b52ada93bd9a1a30d6665d2e8244`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:44:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:44:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74cb8f07d55e28fd1fffea133c49e1d932ded251a187e1841ebe801e38a9a8f`  
		Last Modified: Thu, 05 Nov 2026 07:44:59 GMT  
		Size: 11.3 MB (11252975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d960620d01942c1453340e16679f508b1a04a3b2b8d52818e41cac62a6064c1`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7135a1715b8a8e63d1ffb5ee85f528aa4b61c6758f67f5788f26bd1018eb73c0`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5351569b2909bc9e490ccc9b55f7eb5660d67a2fb0496452bb9c9a6bca98f4a5`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 93.6 KB (93590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0f895bfc11bfb204cd58ed8dd27d9087b26967c6de989244f6ba057bd5b16c`  
		Last Modified: Thu, 05 Nov 2026 07:44:59 GMT  
		Size: 453.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:858bcf5328415e65f74a66d6e70d7d0cb0ef33033eeb0cdcf64dc7bd55bae23e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990b9b3c548a9c5fd47a6af2ddfd191b349c1cbe8def543ea8cfafa756a5a7e0`

```dockerfile
```

-	Layers:
	-	`sha256:96683b6c3778a2f1f84cce9e2094d4bc4f7b58638a7fb882fc5092618d710383`  
		Last Modified: Thu, 05 Nov 2026 07:44:59 GMT  
		Size: 4.1 MB (4076319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7760068417e6bf9cd1ce23e4c6a9d25ae1890c8f9c5fad0225e9bde273904c69`  
		Last Modified: Thu, 05 Nov 2026 07:44:58 GMT  
		Size: 16.1 KB (16132 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd120-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:38f687ff3fec8de0bcc4ed7035ace72af10463744e10beaf83e3e4e9b3809c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61306035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa6571d83518c9e4ef48591ad56081328378f643b12ca369f8d33c7b55c14cb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c0c133ff29c2bdfc1002e5a0b8198424e1198133f84b69daf84ab82771afc1`  
		Last Modified: Thu, 05 Nov 2026 07:41:57 GMT  
		Size: 11.7 MB (11694282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0383210776a939ff37b5168c8dcc8e2167f29bda9430a65f775c795919e5d38`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ce89a9616e3ce0c57547092ca4f9c40e6a789cc89ebe9891f9211784be00e`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2900d6b2db4d445ab6ebf79eb8f699cd85ab3e25599795c1cd6cf842807bf7a`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 93.4 KB (93432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cb09bea34a4b952ba04365c1a3e6e6f353a74ca708186d9376577075cecca4`  
		Last Modified: Thu, 05 Nov 2026 07:41:57 GMT  
		Size: 452.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd120-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:4802280e3628c0173f96d992a77e54efb7af305b4f0f0628c877848832074796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652511a6d3acd1b72131ecf12ae3d90027bd5232ea17bfe6a7f6732767f1481b`

```dockerfile
```

-	Layers:
	-	`sha256:9ed2056c5f1eb35a6c4dfcbec0c895158df68d12e134cba8285caa4a8fb76fb7`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 4.1 MB (4074044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:903870df4c7667496969ebbb5d724b693a6148978df9fdfa5824ee4aff7d7cf3`  
		Last Modified: Thu, 05 Nov 2026 07:41:56 GMT  
		Size: 16.0 KB (15962 bytes)  
		MIME: application/vnd.in-toto+json
