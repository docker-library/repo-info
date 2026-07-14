## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:4127db4a28824047f2f46e17f0feffd2376e6e9dcb7ff57db69689dda5ee936b
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
$ docker pull neurodebian@sha256:37cf710cd62a340f23262bc0a341be1c932b52f187f54e21edc4c61e1d210726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60436945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23040e44a1a08a0e261ae6c0f779fcc20db8f2fbc448ba27717f77b7ff1e404`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:27 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91982b10edc630f7e808f915cfc15d51d1e0cad084aa1f3a49ca6b015b78c7c5`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 11.5 MB (11479642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35ff64bef9d2e3cac1ecac403283ed88a168b39c492a94640af6f8223dafab5`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d8f674de13f57dbadb2b6165dfa8b70eca13f8eff036950162321ae22ff167`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc5a8db4ccd991e9cf9d1c100cf6c65350c9f26cf82560e87b6e4c92b1cde25`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 90.0 KB (89950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6021371c1f35748d891e95928dd444f84b97dec0dd79f2d8999fe536708c548`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:45ad6d1ffac84bbdc88c2c0bcaa5f0175dcf9b3c4df4e9d3691a572d50ce3982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3571520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e4f839ce4bbca3c790dc5a47b37cc3ba52c5c50224e31bbc8e9c45f07fedda`

```dockerfile
```

-	Layers:
	-	`sha256:5b4490500f01980e51635872e38a131f421854e588644ab05283ab271ecc8630`  
		Last Modified: Tue, 14 Jul 2026 01:47:37 GMT  
		Size: 3.6 MB (3555589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44c584572e84abeafb99d0ec2ffeaa013b0badc96233cf1717b95df0a6b1b4e8`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:70794004389583f129e3c72e45ec2864c2ab2a2c178bf2af9d4a43c58240cb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60145428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54197c204305565b3a91c9a5b932f76aa26b68c1ffaae2b44a6fffd59a493fd1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:50:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:55 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:55 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:59 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:4480ca4037883605321976814af29e4ba8cd9d2dca0746762a317c319bc395ed`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48880319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278f2392984e5d0d879a6000b9eff1af77d3b56529a8f05d21642b211cd32212`  
		Last Modified: Tue, 14 Jul 2026 01:51:08 GMT  
		Size: 11.2 MB (11171222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e09cc93e799afcc572501c3046d75e89007c4b5ab7c16d0f4146c0e709a64c8`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5acc31381253b04a05e03b30e92fad74fbbe02ead4480c21228503517bd72a4`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d701755c0848ad308188fc894c14802e4e8d9cd3c249bc7566761ce9f7427e8`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 90.6 KB (90569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:371aa45fa0336f4fbcc64ca879a4c8ad734102a5f2c7299333351c1302d7f207`  
		Last Modified: Tue, 14 Jul 2026 01:51:08 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:1323ff6ffc4a18102918b2dae9cf98820b3cc1cd033585137b278fea5165b968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3576365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83d7f0868ade6c08dee43acde297f2d8d6c4fd33f2f4be7c9b9ec6275fae3ed`

```dockerfile
```

-	Layers:
	-	`sha256:7410dd5e4385dcbb33b73f7c1309fb633a48a8a3d13b465d64d32bd695a6cd74`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 3.6 MB (3560294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9ec371e60c307236c74c5325af0936e469d0c6153d0bc5007fa73a57f5de7bf`  
		Last Modified: Tue, 14 Jul 2026 01:51:07 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:3f4c53b96c66b6fdbacb262088c28ea10935a683b0b520736e85555ddddcc6c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61992017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f54a5cbd131a49f0d8d225acd46e657802600eba2ff8b756463d4dc25d1722`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:49:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:50 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:80f34b6bdaadd9ae002625a28e22722e313c4ac7d32fe7fa3a8ef3a66ae7b362`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 50.2 MB (50191201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb0a8820e87035c5c6fe37b489eef3f619a61a88f99b309e69d9fd7c8939ef2`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 11.7 MB (11707262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f051ec6bd6ab1255b74f17bac6b4afaaa8cbf6d52ed32331dec6006e5f76f397`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 2.6 KB (2631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4853159577408e363f7faeb3217a3cb86c08797ba594cd5ad7005484bc9895a`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0783960df29aa2496b0efdd82a539fdabbe1d62506788e95abc89e13c1f2e9`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 90.2 KB (90237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85ef0a95de8575e11f57df93b118fd806393843dc381eb30f3760af9c434eaa`  
		Last Modified: Tue, 14 Jul 2026 01:49:59 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:fbc3db2e65a941aa08dfe84a5eddc316c99a817ae57e0cb33d4fed855dc550b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3569449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85180309e3588bb5e996614f5ae0493b13f79d23a4eb9e50ec75a2e2a58553e`

```dockerfile
```

-	Layers:
	-	`sha256:6844e30618387ef3ec7f51e88e1477a4743ea362d4715d99053bc834366cdb4b`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 3.6 MB (3553548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11bc097fa9a2848a5f200a3c9b4f896ed6b57fdbc00c43879a4a2aa3136f1746`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
