## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:1062423b6185e4d2c1545f4ba2a4e4ffc377ea5540644af863383088f38fe644
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
$ docker pull neurodebian@sha256:a6e565db29e290551a4fa0ed5408d69478144489cee3a7abe0fde8c0149dba83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:919a3efac635b008da025f9335c44db3283f094cb24b9a0b184965852141ec28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:49:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f6f0fe2740bfe20f1708b388e6e347f2eacee61d6ae4fb1025d6bb89ffddd9`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 10.5 MB (10468107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0720da6749c5d9a59e48c1f1879f88fb52dc1fdd33e8b3e51df76b1a3689e0`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69eaebb446da9d5f53c7455d455bb298af421bc3b7b5fc7db8e6e9cab1283719`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d37928fb9fd124d96b5e750fd4129f724abee44f787b6ae03544412a7ced1b5`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 90.7 KB (90745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d294b60d7987780840f5854d88dbb7a4733acdcaa6c5168e2f1fbcb0e5b70d2e`  
		Last Modified: Wed, 05 Aug 2026 00:49:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:33208e6f520d23c823faef1dc12d395513e973ba1446b6f1e6153d2725d04afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9ea6defb6aa1e5449970e8e6b6e49c220f6f8a432b3798aabe9efbc0341d0f`

```dockerfile
```

-	Layers:
	-	`sha256:b0538988a5328fc5f800ef07ade844c0ccbf434567eb82f455ffaa5600f34033`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 3.6 MB (3612206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13e73cd4d1f5a10b4dfd6a383015fa5c6c4cf67d0c12a8eca2d5b7cd45b2be70`  
		Last Modified: Wed, 05 Aug 2026 00:49:26 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json
