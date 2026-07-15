## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:ef554489e8f8b0245ef3cb2742b4c6b6e53c43bd64366b13f624982c854af2eb
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:1ee3668561bd49aa0c515a7a75edfc27bbb9a6883294cc37389356dc06c6220f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (74951040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e911c1e407412ae48fb95cb4fa17838d7267f19611e25626c8a41c417bcdcd7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b453535073b6238aba838c5d063a1468b4d6a9aa54f81de64a4de304dc456685`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 25.6 MB (25638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:dcdbecf3f7af07a962625547f6122f32a2ab58846fcf718a88422a27d8df3869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4127313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:099203403da628e72bb9415fe5a102dc56f963579b065ef6051b7fa9a5fc84f4`

```dockerfile
```

-	Layers:
	-	`sha256:d488af39a41c6d98078bfe253afec66abdbbe3e6ca8e9215f9d22dfec873af0c`  
		Last Modified: Tue, 14 Jul 2026 01:44:00 GMT  
		Size: 4.1 MB (4120227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ba18e763febf7461280bcd938f25fd2347894c2132eaf824369b59c786ff144`  
		Last Modified: Tue, 14 Jul 2026 01:44:00 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f4e576a7937343fba398883b1e6ead66f1bec7f08842460c2098e70860b77cdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71854821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbdad9c76ed6f0934a1651a8ca4a108214687a86fa850ba9a63a8650453878d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:25:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1ad99c59586600a5647dd3e6e12fc8c9b5e12a7e7f8e1bd39b7df82072afb746`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 47.5 MB (47489966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ed54f4ae9af1a04d5ba500e0193d535cc84aa6eff10adc82ec178c9d00a315`  
		Last Modified: Tue, 14 Jul 2026 02:25:22 GMT  
		Size: 24.4 MB (24364855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e0ced563368eeed61874e26d32f01e606262229b44ec1e3ca1755b08edcae3f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4130375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b733f3e16648fa07674592d8bb0d3886a8fe11071345d93bb6874fd96a3c0bf`

```dockerfile
```

-	Layers:
	-	`sha256:27c6ca3fcd3d62181507df7b9521fadfc0be4a77076a88810c3b26f66ed1cfcc`  
		Last Modified: Tue, 14 Jul 2026 02:25:22 GMT  
		Size: 4.1 MB (4123217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:220df9337effc70a310d39c82157e5623167219fda628656c63c04c1da4e5cab`  
		Last Modified: Tue, 14 Jul 2026 02:25:22 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b65901ee86a4ccbaf0faed85cdfca7b05c217bc30e787a5bc996ea2a0ad5fc6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69380253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8108ad7caddca9977b0b7269d8199ee6f8ff3d8743af2d01a0887f71475823bf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:31:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1d8dcf695fa507a9d4cb0ef3ecaeb24a772f22a09a5795746304d8601933b1dc`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 45.7 MB (45743729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c8bac7fdc99a9f96cdc34c1e6bd063d1181c8b53c33b04b3148bc8b98c7d8e`  
		Last Modified: Tue, 14 Jul 2026 02:31:35 GMT  
		Size: 23.6 MB (23636524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:515d0443a99b367ea0a9ba2494d0daa70af528770bc94776100714a5fb69a46a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958299827198d19ae3148641e3921e1114aa97694070e5d6749ec0f50969aa5b`

```dockerfile
```

-	Layers:
	-	`sha256:920e8c253138e2d5cb047ab8e6d9deecff16dabcd7eb31b7951a449952c3283f`  
		Last Modified: Tue, 14 Jul 2026 02:31:34 GMT  
		Size: 4.1 MB (4121728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7098fe7713ab60765c48dd8968ce951d8acfbc32bbc9597125949b74daa9007`  
		Last Modified: Tue, 14 Jul 2026 02:31:34 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d9d52ec031d3a1e7a4a112873a96a72a372e6788a0b24bda144a8b5f020e88ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74701065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c55708e6901529205f53efeaa24089d83668e8a3e8629bb0ee0689ceb3fde3d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3198b4d4653b3225aa62931a3b1ff61435a6c99e83b6f2581bd52915332f78b7`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 25.0 MB (25026881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b39095e5ecf4d226aa3d20ec5f2bf7bdb390a3e8f0b5fc515dcfaf26b652426a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5848abf6c724845f6ce60d93edd9a115a3989fa3d09aec282f6f706a324a12c`

```dockerfile
```

-	Layers:
	-	`sha256:60c0750c9be8435050b016ee17f5ebef85c06979d0a383d7a368052b0493c6b2`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 4.1 MB (4121132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d4da7b9f0121207e300f7ff6171711c823a0cd266f2f277ee6eabbbd849a2b3`  
		Last Modified: Tue, 14 Jul 2026 01:47:09 GMT  
		Size: 7.2 KB (7178 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c7976bfa528506ade8301dff924f06089133974fdb6a13db6bf3ea4fecefaef7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77631952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3c5619fd1725570631fc0347af2d0acca5c74fe42c3982ae04081a4e4978a5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d062c05844db57ef4065a60eaa0d1715c922df19034daf883e4dadec97adf52b`  
		Last Modified: Tue, 14 Jul 2026 01:47:23 GMT  
		Size: 26.8 MB (26800462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5c687c4848d20b937de2836709d002a9d6bc66c4ff46d244607affc8ce4aa721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4124391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a24f86bf611738e9ec90eaf2d70c563d1f7c955ddc5ee365208f6e9941d3c44a`

```dockerfile
```

-	Layers:
	-	`sha256:7c9c1db8e474ab0331bed49b0e571ea4d4be9623107489f1ece2a03e8c52c18a`  
		Last Modified: Tue, 14 Jul 2026 01:47:22 GMT  
		Size: 4.1 MB (4117334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f32fa218d1e0de5b37ad5a33759e87a096d0cab3f8ff6eef82140dd79f5fa9e`  
		Last Modified: Tue, 14 Jul 2026 01:47:22 GMT  
		Size: 7.1 KB (7057 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a029a34f19bc93c35577ac531eb89c5089427416d8afb80c102d9abf35ff838d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80155076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04759bbed2f579897f0a5959ad9ebdaf9a1b856398e1fef19c95d2b6f1947ebe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:51:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83863de742cad030811407b90530c7828802e9f11207386bf85f9d35cecf7503`  
		Last Modified: Tue, 14 Jul 2026 03:51:33 GMT  
		Size: 27.0 MB (27021065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8ca915092dd684c83e0adab4e78d16daa31ad395aea42cd36f3aaf98c3c59a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4131199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0896e543929fec5c0cc298259c46976cfbb160a9dd860fea324a9589f66634c6`

```dockerfile
```

-	Layers:
	-	`sha256:c809e3eb0f76698ed22e0c00218be42bc07322b4dfb54cce057340b93525c7f2`  
		Last Modified: Tue, 14 Jul 2026 03:51:32 GMT  
		Size: 4.1 MB (4124075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3abdcf511f40201866731b7fe7465e6afc666189c3ccea4633da81782b757641`  
		Last Modified: Tue, 14 Jul 2026 03:51:32 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:2b6f828f67a93d805363b3829a349ef105cc993c6b6113c9d04803aebc24d5cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72766084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5471878dcb2124f14b6e43c9fe3b03d18db4c5d3b586a7fcf718180d265a1e24`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:32:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3b6761664ee64309406635b6031c9fbc23849478cf77b4c50cc52c5a5a142dc8`  
		Last Modified: Tue, 14 Jul 2026 00:28:46 GMT  
		Size: 47.8 MB (47797790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56e13f8ba5640653be74c77c11bec4a12b57a50d949a7c24cdcd88f8c959bb5`  
		Last Modified: Wed, 15 Jul 2026 17:33:59 GMT  
		Size: 25.0 MB (24968294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2775563fac9d27326b164cb3938085d7aebaca3f71335f9a156fceafcc89b21a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4119862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f045c34a26e48e77ae11aa05484876c6651cd194f95d28f45ab42f0f312541b`

```dockerfile
```

-	Layers:
	-	`sha256:a0cecda60400cd72e645dbc3e542e06708ec8401acd755372a75fae5234457f3`  
		Last Modified: Wed, 15 Jul 2026 17:33:56 GMT  
		Size: 4.1 MB (4112739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e62b667fc6e7653fff923c3389a938c80298a4ea4e879c3c2dc26aa93a285d65`  
		Last Modified: Wed, 15 Jul 2026 17:33:55 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:fcedbb691ddd56447480ab2a268f67243136d1e451d058512eba6f94002da21f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76186319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95d3ec4b46a8ff3576a7e4a1754e31a0cef31d066261291b3eb8da871e6943d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:08:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63c11684f0eef7c3f7f0fbefbbe513218c6eb99f11d347384595ee632687aaa`  
		Last Modified: Tue, 14 Jul 2026 03:08:18 GMT  
		Size: 26.8 MB (26804611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:39d7ebc2c3791c909fe8fafdfaaa75aebfc75369f5479af8679934591ca4293f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4128722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af154ab431540c1cf34a9ac7a86301e77c3b2e54208199c2240d395c961e080`

```dockerfile
```

-	Layers:
	-	`sha256:a90b584e7a70e72a9e6fd040f5e6aee6cbc82f05d2ca8957057a5c8259010499`  
		Last Modified: Tue, 14 Jul 2026 03:08:17 GMT  
		Size: 4.1 MB (4121637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb37f682460c604afbc5390b9caddadee5e597b0a1e23072afe652eebd725e91`  
		Last Modified: Tue, 14 Jul 2026 03:08:17 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.in-toto+json
