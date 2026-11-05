## `debian:testing-backports`

```console
$ docker pull debian@sha256:48932c3ba66142860bac84927fed9602d73460c0cc111b4baf0cee72cf99a5f0
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

### `debian:testing-backports` - linux; amd64

```console
$ docker pull debian@sha256:29a2dc1ff1ecf2b8b19bea0a0453e36b00818fed1b64f6a9557739de3b6329a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49837734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3664d56cd78c2ec674c38af91993e764ca71205bb5c5db12e8eacdbb2d167bc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1793827419'
# Thu, 05 Nov 2026 07:13:00 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:45d266b30e99a9710a929d35b77e866a55593a71a1548a5ce857af3cfdf00451`  
		Last Modified: Thu, 05 Nov 2026 06:16:42 GMT  
		Size: 49.8 MB (49837511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65766f88e880d3ed985609c0d6a61bfb63674b40ef2e25febcfedef207662e41`  
		Last Modified: Thu, 05 Nov 2026 07:13:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f2df4a3dfdc19db10b31049f8f7a30ad362f3ab54371c4191be43d9825681b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3182017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e213d3448fe5db3a42f4fd3eb0c223e067c84597de1b93452e2433e79dbb2da`

```dockerfile
```

-	Layers:
	-	`sha256:de69aea331987abc85ca4ecda8309d1b7c3d3cff311c5242e5e30abd5ee82478`  
		Last Modified: Thu, 05 Nov 2026 07:13:06 GMT  
		Size: 3.2 MB (3176223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60aa55ccb225b677fa959ad8bea79166a45056329e5910e5bffa206870b599e9`  
		Last Modified: Thu, 05 Nov 2026 07:13:06 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8a7cab53207d70ac61219ab9f3d7684b4abb7a13a6d15b52c0c7789cdcc746f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46026245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202085204f3fd7c324b96aebf15dfbeeb372815fe4a38a28530cdf9f884bba76`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'testing' '@1793827419'
# Thu, 05 Nov 2026 07:13:16 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:641cb78b78494449fd3858caa734977c348a86b3b83ae23cdd2117cb03dabd59`  
		Last Modified: Thu, 05 Nov 2026 06:16:30 GMT  
		Size: 46.0 MB (46026022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c724ec0de111f75f925c7080ce41855ac9b22fdd64ffcf784a1dd97a715af077`  
		Last Modified: Thu, 05 Nov 2026 07:13:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ea4b50e4bc3da70a5fb01e12b8fd13d8a333ea2395621d9299f4ea5b4f1b8853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9897bffca493422dd3048a696ec50b630a07f61450b9c05b6ca01acb53a655`

```dockerfile
```

-	Layers:
	-	`sha256:afc35ca4247391ad7ceaaaa0a90fde22176ae30a217f2c0a1ae9795556e1be36`  
		Last Modified: Thu, 05 Nov 2026 07:13:23 GMT  
		Size: 3.2 MB (3177750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c156ec79a6230f2cddf1b1bdd59bcd91cbbb2e8bcc112843babaad39960c091e`  
		Last Modified: Thu, 05 Nov 2026 07:13:23 GMT  
		Size: 5.8 KB (5850 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:00098c1289662be7a3ba80e967a231124faf3ce78374e1e509aed3eef900409b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49180459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c363da29903006cfbe726ee55c1895aab26493a125ab288d1934b525a419211f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1793827419'
# Thu, 05 Nov 2026 07:12:45 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:ad2c4ff9569d9709096e258213ac8e8c8226528c93fcc45182987fb4d0ed7c88`  
		Last Modified: Thu, 05 Nov 2026 06:16:04 GMT  
		Size: 49.2 MB (49180236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075dafab5df426eefe2bfaf35a7dc89bd0691813637e1ddd17e5e83a418e863c`  
		Last Modified: Thu, 05 Nov 2026 07:12:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8edc81b8ef652a82f85ea6d966bc8e21e1d647c201f5979a90c301fc468aca4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb4f470f231b7bd3cee1a2d86ae42f524833b5f88ca5d7717dbcb78adb79788`

```dockerfile
```

-	Layers:
	-	`sha256:533a081802dcd8567565126cd5afe8958008d85acc25245695dc877c551eb15b`  
		Last Modified: Thu, 05 Nov 2026 07:12:51 GMT  
		Size: 3.2 MB (3179672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e568e56c2e5970b4877533ddb8cc410a137474a82ed792f6c2273af4941d94cc`  
		Last Modified: Thu, 05 Nov 2026 07:12:51 GMT  
		Size: 5.9 KB (5859 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:1f3b83c4c310f681b2891a14f1ea03546588aab6715262d62d2f2ed933a0479e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50970922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6916609aa1981f5fa680ba18cdedf7962e8cf3dec6ed5f742034b8641e6a54`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1793827419'
# Thu, 05 Nov 2026 07:13:05 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d1d8d58d0e796e07dbb40df66e0e248604791b1e7168425be7b8e6f3cd90f096`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 51.0 MB (50970701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f16a330c441236807dab860845a593c2156f5b1bae820afc1d125abe7884b16`  
		Last Modified: Thu, 05 Nov 2026 07:13:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6812c6051a0c2ab58409bccdf8b7500db0651411821320cb5494f14c407d0e06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d31e72aa4cf4c3e6222b538311a4dfbb4d4626078c7813f62d790de813b19a`

```dockerfile
```

-	Layers:
	-	`sha256:618fd34a240d0fc6672bf40b0041778dc9d457fdc8eca5175af91a87e0691b05`  
		Last Modified: Thu, 05 Nov 2026 07:13:11 GMT  
		Size: 3.2 MB (3173320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a92f7c86f3161d3d556f6766b1a88754b938d882c5230be8d5a3e771516739b2`  
		Last Modified: Thu, 05 Nov 2026 07:13:11 GMT  
		Size: 5.8 KB (5777 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:5ab5896ca75e3a792a26edb21d1fb31a60c40f7a871a0e34ee239c1b04fc4109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54524492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47eb8388006cb0684df0152f054e9db17f1781e37e7c396e393cb2fab055b9e3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1793827419'
# Thu, 05 Nov 2026 07:12:04 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3f5e0b02523adc1e005b37b57eab352f1218057e626a8fe4d360feaeb89d3462`  
		Last Modified: Thu, 05 Nov 2026 06:17:21 GMT  
		Size: 54.5 MB (54524272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb6c542a1864e7729e7a0f713e12dcd47ce884197ad8b1564a5df80990684c4`  
		Last Modified: Thu, 05 Nov 2026 07:12:16 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8049f96f9d4944fdde5521cbdfe42e04e806a73d59bcba193de70fbeb86cec81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee05c4969c6c9a173a9252508ed0165e99da8d0f149bd6a321bb1b46227400e1`

```dockerfile
```

-	Layers:
	-	`sha256:9d099c1202f29e62c208d3219b635fc88b657b64207ae3d727bcdf847fc925f4`  
		Last Modified: Thu, 05 Nov 2026 07:12:16 GMT  
		Size: 3.2 MB (3179989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57f2a4a7c3fdf306a722b5b8009f15a67a9e5382bc7d72dc02197cd0dd8cede9`  
		Last Modified: Thu, 05 Nov 2026 07:12:16 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; riscv64

```console
$ docker pull debian@sha256:d1d7e819f390bd888ae7b3479b383a1d3822a118a1522fe91798718c9e50e0e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47263204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e319952a0d36e721ba2f5587c3f9fe3c8c6e1f026e69189828d45b3f6eb856`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1793827419'
# Thu, 05 Nov 2026 08:47:48 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b951c2473dc72e9e2abfe2a5279de7725125dde28a61b3a4e22c27149b11938e`  
		Last Modified: Thu, 05 Nov 2026 07:32:58 GMT  
		Size: 47.3 MB (47262982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b5211c2531c3e8f6a1fa7c04677d69f0076bd04eecae4bbdd23433f67b439d`  
		Last Modified: Thu, 05 Nov 2026 08:48:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6790a265a6c69c68c0e834272f1ae7030751a2bf29b8cc168913991762768edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:180e0920256c90cfdfe8e4f3aa062b44ac310f23f7663a04258b428a6b555f65`

```dockerfile
```

-	Layers:
	-	`sha256:bca2100d2a5b3c53962ebb6e0e0b3367cec83c105bb344df13403aac0e982e6d`  
		Last Modified: Thu, 05 Nov 2026 08:48:55 GMT  
		Size: 3.2 MB (3167772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fcb526158bd51b414ee0e976824114bb939519a6de3b1e15f2074e98a0e7a3f`  
		Last Modified: Thu, 05 Nov 2026 08:48:54 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; s390x

```console
$ docker pull debian@sha256:dd89a618034cfe607c336b684f7253fe3c48c1c64f5d54c61f5b358c6d913804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48937538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f0798cf56856fc8c6276285e493aba465dd711dc5d41e7c15050a5a2c02c64`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1793827419'
# Thu, 05 Nov 2026 07:11:45 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:995e34b1bbd976b5fd614a109465308f396777e260db9a12c9282bc689843e05`  
		Last Modified: Thu, 05 Nov 2026 06:15:28 GMT  
		Size: 48.9 MB (48937314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecb68cdff5c969c0d71ab244597ff2bdb8d892f09b0f32289373ad8a4d551ca`  
		Last Modified: Thu, 05 Nov 2026 07:11:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:284e928619b4f7276f96aadd30bbd4659c4f54c5ce61f86b72788e73c3651b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90397fd18701a78f347ad6abcafe2eb2d5cb657ff785ca4a4d9cf6c398f5cc68`

```dockerfile
```

-	Layers:
	-	`sha256:e91e98e6ad2ddfa6221ff41035790d9be4ecfc7fa5d88f1593ee4486c796a044`  
		Last Modified: Thu, 05 Nov 2026 07:11:55 GMT  
		Size: 3.2 MB (3177619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c32b5102b29f7196e657810f012eb207bb013d1f289e80069e1ff84f5df6aac`  
		Last Modified: Thu, 05 Nov 2026 07:11:55 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
