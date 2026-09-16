## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:58801ff54161be551d88b2b6cadf40226aa6c207e32176eec6c2607d5da25050
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:9b19c1b2c1a1aff0b779b31106c8c6977e401c7bc7eb4222b78ceadafe27173d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33437491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfffe0c237e5a29bc9978e75e983b7ec2f6f68b76478e6c1bff1f9069a4620ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:26:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:26:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:26:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:26:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc315a73e76806adabebfdd7ebbc8eaba9b76012f40d814bc06f81d06773a29`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 3.6 MB (3565496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9725d952dce81df25c27200a713c7553faf1412b13d7279f2b374168056fe861`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657d3a51c8e22c59976971c47c8041b344aa05379a29295c97ca062edccb1503`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895f6476298a9aaaea9e6efb2639400ce2e644f8530ac0bd89c16e13f7e9ebc1`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 105.0 KB (104969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3ee628290b026fd6bde961cdb3b3a6bb2a017b0bf77ba26dc61a4b54ac5250ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2134890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9de808efa5d508f32c1f9a485e6798fb7b54e77fd8ecd3d6daee01b9b906835`

```dockerfile
```

-	Layers:
	-	`sha256:52702290ad8362d508f30997735653688be4ac400fb63ad5c5d315bb51722717`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 2.1 MB (2120957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5b68086f313f9e34d3660e62d10f8723970a792bc254c91e845a693e8eb340a`  
		Last Modified: Wed, 16 Sep 2026 03:26:15 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:c96d346db15c3af6216c8658de9ad1624404637be0613e91c56887a324838c97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32613032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47eadcdd755b194e5c1343fc3823f2aa82b7857676a7cb42804866d996573a15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:25:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:25:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 16 Sep 2026 03:25:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 16 Sep 2026 03:25:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afae30e241b880900c72fa4c77cf99c149895a213b3a0cee169021ac796d811`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 3.6 MB (3562819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad53f6fbd8d98b66371aecdf6fd0d3e0026071c99cfbb1bfee651c30a3ac0659`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619ea9cc50a6f98b3c85ff3286e5979ca8ddf365e910ac42b219de4d3966f650`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e30da8470aca59b0563ca2398042863b39130a14bd1947ea3d07811c30f3c89`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 105.7 KB (105724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:48f3fb533258d824acb3036a44c0b75c4223c10d62fd3de5ff0ff4ca1a5b69aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea60d17672d529dbb6d6e16267cd304a27c7ad7f91914a72c9907959c94b3647`

```dockerfile
```

-	Layers:
	-	`sha256:6d0340c93d62b133fdf56c8746d75ea7ab780466918c276c500d20cf287a158b`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 2.1 MB (2122002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45c4d5c445dbbe55d519a86daec001ca96588eada106532a46aa209b6ecd156a`  
		Last Modified: Wed, 16 Sep 2026 03:26:03 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json
