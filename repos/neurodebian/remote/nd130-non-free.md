## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:6cbb92e4348029f024d0376c348e19e520413fe1242f1eb39eccd802df38b9b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd130-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:585d4e57e66aa723b87419f06d00117448d8210da84990f53c5843dc76f1ce2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59725690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed4dd46f57dd6dbb03c4fdbaff037ff14d0e896c70f4447b236b2c958f2f365`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64ad5d9f3fd4e2cb063a7e2df838d2a47b1d7dd8e8b3f65687f861908a7d7af`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 10.3 MB (10294135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92b2637641beb37fe403e7131f2f55ac1c8afff80d68b11de0924e3aa3074b9`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1083e2a2691b7df480c0f33fa9019fcfdef0e2f8a520e21ed85116834afb4409`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195558f7b5aa2b5acc05bf1a0e9ea0a2ffe2b9c8c45ea7a76c4fac932c2ce33`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 90.4 KB (90372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c54cfb8daa375972df1eeb51a7cdb1085b4a42529f259fa77bab62aa81a1558`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ce6cfba84205a5e7e1bc9a1ef58ea8511fa18d97eb9a980625a5eec2fd201308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3635518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9420510e3d88ccc2a6099964dbb45f35f9ba39138dad791573e25a5d1d5a6d2b`

```dockerfile
```

-	Layers:
	-	`sha256:42704e9007a9e84a191dd9c58499825b7c0ff69c93774c5a04560c6b030bd6e7`  
		Last Modified: Tue, 25 Aug 2026 00:54:59 GMT  
		Size: 3.6 MB (3619236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:373b4a68b3fa1227d46bfb6b5004f5dcf976b010073c707400c0662277da705a`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c38c5fac28fddd7bad3aa59153c46cea064f7b5cdd221c86b5d37b98fcd1859b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59878132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f277230f9ac4f2ab1b29bbeee51284919bb180385fcd8e2e06ca454d3b1bbb5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:56:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:56:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:56:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:56:45 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7097863ad40529713edf41cdebe89b47cc47e8a45a7d58b28666c5d33d50228`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 10.1 MB (10078877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f9a2dc15cc9fa5e9c135f95ccf7940ab0474022ad9d4525c9c746252370ec6`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc154c9d1d1d86dfeed14ec614a129a574fa540cd708dfcbf0f7f6949274b58`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30fd05d00524c4efacdece6a71abe09d836911e7f851b0c3a07e38a1050af65`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 91.0 KB (91048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b659f5cfffaa647365fc2fc522e59f738559ebf75f2e5575cd8458a6716007`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b3e6d9b1d684009389e9cb021c7d98e3ff8109da37b16ccfc80be2d2bac611d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3636560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6dd3aa458d5fabc006c88dbfff018f3096c10e68968c019c7c666772af48480`

```dockerfile
```

-	Layers:
	-	`sha256:c5677fb4e7b8e20cad7625372c152cdad4234eb9f48e6816d94b1263a4e99c03`  
		Last Modified: Tue, 25 Aug 2026 00:56:53 GMT  
		Size: 3.6 MB (3620126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe0398cbdbf2c08bc4efea86ef4055096232886297c5f6a0bf5dfcc623d08d96`  
		Last Modified: Tue, 25 Aug 2026 00:56:52 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:e836ea9a1ba54fa0de85dc9632dbda7afdbef52eb368e0cb2f1aa85bd0f6722c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61411803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1725c23372567d68105f2cff90c0927b6311a1f5adb5ed25c0b72f220a1244`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:21 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479d199f2c8d8b85449cb45f741f35bf110ebcb25cf9ea717e05fe98a89fae5c`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 10.5 MB (10468123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b64e11807109081e0c34c3584cb71570b13c7b598319f7445a0afc3025876f0`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28395131873e7649c73fc75a3e865132252ea0b5f9e062fc1c2c211f698b7700`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b36bb10eb18abcab26c9e21acfdad1237410a8f5072f072f70b3bf4fdb755a`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 90.7 KB (90744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3cad72be0573046258a1c91db088d374cfe4e4a8da4f585fda1e704e7f0f105`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1a9f1753550e7b5b868b25e388724fe1cbac11583e79246c37727c570271809c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3633430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a0f3018dbcd8262565a2fda8c0457b46898cf15ac4ea8589f856b29d2c5a82`

```dockerfile
```

-	Layers:
	-	`sha256:f5d836b5a40467bd30eb4fbde50c9858a1a4dafa10e6c589dadb749a7c452be5`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 3.6 MB (3617184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e899670c9ac1983e3b70c0e88e2ecb75d8ba9155ed9bb9d9f3aca9bb0e67450e`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json
