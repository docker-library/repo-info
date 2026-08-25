## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:34a6c5311b4b1d02e1bab0145facda94e4352999b5fc83de7683e2aae0d89c9e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid-non-free` - linux; amd64

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

### `neurodebian:sid-non-free` - unknown; unknown

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

### `neurodebian:sid-non-free` - linux; arm64 variant v8

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

### `neurodebian:sid-non-free` - unknown; unknown

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

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:fe60b20ca095dda236b920134d734907392172b5dd41e2c41912ac86a109970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62513117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9503a032ac6b804cb08e9dd55387ce5d35a5f7caa9f8a14c7862443b6a8ed890`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:49:41 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:46 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39eddf4229305dc6c3498743cbbb5e68bf7fbb516f0f84881016258abb1a7445`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 11.7 MB (11717094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b96cf8a4b5cfcff36eedeb03ddfa55e374cd08be0769f5d989875aedccc5629`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2f1ff8fbab6120b5f36cfa66fcc2c5722a826f6d16980473da2469f59ae1fd`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda6ee3a1393b24dcf2bce18232647935d8d443a15467daa3ebfa4a3c24fe834`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 90.2 KB (90224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b4ae6b30509f4045a31e4afb3050919e54492a48ef3ac74e49846022817140`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5ffa1f8b2d0d26f1dd1735a891a4c06310763ac617a84e0ca48c5a01ae87b7dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d001c1dae08f7909ef729ad1fe824748a9c848819b400d3372da83f3459420b`

```dockerfile
```

-	Layers:
	-	`sha256:195fd32f7dc6f306210c13084e1ea04ca48fff56d8c30ebf393de3e97f32b0a8`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 3.6 MB (3600752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18828331a6cac198b6d5bdd2afbf27c5b12db9beb1fada7d7653272a4ac3073`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 15.9 KB (15900 bytes)  
		MIME: application/vnd.in-toto+json
