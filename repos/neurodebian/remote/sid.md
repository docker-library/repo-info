## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:be72914cc17fe362a8abb668355183b26285fe87a1f6a30f530856daa56d74e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:eb1fac46061b4ce79c0a4bf87072386e1d7dad45b1b64f8ede1c55b80eafd42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61406373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb59873a7ea568d7ce600523318ce05958a005747cd07cb7c8126adb2477037`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:48:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cf3778bf93cba832e9fbfc5150a00ae0935dab949016f111c36e9a06cca9e0`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 11.7 MB (11663859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2093be38388e5b08b786d586a4dbd531cdd4f7d3e1b78c60be2eed2e9a9bda7c`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e4293ce6449e672ce013b05c4615ec92ea884549023df8d232fcfe803b9a63`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620daa8c2147324e68fce582829c60773c0aefbbb7d7292b5e72c250f873831f`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 90.1 KB (90149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7e1b6c506d4db28e6c8fb5a3dc25a2aae3b8759d7cba6dd2cd3e7266b7d6e9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3608485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fb8e9f05ca8319842672e39d9f84b926bc16bd15391067156d4e55570828f5`

```dockerfile
```

-	Layers:
	-	`sha256:47a1e3eba62f652b9398f5a70688c6f9cb2e3161e7dd571d4f12da45661e8c26`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 3.6 MB (3594581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7fc3f9c8265bc493e3ba4ed2a2a88fd1e15158fbe54fa4c7bdc64181e31c92f`  
		Last Modified: Sat, 19 Sep 2026 00:48:31 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:43b72e96dad527ef40df505257c560d0e2ff8afda7402f1ab645bd7301b05aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60319844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ccb14c48fb0c671f756d181010445c73ab0764ca9c8431d22defcb273958f4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6553d039621d54b228abfa2251149e10503b7797100083c6c48e5a257aad9ee1`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 11.2 MB (11181595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535ce5afb84cbc0dabbbcc9db643dc4d90e5e6c3e4a2991e3d0698c120e76752`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c60b96dbda11c56815e2646d56a029196f11182aa1b3aa518986a0b26984add`  
		Last Modified: Sat, 19 Sep 2026 00:51:15 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f1d99ef42bc4eaaf8905cac983115f8a59a740264da5a09bbe5eeb22db7182`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 90.6 KB (90631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3e306e8384540c9371f77f9c720460c082e71a4f2eb143c3f457df364ae32ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3612094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b5bea05659b46a2c96b2b6e316f67a17dfcd923c39d68c45fe29e1412d499f9`

```dockerfile
```

-	Layers:
	-	`sha256:498cb1201341ce741b5f2b6c2e15d93716018d3b71db0dc357a0dfe95dc3a10f`  
		Last Modified: Sat, 19 Sep 2026 00:51:16 GMT  
		Size: 3.6 MB (3598065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f78a3b600b4b96300250aa8df855126653215c628fac602e0622ed122529044c`  
		Last Modified: Sat, 19 Sep 2026 00:51:15 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:39a9f8f8a0b6098150bc5afa58d6c9fcade2082c8b12a8a912ac35b57fdc9aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62926512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d02b01d136f5fb53458c3e3fa7f4428e61f838ab5d1be5c1429a5f1e4e6573`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:53:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e01d3901aa4016b5ea48582531a16356a61eed1c133860429fd1cae83ee61798`  
		Last Modified: Mon, 24 Aug 2026 23:20:39 GMT  
		Size: 51.0 MB (51017431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4371e7626550b21b08dfe985c6c582c43fe7a37ef95b3a89a91c0dfef61c795`  
		Last Modified: Tue, 25 Aug 2026 00:53:24 GMT  
		Size: 11.8 MB (11815808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a699418efaa4471a4a7788fb05a01539a0803fe4ad4b5840b9bb4470fcf95cf`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd58aa25429eae77116a3ecb3a10bac50adb0060eedff57d08e95a9a9f58e6a`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354e0092d1fff4b29d30cf9fa2c8ee5e8d880ee93f5ff3a9cd69b89c7199d9ce`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 90.4 KB (90367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:daded7ba1a6867f0f291e22340d54f7ad27782c2aab90f4048ae0198b3c32224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3617641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2018931a0ff6e5ebecaa831e09ef786af9c0649b49c21e988e4462d71878c316`

```dockerfile
```

-	Layers:
	-	`sha256:ee97205b2cc2ceee733e18766b7c863a007a49641390d648fb597b5e618ea126`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 3.6 MB (3603765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8fadbaaecbefe5f776238084d57aaa316adc45877287b81fbfed6d9424945df`  
		Last Modified: Tue, 25 Aug 2026 00:53:23 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json
