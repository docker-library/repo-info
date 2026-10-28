## `neurodebian:forky`

```console
$ docker pull neurodebian@sha256:bffb0ae2514ec3c8e67c8da6f2ca555e46479b96978fc04bb79977e4415ff9f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:forky` - linux; amd64

```console
$ docker pull neurodebian@sha256:56b66d4ba40b3e81d96cfb9a5601ccf1ea9d47ecd8bb9e295bed84447373e881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61576520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42e97b2d283bcf31463add559bd676c546d30b29e1e3bdbaa1c87dfe61251ba`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:42:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:42:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:42:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:65929644eb8cbb6d5dfb27c78d4d6cb80d806c5c2ed37c7b627d5a03a29749cc`  
		Last Modified: Wed, 28 Oct 2026 00:10:34 GMT  
		Size: 49.8 MB (49814412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5332434faf2ff84bd4cf3ad34d4fd4be06b807d27d58c6accf4f78af097655`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 11.7 MB (11669054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8daae63029a09f97c69de9390113cb4dbf9223321741408a4bd9499a22125e`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b80162623f77117bfd641ca626e7a1e14e8082e0f637dea1ba5336716763bfe`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1e978cfa4b46c0b2a9fdff6cc67efcad574058162630fc85b46c435e22f028`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 90.1 KB (90149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:48b91cca0f02ff26b9a63771a139024bff0341c8b680d38cddb0cf7e91c39c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f067b0618314da1f94e4285aad2d649f9f1f5f29e40a0d9fbb09252f9e290ba8`

```dockerfile
```

-	Layers:
	-	`sha256:9d596cb967d0a5fc7ba1812969409eb2e60925c8180d5498d8fa6ce0f00fa533`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 3.6 MB (3582580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51808b379f15b56d12c58b9dc4754c7dd2eaf276d2d9cb3df346f1239e5bf483`  
		Last Modified: Wed, 28 Oct 2026 01:43:07 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:f83395ddfddfdabaddbd3926c7403bbbbca381c6c84fefbc1ab122866c1ad2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60417944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c9ea37c4df5e10d3d0b316e4537f3cf8743133646ac84ac8a1aa29a09ca51d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:52:54 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:52:54 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:52:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:92027717a2c3877f42b4322ce7e4584c8ba10b96c54d312a7823fd9df6cd664a`  
		Last Modified: Tue, 20 Oct 2026 23:30:26 GMT  
		Size: 49.1 MB (49142449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1c94766f5581c52adadbafb44c80397f3b5982f7a1378fd0d2c049f9e8db78`  
		Last Modified: Wed, 21 Oct 2026 00:53:06 GMT  
		Size: 11.2 MB (11181923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b00478e294ff51719821ea402959f73b5df9347db23c7f9d589278eb9c9210b`  
		Last Modified: Wed, 21 Oct 2026 00:53:06 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ff985b8b1c605b72e4c40ea0b7a1cdd1033d520745159ef25509f87f850bf3`  
		Last Modified: Wed, 21 Oct 2026 00:53:06 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d465e41ce11eeaaf0abd4325f062576f59d222d4ef11a0fe07fc2e76fdbd732`  
		Last Modified: Wed, 21 Oct 2026 00:53:06 GMT  
		Size: 90.7 KB (90666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:bc4059e39c464c8c0aa970223e999d41af410d9095ba01c21ee4a7ff300782bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6c1045ea80594e59530f01fdde0822c6aed03c4b69980ddcfc8388a9499b0f`

```dockerfile
```

-	Layers:
	-	`sha256:943e835e78b5e84125a33d34fb63d29c1ab59cab716b478c0fbe67b2b405a130`  
		Last Modified: Wed, 21 Oct 2026 00:53:06 GMT  
		Size: 3.6 MB (3584439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2c037c53d82de0b40fe095ac2c7780cc89a4d1209a9e199d08b0522dd489d54`  
		Last Modified: Wed, 21 Oct 2026 00:53:06 GMT  
		Size: 14.1 KB (14055 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:ec2cf1c88e170f6b3947b216da61fe19ac22538cb5c42433684bbb01851b897b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62886748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce58dc937206893a0cd3b0643cd7f6f6aa960410ac7ff010a5b91a827c05115`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:44:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:44:38 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:44:39 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 28 Oct 2026 01:44:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7672c9acd98a1e06add035e6ee3e653a507f7b7f4b4765eff34df030dfbe09c5`  
		Last Modified: Wed, 28 Oct 2026 00:10:35 GMT  
		Size: 50.9 MB (50935447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51e69ee716f6d06a0cb0be94951007b321d515d3ed02541804e183350f8a167`  
		Last Modified: Wed, 28 Oct 2026 01:44:51 GMT  
		Size: 11.9 MB (11857949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a8c94cdb1e903cda8e80073261dcadb7b4ba4978e8e7ed3a5d338a6e4d0936`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64aa0b9e90a12e5e472e32301417f235d8cb1b0570a72b7c7dec7fbb762691b3`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cfe2a11709f7fc6413fa303f287195b80e279c929834bfce292c8b304e0a4f`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 90.4 KB (90446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d1377ace4d2451c57e38bff10c91179f3d28271b51dabda16c95b30a1226a735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3594334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f03ff9f00ea5ed70a4cc9b44cf611e5716e0157e66d1c785ee1b242c062ded`

```dockerfile
```

-	Layers:
	-	`sha256:a5065d3818e213a9e87d6f90889373890fb9706ac440661ed78b0d6e7986df1d`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 3.6 MB (3580430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b324e565b6ef3e2786c0bf0278188d5e55b06b887c2a7575007f570bfec816ef`  
		Last Modified: Wed, 28 Oct 2026 01:44:50 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json
