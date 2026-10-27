## `buildpack-deps:noble-curl`

```console
$ docker pull buildpack-deps@sha256:4830481db46e1392a19ef02a6f9d32393c76806db2d16cb8e48d456ba6143195
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

### `buildpack-deps:noble-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e5aedae8d861dbd1993c745278f277bc3e922373370541c851b63519acc4123a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43355599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755def1a9d19cc181f3dc497971eb1f0de617e995bd5466d2427f7ea6a95c284`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:02:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89972d8150d9eb70d6affee52c62f0b0acf0c3977c4170f1f36004f7e63e17a4`  
		Last Modified: Mon, 26 Oct 2026 23:02:21 GMT  
		Size: 13.6 MB (13587987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:610e371d57c89b682999718af515989bea17d7f33a6e06f1494f14fcbf45bc10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2597949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c67a027f3913c8fb0d6170101f556eac37684716a979de913740f220e88c3b`

```dockerfile
```

-	Layers:
	-	`sha256:f0aae72b4ac0b86de384ecb9b685463242ae1870a0da655cd9b1bcb58d3f7ce9`  
		Last Modified: Mon, 26 Oct 2026 23:02:21 GMT  
		Size: 2.6 MB (2591033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d53010b0c0d782e2540994a6f471ebab26d7198df3afd589debda71cb85956bd`  
		Last Modified: Mon, 26 Oct 2026 23:02:21 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:3b65270ba54524acfeea50919c553e6b44b4e6437c4f3b715a50257fd9de2a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39640469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96491e128feaccc066f50e55c8989cd62654f74147ebff49903fd84ccc35e131`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:16 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:16 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:20 GMT
ADD file:dda3ab4e8a9368462439688ef6efb2347681f34bdd858b2568a5e6611808cada in / 
# Sun, 25 Oct 2026 14:18:20 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:48:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8501ddc1d8d73b943a56f981e680c300baa478c682e5a4c6b9b3a2ec8266350e`  
		Last Modified: Sun, 25 Oct 2026 14:50:18 GMT  
		Size: 26.9 MB (26897485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d575f3905a4a0cd34d28b18fa7d7175700985307a7a949ca0543570ec440f51b`  
		Last Modified: Mon, 26 Oct 2026 23:48:29 GMT  
		Size: 12.7 MB (12742984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:111c0a473891b78a24a7a9b6b6d4014c83e910d1290c364c5cbd1202c69e1e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2600317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cec23232348fa585e075110f5c0543341bdd5db1502f8fdfa5339cbd8ec2ee`

```dockerfile
```

-	Layers:
	-	`sha256:7b4fec0ab528fa4c81f8c93597ad7f30210c3883f2ae09b14740821365403fe7`  
		Last Modified: Mon, 26 Oct 2026 23:48:29 GMT  
		Size: 2.6 MB (2593337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b7c2f310293ae8c6ca4d88bb2deeb9f96e33d82e1789222907f282f1335ef6b`  
		Last Modified: Mon, 26 Oct 2026 23:48:29 GMT  
		Size: 7.0 KB (6980 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:67c151d75ed50f70c88eb25fd40d5d2a0f60117920b705945258569020f2c44e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42370238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67639a211fadcc81728cae4dddbe9125444573b372047c3b8cddef2b44dc9059`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:08:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fef52e57fa784d25d3b6924967e145017396750f1f1afab13e0c44371b163dc`  
		Last Modified: Mon, 26 Oct 2026 23:08:21 GMT  
		Size: 13.4 MB (13430112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0dc19cfd08795dc4ba0dfd180f0aa371ff4d4c771fb47a7a9ce21e4eb67ca260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2599086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c549d21d79792d4c2097276dacd138f85684050d01d27ed8055458b9e101e7e`

```dockerfile
```

-	Layers:
	-	`sha256:3ce08413b7d2ac44f323031c0fd01680f6612c1d8878bb4e48156658defcdec9`  
		Last Modified: Mon, 26 Oct 2026 23:08:21 GMT  
		Size: 2.6 MB (2592091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c6c3489213387b092ee777863ac048b230e028eddf3d4ab2386b92228f53692`  
		Last Modified: Mon, 26 Oct 2026 23:08:21 GMT  
		Size: 7.0 KB (6995 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:20cce6390be6e29ad6d70c12364a281ab17d59bbe18f0a6cfda73bba6f230502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50294853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0e8ea030b0a7c4f8cb627d2c5ecd3fffda59d5e71b8c231540f243a8a6b9309`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:13:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc6fe5f42708d68a91c8079a369eda83842f43ebf55ad50a52d811f8865b040`  
		Last Modified: Sat, 17 Oct 2026 00:14:03 GMT  
		Size: 15.9 MB (15916863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:faf3fc3869004fbb2378a3853c51f7fc1b5a89d2a752ed750f80dfcbdcd1ab68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2603232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bef0520dc14c579b772297bafb9fb7aa6cd409b006b6d6b5528d4e51ae124f`

```dockerfile
```

-	Layers:
	-	`sha256:9f7c7583a36afe4a04bc9fad890f51bbbb931b1c87ca64dd12643e6d722088be`  
		Last Modified: Sat, 17 Oct 2026 00:14:02 GMT  
		Size: 2.6 MB (2596284 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86e0e9794fe8e6745a6ed5ce40ebb28252c9ead124ef6ee84b71fae2a38746c8`  
		Last Modified: Sat, 17 Oct 2026 00:14:02 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:31731cfffbc08a31bab1af59884111412ad8957360d3c2d1ba0176a7855016bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45354362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe8c4d41229c6d337db964030d387eb38fda5fc4d929d4fa0e966dc5f31b023`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:25:26 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:25:27 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:25:27 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:26:13 GMT
ADD file:902c2a17706a401d4186db6f76d930ee8d9bfdf11a18905ad7b4475895533666 in / 
# Fri, 02 Oct 2026 08:26:17 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 15:33:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6ac3b4459b1cfc53476c9bca2bcbbd91ffee22c902b3d5791e258f4a99455cf0`  
		Last Modified: Fri, 02 Oct 2026 08:36:44 GMT  
		Size: 31.1 MB (31052636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1689d34234489fbefe718435a7aabcd393ab99aef7f7f379ac4945759a7a0ed`  
		Last Modified: Sat, 17 Oct 2026 15:34:59 GMT  
		Size: 14.3 MB (14301726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:03d977d859974c66800f27857c36f748425f15805d1a11daedf7adc96eb359ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eec61659561b62dd55c961dec01f99496da4def90d1e09403d651205faed3ce7`

```dockerfile
```

-	Layers:
	-	`sha256:d6d7183ed6c1668332c3152235fbb15d844c12971a4d896a8c030f25dc0a444c`  
		Last Modified: Sat, 17 Oct 2026 15:34:57 GMT  
		Size: 2.6 MB (2585564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dadba522af5e8b8e589cfb27930e2004acd881a66f5cecccd95bdc4ff711aabc`  
		Last Modified: Sat, 17 Oct 2026 15:34:56 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:7e7ae85be6666ad4c7c3fae33969685ec1746d814a2b3bc645780f6b5c0ccb5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44844500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469b8457641ce6da63ad30c31886a6ee0b3054ab327dfa2895fe1f488e42d404`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:35:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21fb53bd8ff8eaf133b24a1fcf6b4535a8a3cb1dd51908862e61702a0df3a54`  
		Last Modified: Mon, 26 Oct 2026 23:36:00 GMT  
		Size: 14.9 MB (14897450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8d2c021eb468791abc49b4467136867bd4ffc84d25147adff9c8bef3226483d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2600774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985cc51d7eabefb16146c0bc74921f1ce3c4d99189f43f40f39f9653fe4a3cbe`

```dockerfile
```

-	Layers:
	-	`sha256:1054c28761b0c1ec039a78c3dd6e839bcc2ae907d29f1801ebcef8c783cb2b45`  
		Last Modified: Mon, 26 Oct 2026 23:35:59 GMT  
		Size: 2.6 MB (2593858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c591138b537bae583fc3745ac05a876e7b823f1a9207be6c61770c20a5462f4e`  
		Last Modified: Mon, 26 Oct 2026 23:35:59 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json
