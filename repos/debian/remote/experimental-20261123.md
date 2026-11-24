## `debian:experimental-20261123`

```console
$ docker pull debian@sha256:f1dc23b82262ea26534efb77abeb7bf16f7c3289948fa7a2c5c04b1f7bc39c33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `debian:experimental-20261123` - linux; amd64

```console
$ docker pull debian@sha256:41fedc1cc313a3d7de916374ed270ec49f18f240f3ecfced7b2a56aeec1589d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50936967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f00a2a10362146836385ae77e36eaebabed2adb31eca2f06dc453fb30f85366`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1795392000'
# Tue, 24 Nov 2026 04:13:31 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:b6bb526860d058361e8b94adf93a3ae821c7ce135d37357ec7aa59dd394deb33`  
		Last Modified: Tue, 24 Nov 2026 03:40:59 GMT  
		Size: 50.9 MB (50936746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd40fe13b04b53ca3f56ff62a59f1ee4bb0bf41ffae6a54ee35c47b6c564c83`  
		Last Modified: Tue, 24 Nov 2026 04:13:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261123` - unknown; unknown

```console
$ docker pull debian@sha256:d561a4f903d8581173b548ce85c2eca583bff211fa6c96251ec390a55882bfff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c05358dc20c8b5030f2f87d69be7bf73943cf99b0f9fba1b6de9c1bc13ad7d43`

```dockerfile
```

-	Layers:
	-	`sha256:02c5825e5c9c96d68a1e9e519ae86d65f91431cfb11edbabf8f1d322b3121a0e`  
		Last Modified: Tue, 24 Nov 2026 04:13:38 GMT  
		Size: 3.2 MB (3196499 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6728d20720506e8a4e179d9b13c8d5203d056ddcf7a8f47ee21235ca832e657f`  
		Last Modified: Tue, 24 Nov 2026 04:13:38 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261123` - linux; arm variant v7

```console
$ docker pull debian@sha256:8ec671503446eb0f0d25315f31b9ff3a7976476dd538868611edfa97c15d59ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46858274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b265dfe5b74280fe15c721bffe363787b9644881c1a12832143feb04b2472703`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1795392000'
# Tue, 24 Nov 2026 04:13:53 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:f459cfa9a19c4023ccb0fdb0b4bd0232420b438bbd61425b5f7e6f7c2645100e`  
		Last Modified: Tue, 24 Nov 2026 03:40:51 GMT  
		Size: 46.9 MB (46858054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e883e05d227f4b88dd36ed2b7fa1a4077fe081a84d1957f750cd37776c65c558`  
		Last Modified: Tue, 24 Nov 2026 04:14:00 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261123` - unknown; unknown

```console
$ docker pull debian@sha256:5f5120137eaf945ce2e067865f1ff43f965f7900ef4d8d261a43b8048d9585a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbcacd1e16c214a83b9ab70f8d15423b90ba851812a32c83ac66083ce524090b`

```dockerfile
```

-	Layers:
	-	`sha256:56dbbfdc54509f270106b03309405fafbcec7e2ea53213920bdc0955e1631845`  
		Last Modified: Tue, 24 Nov 2026 04:14:00 GMT  
		Size: 3.2 MB (3198079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44df1c435cd8e05d0bb8961536644c98d52dc0bb3b6ea6897bcb74f4c86807cb`  
		Last Modified: Tue, 24 Nov 2026 04:14:00 GMT  
		Size: 6.2 KB (6165 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261123` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:0f02ca3d0dabcb25d488b700aaa4a2864b1e22185e4422d104efd933eebf38c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50059836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4033ad80ca8286975f1a9d184288f3857b9dc46d7be99e465028d737ff8a0927`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1795392000'
# Tue, 24 Nov 2026 04:13:37 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:8983b01a57c4e15afaced527f2ffa102ae0e3577d82763d011f87e10acce78bc`  
		Last Modified: Tue, 24 Nov 2026 03:40:39 GMT  
		Size: 50.1 MB (50059616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18bdcfa76616169380f6d9faab1035551a5842a470f1ad4c0312e349ca71102`  
		Last Modified: Tue, 24 Nov 2026 04:13:44 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261123` - unknown; unknown

```console
$ docker pull debian@sha256:291cd607aba9b86e9caf029f9a48ae38fe8d95c93d9ae37f5db2b7bda4bfeb7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3205517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b118b3e3a5eb6db8cf1675de9fb18b05a148692bd86695ab96626a281a86ee1b`

```dockerfile
```

-	Layers:
	-	`sha256:329a952d75f6f37f0fb089f31f90e8db883b4416e09ab7c10efd6e37fc306c5d`  
		Last Modified: Tue, 24 Nov 2026 04:13:45 GMT  
		Size: 3.2 MB (3199337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:565cbe425882d2adf139d06ba64c7613a063b0254564a7039f6788ae185458ab`  
		Last Modified: Tue, 24 Nov 2026 04:13:44 GMT  
		Size: 6.2 KB (6180 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261123` - linux; 386

```console
$ docker pull debian@sha256:02b03f6319364f48e134cc89c6d4fc2cd1b9e1609506a343f67b45eb68dffb8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.0 MB (52015238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f845bc9cd7d8f9fe7669cb294aa9fa858aab8d22ea97ab96d1294f08667504e4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1795392000'
# Tue, 24 Nov 2026 04:13:02 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:59e7702f0ac4f476c54781d5465f15e05b19ce99421dc4c7464541f4114f8314`  
		Last Modified: Tue, 24 Nov 2026 03:40:34 GMT  
		Size: 52.0 MB (52015018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f595fc1364d33c9841163c3f2252c14839f4cd70cb026336b4b46fd2a150dedc`  
		Last Modified: Tue, 24 Nov 2026 04:13:08 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261123` - unknown; unknown

```console
$ docker pull debian@sha256:5f0d6916e890b77d2a6f688b345dab364141023626a7e5ab48be10064e6dca94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3199641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be0eb942ac72fbfaf546059d83e7c029c093a0979094c675e61bc86c588cacd9`

```dockerfile
```

-	Layers:
	-	`sha256:335b457018f0a885a6508c764e49a36fa0abd2289d347a32ab20e972e321e22e`  
		Last Modified: Tue, 24 Nov 2026 04:13:09 GMT  
		Size: 3.2 MB (3193562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c07f10f2bab91f644c29a9aed0346b0635751f27f3f9ed3228c3a81049e77de3`  
		Last Modified: Tue, 24 Nov 2026 04:13:09 GMT  
		Size: 6.1 KB (6079 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261123` - linux; ppc64le

```console
$ docker pull debian@sha256:0e0e35409bfefb80b11d03fb9c85ec4e02de2e1b560509521b6d450e8b3d52f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55543432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038326d8575168454e6fee901d05ff9d52586f72e9a75081b04818d8d11c21c5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'unstable' '@1795392000'
# Tue, 24 Nov 2026 04:14:20 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:bc1330b757c6f9c7ea86f843d03ca1dabf65032d269722a6bf9fbe4d156a612e`  
		Last Modified: Tue, 24 Nov 2026 03:43:12 GMT  
		Size: 55.5 MB (55543211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4765376fdc0e023cc1d16557f7fa23acedb8659ab9f8e62fa4aa73692ca4e154`  
		Last Modified: Tue, 24 Nov 2026 04:14:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261123` - unknown; unknown

```console
$ docker pull debian@sha256:7ea31572bda458a60a227d0dd3cb16c9e25f6e62f2fbf768cf519dae43226b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3206481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b024e6a60ceba747c2211e5a5811b199ff55733844d54770f3ce5864f607b8`

```dockerfile
```

-	Layers:
	-	`sha256:c8cee700e6c7a485462833a40aca7afee9bbd4526b4a2dd95d9ec6ddc1d6afe2`  
		Last Modified: Tue, 24 Nov 2026 04:14:37 GMT  
		Size: 3.2 MB (3200348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a87e464263567c4e96848617fb6ad59583add60432d2f2c12a8123eae8d3cf`  
		Last Modified: Tue, 24 Nov 2026 04:14:37 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261123` - linux; s390x

```console
$ docker pull debian@sha256:d8c7444f8a7402f95ca4077d651524df8361dc95b02aa1f8c8dd0a1ed8120ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49961560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea00f0b52df858eb996e50de096f282d5c1fdf73608bcfa1f23f7b044a9a4bf5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1795392000'
# Tue, 24 Nov 2026 04:12:18 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:8eacc32012345d96a3c9d87943b71f3fd1dbe92bb659a98f6dedc01b8c6c664f`  
		Last Modified: Tue, 24 Nov 2026 03:40:02 GMT  
		Size: 50.0 MB (49961336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4de9787d614d5fd310f366c3faba850342e0ed6a3d5607ee6a4071a8a5f4674`  
		Last Modified: Tue, 24 Nov 2026 04:12:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261123` - unknown; unknown

```console
$ docker pull debian@sha256:136ab1d78d51cc52b820ce629f3bcb514ac36b3534fb3c68ab22c5bd3096d1a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681a3200e53d8898a0f782547d4d1995855e08e4e003fa81ed64d23fba159a12`

```dockerfile
```

-	Layers:
	-	`sha256:f8ecde194281cda20cba62492f90cbb9a201d9cefc847e8e8a77e4890e3efdd8`  
		Last Modified: Tue, 24 Nov 2026 04:12:27 GMT  
		Size: 3.2 MB (3198693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87c4c0f09a7bd8031d860614f7bb869c0476e062d9617ef49640e60180f8be7c`  
		Last Modified: Tue, 24 Nov 2026 04:12:27 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
