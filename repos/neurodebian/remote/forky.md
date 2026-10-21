## `neurodebian:forky`

```console
$ docker pull neurodebian@sha256:82515b42b5631e65dff12739787c3ceb810ccf2b392a3be5b31962b330a06123
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
$ docker pull neurodebian@sha256:393b65879c117d16bd8fdc7d7d196a99367fce792bf4a030513e3ec0618fcdde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61576296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6746a75ef08b03dc75ec533d56f89b6aaf73950de838b39d81c6c6c08b00035`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:49:42 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:43 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:49:43 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:49:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2fe4b6091574b3f1b29a730c59818868b10f42ed61e8c86f51e916f6230cfed6`  
		Last Modified: Tue, 20 Oct 2026 23:30:29 GMT  
		Size: 49.8 MB (49814335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec41b9db184675f2889eb06503fc2100ab2816818ba5aeb2172937d9ecb712d`  
		Last Modified: Wed, 21 Oct 2026 00:49:55 GMT  
		Size: 11.7 MB (11668940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aeb4ca42073afc73f2fb62587e81e71c8525f0522faec99722112d8abc9ab15`  
		Last Modified: Wed, 21 Oct 2026 00:49:55 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414eccb738c21feeb23490811ddbdbebddff182c77101b012dfd5da6b5d5c41d`  
		Last Modified: Wed, 21 Oct 2026 00:49:55 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff1cf6ab32fa6281c147a00502db667e21a7b9464c6e23fc59d9a868507066e`  
		Last Modified: Wed, 21 Oct 2026 00:49:55 GMT  
		Size: 90.1 KB (90115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c50136260f82435883fbebc8a65807dc7d8d5195475e10f154794992b0bc6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3594887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5228bfe2a72eac97ddec050fe3f4c324bbb21b71975da94547730f4479379d80`

```dockerfile
```

-	Layers:
	-	`sha256:a7ca79ffc07bd4a4497bd5ed202c845b71328a8ef0a506771a7ef3d3520e1f6f`  
		Last Modified: Wed, 21 Oct 2026 00:49:55 GMT  
		Size: 3.6 MB (3580955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afce4336d620b4d3a49839c2b9a3f958e874ec379d570b94b609da993d72bd00`  
		Last Modified: Wed, 21 Oct 2026 00:49:55 GMT  
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
$ docker pull neurodebian@sha256:1f37c3b97d5f11b9ea395961a6156b309d5c70862ce59c318b0e9549b7d4b7b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62885546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5607acc831b2e3808f8bc9e70ac772e0b4856a400f3a13000c4bb4e141b156ad`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:49:49 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:49:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:49:50 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 21 Oct 2026 00:49:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a82d12bb7ac6591825acca7b46cb1bf53a45a71b72bdafbeffec867fb8981dad`  
		Last Modified: Tue, 20 Oct 2026 23:30:34 GMT  
		Size: 50.9 MB (50934347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329ba4b7ef802f72205d9dfd8aaf32afd85e3e85f7b9a1f6081199724375be10`  
		Last Modified: Wed, 21 Oct 2026 00:50:01 GMT  
		Size: 11.9 MB (11857837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae1c942a7c721fb21c428b9f6cfbe336373d17d635e770a5f33eeeb524b5e59`  
		Last Modified: Wed, 21 Oct 2026 00:50:01 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb2884f0ad25838f2f8cd930d9eeb1ec5d7b27a7e72dbed437a9d2c49679dcf`  
		Last Modified: Wed, 21 Oct 2026 00:50:01 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c581154726d3d58a157dd31cb0669f7c9dffe593f0fb85fa15d88bc5aaf902`  
		Last Modified: Wed, 21 Oct 2026 00:50:01 GMT  
		Size: 90.5 KB (90459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:forky` - unknown; unknown

```console
$ docker pull neurodebian@sha256:e5b376cc74abca0b937a122d05f26db716da24e2083f85d7ea2974810da64924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3592711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:723f6de558b0fc02272b7b728c24521ffa6fae104a1af3b9b75023fa1b31298d`

```dockerfile
```

-	Layers:
	-	`sha256:77b3cc9fe4b7ba727a9a4233eb53f878151bff668631343cef7b2f67c790d7ce`  
		Last Modified: Wed, 21 Oct 2026 00:50:01 GMT  
		Size: 3.6 MB (3578807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28c58440fd2972b1c983b1a15aaa5fa3bc4a5edcbfb2149a87ed288341fccd6a`  
		Last Modified: Wed, 21 Oct 2026 00:50:01 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json
