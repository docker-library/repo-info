## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:a1d964fe4f69fec4b6153fe4dee56ef78e967713ecea84ae032b36b185dd3971
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
$ docker pull neurodebian@sha256:28b3bcc71ae70f4a5fc6f65aee15d1817ebac8f11469e88125ca8acf8b8b7c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61544953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b5b4921b866e155ef7ac5bd9026883983e0b166655d8af3217ae020ae03b86`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:55:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:55:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:55:05 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:55:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:55:09 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:f16f5a97d51498e5eccf3dd3e5e6ca2746febdb9dc2913a353263b85031a5c09`  
		Last Modified: Mon, 24 Aug 2026 23:20:40 GMT  
		Size: 49.8 MB (49841754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c186af471100f13a8ab5207c0b3e4fc44b0c93975c4ff468187425b9d9dbb3`  
		Last Modified: Tue, 25 Aug 2026 00:55:17 GMT  
		Size: 11.6 MB (11609790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4f890879362abb16ab8d0acba340632615f7669c21c6d025d8142628f74d27`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354d868b45b86de340c31ab52667967a25816d15f01f672c9b8cca7f61b5abf7`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80d760783c8f907062f9d5a7f7cb7f0fa23523b902b7119198d8be01925be00`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 90.1 KB (90085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33b72176c3f5378e62d5fe6184e9f8d7763e13fdc054227901449ef9fa9c7e3`  
		Last Modified: Tue, 25 Aug 2026 00:55:17 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ea1abe7f38f669d7616fa9394a7ae25011aa547cf244aefe893fae027d357c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf2c490fe4934e7ac90a948aeafd55f2c554514a34d0b3c35d0e2bc168f7285`

```dockerfile
```

-	Layers:
	-	`sha256:eed627add6390ec514da310551acbb2afaca7c70f2fa71fb5126d5f7792f1270`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 3.6 MB (3605956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0db967fe0026be04d988906ba56b8e808612eb88a85b428f323443a89b0386a6`  
		Last Modified: Tue, 25 Aug 2026 00:55:16 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:b788befdfdb7b29bd6ed30a2e334c67298666b2410ec032969f85ca5ac33757f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60753400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5801edf86b317c127775ea83987e51ee130b78334ef8d7217d1914986f88c74`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:57:06 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:57:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:57:10 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:af77545e1040c204ae857564446e939a826968bdb50dffaaaaeb4179e7b846d3`  
		Last Modified: Mon, 24 Aug 2026 23:20:32 GMT  
		Size: 49.5 MB (49493769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e266dd9e6c6d06fe75210f4fc731c23df1102a2d8b0784098f518ece6db334`  
		Last Modified: Tue, 25 Aug 2026 00:57:19 GMT  
		Size: 11.2 MB (11165697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2646b2dc6eee765d273e31aa9a0fc7308dad8f07b2590ce0669dc3bcb0f413`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3570fa9af3d2d7da40505a9a55ec5616165fc1d63115b3779926291a272010`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdb98edd6cc4d22b65f3cd3293691759f2fd3145430f8834f6e54a26a8d5ce0`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 90.6 KB (90612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3bac78a665db68371d34871abd1cc4c85230d206b84eaef6080bcee1939479`  
		Last Modified: Tue, 25 Aug 2026 00:57:19 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8da7fd3a4cc7cb18431a58376c5cdacabe0b55b29f0e7cf06db408466323e83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f305d444c7d000d35d55622ecb1c1887d362019e58231ab5b3d7fb82596ac20`

```dockerfile
```

-	Layers:
	-	`sha256:66b73b651c06db393829c3472081927473b7527ae73592d690a86f05ab6ba8c9`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 3.6 MB (3610078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90ccb5fcba62b8fdade65bee53f0e7ab15fa11d00a548c3f65ef5ff69903b500`  
		Last Modified: Tue, 25 Aug 2026 00:57:18 GMT  
		Size: 16.1 KB (16070 bytes)  
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
