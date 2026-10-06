## `buildpack-deps:forky-curl`

```console
$ docker pull buildpack-deps@sha256:d8a527e8fbcae9f1357625188ecaf73b5bb1efc9890eb5211169dec6130ea79d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:forky-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:79086070aca435c2e4c2042f049722c5e7d2ca62ffdab1b6ca95eceac3456ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78152404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6b5e183dcb0bc07daa53e629eb47973f96e1a1178c23a008d293bd968b2bad`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:41:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7469b51a5634026d0ec3b005b5a4726cfcf2e658e06e0d7f08c5489d9b1760fb`  
		Last Modified: Tue, 06 Oct 2026 00:13:38 GMT  
		Size: 49.6 MB (49649159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a85e526e84284c855198b53bf2f71798ccd059fd4c122c98deddaf0f1cce0d1`  
		Last Modified: Tue, 06 Oct 2026 01:41:17 GMT  
		Size: 28.5 MB (28503245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:558d3f0dc87b71019efe6b646338c9d71889ccbda4c09afe1f0e2e7c811ef1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4088518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9386c3a831bb4a2af743d80199e6b5da78e447180c0a41eac166ef63ae727eac`

```dockerfile
```

-	Layers:
	-	`sha256:216a9457cc4886e5252544642b4a789935e2b492380766b506eacdbfe86c7edf`  
		Last Modified: Tue, 06 Oct 2026 01:41:17 GMT  
		Size: 4.1 MB (4081745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e449e97d2f1cb11bb924dbad65314ba9f0572d86a2dad3154b5c232dd5d5ca54`  
		Last Modified: Tue, 06 Oct 2026 01:41:16 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e7dc426407d5eeffc8c2f36d313ff2629da6cbfb2e260fb89be41541105de141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71511228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1bbe33497efd8d74e4d7d746ce16faffe9dc3b6bd0ad902a150696c12770d0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 02:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3a78d12b86d9577977254cd29839c594a5572094c28e6dc8b2362fc3315645d5`  
		Last Modified: Tue, 06 Oct 2026 00:13:43 GMT  
		Size: 45.9 MB (45924917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba18b4a4892fe76aa89199328866e1197da6cc17a716a635647c4857e40c6c9`  
		Last Modified: Tue, 06 Oct 2026 02:24:38 GMT  
		Size: 25.6 MB (25586311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ba421e02d3d0fd81a593f045835b315107e14632021a1bb13fb0d1e741adb530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a11ff1a89648d624f22154101b3ddc81784689f5240f0713f470e55e8557b3`

```dockerfile
```

-	Layers:
	-	`sha256:9671a64a64c96a3cc9ed02bafdeb0375cbca5954315acb55397d27fc6648e1b4`  
		Last Modified: Tue, 06 Oct 2026 02:24:37 GMT  
		Size: 4.1 MB (4083397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af0d4fd2df90c6dd97efe797f89ab152fd2b2cf3774ce2e5cb3d24b0f73a3f46`  
		Last Modified: Tue, 06 Oct 2026 02:24:37 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:5ceff029275d8b97c1ac0ec1bfa539ec380e8dc8258b0db202cc7795fc640789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.5 MB (76467805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91f640da599a9897b88906411f611cbd8509a166a105305958a0be2e3a7a72b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:44:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e248a7d56738c8f8ba4b2a2297d1668d1b8e939c7f77503cdecaa73940dfdb15`  
		Last Modified: Tue, 06 Oct 2026 00:13:14 GMT  
		Size: 49.0 MB (49047941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761c309d51cd9500b36765110fe143be394c30a989201f6596a04a7025c10442`  
		Last Modified: Tue, 06 Oct 2026 01:44:40 GMT  
		Size: 27.4 MB (27419864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:dbb0b74e35d44de9cda19dec70dd7f2df3a1c9e95377f8d33f5f73d08d2dc2db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4cbafe320db66c774a747a48d3e0f9128cdbdd4dd74459143ff6423dccf99ef`

```dockerfile
```

-	Layers:
	-	`sha256:e387173689de5ef2f59c2f597af866b9ebd616022cf1473d2b98d1eb6c949407`  
		Last Modified: Tue, 06 Oct 2026 01:44:39 GMT  
		Size: 4.1 MB (4085245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae745006f6187e3ec9b2c7f116c0e85fa1384a2f5a24bd84f60c04dcc52a9b38`  
		Last Modified: Tue, 06 Oct 2026 01:44:39 GMT  
		Size: 6.9 KB (6853 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:404573c895289eede338862168f7d5af147523852e5c83e8eae6cc2356a3b84c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80408971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07ac828e9ea9103d9fc1280e79ee9678900e42314404238ff502d9026471551`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:45:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fbda3f7c32e707d7ecc3e8261c4b9b2b897138641aa26be42e13abbe6cc98387`  
		Last Modified: Tue, 06 Oct 2026 00:13:36 GMT  
		Size: 50.8 MB (50773856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422550af6c534194583569d524526f137a8ee76c087a3303e2a6668986e0b42a`  
		Last Modified: Tue, 06 Oct 2026 01:46:01 GMT  
		Size: 29.6 MB (29635115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e01a4a472eb2893525c18d6bfddf6a3a3645b90b419c03e8c6b0e409a2f40799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4085502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fd4136708fa30ca92755a0e30d952145f2e03f436479bb33d07789f11947d5`

```dockerfile
```

-	Layers:
	-	`sha256:cf451d2bad4ebe342311b6eecc087868b7f03dbd8f0454417eb8f8be6404d0e0`  
		Last Modified: Tue, 06 Oct 2026 01:46:01 GMT  
		Size: 4.1 MB (4078751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce6188afc3354330c66433041f07f67293cfd79c2e305ec5b3d45f0cab9835b4`  
		Last Modified: Tue, 06 Oct 2026 01:46:01 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:217f53c9579d781aca587846aeb4473db66a02f15572a2399320821e0edfead5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84829848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63522fe58abb40b508399c8d2bfc3cb100a053323a1f8f8bf544111ddabec3f7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 04:39:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:24e970ec93a434808c1ff38e4aa6d0236d311b8d999043bdbef87e821423afbf`  
		Last Modified: Tue, 06 Oct 2026 00:12:48 GMT  
		Size: 54.3 MB (54325018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd17dcdcdfa31ee971c352c9eeda807e545d68ec178d69d9e6d18503f5cfa05`  
		Last Modified: Tue, 06 Oct 2026 04:40:24 GMT  
		Size: 30.5 MB (30504830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fc43673eafdad1f6d23dd73d41a5a8a3780119b1a8c08c826081a63d36ac5401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f69ffe0c57939c5476c41c4ea7ec17527e67072d0ac4c5cff1bedddd0764f75`

```dockerfile
```

-	Layers:
	-	`sha256:593a3a09d8e5228eee9a2bdd2576ff7d2bb22d40fc4d4f29666a0d33ba13ea92`  
		Last Modified: Tue, 06 Oct 2026 04:40:23 GMT  
		Size: 4.1 MB (4085852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa8961643e2fe7c196eb71a124acb8cbed397921a902589c67dbe7d20bda2966`  
		Last Modified: Tue, 06 Oct 2026 04:40:23 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:fcf9c7c6fa1b4dada0f10a89c40c0c5958dd97b1cf792da08554c50bd198d0cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75108151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafc03dbed9d87ffe4c0159c6e549e36ef91f55b9adc82cc0344f630a711931d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1789689600'
# Thu, 24 Sep 2026 23:35:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cf3253bbe95a1084c47d384bd326e2e3ea3a863f4a42281ad8260ddc95d7b83e`  
		Last Modified: Sat, 19 Sep 2026 03:52:30 GMT  
		Size: 47.6 MB (47644100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac10860ca9f6ee9ff6d460a6f6932521f283b32c9b77cd3475d4d427e5658cf4`  
		Last Modified: Thu, 24 Sep 2026 23:36:57 GMT  
		Size: 27.5 MB (27464051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8b4df5b28f205d5011d8d3cc229c1749526a03500b2f8daa518dbfd92afa19ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510cb84e097cb7b028b9ecf981c0e93fec7bd3e9adbc2b70c99fec3d41092fe3`

```dockerfile
```

-	Layers:
	-	`sha256:8295e963a6d7599c67fd1088ebdc2b38d89961a3801c223e0bb8f55d39bc3f69`  
		Last Modified: Thu, 24 Sep 2026 23:36:53 GMT  
		Size: 4.1 MB (4084023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:553968ec3d48258c5feeaa99f45459356680a19eaf89586a4a8eba74305ae876`  
		Last Modified: Thu, 24 Sep 2026 23:36:52 GMT  
		Size: 6.8 KB (6801 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:beddb27f18e52982c7acb89bccbd273818b38c879d08cb07233fdb8eacaea464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76625173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69f1feae9ce73d692a2664a174519d9ebca567602630c3f564d6614ffe78f7d1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:57:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0ee6ac8b43a7e6254145fd3ccac4ef533ea7f9092fc66943615402bc3f1a9cc3`  
		Last Modified: Tue, 06 Oct 2026 00:12:14 GMT  
		Size: 48.8 MB (48824602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeeb19ed55d4ce1bd9dbd6bdafff0f8ffb1298554f19814d477a37656269ab31`  
		Last Modified: Tue, 06 Oct 2026 01:57:32 GMT  
		Size: 27.8 MB (27800571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d6531b865b891f826eb7366b973c2083cb638a1316db3d43f36f93c65c341a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40baf9bc2ca205c52356aa79eba8c9c25189932b401245f38726745728f40681`

```dockerfile
```

-	Layers:
	-	`sha256:acd8d172900a183a647b385821ba75ebc25c7843f6944ecbdfb7abbc6bdbcfb9`  
		Last Modified: Tue, 06 Oct 2026 01:57:32 GMT  
		Size: 4.1 MB (4083102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:932a7f3d8d65bbd5587548c94f8d9129c9a2e66f28bc6389a3d403c91e1469d8`  
		Last Modified: Tue, 06 Oct 2026 01:57:32 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
