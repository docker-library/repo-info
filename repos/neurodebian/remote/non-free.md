## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:8a622c9cea60ba3d7c9873469df5ff7521c6a8a347d7ff85df55524144eb3a8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:10d39dfd2c2d705e1a8aa4dbb9e55b424b97d0893855fb8089c4b09cc893f99d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59800479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d1c76e38a87c68d37908dd2330a01d41a6f277988c23036309f9413d9336af`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacf74772e373283c0de668e6c9a6ce083676a377322b052c4a9fbb1e00767bf`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 10.3 MB (10294220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ae512859af9cde93529684f341682a021dd5a50bcfce06d8e39a963b71815f`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c14ab3b6ff237423c683d819517d15c7d89ad8431e7ca5dfacb3fdb4dc75c0`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7677ca1bcafc0c3a4dd34ab157b0e23254ff158d81d6c9d59b39f91a03dce973`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 90.4 KB (90392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6b3df2ef0be2360f482d57be6d9fb789f9247196d6b0ff0127e85785b877c7`  
		Last Modified: Thu, 05 Nov 2026 07:41:18 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c7ffcf0daebbf1b5676e250e3656ef89d08e2eecf671e146f030e06169a0ee95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78eb55dae8ff2e42be26127af33a672520a1315b27d91293ea5aa21a19817ad4`

```dockerfile
```

-	Layers:
	-	`sha256:14dd139342fce0cc425c9e586abeef1a84aad823d8818e30bc75bfd9984bc953`  
		Last Modified: Thu, 05 Nov 2026 07:41:17 GMT  
		Size: 3.6 MB (3624143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e58d119a4855bf617e45512540d9b29b138cd9f08a6ac5cc00c44d4866bc431`  
		Last Modified: Thu, 05 Nov 2026 07:41:16 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:8d1c3a55ede04d2ca56939574c804584dcdbf331977ffef80c6c07d2c56f887b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59952006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31814fa1ea4c0f1502fc33635a3d32d0d0a7a2f19d966ce16d2d78b26c716c08`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:44:58 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:44:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:44:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:03 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7f4d250b413c8cb6a70e22e45b0b2685f8f6d199a9c0b82e129744dddee263`  
		Last Modified: Thu, 05 Nov 2026 07:45:12 GMT  
		Size: 10.1 MB (10078987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3cdbfa02ec7886e08771d38b3ee71e601ce16b772372eec47438cc6d0b7404`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 2.6 KB (2634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beeb468dcf86be2ccfe3b4006722d966e2b9187637293bc4b4e3d0a64da8d8a1`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f03a1cc770dadb27746e045e1bf76d4669417159a4f51cdff559e7fc370122d`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 91.1 KB (91060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee534c3796319f41660d28d1440a0a60602e75ceac6273f48b8da15bf41302e`  
		Last Modified: Thu, 05 Nov 2026 07:45:12 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d0aa89080f4a075a903b1bac61d071d0e9ff3881e7d8fb12cf055ad690167a01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3641467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efb01f732ebb42bd9244c87175990617b9334468968d9122dfa4366ab47e89a`

```dockerfile
```

-	Layers:
	-	`sha256:5961615c6c69e16a4cecd459f8df2734c1d8753cfe9dea6478707e6538982870`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 3.6 MB (3625033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca426aa195bdaf7217bf3e8c2e481b88a1de20c834246b995fbe0de431d7fbd0`  
		Last Modified: Thu, 05 Nov 2026 07:45:11 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:d1b90b16f1617d1d8c4453cc6a1fe92f966dd6237b49201f9f570002ac991a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61482881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7edb80a22d9973f7fa62283da2226d3963e1ef6e72f9991a8e2df5cad08141`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:10 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:11 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:15 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a94b6eef129ec71482d004fe90eeb924b7c7179e568f66e277cd049e6ce2023`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 10.5 MB (10468173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86f1a4d9fef56cd749a79f1556eb2230480913f31dab321d0928e936f213d70`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf3dde23270058fdfff784287ff2b5f86d8aacbd5e77151dfb1036bea84dab5`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d924b626f6aa4a3a900d1b3f6137f8f79ce1f30c73991f3091ce0dec912d52`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 90.8 KB (90781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13934fba82d1111daeffc1774e779856e2a64d52dcf85b9f3ea2956447100186`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f507390408b83f634b60180373d82f15b1fd7af423caf5c82be1ec434b1b6a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19496ed246b831ad538613100d4f8596ced10bdbcc8609562f1c6f48b0082775`

```dockerfile
```

-	Layers:
	-	`sha256:1c3e850d19133677754062e9c3f9e3f9b0d06c89602f70373c2e28299406eb05`  
		Last Modified: Thu, 05 Nov 2026 07:42:22 GMT  
		Size: 3.6 MB (3622092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74c3b1cf805a766693cd3638ef5d23b6c124194cd18c801c4d3b695e423e2b37`  
		Last Modified: Thu, 05 Nov 2026 07:42:21 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json
