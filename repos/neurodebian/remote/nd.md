## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:fced7621ef7f64fabcf61cb62be23151984092e0ec691c410b692167d2d8b201
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
$ docker pull neurodebian@sha256:50728b254592d854b70ed9302890e656b0c618580fe2afc48610ea4545f481ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61585054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ce51f626d033134213fdd82007795651cc394c2f721a14aa2a5cd119f5bc7b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:43:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:df4a8180013f4392a5d26bea9c5caf5a9c846f52d1993024ed7d3fcf30197dd0`  
		Last Modified: Wed, 28 Oct 2026 00:10:39 GMT  
		Size: 49.8 MB (49822949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755704e56a84fe3074fd2775af299204b5d16e288559d26d9f0dde5a4df5e734`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 11.7 MB (11669040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502c9d20c78c11a23a9657f3d12c130d9e688a36c225c30c71d27ad5c76ce271`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80939afec9cbf640b61dce2ca73ead7f0467cd37f4abf6cf2dc968a90fb2abdd`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b887179da2cb83402a20ee7ddacfbdda05e284923d141b5fd9b6c72d8dbf3924`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 90.2 KB (90160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0e1b6fcf9770ac0900439c81f5828956c926d5577b25a1339ab7714dadee4e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3595675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2567945cfa66f3210a5af1a21f3900296270582d07d5206552e534ae6960036c`

```dockerfile
```

-	Layers:
	-	`sha256:af76bc4aada7a76b19ccd3cadd35d622b939c7719f8eb66759fcd1df9ff9311e`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 3.6 MB (3581771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07bbbfcba059d35f71492a451db9ab8311cf3add4cf076f1dfff0a967ba53627`  
		Last Modified: Wed, 28 Oct 2026 01:43:15 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a2ef1097cb209e86a98b1a6dc8f17ef1bb486cc9d2978357aca598fd0302b15e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60444715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e046b59af1388d6ba7be67566896424e59f9eb74740db738e487e0fcf81d537c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:46:30 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:46:30 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:46:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:46:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453a2d52068ba3e6f0ecb3dc27a35b2006989832c8acdad2a3a04291d3a23699`  
		Last Modified: Wed, 28 Oct 2026 01:46:43 GMT  
		Size: 11.2 MB (11181938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a5bec55faf93d6136707fe11561d32cb81a8706c3fc73e87c9c4dde7b3a778`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:633169e44c5fc9c7c8e71ae81462b73a6fecc5971a95b736b3709402c0ca2991`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c67dad4bba58d5954eb4a916e77187f88a015f7fa35c7745a43e0b99f9be93`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 90.7 KB (90657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bf2ce26357997467ce4f1b5ebe7e573e8f1826c2eb2595e25b4246d75fcc0cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3599284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fa2f6c43a98892b38639c9ffb3bf572d40751a5228584b1fd24ac84fd4bcb0`

```dockerfile
```

-	Layers:
	-	`sha256:0403b343dca4ed1b0832cede435233ae2c06b5a50bca2c391050f31cbf103bca`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 3.6 MB (3585255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c981f73f374fb61065c0dac744a70efe3d3235476e1bd5753c7a05dd5d7f76fd`  
		Last Modified: Wed, 28 Oct 2026 01:46:42 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:483fc01e320eb64152b02b0505a0fb3120483d9b7fd8a5302f5f8abe427255d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62902600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accc52292d1c4d443f7ef12d2580d862283c03900ac59ffb7fc58c078fcc6930`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:45:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:45:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:45:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:45:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:83748c81ccaf7cd658656e8d5f96a1a047d3eff6e17c90bb48560d33a7b19ca9`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 51.0 MB (50951289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb0ad00d71780032b55590af09a944d803b9cd950ddc68181716fc97515790d`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 11.9 MB (11857935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dec64baa1450e9f545a4fbbc464c5d35aafb12d5e560de7f785d5d828f165d`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc224f586f25aaabb6506ae7bafd0b49e69c24bd8595cdae95b5855bf8b051a`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016977d167b3ba7599c4b87586fea5e5bedf136d77591effbb85b631628531b0`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:a5e7eeeb07258850a136938021f9c5f2cd8bf850aa7a49fb6f1909de8febdc71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccd1c4a0820bf94c7ad44edd1083d85f53c59fda019ec1eb5fd377d3154ff58a`

```dockerfile
```

-	Layers:
	-	`sha256:df71ba548a47d40f8b841d71d6f26f233682eaa7231653d4340bef93e502cd27`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 3.6 MB (3579622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7577976429dbaf62bbc1752969afb31464f69d89a08d7ec9791f63ca4f95dff9`  
		Last Modified: Wed, 28 Oct 2026 01:45:17 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json
