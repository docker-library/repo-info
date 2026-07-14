## `neurodebian:bullseye-non-free`

```console
$ docker pull neurodebian@sha256:72a31d3575257f4130f9c7fe10c6d25f04552d960bc0dee18f470c9cba37d3b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bullseye-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:69228837f4f549cc71265267c54d11ee5ec2deb2ed340dd03e2680e9eea2e8fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64983973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e139a624714f20bcaffde982c7159ebb4aba944de4be075d8fab48d605a710`
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
# Tue, 14 Jul 2026 01:46:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:43 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453dcc39ee90bd64c5f9e7c79c88a87c90c963f6bd7260004c8747350b1f1a17`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 11.1 MB (11103425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f7d8cb6675890beed058ddf99dc83c86f9c1dbf7680ff6f45547a977c1fba3`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d59d37b7f7672c731a3e8462229225236a916be67ffaea89452c374d7d4a2c5b`  
		Last Modified: Tue, 14 Jul 2026 01:46:49 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760a0e9ebeafb8be52ee111e37e9b8e1d78305da3a6f4c683b9509e6a2c95c72`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 101.4 KB (101431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70b566004ec36efb4bac679145c13f5d9194b922e6c3e5f9d089db1e041d976`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9bbe5ab91a021236ef7a580983defcd27ddb1999ebc15444fad9660dd18b4870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5baf145ca5df809551b9da9678b2269af0c64f5c9d1741b2e39e11c631da17cf`

```dockerfile
```

-	Layers:
	-	`sha256:f7ed7c246650ac855ee82d750606accd6fe26719b6e9f8a1dcaeeecd267aba55`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 4.4 MB (4367954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cabea5b49740460da7d8244eb365df709057fb3cbf59c76c3c7af15d045682c6`  
		Last Modified: Tue, 14 Jul 2026 01:46:54 GMT  
		Size: 16.0 KB (15994 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e721531755f27d8533db36f5c54e0f461b4e7845a11ce2f27d0b0494241aa146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63474626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fa02991cd51b39ac6a969aa74a7971aaf89dbd7d99b9a8905e58de1a4de642`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:50:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:07 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47334cabac90b2fa11336f1249078ad3d7789aaea210e259e07ef058f2b3c8bf`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 11.1 MB (11109945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b79bfe7be1f13ef5e230bc89523152ca8acd01189d0b46a37e1e9f7fe9d068`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5b198dfa82ae194a4addd578c9d8cf1b34045d7b3e425434290f715717a926`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f0e2a87857f445bc6a5bffc83137d97707d965e4c1e3c0a3966b70931a5831`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 101.2 KB (101246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0995fe447bdfd0c178935afb34128be10043610e83e5508259f3c67bb37b408d`  
		Last Modified: Tue, 14 Jul 2026 01:50:17 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:65106c2fcc8a08882f3fd2b97472e8b53675a9ab1f4176b5dfa5291460fd9079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4383694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853dddce4dbc66826135b1e1c26b4f71fe71df1c062f314b8dce9ffd3efabc55`

```dockerfile
```

-	Layers:
	-	`sha256:311fc035f205dc80515ebca63c24214053a7b2103f14b559fb652039df00c2c8`  
		Last Modified: Tue, 14 Jul 2026 01:50:16 GMT  
		Size: 4.4 MB (4367561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:966cc923df94269b9c8c4499703a5a0fae2d1434e0d971ed14aba3b437de2d44`  
		Last Modified: Tue, 14 Jul 2026 01:50:15 GMT  
		Size: 16.1 KB (16133 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bullseye-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:a22f36ef0d7d13338a5ada4226f37ee670bd38f2cb15bdf675d75f104cb90c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66321703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ae4da29f31ef39b760ea9d3c9887b24069ccd406ae4970552ba050401ee95a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 01:47:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:53 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bullseye main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bullseye main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7e12e9bb789922b409fd797c5262d751ab726dc751b019b9c132c37f39f8f60f`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 54.7 MB (54715607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2de1bc8c8fdbb986078e565bd2ce54545c1dda87960ba9608d6f602df428a1`  
		Last Modified: Tue, 14 Jul 2026 01:48:03 GMT  
		Size: 11.5 MB (11502319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba32a8c82e7a50093dfdd409188d3eea237634f93d697e657e21aa191e68e35`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a94cdfd794859edf1b9fbbfde9a1dfad1eadb8937b027515d02cf6c79c564a`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305c8b31e01bb1280a7b3bbff17a140593edcc0c3d26097c35fb294df63fa5d3`  
		Last Modified: Tue, 14 Jul 2026 01:48:02 GMT  
		Size: 101.2 KB (101231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304a95f86ffe2925ffd9d31412f602530129a8bc9f35a47bd3771492da655583`  
		Last Modified: Tue, 14 Jul 2026 01:48:15 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bullseye-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:de6ddfd80d2834ede1692c51cda6c5c13717c5b69f3913cea788d08484d81fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4380437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40143c35ea6a6a70c250c5bd8f6dbaccfe6b6cce5027b5786c102b400d33d6b`

```dockerfile
```

-	Layers:
	-	`sha256:e0c880b3e9916bd6409a91338081160e207b9aa8f6c9c66f829e9d826024e1e1`  
		Last Modified: Tue, 14 Jul 2026 01:48:15 GMT  
		Size: 4.4 MB (4364473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564b55afc5839e7726f8570774b72a936a2153a153915501eb900bd55664a44a`  
		Last Modified: Tue, 14 Jul 2026 01:48:15 GMT  
		Size: 16.0 KB (15964 bytes)  
		MIME: application/vnd.in-toto+json
