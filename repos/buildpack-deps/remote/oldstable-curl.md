## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:22ea80e14f6b98eba669bfb34f6e66b4ff277a78ff0355873da11ce7f2926b8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:oldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:34fafd4083e357a09139888bfcc2036225ff565285e5f13547b5f37c3d87f13b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72541503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348cd1a92b07f9c4d16ee12d8180f0cb17e58110e8ad75047a26aa44941e222f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b7f936ac113fbe0d16285e41e586e074f96a0b53b17461c28cca7537e95529fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4521223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597a94d090b691e9707d3e86c0ed63ef41e6582ff8557e20cac2a6adcadb97ee`

```dockerfile
```

-	Layers:
	-	`sha256:e87b20d95cce8d3b4d00b9685fdf9481ee0c9e07f3e09a1913e9ae047c4c41bb`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 4.5 MB (4514406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7410931b4415ca9b6590fd2e235fc1ac554b7776dc5f52cb028ac558d4db9a7d`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 6.8 KB (6817 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:a88e8d328f88134bfac6b3914963a7fb911582ba97be78050a787e151d43c5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68752255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78be37ea79ca6f4187586debb90d10ec45fe545fe9ad53d63d710330092473c2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:24:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f99a0c6c2573399952c2c4cea64053957ffa423850eeb55a72c61f7e0b4f7c8f`  
		Last Modified: Tue, 14 Jul 2026 00:13:39 GMT  
		Size: 46.0 MB (46033816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec7f2bf827ae68b8180a893dd1bd8360ef00bb8731e9fd6f8e3ba50146ca801`  
		Last Modified: Tue, 14 Jul 2026 02:24:49 GMT  
		Size: 22.7 MB (22718439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0d74a847b418fdea11a495b7e2529de318d9c599740a67303fc53d214901ef82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834625080ceea6d619a72a36d2750015df679eb1542e05b1256865bd33d976f5`

```dockerfile
```

-	Layers:
	-	`sha256:65d1f2d25ab743336263e08f90631d0ac94f9eac4259a74732ef2ff0b2174eb4`  
		Last Modified: Tue, 14 Jul 2026 02:24:49 GMT  
		Size: 4.5 MB (4518222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ffd85395d60deb13177012a96ba3e170a67b3007a37be48cc08f2d2d417aa5b`  
		Last Modified: Tue, 14 Jul 2026 02:24:48 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ec79889462d713659e11697f18e28985956315c5e19c33f5bcbc267dd690b9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66158080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c9e76113e29de2d613a60b3b7bfa10ac62a1848c91bca8814ad327d2dcdff5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3622debffba3838b917703fb6dd9c161a4d93d9fd97c61d3e8400a2245f93c67`  
		Last Modified: Wed, 24 Jun 2026 00:27:30 GMT  
		Size: 44.2 MB (44208145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0df8de55f365d832099cabf27409104999d59b26292d91202ca6e160c4b513`  
		Last Modified: Wed, 24 Jun 2026 02:22:52 GMT  
		Size: 21.9 MB (21949935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9cedfc9a878526043956700487ba2ee364671b56ba0514ed9d86ad191241f0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac82c2b949d4d673aa063fd5b8d745b3548c46d611105eaca9bcf30e9fcabd32`

```dockerfile
```

-	Layers:
	-	`sha256:62aca44eeb5f7ddceb95e176f4f737675a5d06cf917d202c08c2a4bfb4fdc759`  
		Last Modified: Wed, 24 Jun 2026 02:22:52 GMT  
		Size: 4.5 MB (4516659 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67c0cc30dbbfa87fcd5161846ebd45e019c652936061d5371a035ac90d513384`  
		Last Modified: Wed, 24 Jun 2026 02:22:51 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a18e08cbcdf8aa3d1eec51564ce8b93b9e9e62af5608f1a9361deafb35216037
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72002517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1c86145b229dfcb8426706d2f5bc2994685584a636133e97c4f1ed9c3ffb19`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebca214f1a4b66acfdb0bd20aa3ee139d1747885ef4b0f3d07aa2a68459230`  
		Last Modified: Wed, 24 Jun 2026 01:44:48 GMT  
		Size: 23.6 MB (23613316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8696b9d2cb983f377c81048638fca83b4d91b80891989e687ca52f997e890bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4521528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012eb053a7f0df53919ee43f527dd81545b54d6c406f7f82f95bc09d04fbc2db`

```dockerfile
```

-	Layers:
	-	`sha256:9d7d84c10995cc83d22164eea287b091fc8381b18c313bc2ebce617148dd591c`  
		Last Modified: Wed, 24 Jun 2026 01:44:47 GMT  
		Size: 4.5 MB (4514631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d453337e666d197eb5ef4560adc3d830a3af3f9595913539d24c51d263ff1a3`  
		Last Modified: Wed, 24 Jun 2026 01:44:47 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9235050c05efd18767c1eee7dadf284a03c266b8f5c5ee8b2d64133a5c9eafb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74371118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f440a975ed0e7d025e1703e5496556d90964d93af328a37bcd18af039b01af9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:43:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b45c9ce5ae5ea6ab37787312be8b0a9732642c1221f97d5689baacac874b4cd`  
		Last Modified: Wed, 24 Jun 2026 01:43:48 GMT  
		Size: 24.9 MB (24879740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7db5b45e3e5dee7bad880e7baa09b7198534c2891b6d1c00258055c31631c4f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4518284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678576a4af93d4d1f26d07245655ea69be09049cd12943a591b063ec4eb90e89`

```dockerfile
```

-	Layers:
	-	`sha256:0ebf011f78600c9203e20347029891471d96dfcdc2c832e15c82a624aa4c898b`  
		Last Modified: Wed, 24 Jun 2026 01:43:47 GMT  
		Size: 4.5 MB (4511489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bce666ab93905f5253dc4356f4c95548cfea72cf3128cae0337003c923b64c8e`  
		Last Modified: Wed, 24 Jun 2026 01:43:47 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; mips64le

```console
$ docker pull buildpack-deps@sha256:76449402ddff626527a79844d808a168b8f223d15b28d7796a8a6782b965b4fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72416790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c48a1544d2c28066163f1501f67f20365da6854d88384ae30dacd4c395a6d0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 14:04:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d06e8744a62761c63cdcacfb2a61022e2f4c0aa854b6cede18fced28342dc1b2`  
		Last Modified: Wed, 24 Jun 2026 00:26:53 GMT  
		Size: 48.8 MB (48792819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a2f466b887b6a2a52424171128948207dccef13979fc60f50cb7beb67f123f`  
		Last Modified: Wed, 24 Jun 2026 14:05:16 GMT  
		Size: 23.6 MB (23623971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ef7f8c41291985c6edd71ca55f95e5ee6800de05f17bf9057d57329e8ac23201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 KB (6650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de46779ed35c524d2a263991a1be8e1bbe00911bbf0599753a537bb2c7dd223`

```dockerfile
```

-	Layers:
	-	`sha256:7f6fefb767dd5ba1576792b8d1d8ab8da7f91f9a68995c3f21f4970b713851fd`  
		Last Modified: Wed, 24 Jun 2026 14:05:13 GMT  
		Size: 6.7 KB (6650 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:dfdc35b2ee93a696b0900d0449ac0bd624704ec0926c90d7123be1bf0c27d865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (78033895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f88cfdcff73a35c66132a7df42c72e37525487c6455df435ab2ea13030c8c305`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 03:25:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a217268ac6656bd05839d5770fe7b3c0c976d29750b0c5635d099e473a789a10`  
		Last Modified: Wed, 24 Jun 2026 03:25:44 GMT  
		Size: 25.7 MB (25687048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4c2e6a6799e312c9ff5b47e1378c561f3535de79002195a739ea8fcbf31a1b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6f4357b988773da4815533ce5dc2beaff3250bae263ad54d696f6c69568e5d`

```dockerfile
```

-	Layers:
	-	`sha256:654598fccab7d0f4597bfb6677d864ceca93f40ecf3725423e510dcfdd6beb62`  
		Last Modified: Wed, 24 Jun 2026 03:25:43 GMT  
		Size: 4.5 MB (4518996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4872dac6f29d462e99a27d80936dbb1dae4b65b043f95e1364f99439e15aa5d`  
		Last Modified: Wed, 24 Jun 2026 03:25:43 GMT  
		Size: 6.8 KB (6848 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0efdbefd75bdee620f85deaa2afb9edec243174283f257fe11875fb2ab97d82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71200672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b5701b16735ad0f9499bc4c5539ef4b3d76c32ba54c5116ba98d8eac6cb8303`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:45:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075239c7f31ef6bc9923503289fbabd4a216a0cc1314ab546cdb22b3aa178273`  
		Last Modified: Wed, 24 Jun 2026 02:46:07 GMT  
		Size: 24.0 MB (24038997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3e2f8d1c0f5b4218d0a37259fec5b64f3639dfe060bd6b5057b6d1f68aeb4af3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4517990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77783a3017d41d7b49cfe2a27a4820c482017900fdb5d5532ded1f2be9a7b3cb`

```dockerfile
```

-	Layers:
	-	`sha256:ea63b2bfdbdbf2af3c5405c4a0e3078b480b5eb16d980ab18567bdd535b88d1e`  
		Last Modified: Wed, 24 Jun 2026 02:46:06 GMT  
		Size: 4.5 MB (4511174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9e2d27e1bb5af859f100db654ae22d2a009dd40883788764245155bdd6c49a0`  
		Last Modified: Wed, 24 Jun 2026 02:46:06 GMT  
		Size: 6.8 KB (6816 bytes)  
		MIME: application/vnd.in-toto+json
