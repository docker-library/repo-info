## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:90ef714fdfd1e0b4ea2e9c89a8e5811900f2f1e6103faeaa23503fad9cd087f8
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
$ docker pull neurodebian@sha256:294711b28f139f142074bc4cae70cdb9db1e06d810a8dcb96126a492e45b0310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61794212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f42920bdefa155954df0a5ca8dd97ca4e8fba4cc026db3ec87abaa2d18ded9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:48:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:03 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:06 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:cef6b9e146b59354ff9c67b76eb738a3cbd721da62af9fea96e49a9203bfbc82`  
		Last Modified: Sat, 19 Sep 2026 00:03:30 GMT  
		Size: 50.1 MB (50075078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ffe8925bbb97aaffed456025ef2e75696577c81800643c444600d5acd6e320`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 11.6 MB (11625528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5651b91df1d3314a50352cb128612cd4ea658b5454470412e9b53974e8571253`  
		Last Modified: Sat, 19 Sep 2026 00:48:13 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e055709cb494c0adae945e498e91026d14cdf16edb375a9b8a01a135a13862`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd3bd0f3446dc9f2d9f4efee270bfff1e12a4594410dfb46b3b53a4b28b5b32`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 90.3 KB (90252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f8dd68d7e91bda5d3be6dcd342610adb8f1088c7d0cf7e84c373d5d32a7d1f`  
		Last Modified: Sat, 19 Sep 2026 00:48:15 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b859e5efd48fc58cb95754753dce92cb38d36f952260b03ff868c156f83f3820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa96aaf7e623553f4f991ef227b72c13dd3ed147f3f836f57c0d5eb0ae0c9f2`

```dockerfile
```

-	Layers:
	-	`sha256:3749de75fb499032d56b07640df6209496ba7e70a9e17f91be946279e1e6ea66`  
		Last Modified: Sat, 19 Sep 2026 00:48:14 GMT  
		Size: 3.6 MB (3605968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a7d5539adbed218fcfa9f8acf0d46230d54050549ab556a4c12a3ca93fd0247`  
		Last Modified: Sat, 19 Sep 2026 00:48:13 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:86e62c94c809bdcae77c5e5169439447c1db2eee1e4dc46eb6843925c5fb892c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60817184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f40df96db411d552c0da47772749f70629a880f6e388b0be6e672e43939aeff0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:50:51 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:55 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:bc8b68ec4249a062f0351d0b052f82733e554595d28d36e1fb5f71baf24fcc1b`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 49.6 MB (49556485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a0b0c96a52954b18ea8c2ba2d7d7c8e9a4aa30a085888d41a8775149c04c56`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 11.2 MB (11166622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630fab8b1206bd7d627f3e8a1521bf64c93bfa6836bc4d3600e213a27afc45dc`  
		Last Modified: Sat, 19 Sep 2026 00:51:02 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2f1cfad79beef7a511d7727d3ee7c23aef64b1fa7228f42ddb0d9004f451d4`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b495f90c02e641a84fcb2d8b0bb8b9c49d600a6591a42f51241605e28d857ab4`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 90.7 KB (90728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643fb65bbd9b71658820f4adba97df8b7e73a238d133a78e5e7c26a487f7bd47`  
		Last Modified: Sat, 19 Sep 2026 00:51:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9e76e8548b3513d14ec855d589ba7bfe856b7c52e0b1adc1af8a2af1045edc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3625551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce79a403ee526c44e787d8683eaad3f233b0eafc5f08dc5c8238dc87f365518`

```dockerfile
```

-	Layers:
	-	`sha256:02a3b82ac0c5ef39b55ebb355e461ce8231d9e68fad46b8301f5ef0790a8d536`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 3.6 MB (3609452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:175fbcd8e0c0db2d21e32e15259044848e58d589c569e010df5de973d839c49d`  
		Last Modified: Sat, 19 Sep 2026 00:51:03 GMT  
		Size: 16.1 KB (16099 bytes)  
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
