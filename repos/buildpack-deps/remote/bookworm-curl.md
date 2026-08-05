## `buildpack-deps:bookworm-curl`

```console
$ docker pull buildpack-deps@sha256:24748dfea5c6556073a53f10fde62dd2c180746bee09cbf5bbb3c9dc5acbcd56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `buildpack-deps:bookworm-curl` - linux; amd64

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

### `buildpack-deps:bookworm-curl` - unknown; unknown

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

### `buildpack-deps:bookworm-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:fb700f024e6dfe279a753c00a60cca66474e68f40da625e1ef5bf91bcb7c1875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66153186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e363f5eb02391e7dd1204de74fc023c73445cf6206e4228c219b56d673e73ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f08ce4a309195cc7b461516684fc0628d56fd465c538e7c129a9eecab47df45a`  
		Last Modified: Tue, 14 Jul 2026 00:13:47 GMT  
		Size: 44.2 MB (44203181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1132f9cb1292797584a716d4e35906092ffde6a92ac73ad7e53bf2011c37fd7c`  
		Last Modified: Tue, 14 Jul 2026 02:29:25 GMT  
		Size: 22.0 MB (21950005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8d7e5fe073bcc94f3b31a052c0004744fc20026f2cb9ac3a4086747822c5ec4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa348d711e41ccbc97ad1197ae925940c007bc3d7543ac936391091bf0b8d7a`

```dockerfile
```

-	Layers:
	-	`sha256:136d8166dd7b93ecbcd3931eb9d6453ca65e7f3ff9357b41b28b7f17cb81c219`  
		Last Modified: Tue, 14 Jul 2026 02:29:24 GMT  
		Size: 4.5 MB (4516695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:293ca551aef08f0dc28607c9d1f428d88d335b07472afbe03f336bc564d87064`  
		Last Modified: Tue, 14 Jul 2026 02:29:24 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:84267774e25a311f6da71fb6717ac57bf84875811445918ac95db8b76bbe2d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71996392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd71ec9b2cd61c4ffc35b9727e58bbde1377e368cc8acfe1703dc08122a8312b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ddf48167612aed77769353ebbb5964ba9230b578eed9f7db9814873e92175831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4521564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ceef236a14e2446829fc1703999c595b1a307cefacabb52ac5902e748675cb2`

```dockerfile
```

-	Layers:
	-	`sha256:f13687c65949293c9a399ccfe209811c8877b48531094af0355d8387a7e8794c`  
		Last Modified: Tue, 14 Jul 2026 01:46:41 GMT  
		Size: 4.5 MB (4514667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8849b945f5480717409eeb9fe6992e0bf183bab01601feef5aa6e5d8d8353f39`  
		Last Modified: Tue, 14 Jul 2026 01:46:41 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b8f6bf0a54b3abe999a534404948cdd5145757716d6c10bca5f8a74ace6ea7aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74365272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e2c208cf019a27a9a0b0c38b4e624ec5f97ea69caf46bbc6957a831de812a9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57925bd1ff28d8c7df42e8e4386b1a8e5104548196adaa28c62e0c7b26b5f2b9`  
		Last Modified: Tue, 14 Jul 2026 01:46:55 GMT  
		Size: 24.9 MB (24879833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:631a4fafeb229fe0b42f7f855ec1b30ac3c8e9247c1cfb9d97e059a40fbc8b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4518320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb943ab50370f27ffe80ccfc9622b22c84c80a945758dd1577179b8083355fa8`

```dockerfile
```

-	Layers:
	-	`sha256:febec20e33cd097f765816b847dc9941dd95314e3173c73c4e64586988cee13d`  
		Last Modified: Tue, 14 Jul 2026 01:46:55 GMT  
		Size: 4.5 MB (4511525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b9e416f9a4acd7cb680986e204f5aa8200dd55bc2e1fe063612fa7b4a192f30`  
		Last Modified: Tue, 14 Jul 2026 01:46:55 GMT  
		Size: 6.8 KB (6795 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:670c629dc18e8c82c59ff78f8e4520a0f8d84d326b74576268ff53f0f8c6f0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (78029130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adc279bc84dabecce15ab8d81d227576e57505248e6efb378a6b06c7296e705`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:49:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206cda10cbd9dac32ecbd02a80861ff43df730ef77172b28d0e3c72a02c96ae`  
		Last Modified: Tue, 14 Jul 2026 03:49:23 GMT  
		Size: 25.7 MB (25687296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bc5aca73287335d6de92583850fa2390cc561e137723ad2745d55a3598cb65ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4525881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a2625723674bae85d4082f2533d856f8e629371edb9cb5d005ca9b517abdc6`

```dockerfile
```

-	Layers:
	-	`sha256:0b035aa2a791f506a36ad6529fce31bd5f8637709b8e85dce4043ce109d1f8af`  
		Last Modified: Tue, 14 Jul 2026 03:49:22 GMT  
		Size: 4.5 MB (4519032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b17bb93d1a89de1a7d2b074a3cf0110552fbd5c90586948f46ae4ca8edd6f82`  
		Last Modified: Tue, 14 Jul 2026 03:49:22 GMT  
		Size: 6.8 KB (6849 bytes)  
		MIME: application/vnd.in-toto+json
