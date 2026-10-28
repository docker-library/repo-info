## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:5024bc8e5c298e47ea44012179108d8b41cd22f884b576061cfa04f10dcf96d2
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
