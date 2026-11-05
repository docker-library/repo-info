## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:86a364fc51911d8de196a34cd8f2c309eca59d7b9c465cb688ab9f9c188f8d3d
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
$ docker pull neurodebian@sha256:8b16b97d0fe07a49da64c7b03251836691c87b86aa681c80a00ead6a2c2cd4d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61599951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcdca3ac9def4c48454df562ff25538c4cbcf4886963d69a88748d0b576b3dd2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:41:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:20 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21169b5281f1487dd82e67bd2d1cd8afda5ffa302731a007826833bceca16b95`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 11.7 MB (11668953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21d7a159575c112a649e8cd9029b757daf997ec8c74c172d87d0ba55da67a7a`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114401bff60970471e2c067cfb8e3404c6756902605f5fed34138898c2f64b3e`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32b2b8513a722620100f8a483c9a51cb2777e2ae216082b2daa79d51f66944d`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 90.1 KB (90129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12834aa2058b227d8c1fbe40d7f9a2d99fa7a3419936f2fb7d8121a63d5d44a`  
		Last Modified: Thu, 05 Nov 2026 07:41:28 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:304727bdbe6228bdb8eb8172a2e5c86fb48affc8e2051e52518ffe58de5615ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3598575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4926db0ecac020c1489ee050119d3898eedd31d97462d1c3622a7f6dcb634497`

```dockerfile
```

-	Layers:
	-	`sha256:3dc5e6af55707809d421534f7d13341be07ee9caf0556bf8d0e2b13917e999ba`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 3.6 MB (3582616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88c540fc1c540311dffd18e3c76d4302d4b831957ff1d8f4d49c3dcc4e6c3e5c`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:6621c413ceddade54be7c8df7ea39841e3a0785f82472cf22ff926ea59853b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60456124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281096feaea9581816418d98368b0625f421c8518193911cc7c8e7e0bc03d744`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:45:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:14 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:14 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:17 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7d1de40788a2a135f40e25c55ed5e8f0f419048798e01ae3d978966ff54ab1`  
		Last Modified: Thu, 05 Nov 2026 07:45:26 GMT  
		Size: 11.2 MB (11181910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622da755998a2cfd15b77a874b15e410bbbc5664891646499597e1c8eda7121a`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0882aef170b4bca958fca8579f486d1c49962a9b7fce597c71a82a9da79fc7b`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54784c9c3b700e4863c161b580922447e1b1b0670fbfad0d638a564a349a3a23`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 90.6 KB (90624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d857ef1b52800b766cdebf4ee736ca8e7c6b56d6003f7d18fd1d2960b35e4918`  
		Last Modified: Thu, 05 Nov 2026 07:45:26 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d9d16840493bf6a15cd91f5dcacbf6cae96043bc111e23163b4f6d50b3f42461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00222af746d15ebb8b4c931b4c02f7abea7be2c82329f375200b873f17f49725`

```dockerfile
```

-	Layers:
	-	`sha256:d029e8b64737267a5d1c23f2f5c0c0fa7610953eb9ccbf3805acef0c7ca15b47`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 3.6 MB (3586100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ccbc691b301c565be21afbeca0c6315d63a71a78cb283e18017e7043a34887d`  
		Last Modified: Thu, 05 Nov 2026 07:45:25 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:66a90b3865b5db0048bfdb6fb4d1d807dff5523c827773f47330c7c2ce2f0195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62922351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60719530f446f4455b7d07b35ecdd3f7a4e2ebe0889d7624f3e5509af4c81278`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:37 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:37 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:37 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:42:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:41 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:88279104588a0d5efe47acaa871a7b60ac245f575d2fd177222855c5f58e2e1c`  
		Last Modified: Thu, 05 Nov 2026 06:16:02 GMT  
		Size: 51.0 MB (50970700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f19baa15d41000f5e008e29c3d072266644f0c955680016631509838745d7b6`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 11.9 MB (11857877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cee484e2d6bc0be402dbb7fdb6594e28b7b7611363d9d0dae579dbb2b8bd45`  
		Last Modified: Thu, 05 Nov 2026 07:42:48 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ac8188e5aff4a0c77b341d86bc534963fc94fab23c305c80e6cb42b1bf5cf6`  
		Last Modified: Thu, 05 Nov 2026 07:42:48 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17b0ff1451d7b398b7e996cbe64466138ddf81f3735c8235c99d2b797fa4ac9`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 90.4 KB (90420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff681eaa2c4703191f5260889ffc83bb46b80657078271c82850aa3371ee0ac6`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 451.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:3b50d648b88becb2f8216b421b5d898dd8195de5f82152a4a58179c22e6f7624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3596395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:494a78f3e30058cc72cf80446639f101bcc009943c3497a2c5995e1f04db7170`

```dockerfile
```

-	Layers:
	-	`sha256:2d091363622ce768d60f2645bee186ce01cdbe52ae1d6652cded4807c0ff4aef`  
		Last Modified: Thu, 05 Nov 2026 07:42:49 GMT  
		Size: 3.6 MB (3580466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1131e44b36ad5ea393c8081496c8a6e6b38bf9262c3fd6a1e714fdb5af3666f`  
		Last Modified: Thu, 05 Nov 2026 07:42:48 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json
