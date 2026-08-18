## `buildpack-deps:jammy-curl`

```console
$ docker pull buildpack-deps@sha256:402d40f00d6f3937a5d37be1070455ab2dc0ce860783d74806131bdf5316df6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:jammy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:fe4d6412edd9da9116db9bbc4824321d1a1ac3b78d49b1b1434a746802092fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36800694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e165c4ba6109e8e6b2540c05c3252375d1c0b12a4a990798c0ec1b25d6112ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520d0981715a94b55c77c7aaf996d2db0f581789b70f30a4c66ad84c7f159cd1`  
		Last Modified: Tue, 18 Aug 2026 01:10:25 GMT  
		Size: 7.1 MB (7063751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d57d49ae414e800b7828bdbfa75c3f6581a16d9514c40d1ac0d1c743855ebc85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3195836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c3c251d64dc107191f406a0b3a142a3fc59009af424998380991b1f22042af`

```dockerfile
```

-	Layers:
	-	`sha256:fc27e844cd9578d23e96aed58e915115dec8946525182d064d158aa31fd55d46`  
		Last Modified: Tue, 18 Aug 2026 01:10:25 GMT  
		Size: 3.2 MB (3188955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebc9779084a44510b0bafabb2fe3f68245c762ccfc01c701f5bfa0137dc231a1`  
		Last Modified: Tue, 18 Aug 2026 01:10:24 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f4e8d832d2863bd0a5445954dfbf565db8e4825816f3a8f5ca22aa2d45f66734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33812719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0b91eed4b12c17e7aade6065900554aa322ae7db30ded521ae187387eb4e6d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:43 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:43 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:43 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:46 GMT
ADD file:28008f9e682e86fcfbf3a0a3e6cf7bc009d54f8a88db924bb6e29b30e688e939 in / 
# Mon, 10 Aug 2026 17:38:47 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:deafe6b5876d5dead55957182e61b6fb35f90aab5d6265e0945beaff36062d3a`  
		Last Modified: Mon, 10 Aug 2026 20:08:55 GMT  
		Size: 26.8 MB (26848898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0862ecbc3ff408ab5469a6851f5f0baac5523e45cc68029609e01af99074bb48`  
		Last Modified: Tue, 18 Aug 2026 01:10:07 GMT  
		Size: 7.0 MB (6963821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:dfee8982cafa4fb4a7b3081976b54e1439668b9e2e686aa20c6a9f2bc7aedfe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52cfac99ae06f184d78136829dbe0f1dc6c2e3f22fda0888b6b43aaa0c3f6f55`

```dockerfile
```

-	Layers:
	-	`sha256:404169def535b68d6ef6d6cb6b5954d917a54fa0be170dca5dcedd0e30ad3eff`  
		Last Modified: Tue, 18 Aug 2026 01:10:06 GMT  
		Size: 3.2 MB (3191262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d60e3d5b939b8ccceca87ed130c0f1f2369aa8cd6acc1e7f336e40e1fc1b25d4`  
		Last Modified: Tue, 18 Aug 2026 01:10:06 GMT  
		Size: 6.9 KB (6944 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:801d67c70b8e3acaf7a3cd2f05f62fc44939e9f76b214f1696d662b5816b6d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34638397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2658cb1848870bd3bef9c43386d86de489d0dc7ae19e6045d73a33becec610a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8d50e8039b39564911842f938e784b3771e43ea8ec3c800e28e3a1a50113da`  
		Last Modified: Tue, 18 Aug 2026 01:10:24 GMT  
		Size: 7.0 MB (7017944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:28a15e1fdd21f9196a6cbe15b952ae05c476450f510b684fc5f688545d5a9393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3196183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:589717ad3aed6f76768469b3ae146ae1dd50cd52eae63dd4349bafdb42f24092`

```dockerfile
```

-	Layers:
	-	`sha256:89ebf1e6e4e65fdc735a93c5e08a3382a295e340b306f126736dab7a70598e9f`  
		Last Modified: Tue, 18 Aug 2026 01:10:24 GMT  
		Size: 3.2 MB (3189222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb6cb4af1a31272b6ef6fcbcdf9fd547757f4dcafd3b353250a823cd466ef6bb`  
		Last Modified: Tue, 18 Aug 2026 01:10:24 GMT  
		Size: 7.0 KB (6961 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:17d3945e0904171cdef8e59f9a9faac6c25f5baa8fc3ebb8ca8a35aaa2feea03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.8 MB (42780874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df31ab2a60e5571ae0f6f6846f91ef39a0fb6a9f310e34d210be1b7d8fc486b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:09:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726c0aa18615910f8fa9d4336c30c343e9612e03b02b2f16ae84f17a72da8270`  
		Last Modified: Tue, 18 Aug 2026 01:09:41 GMT  
		Size: 8.1 MB (8142729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0cb38906fa0ed311e1524589b15b2e4cb9c2bcf65754124085a287a398bd8b1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b58e9af3967d0efa424510c41f098df72ac369857659932ad8c1a2500523969b`

```dockerfile
```

-	Layers:
	-	`sha256:09ca1592cf651b568bde6688254e7daf15f18e81f0cc756de9e6d26613689cc4`  
		Last Modified: Tue, 18 Aug 2026 01:09:41 GMT  
		Size: 3.2 MB (3193591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df34f6a0c790b8dc2bc4a84897729d7b894ceffefa24e2dab587abf200b88b8`  
		Last Modified: Tue, 18 Aug 2026 01:09:41 GMT  
		Size: 6.9 KB (6913 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:6745553ddb19f11b719918a09f3dcb9efd0a07ec5c9cc0b0ec68295d8fe403a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34317839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b44c84c9f71f27ea505708f94d6fa82f1989f3c09199734d4c2f22974b160bb2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 19:54:20 GMT
ARG RELEASE
# Mon, 10 Aug 2026 19:54:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 19:54:21 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 19:55:00 GMT
ADD file:9b3f9acf4466fa72e5b61ecd4fae12b84222f62cdab5f130404f9dc7658495a4 in / 
# Mon, 10 Aug 2026 19:55:04 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:618bdfc924e8df1bbf6a83c552e2fb17f7ffbd74ccd6473974f3a00c7210ff8a`  
		Last Modified: Mon, 10 Aug 2026 20:09:09 GMT  
		Size: 27.2 MB (27244670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3dbc6b9692cf6ce3e641ee3ca8e9018a346b975636e799ec846664a79629dd5`  
		Last Modified: Tue, 18 Aug 2026 01:11:16 GMT  
		Size: 7.1 MB (7073169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b16f5b6a2ebb6cc813909656ce1fb176ddc2ce3deeeb5b5a93a78a5bb423e508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2dec9836b17442c652f37c476aef336d5c049a3b0da7e5e69fa8e60393d2926`

```dockerfile
```

-	Layers:
	-	`sha256:0d31421efb1604836e62fc0d6875976843e8f9e88a378ea49b09d85ac01e06f6`  
		Last Modified: Tue, 18 Aug 2026 01:11:15 GMT  
		Size: 3.2 MB (3184215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db0803ad6d1678c06e98f3258fcf662245cf8db9d527352344376a6772cbd34a`  
		Last Modified: Tue, 18 Aug 2026 01:11:14 GMT  
		Size: 6.9 KB (6913 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9aba7f7a4f37cf4b39c74dd9eee775eff5501a6a776e164e898e986a9a5dce91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35185415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8545b27319572a3a255b9843a794d1f6712c92569e8abfc87d22df5d0dbac15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 00:07:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5e1d4fc4d05b2b731bd30501593986ca8bed1115300d026890bedad4a714a0`  
		Last Modified: Tue, 18 Aug 2026 00:07:43 GMT  
		Size: 7.0 MB (6974512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fc1a60d1dddfe7fd8c6b8a264c3e858f800c1c25158877138379b40be55d36ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00adb7925d387be4dd7f2b1abd592d26348648991cf869e97400ddab53fbb9e8`

```dockerfile
```

-	Layers:
	-	`sha256:b5dc8c3f8cb9fbff7a4241d887f3c5069ef168b394a6f17b1cb76fe39a5b7b0e`  
		Last Modified: Tue, 18 Aug 2026 00:07:43 GMT  
		Size: 3.2 MB (3191172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:470183c8a828431106a426bf6ee0b2ff408747b7d8c0a16071bbc5c965ac765d`  
		Last Modified: Tue, 18 Aug 2026 00:07:42 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json
