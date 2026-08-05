## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:0aab2fb945850c00d268f089ec7addfcb48e6cbd1f74681dbf4909cab5bf851e
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
$ docker pull neurodebian@sha256:7ec2b32c5fe7b1e2177b9ec1c81c8d292e714935beed1dca4313b8b015b2e06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59700199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edc4c320630abd41e50f4a34094e1610413b3474fa53ab074b864ac3c84febb9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:48:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:22 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fddc987d229ce9aca6cd2f34d826ce74078fe45c62392bccb71eb973072e29f`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 10.3 MB (10294127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23c12c74747326619a51ed3f9e9e572ab5c5996f468766cd7e8ee074e0e68be`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c7e5a79a08c091ce053f25dbd66f675b348108a38ec351bfcb5828b60d66ad`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd55cb4734a61b3f066fd01573a379386850ee1c6894f06f5cc1e3038960c09`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 90.4 KB (90410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b622f34090243b5a723c7124100bafe661b00eaf2f083c0b4f671d4bca9edaa7`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c8880ee825b7730a73eadc7977eb3ef3c475f53c190f19ca45aed52f4075b1f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3630540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d882d95c33ef014e02af824dcd178bf3949669ef600b3ad4138d314c2042be45`

```dockerfile
```

-	Layers:
	-	`sha256:49abb387cc699d91712c54fa5ad012d6a711279c69844d2fb3cdb5d3f691a825`  
		Last Modified: Wed, 05 Aug 2026 00:48:35 GMT  
		Size: 3.6 MB (3614258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417d9b51d9e268de204878fb651173f325c01580e761d19b7441edd850be119b`  
		Last Modified: Wed, 05 Aug 2026 00:48:34 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:811d95a53c37abb999eae15a32e02812e2cfcbe24c41b45e4f2f876b3f5ad47d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59847172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad379bbf4aacf0b5d8ce3b747779abb3668597e520e6fb15a6cdd1d0c2a8232d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:50:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:50:49 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:50:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:50:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda41656b1343ccda3edf2463168493a99e0f943fb3c003e8de6d41cbe2cde29`  
		Last Modified: Wed, 05 Aug 2026 00:51:02 GMT  
		Size: 10.1 MB (10078906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5215d7a02c3c744b15f746b5dffda53eaeeed23302aa0c6d835e87a88b937408`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecadc881d9a9ac483ef5e11ea1e6b30082760fa2a210deafb4f1014b4bdfde70`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcd049ff24f478f5e5a19a3b2c038a923ba763a4e4d31614b199042d11dd868`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 91.1 KB (91069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9610e517ebe523a34062ff839d61d1da957880ce43a02dae8c5bc4545a47313d`  
		Last Modified: Wed, 05 Aug 2026 00:51:02 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:88e785446e1bcbb672586e3197792520081b23786c39e1b467e3c8071e2cf691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d27a0f4380bcea37e612f7dfb1f5c759a862a0235fcda6cc4e3633ab7cffd9`

```dockerfile
```

-	Layers:
	-	`sha256:2361ee306169b94345176db3a0bb6219ea9ccc9681dfaf9ffeb07da66eec5284`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
		Size: 3.6 MB (3615148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:967529f28fb9195093044325218722451938e320f3223d63296091742506a4b2`  
		Last Modified: Wed, 05 Aug 2026 00:51:01 GMT  
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
