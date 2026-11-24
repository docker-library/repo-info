## `neurodebian:forky-non-free`

```console
$ docker pull neurodebian@sha256:b54b63d2cdd6e00e8d5003cf91b3b045e53f1cea31e3705fd14d029192bceeb2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:forky-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:d2111e8f25bd58a2c941d2373483872b259bad5d33ec6980924d24754323fa57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62664961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:520757eae91138041ec987ae27629b85a5f092cfcb75f516c27948099f670cdb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:42:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:07 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:07 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:e0532024bbbbe838be5cdb81657e837efca9a68f1a5e2c55bc6bd02a30fae548`  
		Last Modified: Tue, 24 Nov 2026 03:40:04 GMT  
		Size: 50.8 MB (50824479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324649216c993fd2c09ae0cca3754e067999ec5f396eb6adc456a9cf9bf54879`  
		Last Modified: Tue, 24 Nov 2026 04:42:17 GMT  
		Size: 11.7 MB (11746707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fcae05a342c839129eb542f11b3bc7516b00f8f23e6e3e6111d058338eb1056`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959ce98b6ce52bfe8425cd09e8493b2a06f4e5e96da5fecc276cb2e5d3302225`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcd26fc7e722ab7ec170d97a9ca47c06b175e37ce21b41e6cf2c5873d3e0298`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 90.4 KB (90420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd489154168eea720b08dc8181b5c8546f27222ac0fd9f66b430064eefa7adc`  
		Last Modified: Tue, 24 Nov 2026 04:42:17 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:deda16613fa0722eec6e5e6e1ab179df53978d443c2341c0bdbd438a67ba80dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3615911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957312b63a1ab928e5c0563d3b646d22c48c0ad05e81be99e2136183aeca6a0b`

```dockerfile
```

-	Layers:
	-	`sha256:fffa2588b8deb7865949797e508ecc99759c9085879018931f3771cc65ad02ae`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 3.6 MB (3599952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d96dbbe3bf8a4d9d17ac3745d30b9641830d22a9efab708508f87c8df2169f7f`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:d0e47941e5c038361c17bc01630dcdeff473ec87f4be30c351874f971f996bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61272923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0824d0737984483fb59cec4cc19dff00d49d93c621b8726fcb42b43c3afad996`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:46:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:46:30 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:46:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:46:33 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f2d0466274a27fafe53b0ab31eac3d74e9c4c21ed2c12e050bfaffdc8a143a68`  
		Last Modified: Tue, 24 Nov 2026 03:40:15 GMT  
		Size: 50.0 MB (49959536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e5cea1c7192e8f29df702bd75746abba7820dafe444c6861e2097249ec26c9`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 11.2 MB (11219081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa0b560e698ce283dcc96f29779c1f5214b30a0cdb4d34b982645e6739c9988`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee466607585370903892b91c9c7591b08193174fafcf0f5b9155c1a12f7a48e`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bb6806c97554d4c91b8a87aa1d1d054712299d4411cedb36f93002c9932fb4`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 91.0 KB (90953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6e86fb3e5f3f1da934341880925e342ba1bcd263b27f4e80d7988b79597421`  
		Last Modified: Tue, 24 Nov 2026 04:46:42 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:987a8e6198259fdb89df7f947898fb216c74f213f92b59fa82c385285f241cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3619550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d753ae28ff3e9da1d795f320c284016a601951ed9a98a3baad1214ec2577d67`

```dockerfile
```

-	Layers:
	-	`sha256:6426eef9225437e6d35406d448270a523a52ba0b8ee3fff1792b2d7fef881579`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 3.6 MB (3603451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f48266016403d74194c95a31465ba08582461b2a8451dcbd55695e23409c349f`  
		Last Modified: Tue, 24 Nov 2026 04:46:41 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:960d0cc2b57bae1de24daa789b748eb4d5142b43bfff8151fb432503accd634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63917674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d0bd928e378f246405af4af35116dbff114a6270dc220078cd45424da7ba7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:42:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:42:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 24 Nov 2026 04:42:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:42:21 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ad24eb7477cf6ec6782c9a4f3e0669cb79bb950b4d715dd6243dfd2cc7f5069c`  
		Last Modified: Tue, 24 Nov 2026 03:40:12 GMT  
		Size: 51.9 MB (51898500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f5ce881250056b9d3061a938c5aa48cff1d70441f84519c89cbf3e4ab085bb`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 11.9 MB (11925058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7408ca7ea5353e62a0c62b4ae2f017aa7f338635eef068b1f62a219b44781003`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77ba7ba68248cfd3661774ab10b63c2f7c79f82e0cf59f39d3762905996a772`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7d889d740b59902cb3e2fd928a34f4851a16961a1eadc3c27f1e4cbaaea2bd`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 90.8 KB (90765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd0adbb3c8a37335c4bc6097fc95b5b0efd9a507247bf85adbb298788a45ca`  
		Last Modified: Tue, 24 Nov 2026 04:42:29 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:0bf531886ed125281c680e585df5837159c09c989a532f9ab8b38eab4710bae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3613698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d1e46da1d0af249490b6b0b87c0c2da2ed63401bc0aa40f895eb60174ee28d`

```dockerfile
```

-	Layers:
	-	`sha256:51ebfab3ef579c0d30b02114e1aed54d0acb11c89e373a3f991912277a05685b`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 3.6 MB (3597770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d71b71c94b270bb4127a0851261394dc2d671adef1203e61098dcc8eb407fa4`  
		Last Modified: Tue, 24 Nov 2026 04:42:28 GMT  
		Size: 15.9 KB (15928 bytes)  
		MIME: application/vnd.in-toto+json
