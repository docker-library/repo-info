## `buildpack-deps:forky-curl`

```console
$ docker pull buildpack-deps@sha256:45d813722f33e04ba4ef107e6d87ee383da121f94c11cc6ce9300643c2e3c54b
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
$ docker pull buildpack-deps@sha256:47686aab5eb1547066fe38662b4ebac512f6c17918bd249c33e9d8188f49cee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78378490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0743b23355ddb03ea767baa52f596a97e167c3f90be62ac69e681911c94b4248`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:44:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cef6b9e146b59354ff9c67b76eb738a3cbd721da62af9fea96e49a9203bfbc82`  
		Last Modified: Sat, 19 Sep 2026 00:03:30 GMT  
		Size: 50.1 MB (50075078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299213d11485d48d2dc0b0cfa241bfd389b24a5597b89d1d2390ca7f7e3195f6`  
		Last Modified: Sat, 19 Sep 2026 00:44:59 GMT  
		Size: 28.3 MB (28303412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:842d92f8837a53b5273c42d5920d21dd73d14f8cd41ad8be6f2aece0dd04b311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4099875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdfe9668415541293256b6ec4e4b519dbd0fd961de43e214b4505d43365d6442`

```dockerfile
```

-	Layers:
	-	`sha256:6aaca5544369aac86d92105ce97209d301a6e731cd7eb16d4df5c3e2e90cad56`  
		Last Modified: Sat, 19 Sep 2026 00:44:58 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcf85b5ee62b0b72e1dd86808baab065b547e19c759bd7a6a5418b1a238d031e`  
		Last Modified: Sat, 19 Sep 2026 00:44:58 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; arm variant v7

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

### `buildpack-deps:forky-curl` - unknown; unknown

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

### `buildpack-deps:forky-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:32a92586eed0a3fdebe5cc4f8e173e656c9375d943df8982ae43f921d0d8b435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76864537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5035031964c452eadccceb064092545b0f773de40afbb7c4684699db501a2eae`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bc8b68ec4249a062f0351d0b052f82733e554595d28d36e1fb5f71baf24fcc1b`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 49.6 MB (49556485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd35190aa3eb3f538f8f5090a5d01dbbca12a0eeeb3ecaf7ad4f8469989642`  
		Last Modified: Sat, 19 Sep 2026 00:47:36 GMT  
		Size: 27.3 MB (27308052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d815a9efaa47d674ab1fd10743b2c334470093e77492b7d9c844ead58c7b97bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4103455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb871110deb7d92d3a62675a11e807e6d93563d4c3a6009a531d25335738d7c6`

```dockerfile
```

-	Layers:
	-	`sha256:25f65e1fed512a64d610c1c64f14e61997274b5e3cdb86166d1f28713472b9c9`  
		Last Modified: Sat, 19 Sep 2026 00:47:35 GMT  
		Size: 4.1 MB (4096602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30a81ab95d95f56667bb20cfcb370480f777bd4be5e1e53a89c573806d67ce42`  
		Last Modified: Sat, 19 Sep 2026 00:47:35 GMT  
		Size: 6.9 KB (6853 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; 386

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

### `buildpack-deps:forky-curl` - unknown; unknown

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

### `buildpack-deps:forky-curl` - linux; ppc64le

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

### `buildpack-deps:forky-curl` - unknown; unknown

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
$ docker pull buildpack-deps@sha256:eacad33b3fbc39782e06fd1a93b8833724dc504503736814aedb00231ecea6a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76988928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112816ca4be77d3c591577551c5870a4ba55d0d47268e4d748b527eb075474ad`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:58:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:00ec1575105e35cd5f9de7595058425838bb280d5ebcf3a21e441c789789cbb0`  
		Last Modified: Sat, 19 Sep 2026 00:02:10 GMT  
		Size: 49.3 MB (49326582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba1811152ba63201f9e1cf242891f09afd424d2ef3908d7fd84818e3ae9f8f5`  
		Last Modified: Sat, 19 Sep 2026 00:58:16 GMT  
		Size: 27.7 MB (27662346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:729ccf58da3f42a5b8f64054391090ff9821766cae028a41750aa842edc942d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4101232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d71790e89f10be3f4785202715ce4a037c9743f7ef068b8a057b3db53fed2b`

```dockerfile
```

-	Layers:
	-	`sha256:1479f31487dc575a7314db0de2beee1dd7563e4725592f87d25c90b6e72c7f65`  
		Last Modified: Sat, 19 Sep 2026 00:58:15 GMT  
		Size: 4.1 MB (4094459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5aa44c79c17abb9a00b6e80522a69c8868b5e4cebbb956a285b773135c23565`  
		Last Modified: Sat, 19 Sep 2026 00:58:15 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
