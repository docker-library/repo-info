## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:3337668507e82f98e71f46d301bc58e0238aa03337d65062225764ce08434f4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd140-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:24bc32af7a36f82b3c5ed36998a7916685fc525050f01d8b667a6dcb81a40771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61388751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d1dcb3f87dc32eec278d59ee9badbb0719d5df69b296536cc5eaf0b908b59f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:54:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:54:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:49 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:11241ba38bb772621a206eff61590aea7dec9f95a23f267942b9b02ca75b7a37`  
		Last Modified: Mon, 24 Aug 2026 23:20:44 GMT  
		Size: 49.7 MB (49685515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cea94de4ffaafb2d5601eeb8bfa2a61eac0b8fd10461fdd83efd9c4fda5cd0`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 11.6 MB (11609840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d75220ec19c5cbb39bbd24498c23aa446298e23a089cd30d4b61681743d901d`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36fc3151b1cc4706bd10a09fcf0ad6221d2832a8d53955301511af20036972f`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b150ec5b6f958a1c2eb883716bf1d4ab625412537c47c466f28a80dc57bea2eb`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 90.0 KB (90044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beae668ad463198c406d6d54b06614973a243c4f9b48d10d424b392f9783c3f6`  
		Last Modified: Tue, 25 Aug 2026 00:54:58 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:7939ec9309a08b86d3bbe7b12c25302ca2cf88e742b474df44d62a7c346f14db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2efa92cc27446c3d76c13d3e2270f17569e57d6a3680415463fe1d2ef76fe038`

```dockerfile
```

-	Layers:
	-	`sha256:6d2726fa8318292a7f7849187e419e076a79fcf7c7baabbe235585dfe963f98c`  
		Last Modified: Tue, 25 Aug 2026 00:54:57 GMT  
		Size: 3.6 MB (3606032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed74cc17733d16da2f600ad681c6d92728d94c2420d9db41280c8a82ac5fd025`  
		Last Modified: Tue, 25 Aug 2026 00:54:56 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:e3c2f3285f323df5a6c0b584dd503c3d3577cb3db95db2caea2478460e7ce74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60763633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e63fed3be29a5bff1027cd7b28fb687519b38a52a0692c33f4a14098f31be7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:57:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:57:02 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ad280b75322e6e78371ef86f07cf13a9b43130485f6088f3c11bc956d28be45d`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fb9c931d678a3ffd45cd4f122621cdc9455a67ad7053f7f41a5f97677dee93`  
		Last Modified: Tue, 25 Aug 2026 00:57:15 GMT  
		Size: 11.2 MB (11165763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990076b7e93f48e4d614e653e9115818022c2d9ac14b273514f4a67c08c5a4ab`  
		Last Modified: Tue, 25 Aug 2026 00:57:14 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356b657bcc670eff756605426dd4e56b8860581f4c169f5399b7eabb2cdd0424`  
		Last Modified: Tue, 25 Aug 2026 00:57:14 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3e81197a52ddc49a3df4ddd25a2cb1ac5d034e45260c147d3640759d67e3c7`  
		Last Modified: Tue, 25 Aug 2026 00:57:15 GMT  
		Size: 90.6 KB (90600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b546041f9777edeb41179fb1b938d45f8fad808c6dd0400b48c35093b5c5ed`  
		Last Modified: Tue, 25 Aug 2026 00:57:16 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:aa582480471d5525cc7f751180f68b595536ae58b5c19e96f58cdd28379e5b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda1193a5cfb5ebe0557e9d6c27440b35b38601baa57064189f1b30856e09769`

```dockerfile
```

-	Layers:
	-	`sha256:a12ca6adb075122453c6f02c6d04a8fe032b2f5fc9c55ebe4a32b51d585277f7`  
		Last Modified: Tue, 25 Aug 2026 00:57:15 GMT  
		Size: 3.6 MB (3610154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bc6eeb70be3234a8b73ca64467d9f7b68d861afd819ae620c836dd110157d4f`  
		Last Modified: Tue, 25 Aug 2026 00:57:14 GMT  
		Size: 16.1 KB (16095 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:9a42fa91b39b15f67548bdc0d49bce933fb4671c694da09e62807546ac45e8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62800708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf5cf2d7ac1f90f3a2c5e515bfa97318f86518bad892ff0b659224856cbe00c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:52:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:50 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:53 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:aaf68b813d1715d979a28cb2734f0c4792e12b8f67526d02f1eb51e9f0ab73d6`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 50.9 MB (50891162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e9afd663e8e25027717273cbfc9ecadbceeb33d3a40f9ff1fc96c4f56661bd`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 11.8 MB (11815841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b38f3c299e66ef16b1c45bb235868bdb393ae8a7adfe99034fda658a847817a`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:987c0b9b811e2122f62ac9f3ebc079f41067d2242757e7381c313cf4be5f324c`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f195cce14e3a3cca4385d6bcb839e0e6f2b76a71b23f7938740cad9b588446e3`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 90.4 KB (90354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f45460598d7a98fefcfcc015b375b5f689f5f689b9e0591d6775d14d0d79bb`  
		Last Modified: Tue, 25 Aug 2026 00:53:02 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5d7623edd424fac7504527d45910edf1c5d547417a36eef404ad61364e64a9e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a473896e0ce5418d0862487b4a3fd907b3a4b5b6a77c38ac57ff5b3b1da98a8`

```dockerfile
```

-	Layers:
	-	`sha256:ebc61c17e659b9af2688ade39618253d71381bfd06006b5a0d29461afaba8e4f`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 3.6 MB (3603877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8927b24121c799aec59b63c28e586bae3bb84e8ebb4a4afd0c941b93fee92bae`  
		Last Modified: Tue, 25 Aug 2026 00:53:01 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json
