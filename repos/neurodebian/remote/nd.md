## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:1677c02a4d8a26efad8d4d3e17a8a5daa6a35ae7ac1c0b2973dc813f1b960aea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd` - linux; amd64

```console
$ docker pull neurodebian@sha256:e1550b9f6f5dbd9b211aeb349e582bf5852fbfc3ab0906528ae720ea4340787a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61581944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40639283db7ee579c5865343e026094f163f933a829f2c93991db568a0eed194`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:49:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:50 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:49:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:49:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b4e6f7f184eb26c2de69e913d8e719cb6612b69b12932727db49fdb6cae72ecb`  
		Last Modified: Tue, 20 Oct 2026 23:30:38 GMT  
		Size: 49.8 MB (49820002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9692c277a78a41720b76f7c5bf73426b5a3e452ee4e078ae2b585afb7e7d10`  
		Last Modified: Wed, 21 Oct 2026 00:50:01 GMT  
		Size: 11.7 MB (11668888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45d2ce2f6457e6b051eb66d71095a1969ce3f2fb18de97a01fac280693fbe4c`  
		Last Modified: Wed, 21 Oct 2026 00:50:00 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ef2122d2e24ac1a1769d884a47aded691f55ed732fc90bef52c69a027b900a`  
		Last Modified: Wed, 21 Oct 2026 00:50:00 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7cf61e55b228745fa229d8c0ccd899467ed26f667fdbd0e796283151ef7d41`  
		Last Modified: Wed, 21 Oct 2026 00:50:00 GMT  
		Size: 90.1 KB (90149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7753fbe6878558f84aef994a1a44f04c150af5b4bb16e333b7e5c18d7c720ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3594050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b66fd6db92fbfca9d46a5144081a9a82486117b89eba4441661753b621eed5`

```dockerfile
```

-	Layers:
	-	`sha256:04bdd1447fac25ce7b2502305bd50156f55c8a996498b424799690c800566936`  
		Last Modified: Wed, 21 Oct 2026 00:50:00 GMT  
		Size: 3.6 MB (3580146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ed962a6ed482bb74334527fcdc7f10b89768bc351e8b8d8969c94569fd63b04`  
		Last Modified: Wed, 21 Oct 2026 00:50:00 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:05087efd5dbb24a13726f7223a3bee70ab791673a7dbc038f7c736d6a44862fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60425984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc22e2a50697d5731fc437b40dc493405927b0bfa616a134059ee5ecb47c693`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:52:57 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:58 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:52:58 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:53:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7adaee7df964e959622bd0856d39cef027e2ba7ccb920143be129e58a6de63b2`  
		Last Modified: Tue, 20 Oct 2026 23:30:20 GMT  
		Size: 49.2 MB (49150487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a852280ab724c20edf098a583de2a108807829d3674b7a31f2b119f4ca594b4c`  
		Last Modified: Wed, 21 Oct 2026 00:53:11 GMT  
		Size: 11.2 MB (11181961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b5adee7855abb888ab979c364976e484bca2f6f9fa2b294ea81e75c93c5457`  
		Last Modified: Wed, 21 Oct 2026 00:53:10 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541d24e58f04d900b26a3fb065b86fdf72aa07adff3e2f416924b3455da6fe5d`  
		Last Modified: Wed, 21 Oct 2026 00:53:11 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08a662e02ee118462b09059a07e654e4d58cb08089d0db49542b49bfb9818b5`  
		Last Modified: Wed, 21 Oct 2026 00:53:10 GMT  
		Size: 90.6 KB (90628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e41ae4ecabaa78d6aa81912d833e7bd615d581198751b4ece21df1b47821a9cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3597659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341e5a817474f71cc3e93138852d8240078ded94d1bdb09ca98f211ebb95b174`

```dockerfile
```

-	Layers:
	-	`sha256:6033e8c8c295c8e610005fccd97a143eba6ec8bff60b6d72dbd5a14991463037`  
		Last Modified: Wed, 21 Oct 2026 00:53:11 GMT  
		Size: 3.6 MB (3583630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f7f41f9fa4593046ecef29041b7ba2d4f7f44244a968833a7cd8be50a317933`  
		Last Modified: Wed, 21 Oct 2026 00:53:10 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:477b72969d4b3e162c16387503218a816654352bb3690d6e8274c8123ecae139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62879103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007782e75831c05c6daf57a87f1b929f0a0623ec6f8e9f1b1368a258cd20d50e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:48:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:48:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:48:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 06 Oct 2026 01:48:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9110db07e46e0ee00d66b51c152e37c62b0703707db22c577c69116c284fd877`  
		Last Modified: Tue, 06 Oct 2026 00:13:59 GMT  
		Size: 50.9 MB (50930428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69bb3624de7b44c73ddcb2c7f80e35d1b0e8d4b21c6d3f4f401c4361be732697`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 11.9 MB (11855355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35fd9cfbab9e14d90adfc9760e8612ea4d7f9c6209007350a5569b1e4ad59241`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca8d8df84228d5ed4198fc8fa0868e6d9242df28e54d720c7143f34c16633cc`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c05952f1783287d0dc1dad4135ff9fadba9a375612164afa2d4d45048904a6a`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 90.4 KB (90418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:78df7aa2557dbcd459edc7b97d6a7eb2f57e7ccd540b26acd029b37c22c0d41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3595899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f56295cfc542c9228ddb9a0b92bc1db0a12490a0b037129874e3223857530f8`

```dockerfile
```

-	Layers:
	-	`sha256:b8a0c4d3cea2e057bbea4b1bfa6cd9f51f933053a08408707442cb4f6fbdf8eb`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 3.6 MB (3582023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c821224346b69d604623e0b662209fd454536672b440e8532999b4da1d58f6f3`  
		Last Modified: Tue, 06 Oct 2026 01:48:37 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json
