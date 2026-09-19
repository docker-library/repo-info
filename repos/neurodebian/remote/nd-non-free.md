## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:a504fbcd794de7ff622ea732a3b72baf008f8acb501fc056072144bb910796e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:a0d4adae7c085cdf53378711dcb95ba4cb85cdf80cf5065a43506de5fa19b7f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61406833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0409496fb195739a1827650db21c9986dd53e61640a23a9202cc5363bb81407`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:48:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:48:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:48:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:48:12 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0adda06505a7982b44c9287080b703a6b8b8b8a1c11235f01a099baf743798`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 11.7 MB (11663878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816e44cda7a07672fa95d5307c9bb8757fc367d6e192508ac203ce926e4977ac`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9406832819a5d3afab626c9e994bdfc1c44dc8e8f84f3fcc75fe2a9e3f455ad`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041211460a8daf3ac6c609bb062dd295069b198e207206981f55c4ed4cb9b841`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 90.2 KB (90169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa559a9ed6787856a15539a3ab479c3e6defb1412b3f16849b35b6d7f481539`  
		Last Modified: Sat, 19 Sep 2026 00:48:24 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f5156c697f587948ec5d04a8d4684d18f211a988eb34cfbe81476b999d103e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3610547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73cf910dc32bfe9f22a3d160a0eb33993e13f802f1dbca33aa87692dac1be998`

```dockerfile
```

-	Layers:
	-	`sha256:d35fd8e0a6e9d87e3f02bf7086f75cd5eb33b65910ffe8bea0fd45245f6fe8bb`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 3.6 MB (3594617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10250c8257232e7374e9b9e328e9a82d6848d94a25874d88f13e782fb176224e`  
		Last Modified: Sat, 19 Sep 2026 00:48:23 GMT  
		Size: 15.9 KB (15930 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:975b400a09eff14bc81c1f4f2c677ab8780d4dcdc043f738ef37437b35d9ddaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60320259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7d055bf8891f90cfd1f09da901af2cdcd7dd3c3ee7f585e999b49f3a986fdf`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:51:01 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:51:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:51:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:51:05 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a6ec95f7cbe483825d0a3cccc665aceb28c6394b417fb39fa11300964b71a43`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 11.2 MB (11181604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33ff6cabd73436bcea42548f158f3befe0d5a8893962c420421a56938437888`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90da45483b4f4669ee8465cb23ffd9a89217e115d2b342cc1e5a23ecfea86a2f`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20aa5cd6b061bc100bad1803aadeb7ddc2b828288fe239063b5b54e03e89816e`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 90.6 KB (90617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee64325b69ce42b500803b793172cbf466a15e527343e331284c6909da96e12`  
		Last Modified: Sat, 19 Sep 2026 00:51:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ebae81bbf13f8e420ee3063c1815bd4e5914f0e33ae0f48bb2577f3c7c3fd834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc101110dc1671d243f07f4cb3cf8585ab6fe0eb98eeb1049cc0a40ec3e66c73`

```dockerfile
```

-	Layers:
	-	`sha256:30cd89fa65c0a0bb374238e00212ea043b36eddbb211a21165af31e6033dfecd`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 3.6 MB (3598101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cad304ee1652fdecc628a0fb6ca38bd1269084e42fcd45472c0b7654eccf9cb9`  
		Last Modified: Sat, 19 Sep 2026 00:51:13 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:2829cedfc1b3a7226e231d1fd856feeb91edcd6000bcd5993e45a3929f8d23b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62926963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82ec4e39427c17b6918d54425ff2880bc1fe08bf6308ab00cfe0893c5d9f4d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:53:18 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:53:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:53:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:e01d3901aa4016b5ea48582531a16356a61eed1c133860429fd1cae83ee61798`  
		Last Modified: Mon, 24 Aug 2026 23:20:39 GMT  
		Size: 51.0 MB (51017431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1796804f4e15eb68dd7db971fe4c99e58304b3c5c6dac6bb99642bdc7d53a9`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 11.8 MB (11815826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7772a68959ea962c480cead241cd6783ec8248a110cd658991eecb0d8ed75dd`  
		Last Modified: Tue, 25 Aug 2026 00:53:29 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e1f63ab6ff862cf461766660538d6950c49b7acd92a7590990268914e6d27b`  
		Last Modified: Tue, 25 Aug 2026 00:53:29 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace446340aa875574ea6bae6d5d66fd735682e907a0d563d01ffd015fd871c81`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 90.4 KB (90380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea76f06486d22e15a9f6b738f70fff12999030cf1d28373dde621523b4f20f12`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:adb16adf39387fbfa3b1a0ba43d068e44ff62b7efc13e9c4adabffc1d3d6c406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0093dd83204aa715d6716c85898a9a88441f4f2ae8ab677c0380f6b38e7c744`

```dockerfile
```

-	Layers:
	-	`sha256:4e307d0a13a6c178816033d3687606e7d7091a0f78b34ee142228409de0daacb`  
		Last Modified: Tue, 25 Aug 2026 00:53:30 GMT  
		Size: 3.6 MB (3603801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e7f54d31a55ae33d20593b31599d8f5edc87a650d1404f3bcf2fd80b0e58ed7`  
		Last Modified: Tue, 25 Aug 2026 00:53:29 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
