## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:55a6146ca0ee2e4e2059f914569e33a614ba5251a6266536cd238422b1d2a200
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd130-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:836a369cdb3e8a29db67ddcfb67a1c34cc8de1e5b8b5e29b3b78de02ea71af2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59795827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1534b11dbee3f904959c2aa904a297f42909f2ef19d1dd90435bb635f972067`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:43:00 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42dc1961e61d242a1f38584a46053d47ff1b40456240251efa3ea18fea83470`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 10.3 MB (10294203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1cb291d6a6204fd948f2036fdc3cd0190738cb14bc77cb805d29df117cc827`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb07458ec2f3367503226f9118c772c96635e2b75f4ba6deafb9c308483e1418`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb76ae558d3b421a3d22309c084601df7a9dae57927d2ce40dd3555848a256e`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 90.4 KB (90374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26aababbe1838dbfc23d4f7780f5c17ee51ba64a19c6aa75ac3e4e927fa6b24`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d406f4effe5f72b96ddc2de74da5d4a274cbd364c9a992f07798ac0b1f824ca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5ef0705a72445fe3ba6d8f2f29b7f2f34d16ce7298a1417f1f62ab5be8c112`

```dockerfile
```

-	Layers:
	-	`sha256:9759c01eb29bce06d672c46496cc6f1038823ea353ba5ddaa16c3e73def987d7`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f63fbb6c2fcb38290f6510fe2776f75fdbdc695b3d488c09e064c0c31d78b33b`  
		Last Modified: Wed, 28 Oct 2026 01:43:08 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:61d4f2e7d72939f9a43948ee227c4c989d0b2231eae450adacb619852e5ef961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59934946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824e76c13da4f464c1ab15bd6570fef9890518203debffbd684a4999bbb73ba7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:52:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:52:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:57 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4804a72fc1d0c6e7e2a88e7f9a3a75b19b46fda2fbc5face80c711e103648195`  
		Last Modified: Wed, 21 Oct 2026 00:53:06 GMT  
		Size: 10.1 MB (10078940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b291d482fc7702c821e9aa88bedd8e3ae74e0e8f4c5b8c8b26c40ab49d5ac61`  
		Last Modified: Wed, 21 Oct 2026 00:53:05 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a1174139c3e98ab0a23cd13456e6af6918485a62d285783742d2f4a1727880`  
		Last Modified: Wed, 21 Oct 2026 00:53:05 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e575ccdedd35576fc3d6bc557d51e9c929762a749e8701930f6ca6715c08d55a`  
		Last Modified: Wed, 21 Oct 2026 00:53:05 GMT  
		Size: 91.0 KB (91046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e478b051f7d04cd19df336c2810915df55099d6b4324289811d1d787be5aa6c`  
		Last Modified: Wed, 21 Oct 2026 00:53:06 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bcfbd565312dbd442e60237bcdcb49b93c461502675dea10289c182a980c35b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0988936ddaef9593e4fd214ff86ec970efd60648c26575b2bc4accc9888ab652`

```dockerfile
```

-	Layers:
	-	`sha256:1986f3bac98b5653ade696458e0affdc3a45c036f6f2202dba37e3937c19df02`  
		Last Modified: Wed, 21 Oct 2026 00:53:05 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea67e7f40e0cba457b9ec904a2c3b51f4f393e4513d86b05674390f5d2a109fa`  
		Last Modified: Wed, 21 Oct 2026 00:53:05 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:143ea589a0c43df69cf182cd9ce493895d6b6f08eac2845ab5a727bdcef3f990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61483881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb31af95d5286ab074a7ac689e74e8beb1244da0b41212b8c63611df09c753f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:44:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:22 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cca12a5c9091503dd2fd4cfb90610483588dde9bb8a431bfbf3c624c50bd44`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 10.5 MB (10468228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebb60a0c04c6adbe1b333a55c0f2da5f2f42f8c912351215d622ce3afdfedf7`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3039472c98fcfa69d07fdabb8044426540d46350136e72213bb137f0c9e96eee`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82387c73bc0be4b63a58d2592ad5942d63b35ebd696e0fd7665d716e1eaf8e9`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f0b0f1a636f79d9c2d86a5d2bba53f9a745577f52deb5dc71f47245fe2e75e`  
		Last Modified: Wed, 28 Oct 2026 01:44:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b7388c6d86f2aa0a3465ac36b3f8e1c9da131f49121d52df832f9ffb4ec3bb19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25acd15bbe19b00c28a321cdb3b1de06f994baef29d39e0198f0cf5191e7bd8`

```dockerfile
```

-	Layers:
	-	`sha256:c2f8efaea6d1499f9204a9a9618216ddbf8e5bf958a562fa4577d9bb130ab3c0`  
		Last Modified: Wed, 28 Oct 2026 01:44:30 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e031d59341baada68157a7187882eb50a3b664723c104a96c277d17ea49107b9`  
		Last Modified: Wed, 28 Oct 2026 01:44:31 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json
