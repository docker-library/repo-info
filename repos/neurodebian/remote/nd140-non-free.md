## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:5a340ccc716ea5c3cd94ceb369e224b166c1a8238e36408bdb90e33a412a1138
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
$ docker pull neurodebian@sha256:b341dbec00ce3473afc272d86c78b3e3bbd61a525fb67eb9b71e99ee520903cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63133680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc162239935dc36fa8ab7987b030ca05846ab1b904a9c4d1ce017a0d4e469af`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:51:15 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa6371292b824e966126e38aaff98bafe5190dbe718f3e32920784156d4036b`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 11.8 MB (11826511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efde4de6ea23ba204cc0f27195d0e66463e4e12c2df9e50721edce043b1be8b`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c184cb5b4495fc0698b19d72418c60a1db72545d1f4a1b66dc2ab9cd778b2243`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792783bc8c120b29c8fbcd3898aa1481b8fb76eac6f28c9e7cfbc770dccca219`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 90.5 KB (90540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d7032bb5c48603554292ff4ec0d6544c949fcb6d857c99dbdaa933fe020428`  
		Last Modified: Sat, 19 Sep 2026 00:51:28 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5302ffc9ac73e7bfcec28962ed08b9e7e4e5cc5734ee1cf912e98f06fecf0aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e23fbbeebca5bb14b3f16e8d8ac8ab4812b8fe275d628c253684539943a38a9`

```dockerfile
```

-	Layers:
	-	`sha256:bd5d7fefead61197cae59912986f5db6e86dcc36cd93a70f272d15e000ef722c`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 3.6 MB (3603814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a4c746b0e00830466b9339c407733924e9d1739365e68b652080eadd16c6a3`  
		Last Modified: Sat, 19 Sep 2026 00:51:27 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json
