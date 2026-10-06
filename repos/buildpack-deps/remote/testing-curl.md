## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:d6db9e0893ecb0b1e825d91ee0efc5471b387889dbae279747ebcfe55719c918
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

### `buildpack-deps:testing-curl` - linux; amd64

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

### `buildpack-deps:testing-curl` - unknown; unknown

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

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f266fad22a2818fb1c11e90de9f0836e78d15620cc7e24b5e4aa1b7a28501eb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71995131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13be9529dbdd935add6fb0a8c21a6448151621fca475c9fc1b08eefc3bdb62fe`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 01:28:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c0dd4e73154d77853deb35b3302ee7d1c0dad7b51f51b93765769185d7b5842e`  
		Last Modified: Sat, 19 Sep 2026 00:03:00 GMT  
		Size: 46.5 MB (46451843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4788c3ca83a7687582f132989ac6f323df18ccef0b22e71085a93673782ba479`  
		Last Modified: Sat, 19 Sep 2026 01:28:27 GMT  
		Size: 25.5 MB (25543288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:32a0e4f4a93963609a27799ecbce911778db9ce749f5d36b40fd5e2544355b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4101591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5c56ede8d473b5c81fe38a8c8745835780bb899b54cac48f57b700a35eae45`

```dockerfile
```

-	Layers:
	-	`sha256:a07f56fd0588f3e26f127a4058c09b8a2e24fbea72017da927b0e38a11c6444b`  
		Last Modified: Sat, 19 Sep 2026 01:28:26 GMT  
		Size: 4.1 MB (4094754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fe676e8bdba3a02f20f4d1ad4e1a73c0c483fb2cd92eca6be4d797b82963234`  
		Last Modified: Sat, 19 Sep 2026 01:28:26 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

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

### `buildpack-deps:testing-curl` - unknown; unknown

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

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:0110387168096b6a5928e2f76e2214e4162f4e7f4f8ef62d8f428064c22fe682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80728650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc21728175a6cd80e6808010f1576de91dfd61af9fde8c3fd7bf5ec449c72fce`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5302722500c1d4e0c8017b6e1222f78d208df1afdc63a149e631ea9bababc5`  
		Last Modified: Sat, 19 Sep 2026 00:49:52 GMT  
		Size: 29.5 MB (29515371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8b2ada6a029847d30981b1bebaeaf9df6b04d528088a8493a12e3e5d5f3947b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69dee10a8d229955f01787b78abd6a7bcbab837f493200da3f39f2f853f2b3cb`

```dockerfile
```

-	Layers:
	-	`sha256:ebcd07894ffc83ac5b82bd317144314e3721416d7be9ab35342e55b84d987839`  
		Last Modified: Sat, 19 Sep 2026 00:49:50 GMT  
		Size: 4.1 MB (4090107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:359e57068fd96b6f9148e396c42eba4c4fdaf0493d4f2bbfb83acec0a0901854`  
		Last Modified: Sat, 19 Sep 2026 00:49:50 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:7db53828a3ec750efe5bac83a34c0295b4573a9b8783046185901100285fad3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85221694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e8265e2dd96be35eab7db223af2482f8867d23e0fa7ec522b80421817f8176`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 03:16:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cb7fd76ce3e2978f396620d2ce4db34c6e31abd26f0d973e1cace0466a535365`  
		Last Modified: Sat, 19 Sep 2026 00:03:15 GMT  
		Size: 54.8 MB (54839170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bbde7b92d1c7ceb8b1b93f8ec99f707204170fe93143733548c9d2c686a85fb`  
		Last Modified: Sat, 19 Sep 2026 03:16:32 GMT  
		Size: 30.4 MB (30382524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3275b4420d193ce0d3e3d1a51e990fd7cf73f7a5e55567a02a7acce3c2a42332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4104016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6cf56f43087dd1687c780a1ced298571829c87323cbe3ee7ee2fffb334d5b60`

```dockerfile
```

-	Layers:
	-	`sha256:73cb246b4efb6f252f3cdde024e43ce1dd0b00256a7c90ba6ca5a353860f2527`  
		Last Modified: Sat, 19 Sep 2026 03:16:31 GMT  
		Size: 4.1 MB (4097211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:299860e5b12c8bfeeb14ed2b8cdf2afc68571d2c56f7b10e5ce469d4b2daf3ed`  
		Last Modified: Sat, 19 Sep 2026 03:16:31 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; riscv64

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

### `buildpack-deps:testing-curl` - unknown; unknown

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

### `buildpack-deps:testing-curl` - linux; s390x

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

### `buildpack-deps:testing-curl` - unknown; unknown

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
