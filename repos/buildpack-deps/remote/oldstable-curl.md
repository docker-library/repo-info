## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:001d0ec7cc18a4e3d7c62706a04016c7baac489af1cc0be0c4363bf575559c9a
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

### `buildpack-deps:oldstable-curl` - unknown; unknown

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

### `buildpack-deps:oldstable-curl` - linux; arm64 variant v8

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

### `buildpack-deps:oldstable-curl` - unknown; unknown

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

### `buildpack-deps:oldstable-curl` - linux; 386

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

### `buildpack-deps:oldstable-curl` - unknown; unknown

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

### `buildpack-deps:oldstable-curl` - linux; mips64le

```console
$ docker pull buildpack-deps@sha256:c7edea20a735ecfb026675ecaa873df6495a7e89757dee066353c21fa7945115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72411983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc0b7b3df0a59b0ce8b249690141e62b6e5594782041215e353d43c80653b93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 15:23:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2c328c8c141bfe93d6858b21fa00b7c39f26eabfa97b46e975fdb98a417abb35`  
		Last Modified: Tue, 14 Jul 2026 00:13:01 GMT  
		Size: 48.8 MB (48787637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76566152e1d6c0e89b31535cd95a023c05f7a786977745a6d5a4e7142f155ef7`  
		Last Modified: Tue, 14 Jul 2026 15:24:33 GMT  
		Size: 23.6 MB (23624346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:aee80d80d93e1ff755573f045c0e3b368eeb3f3089b658956dc9fb0f0fbcdb47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 KB (6650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f573d55700a59109c71f953dedc27474a4b6a72bd045948838efd980031749ba`

```dockerfile
```

-	Layers:
	-	`sha256:96fcfe4d48b3087c97ec36a3fbbbacc9033f78b970e586259d2786c9c7682fba`  
		Last Modified: Tue, 14 Jul 2026 15:24:31 GMT  
		Size: 6.7 KB (6650 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-curl` - linux; ppc64le

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

### `buildpack-deps:oldstable-curl` - unknown; unknown

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

### `buildpack-deps:oldstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:ea48dc51c1b8bcae181fdf1ade078ad30e564c4a48702c40487a291dde2d7fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71196445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fd87c267bc45a8c2ac119893453b0522e32085a07e672e173a01f1a676b2687`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:07:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fa1f9755ea504ea510505c6aa6140e24c157db826373159a938bdb7846c5eb`  
		Last Modified: Tue, 14 Jul 2026 03:07:36 GMT  
		Size: 24.0 MB (24039166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c2a335cf334352dbbeafffc986927101a7c425aeae3aa97201f0de9dbbe6762c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4518026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efacd6ddbdd0bdef91799246f2ae1b969c4ec9187e50022428bdc505c0806b6`

```dockerfile
```

-	Layers:
	-	`sha256:b1f2e64a10942c8e11d1cd1ce72a1d86a20ab9c0e79fcb8c5e63a1df654ffa74`  
		Last Modified: Tue, 14 Jul 2026 03:07:36 GMT  
		Size: 4.5 MB (4511210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f38924f9d58d2b665a9c814630595bb48ebf52cc5dde0aa3e8ca873e2dfdc1a`  
		Last Modified: Tue, 14 Jul 2026 03:07:36 GMT  
		Size: 6.8 KB (6816 bytes)  
		MIME: application/vnd.in-toto+json
