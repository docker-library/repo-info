## `neurodebian:forky`

```console
$ docker pull neurodebian@sha256:6b364551e5d85fb9c57a4311a288d777b88afd6d031bc6634e22d7b33f19eb78
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
$ docker pull neurodebian@sha256:500b75e6da54fff3f3c74010c35a1f2459df9942bb1dc7414e61cbdfbfac59a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61599575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cf0096a348d5306c353f8fd1c4101cea4fccf45d1452356895b7283fc56b8c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:41:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e27120031fdd696b2bee68d4a31e12e7c2066f717f24ccb86a96eaf107e0d7`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 11.7 MB (11668979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b19f6cfa328c68b367218e95caefccf2a9d02951dddabe212e15eb0ae29e57b`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36027519c438067e7bc6002f189d9675d0dcd53f82a880012b48cd09ca5795a7`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b40298f4535984a61f8cbf1000a476f5e98858ee7c6b3060cb56fb67c8149e`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 90.2 KB (90177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:fc268c06a2553d0273e3a2cdda74144f588c87c61fed89fbde4b4379015b81fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abdf14e98372e98698c9a615492104c4cb43f545ce36fa5e496fec9a5ab0ad90`

```dockerfile
```

-	Layers:
	-	`sha256:210edaccb6954489315a22f8d42263cc17acb8db4ad1e0e5c89afcbc2371bd19`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 3.6 MB (3582580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3a2811e4d5f2e43b13a9f25c427e8233638b54cd8475b9e3ab2a60e278c43bc`  
		Last Modified: Thu, 05 Nov 2026 07:41:21 GMT  
		Size: 13.9 KB (13932 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8be7b0b15a7032b86155c1068d73530cae59b724bfde284191688a5426e27f56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60455789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bad94e8b0ec77f3d3e72a8a8d172e724e1a6a02f3fed2a092f737dea179006`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:45:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b43532f8491089efbdc4c387ab625de2f2a0c44e4fff4388306eeec17e395f`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 11.2 MB (11182012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427e44b21a28ae55358ba61d7c25e5d1daa7c002e5bb59c1b2b41653ddaf7def`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f71b24452832b265aa826f683416e8dcd21698e764e904ec01304676a990d43`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f9cdb154517230e22d231e5f8123e16b4b4251a72563665a80236b07ce6335`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 90.6 KB (90633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:74a33cfd5348421b43fb3b7429680b55f0f6d78d8b8623c74077188a7b696a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3600120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9a7a52788932e6c7b221dbceab009fc7e841e6f4a6bb857b75ff68502a846c`

```dockerfile
```

-	Layers:
	-	`sha256:0119b3d8c61288417530a0f428c0c4fe3881a31705907d9f53bcb5994903791d`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 3.6 MB (3586064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b358ac7a0771f6ca7f277074fbf004d0463f00459168f2abf3f7a295e9d1d29`  
		Last Modified: Thu, 05 Nov 2026 07:45:21 GMT  
		Size: 14.1 KB (14056 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:forky` - linux; 386

```console
$ docker pull neurodebian@sha256:a9a391aacf5ab7b7f2e6537ec04865947f199b5cf297c6aba6129b7a2f6bd08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62921930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34378f6f46411fda56f678a55c428e0ba9e70d4f2241a579dbc44fc7aa14fff4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:35 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:88279104588a0d5efe47acaa871a7b60ac245f575d2fd177222855c5f58e2e1c`  
		Last Modified: Thu, 05 Nov 2026 06:16:02 GMT  
		Size: 51.0 MB (50970700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8412af36a95e376639e916feb502fa1744ea99ff1af2614e29d951297b463d0`  
		Last Modified: Thu, 05 Nov 2026 07:42:46 GMT  
		Size: 11.9 MB (11857914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a9541c48b96b7729bd67d59b20993e24c0b36f2410d3b35762fe9bd72a5718`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fae6a2cf9bc848ec27add8fba31532e020dd7a2c3ecac6245c27891088bc9e6`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d297360a55ff9dcfedcafd053d05afab77c25ed97c15aa76f5305e34b029cd`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 90.4 KB (90410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9ebfb4a0904aa8ba53122dd444b2547585c9a377682284f0b96f293e1f29eadb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3594334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a75617d41fe3ce3dcec333108d4269721af56468ca407e7c1f7b40ebcf7494d`

```dockerfile
```

-	Layers:
	-	`sha256:a26bad8b324440788cdfed0f67b73173e122f751f479094c24f022f5f57ee9b4`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 3.6 MB (3580430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15b30ff4f647717dc7600ff3e2ea6c720dcee2b0742ef62e3ddaa5d6827e9613`  
		Last Modified: Thu, 05 Nov 2026 07:42:45 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json
