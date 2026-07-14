## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:42fcec5f62c6bbf7d83b60a3fe9b5f858e3fae6a284d1decd9e63895890d5191
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd` - linux; amd64

```console
$ docker pull neurodebian@sha256:e0f30e8305945b199f59250dd48f19187eb89aff61f70ded58f5bb0fc93c55e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60436554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6244381a0e203ea3612d8b8e36b5370ae8e8c38e151c7f1b9bd83cce53b526`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:47:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:24 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d81634c3a22f19a3b5fa4166652b5c9aae34476e13650ad7bc652f61eb796384`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 11.5 MB (11479653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965d85a1e4c52f97488303f188e9d06237012bd57df0491060acf8708cc49a03`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d8f674de13f57dbadb2b6165dfa8b70eca13f8eff036950162321ae22ff167`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dcec96dd012321b11532ab105aa3e27b6e6e411a3b6cd7933fa447377b3f1a`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 90.0 KB (89962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:b6dcfb1638dfd23580726a72650f9cef6f03afae5b21071e083656dc6e2d0b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3569456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272c68995b2bf35f711e0e5641b2beb2541111d378741df9cb696cd67130d963`

```dockerfile
```

-	Layers:
	-	`sha256:aa6794db4475742e596ca9f7ae53ef9af3437c9345c5bdef6402f51da7374307`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 3.6 MB (3555553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf477f1a04333cc042e3c813c595f222b4ea79a1f87cd21145cd4ebf1984326b`  
		Last Modified: Tue, 14 Jul 2026 01:47:36 GMT  
		Size: 13.9 KB (13903 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:621034cbd7caa731c8f762752bed24c54d0d599296e4e28c319367f1c8075790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60145064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fc2d205dcc9abfb90dff287983cdb4b16fa1bf8081ce99ee78eb39928f3586`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:50:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:47 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:47 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4480ca4037883605321976814af29e4ba8cd9d2dca0746762a317c319bc395ed`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48880319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04c1d1bc54c5c16c3486ec856efa2849631dbf2c91003ad8c035905fa5451c4`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 11.2 MB (11171258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4fe75b2ea427837b40b765f5bdfd24bf8bedb4aa9d7afa9caf3d2bda430f39`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9403142a6721d1366a03933e51860db98fdc81013924fd60b1e0c027353500f`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc54ab011b64e7232c7066456d8a98645a87b54e0221969b2049e329efc49477`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 90.6 KB (90588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5307e7c0568d1aec59d254535b52b102f50abd12216fa7651ad5f8ca54c7145c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3574286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311e17baa3341f53898f918761a061ca8d9ecb7e788bf5faae2d7502f1853ad1`

```dockerfile
```

-	Layers:
	-	`sha256:9c766e65a85759975b28fde5f58ae1838e8266e7bb01317e6009bec6871dd46a`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 3.6 MB (3560258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:395feb9ae49fdb225f390a8536f5502442554ee33ef7f10cafa6712a91d0967f`  
		Last Modified: Tue, 14 Jul 2026 01:50:58 GMT  
		Size: 14.0 KB (14028 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd` - linux; 386

```console
$ docker pull neurodebian@sha256:a5a9066447a7a55bd5f1859f10fdb25a50956bb49cddfa4643b73195d662020d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61991599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c9077c97ec01aeb0645a6a6f2fa8433d7a772facd4148f733983d042a7c19c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:49:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:45 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:49:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:80f34b6bdaadd9ae002625a28e22722e313c4ac7d32fe7fa3a8ef3a66ae7b362`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 50.2 MB (50191201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91721b67c616012a670e88429a719047b855a62a048a2529ea00c97e3af63972`  
		Last Modified: Tue, 14 Jul 2026 01:49:59 GMT  
		Size: 11.7 MB (11707253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8b94ed4ea9ed269a12b6492cc1ee43e81b6dc56b0933f86afe170cb6043692`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4853159577408e363f7faeb3217a3cb86c08797ba594cd5ad7005484bc9895a`  
		Last Modified: Tue, 14 Jul 2026 01:49:57 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d978f3cae5c76583308efe98d1367f0837c2cd69d28c45c13c1b01df42a065`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 90.2 KB (90245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2cc646a6dbf433ee103a51e0420c924312c5d49eb193a2326ddcf3f02b707b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3567388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de638548608b9cfe8161f7a406cf714a1042fe7918ad3f4216fc1b38440737d`

```dockerfile
```

-	Layers:
	-	`sha256:44a11e65b716df5afb13976df315ea433c4a763b85bbaf46bbc70fb9e67ac0c5`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 3.6 MB (3553512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a05873fca6350d5409d2820b29f0287e1f64a28bb1fad65acdc7b8a2205f26b0`  
		Last Modified: Tue, 14 Jul 2026 01:49:58 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json
