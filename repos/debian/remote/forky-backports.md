## `debian:forky-backports`

```console
$ docker pull debian@sha256:c6433c5c0d930dca7f562e25e5b187e93e61cb1b8dea965d7b2b56c0600f89e0
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

### `debian:forky-backports` - linux; amd64

```console
$ docker pull debian@sha256:fb3b05fa3f6fa9fa2464998cca04b2e8807f9b1e50d0b8f35e8148f3ec3c9f10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49837735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f57cb247a01f544a90ed67ca1acd00c94529c264179bbe2ea5e64e62b73604`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:12:31 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bae6af29db671fcd5f4e779ff0dd49bf89ad0375952f4d076d7bca0ee0bcf5c`  
		Last Modified: Thu, 05 Nov 2026 07:12:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:69f864cfe01b5361398e6aa0f0653fbfa7c0446d8670d19f1abf97a4ed5c00eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17700e24f6fc6a352d60fc921d9fbca338a8611a24a87017586fc23593b5e885`

```dockerfile
```

-	Layers:
	-	`sha256:9b099d9a9326d2e95365a0589b8da87549832a7c3a135710c3cf87f86cfa475f`  
		Last Modified: Thu, 05 Nov 2026 07:12:38 GMT  
		Size: 3.2 MB (3176219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69244485b54899742805ee550a6e4aa4dfec0ee9ea2e3a120f2cd8582ef49b16`  
		Last Modified: Thu, 05 Nov 2026 07:12:37 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:cc8da1a5f400c7defa9d3d705464758ee6326ec31b4ea42bfc6d7be263c2386d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46026246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f633753b9992825afd1d679c728a2eb07cc670005019e8eb98c0242d47abc1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:12:23 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f4571deac5636a396a2163d6b48f873d6a8a303954c381d1bc5b38f11cd16c10`  
		Last Modified: Thu, 05 Nov 2026 06:16:03 GMT  
		Size: 46.0 MB (46026021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3884884f962c57076b86970a67698a0b7bffb98e8f33d7dd6130d7d9de0dc2c`  
		Last Modified: Thu, 05 Nov 2026 07:12:29 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ec0dbee2ea83f90fe3e1e8263551903b805ab6d7044acfe0af4efe775bd5b79d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:668de997355071fa0c137f45b7ef82b52d0a8f7b58e929b7907701d62d2ea083`

```dockerfile
```

-	Layers:
	-	`sha256:b11ed55cb79908b1d5a3e226ff76d809f926cee82e7caf2d0070d1ae2796f4f4`  
		Last Modified: Thu, 05 Nov 2026 07:12:30 GMT  
		Size: 3.2 MB (3177746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5376965d609ff60221be9ac691d2bb2ce278e46fd10c45c14b0daa6c9aa2930`  
		Last Modified: Thu, 05 Nov 2026 07:12:29 GMT  
		Size: 5.8 KB (5834 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:d05cf48ef2e277083583df17690a1237bb251d24c89336cb55d49534a1df91ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49180458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9aef60c08441dfe29a7c7a5ce28213c1f886e50b4d1a700c5cc23681b7e0ee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:12:27 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de22f6c889562507eda722a637ef42a7a52832afcba639b8bbced956b857006`  
		Last Modified: Thu, 05 Nov 2026 07:12:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2e5ae7ee99ef16d9f5dc37d3603aad0fb550fef344648eff6b1ac3cf81565e94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d02e6ec644789cd9d4b7f441c75e4b0b8766a0acdf8ff9fb239424c7b25b54d`

```dockerfile
```

-	Layers:
	-	`sha256:c79dc38f4bca387361399083fdad6d88eed94afa008f8016bd915f730a75fa26`  
		Last Modified: Thu, 05 Nov 2026 07:12:34 GMT  
		Size: 3.2 MB (3179668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e7fa9e737882e5e8cf9422ab79fd78c780e3955925f09b7c2fd1cc752fa4d87`  
		Last Modified: Thu, 05 Nov 2026 07:12:34 GMT  
		Size: 5.8 KB (5846 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:f460d1ed296f9e33d7ee8436e877dabf540f108c0bfa1609d3979f41cfa8570e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50970925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11fc5edd6dca1034bd96dc4c51725fdee8b31c37e70fa7a5eefd5da3584cb14d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:12:32 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:88279104588a0d5efe47acaa871a7b60ac245f575d2fd177222855c5f58e2e1c`  
		Last Modified: Thu, 05 Nov 2026 06:16:02 GMT  
		Size: 51.0 MB (50970700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7f6edafde0d7cc20f4a24f20a8eed0b9ca99e5945896910401b5dd82b9f98e`  
		Last Modified: Thu, 05 Nov 2026 07:12:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:57b0b0ffd211fb860f389f4e641a483e470468feb9ae015d9d5294b1ecd7c3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cef2d00c4a660b03c735f43b258e36aed358d1b53409c1de9714dd1ecb88e9`

```dockerfile
```

-	Layers:
	-	`sha256:fff1d1f1a6f1f95f5cb52d145ab0db5000188be8df7b7f90ba21a329e9f8f0b7`  
		Last Modified: Thu, 05 Nov 2026 07:12:39 GMT  
		Size: 3.2 MB (3173316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2e56cacddac70933ded480e4d8d14cb9a02400355018eb909152a45a3327bc6`  
		Last Modified: Thu, 05 Nov 2026 07:12:39 GMT  
		Size: 5.8 KB (5761 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:7936812d01bbc0e62038041f21ee0cc601fe6f0a3de07ffc552027f7163e8670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54524496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:623c65e00940ae2ee3c49561f5d9abf1dd954db9b20a1f0f13e2818b368ef25d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:11:09 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9ec24ed89fd499a55bd6dbf4d5bf634cd52f8162f30831727cb57d35595f9ca2`  
		Last Modified: Thu, 05 Nov 2026 06:15:10 GMT  
		Size: 54.5 MB (54524271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f14c9a95e994684fcf5c3403e152b2f80dfbeb746832f7ed089172926cc2d8`  
		Last Modified: Thu, 05 Nov 2026 07:11:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c37b14a20a799c9299ff04a2ff15e6051d416e2bdd97e4ded7869686be7185c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f155ae9006f29515443f0b385fb806e91d798f32d0b604297d888874ec61d8`

```dockerfile
```

-	Layers:
	-	`sha256:e9448f5580e40e213fcc5d1b2368554f0b0deca5c71ddf13f12ac393b8ce6fa7`  
		Last Modified: Thu, 05 Nov 2026 07:11:23 GMT  
		Size: 3.2 MB (3179985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36c861ba347f6bd94477ddf04cf1dce1445f1afd942a66ecf6dfdf16eefc4aff`  
		Last Modified: Thu, 05 Nov 2026 07:11:23 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; riscv64

```console
$ docker pull debian@sha256:f36f61cba70734e66666f69e425fb9941fe7a71e1f0082f2d8e579d7412d0c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47263206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbae4a73c7e56c8ee08ee71cda7c6bf6d692cb08141cc889655dbb6759247e6f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 08:40:07 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:af6814c9b170f0ad2c29fb9a95b0e4fbd5b006cf40779c5aad8ca65ea06385ca`  
		Last Modified: Thu, 05 Nov 2026 07:20:48 GMT  
		Size: 47.3 MB (47262981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c100e4190261e37e4b827576b65be3d496be949d02cec9951eb887bb553e6359`  
		Last Modified: Thu, 05 Nov 2026 08:41:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:db0d213ca491d03444d0bf54c585b9d365ab74a096034ea29fe2a59c5102b80c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c20980b81c13cdb273777b59530cc23aa5d855645f9505b8747e4afc2d5f8c50`

```dockerfile
```

-	Layers:
	-	`sha256:23eec011f90debe1e2adf2de40c369cc4867a41298bcdfad26b0970024733495`  
		Last Modified: Thu, 05 Nov 2026 08:41:14 GMT  
		Size: 3.2 MB (3167768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:863795071c7e2ce24704e50cf1d08268a2a6609c2d526c993cc00ee757da6652`  
		Last Modified: Thu, 05 Nov 2026 08:41:14 GMT  
		Size: 5.8 KB (5803 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; s390x

```console
$ docker pull debian@sha256:5edd5bbe85acaa86b6dcb5c913155d04137cbbdda75fd6a2101e53bb254db461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48937538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a464969b33a735a400773a31ee8dd11e77415ac3a44edf1302e8a4055d80c03e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:11:27 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cc8ac2db6c9fd29c12c9ec3701cdeda90a0db47520cd2c224978701e217d1ff1`  
		Last Modified: Thu, 05 Nov 2026 06:14:44 GMT  
		Size: 48.9 MB (48937313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a89e68fca0f1c9e48bb1ea222c60118894f72ba3c940aba12fd7278dc1a99d`  
		Last Modified: Thu, 05 Nov 2026 07:11:46 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e5047512d6fc2efead866ce376ef7458e130e7306c004f5771923b4ffd211388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3580304598ef37855847bf5fa15f0eb3c08c167724b05aeb07e7879f670ef6a`

```dockerfile
```

-	Layers:
	-	`sha256:78155163fd8da6d91a383de42cc1df6fc07f29060980ea9bdd06a43a539da794`  
		Last Modified: Thu, 05 Nov 2026 07:11:46 GMT  
		Size: 3.2 MB (3177615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fde16f8625dc0e789ff92fc0ac91d7f1e401e28d2a073a0e8773fa2f38cf5214`  
		Last Modified: Thu, 05 Nov 2026 07:11:46 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json
