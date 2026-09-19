## `neurodebian:nd130-non-free`

```console
$ docker pull neurodebian@sha256:3ca2e249b8c2d450b37ffbb4fa779ac2ce6ace98834b7a5bd2eeca2bf65942fe
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
$ docker pull neurodebian@sha256:4ec624d79cd1f1ff38bf34fca68d64f943e7280f4e3d2695e34a1b3748015503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59767586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5a4a95a21347bbcf9616db2ce3f6ffbae1a99ea030f4289dec7f1d645e4ecb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:53 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:57 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0367881a5546db8ae8f03b855dd5e60310d5d38bc7ff29497f1714e6bf22656`  
		Last Modified: Sat, 19 Sep 2026 00:48:04 GMT  
		Size: 10.3 MB (10294185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6d317407eadefc66a2ffa0197c1416d1c24253c9d17bfe859ef491f68f25cc`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ce78390911c1b529ca57723b701de78f57424f1ce744143007aa4a72312071`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ff5a57dbab74a1af7bc8e5843c7d706800a036931e61fd22a13f3ee84c0740`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271eae8fbb0331a80b2ad033dacedc230f7337edf4f3c4b35303235d3779911f`  
		Last Modified: Sat, 19 Sep 2026 00:48:04 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:af56ec24745b9028c1222c57cacbf6587c4b11215890466fe82dc9b855d4975e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785bca50b95e664a0e580cd391083130f97f3cd65f5ba0d6dd8bb1cdedfd7835`

```dockerfile
```

-	Layers:
	-	`sha256:b396fa5a856ac258e5878b712f757bc057b614b18e07433a4bd19fe4597c27e7`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc962873d5b6ee34b2a88ce01f4ed7f1f6ec732b8b56431c80830189a4daa548`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:0a6dc589dcea3f456ae11babee4553ac8057a46831c7da594243037fe8b44163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59922152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52535d8358a3b3573e0e36f2b820c9a022263b18fbe15a399fa49d14b511a66`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d01be2ce3ebedfb9b1f4041ca2e848f400243ee06b5c4ee9d854c8651192c9`  
		Last Modified: Sat, 19 Sep 2026 00:50:58 GMT  
		Size: 10.1 MB (10078901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0485ab73e1f08c621dec2134ef63a53f838a494336ae2a7c94230a707c3820ef`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672da0e90647ad0d6df22c8fccd43f46b5cb81e0c1553b202c851bcc8ba7d93b`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a911a26847efe966ef319fca205ca7f1e57d4db1568e2a195e4d452f61fb44`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 91.1 KB (91066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0447b50c5b678fa54849cf68086f98412b5dbcdd49cc70a5f00f0398a2573425`  
		Last Modified: Sat, 19 Sep 2026 00:50:58 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:01e58f3cfa0ce80e0ed4c9100bba87193636c9bc59f9504724b9a1f2ee942a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379b17496d067d4f399df9689e965e316329e327511a59433d8a9e16c7751e31`

```dockerfile
```

-	Layers:
	-	`sha256:793a027a91b70438781256b8691ee5fd4fcebff48efb54623f3424f062a6fa31`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6704db8fffe8b702e8301794f06da5e4d8fce0372a5bd0ee6b810d52ad2b47f5`  
		Last Modified: Sat, 19 Sep 2026 00:50:57 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd130-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:2832a4a7946547c0ba3b0871a1a83e575f59bdbca15942a28d4a3491eac5101a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61455031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd56dcf8bf15db70121b466eaa3ebcf3733a71faf6ead050eb3928dbea44195e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:52 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71b2049994e2416b737a337023a34dcf010542d8a6e2466f228e488b663c295`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 10.5 MB (10468188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1246ea00c166202d1ac6f52b5dc4ab8bbb02494cec4354f7ffd69712839f4a10`  
		Last Modified: Sat, 19 Sep 2026 00:50:59 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe03eb59cca14b5b355cecb8c2a575e1936a99febed3636105bfb880c11e449`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5bbda427b2c03b54929cf285efb9cbf6bbc274e5a28250aa9f924fa73b48ba`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 90.8 KB (90778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b3e2437cd25adcd39dc1b805860b0cc7e25a0e6868d9a17b88780a674a9416`  
		Last Modified: Sat, 19 Sep 2026 00:51:01 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd130-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d482154ece938f9a91544df9ca3b81e59d03ad057c2cae674c8eb002e61bb897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca04ea7e1e84a774e6c2e678f30cb6ee7c9cfd17070d0b9f94ba85fe76600973`

```dockerfile
```

-	Layers:
	-	`sha256:5122eb46b1d554ad7a118eca9a50c4bbb1dc22bce0e73f92e8b7052c266cd3bf`  
		Last Modified: Sat, 19 Sep 2026 00:51:00 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7593e8784ad742a7970772a0c45a71f9998d14415b6b78efc7d970027793ba3d`  
		Last Modified: Sat, 19 Sep 2026 00:50:59 GMT  
		Size: 16.2 KB (16247 bytes)  
		MIME: application/vnd.in-toto+json
