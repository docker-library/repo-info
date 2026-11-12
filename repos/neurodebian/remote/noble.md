## `neurodebian:noble`

```console
$ docker pull neurodebian@sha256:fa79436f9dc29a5a7fe50e1028efb9aacce5c3d76dd358b5eb1f662f1dbeb4a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble` - linux; amd64

```console
$ docker pull neurodebian@sha256:b23c5fe82a3264d4f6b8f5de5048bf82fd55b757095b9c5a17ec56bb493ab992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33467044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964ba745706ea0eaea2c685796f82ed0e848e8a2a132423c5139050c66b94cb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:31:03 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:31:04 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:31:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fc332cf245e97491321aba77242d8fee8ea9a0a434fe4bbd9653df3c0ae153`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 3.6 MB (3565897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b28d1c04d11c90098340b90785fccc7e9c57105b2d576102f405c94375a208`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c185845ceecc718268978adcd7ef7090b873a6d4f6d9b59e3258d75f760f599e`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb426fe23f2bd154dbd6c18bc35088367e24398cfd234d83396929dc1c02af33`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 105.0 KB (105011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5c4c77cd5870ac365f5f51016cc231c1b3aa35740db4b4ace9e82cf2d9616f1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df0ff7c42f06f6444a3fd39a39571e9dcfac2ebf76408c9eb14083769570c41`

```dockerfile
```

-	Layers:
	-	`sha256:bb0cb0bf0551842555fb1dd18f32b36e4aab84b2ee76a420d059f58f0cbf7a49`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 2.1 MB (2121567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31d60ee1ddc2a7aab6102cbfd0a8f63d98859e81e94cb2dacba994f0e17786f2`  
		Last Modified: Wed, 11 Nov 2026 23:31:14 GMT  
		Size: 13.9 KB (13933 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:70cec667acc6fda8d78d5ba4d91c6a56ca6e0ce65cd2fb5976e74381e95d5a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32638369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ae2b17d635d0418f1027e5b0c807d6594eee75e3177e8f37307d96535e8ca5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:35:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:35:00 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 11 Nov 2026 23:35:01 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 11 Nov 2026 23:35:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b24e332838dbe0512b5f9042998e67630ba0665976d5a74ed8674f85794cc08`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 3.6 MB (3564294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af81a4d61051ac49d9ae1bd8936c1dd4eba0f8ab13d43d97fb2aaaa493944cd`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60b8248e22f036cbc80c16f0267bfc2f0cdef39f8d30c7e1bc1907cc0646ad8`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74db6a7139c4d64fef915b74d884a291f5cb50550cd95b97d8b749496c53def`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 105.9 KB (105906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble` - unknown; unknown

```console
$ docker pull neurodebian@sha256:27932932eb303b531f4a3efb7f01ca62c9f1300badd13f44e9f0ec553947637a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38ce9c5a8104fdb02fbe133bae29784b1e4431e8d981c40a68b6b1f634376f1`

```dockerfile
```

-	Layers:
	-	`sha256:b1c0ebb0cc791be0ed86ca12afb41c3d910e60e0eacac64cad216669f014ca02`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 2.1 MB (2122612 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f34dc636b1bc6fb8773097f5f9e745324b58f40c854dca561c73360517ab14c5`  
		Last Modified: Wed, 11 Nov 2026 23:35:11 GMT  
		Size: 14.1 KB (14058 bytes)  
		MIME: application/vnd.in-toto+json
