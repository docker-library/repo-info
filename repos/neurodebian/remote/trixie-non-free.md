## `neurodebian:trixie-non-free`

```console
$ docker pull neurodebian@sha256:bba26853d2568348e9058c28c40d55f21fba500b179719db00403079c44e5809
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:trixie-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8dd2ae1a8cffe9e5b288a3cd84d1d8b83524cd3d4af7f361665754d606af852f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59700608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c38f43b3b322ee576b210ba9c44ed33e58c989c172835ed4f8ce873296912a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:04 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0ab18ad126921d91f75d35cfcc8dd98768e6f37e61a9727de38c965b4d0897`  
		Last Modified: Tue, 14 Jul 2026 01:47:11 GMT  
		Size: 10.3 MB (10294213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67495945cfe5641c8963a924b0486c89117ead2c92a1062ac7186904d468f49`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f594d741ce2ffe3b50daf8fe99e7108ebb41e744af5f3e4d4b2a2aedd9edb8`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43012dc4989f9a71f02611693085a11ecc3e06ecee2f9efb158c4bcb6f5ad379`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 90.5 KB (90472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91cd8ece144717e9e101d28839754579b1a4dced6933b2aab3dc1a78d33acb7`  
		Last Modified: Tue, 14 Jul 2026 01:47:11 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1a848746553a0f87ec9978b8101745e6dd17f3658bbeb1000afba793dada963b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3630540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179f1578040b38c18d415b0e16c4d472f8f8059be7b701ec8b53977b22418f94`

```dockerfile
```

-	Layers:
	-	`sha256:f4f5638398829d20a38af25aa040d5acae8ddc2195e9ec05807fe3fbb3931454`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 3.6 MB (3614258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27a2846fd49514193a79108e7bd3723f6293f131f60350e0fd118ac2eca12e8b`  
		Last Modified: Tue, 14 Jul 2026 01:47:10 GMT  
		Size: 16.3 KB (16282 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:6e258759d23744b45b9c765a784652054cc68ef382a845326466f3b54821d510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59847444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45d1cfd95676f538b33ae52e83e6db9ccf327a47f2256162edd3a194c62f427`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:31 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af72c6e43d291c85ea8488f2ef44f514bbe9ce9a2a60fcbbf58b229c50951ed5`  
		Last Modified: Tue, 14 Jul 2026 01:50:43 GMT  
		Size: 10.1 MB (10078849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c85b3dfc2482a89b3cc99f2a7878b51a39aa1b7b6114bcb295d38649c11e0e`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedae1662f9dc59e7cd4cafff9f8f9aa93b6b205b4a8c8e5f508746071a9c636`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa19e2a2f3da9fac55d231af2287a2ca381109efc3a8a63deae38cdc813264`  
		Last Modified: Tue, 14 Jul 2026 01:50:43 GMT  
		Size: 91.1 KB (91064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec66613bc05f0b39d33b3dae81ed39163d2b323f7546d598caefa20d4b4d7ed`  
		Last Modified: Tue, 14 Jul 2026 01:50:44 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:480db0662ce442e910d74c1b13d32766f0d90cce7cd552e57fd98c058561f13b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534d4a6a223ce823679f1a7131804a9a30b970ffa64d96b3fa6cbb570f1adc79`

```dockerfile
```

-	Layers:
	-	`sha256:f0e4b61c1d78c963bfb4cf676cebd03349cc4f2a06ca311b22204abbf50d5c1d`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 3.6 MB (3615148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a47a3262302879413375173ddb127cfb60dc33a4a2f81ad9ddeccd8f6adc29c`  
		Last Modified: Tue, 14 Jul 2026 01:50:42 GMT  
		Size: 16.4 KB (16434 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:trixie-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:38f4b4c65ef397ea6aacf3288d2e24d2e8a766ca2bac69eb45e9accc071616fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61393689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238df2a59a1e76b9be73243cb8bb858d8a66c3c2ccfbdd46bf7506b77d652012`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:27 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:31 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db44c9213402e31f29756c3ed53ff6b7be23254571414a92f761c652e76aaba`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 10.5 MB (10468082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c8689680d0d7a4c6553397bdecad441fdd5f955999fae1d4cabc550dc27c7b`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c34942cd0041b2efec4ef216a7786d94e87bb54e1978c1fd44cb202f258f67e`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06fe7080e545760e2da0880d9b11214cff22dd3639d1654e6fa7a483ebeb7a0`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 90.8 KB (90769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3147279df8712b31ee3656b24d87785d28892863bde6a87d2c6c2510f7ec02eb`  
		Last Modified: Tue, 14 Jul 2026 01:49:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:trixie-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2969ccae600758d98bfe47b7cb24e98e0b4a9ead8a1124f12c20e03d0f8fa89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ef32753cb41de2e5fbc87138e50d901a2c8109d66a40fae210dbe8e52ef2f2`

```dockerfile
```

-	Layers:
	-	`sha256:5285469ad2f9fc6bd50bf20ae080fcd1ec084419896210c4c3853c998bb92a27`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 3.6 MB (3612206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fc7085afc18961454ff1a3b9fbf484db2ea87f98df22f1a4b7451d3b7c03b5b`  
		Last Modified: Tue, 14 Jul 2026 01:49:39 GMT  
		Size: 16.2 KB (16246 bytes)  
		MIME: application/vnd.in-toto+json
