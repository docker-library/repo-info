## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:601c1f7edfef7674f1a49fd90e3e7796c49bca69d109e717e9822f5c7083af61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:6c5d08586268183ca109f9b73e66f015ef6861a1ec1eb5387422e8b1256752a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62883121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c758474597510ddff83f7d74fd062f75ad5a19d9a3509934f804c8325fac45`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:12 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:13 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:16 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b4bf59dc11d7745e5ddcfcb9b9a074170e9b2ccc7ede1d4670741b1fa0d98245`  
		Last Modified: Tue, 24 Nov 2026 03:40:37 GMT  
		Size: 50.9 MB (50936743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab1d01acec30c9bde2ed63b6f7129ba4df0adc651d5a7e67b2143a95ae327be`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 11.9 MB (11852626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35ebb7139ce6dfdb9331d69d6375ad462b3c64fda7c1001dc75ef87595fb1d5`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d1bb6050e5afb37c6ea95dd638a1e9937bb40b26a72a0bd687e31cd4538e0c0`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d4acb618530577794cdfbaafc1a7cd3dc1c3fa94d9d15e4632c22f021bcb2e0`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 90.4 KB (90432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e4056001f46f0a94ae12dc9ae53d30728b69c7a9cbc92b2b41e225428ed774`  
		Last Modified: Tue, 24 Nov 2026 04:42:25 GMT  
		Size: 416.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f9737e07924994931429ee2b9a3f48e2a9a4ee877e0944d6785bd1446acae99f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3620902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a42d8a43d4ea3ce864dfba7c86d226da9401b65963428578eae4d0a10c9284`

```dockerfile
```

-	Layers:
	-	`sha256:794034b8cb3d9c93e30a71cca071d552a1188699a4fd88511c9337ab5b62a3eb`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 3.6 MB (3604971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24740ab8c12e9d5057c1e82f708f0429636b1ede794526139e3b807f839cdd10`  
		Last Modified: Tue, 24 Nov 2026 04:42:24 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:15098c5dae2c41ed71a2edf52c106125b90fd7ed954dfe06f24aed2ee6d24911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61402184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5554d2f38897c2b490d923cd6fa475a528d5f40fdff4681c7432cb09d44d687`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:46:36 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:37 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:37 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:41 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:e0251d745f256ccdf7e2644516fa7dcb9490b66fb6c78c0179db84762ba3a203`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 50.1 MB (50059613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cc2c8a59b428a585f764452ef04cfeefd5ee2fa0e378a598421b1dcc136754`  
		Last Modified: Tue, 24 Nov 2026 04:46:49 GMT  
		Size: 11.2 MB (11248283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da647b4cf3d5291ac25eb9563242030f3d42fbd4cfaaf3d3272a4478c767d592`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1ac978aa45476713596a35479a91cb061fe8b186e0acb56e878bbdb0f483ee`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e56c8944297fa5967a2c202c4c8151e428ef66e7e023ac38727a6e938ed97f`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 91.0 KB (90964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae0450591e3b070555cb3b517ae5480f261ec7ff1b2ed23993de8461a01f336`  
		Last Modified: Tue, 24 Nov 2026 04:46:49 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:52d2a9ab8cd6c3292017a83b9fd00a3058768ef8205777910aa220727a7b17e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757cb9704de6ac965199361d88021872c7580badd9e03140d3fdb5d430372e9b`

```dockerfile
```

-	Layers:
	-	`sha256:fd7669cbdd396f294ba1087cfdc0d921f16132e7308450de77299c06a7860724`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 3.6 MB (3607832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:841f19b1f1da11fefbc559456b7145adbf75d06fb72fc21c84951587a77711ce`  
		Last Modified: Tue, 24 Nov 2026 04:46:48 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:be8b2a0423a0c7cef6407639bc9848f1e26a654759b5f34849bc0f9fa0b3dd40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64125027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b9bc3a81bc5a8e0ac4f78812782c75605e70a889145b0eedb2292fc809e734`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1795392000'
# Tue, 24 Nov 2026 04:42:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:39 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:43 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:95b9c91a07cce4096de861d03d4aee07ac0ec481852d0a91ee07530ac54eac64`  
		Last Modified: Tue, 24 Nov 2026 03:40:42 GMT  
		Size: 52.0 MB (52015015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c98a65a6e35d2d2e7d07dcc7b7234c907bdbf36f0f112cacb518c9fb72bb783`  
		Last Modified: Tue, 24 Nov 2026 04:42:51 GMT  
		Size: 12.0 MB (12015868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd4cb552664b24dbea298b5339cef8e578b4c1ad3485c5b6a682e9a5468c782`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b6ffd030d033f19b467195174745f52e0169ddc3af7951cc85858caeda3bd2`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0addbecfe6356e882ccdd8409f2cb7e05935c68efe291986f8817bb6dfc5a19`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 90.8 KB (90819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7da2fd8b37294363d6c44e40a1ddc75122dfe8328cdc089d9497d14ac3bb637`  
		Last Modified: Tue, 24 Nov 2026 04:42:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:46cd9313bf35bac993a659a4deb827c881e7dd44500a20f58ab7cbba4daa08b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32acf75de652d28bf3d43d12862ae57edc18931edb2547756c12b491c383c0d6`

```dockerfile
```

-	Layers:
	-	`sha256:aa935d2ae74b9dec57e258ba8805432fbb9065c1008d521cf2dba1b1b54418ef`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 3.6 MB (3602791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4e000dff95b8b03011fd0ff7ed629b1f427eb508a49defc89fe65a3eed22f56`  
		Last Modified: Tue, 24 Nov 2026 04:42:50 GMT  
		Size: 15.9 KB (15900 bytes)  
		MIME: application/vnd.in-toto+json
