## `debian:trixie-backports`

```console
$ docker pull debian@sha256:6d678653ad207c7c6ad5054f9f67bfd34c83ea66dc062b4859b4e027f94ea1dc
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

### `debian:trixie-backports` - linux; amd64

```console
$ docker pull debian@sha256:61063caf0cc13ed7ba8a803f17ee5bae39c3d5b98f1b70d8f94dd4a6958909f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49338052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c80c5800c7cb4d47017d0a5ea8fbbc892c5d3350d747c580e4f01e540c66df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:59 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7634f075be17b505aee9ffb550552e7162573a2a688014310d3025860dc6d826`  
		Last Modified: Tue, 25 Aug 2026 00:16:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:00d30f0a1af8e9ad548686c564e35adb02981f5034b12afe82f60b6b3ea3b21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f374dd36b61988ec02a6dd64ac8b0b89c73a0d5a9746ce6c1ed9e3e02dadc5f4`

```dockerfile
```

-	Layers:
	-	`sha256:df6eaad1162dd3e1f24e903168bfe990d38877f755001f0cfa364bf061c323c0`  
		Last Modified: Tue, 25 Aug 2026 00:16:06 GMT  
		Size: 3.2 MB (3175969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:713139235e67a9935ae2cee8828ecf70446dec23e123a0de044d951df831e464`  
		Last Modified: Tue, 25 Aug 2026 00:16:06 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:ef710c1f1fe89132546524498082caa130f9f3952cbd6825eec0ca937ec33218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47489856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36d762c2365e3b77018fa2143053362eb7f4bf47a9c0931dbdc5e8b53a3460d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:14:42 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:31cdd84f3313aed453f665b91a900091c434a8f09c15bb822a4e06103d09ecb4`  
		Last Modified: Tue, 04 Aug 2026 23:51:31 GMT  
		Size: 47.5 MB (47489632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcb264768a35879351429c5a8641e9fd16ce1f120ab0fab5237c6e531b54107`  
		Last Modified: Wed, 05 Aug 2026 00:14:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:37f444cd80ee25b102aa07f5b1072dfce2ea2060f9d3cecfc488ef214e1a9dcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954c92e3605bc4d966d8f5387c1c66caa263082b6feb057e0bb9494d99d3ea27`

```dockerfile
```

-	Layers:
	-	`sha256:2a5373f4812beb610db80812f953bb0aec98f21e782c6acfc91199a0e368db02`  
		Last Modified: Wed, 05 Aug 2026 00:14:49 GMT  
		Size: 3.2 MB (3173928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df53a7d19bb4702ee2e4c01579b002edc0bd392393699b1a04a607c5bc58cf6c`  
		Last Modified: Wed, 05 Aug 2026 00:14:49 GMT  
		Size: 5.8 KB (5839 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:05c33cabb6a371b2cc4376bab0e1196276851a63c7ab7de006630e10daa5da09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45764275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee44ecb09de7e8a8bf9aca1e19bd3c8c00e4f588ac7331652b9ebe0b391deab`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:36 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ceb50b89644415bef892aed800620bc7a4a37d1406e86f717e0f96f7fea5c43`  
		Last Modified: Tue, 25 Aug 2026 00:15:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e52a35229ca2d1acd44afd31de0e84a1ac3a62a439ed7d4fb464a748ff0fce6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1553ddea1cb78462d333b9c7435dfa71f5f9b3f51a2e8a104258c4d1a8d792be`

```dockerfile
```

-	Layers:
	-	`sha256:bfa1476ddb1d21348e3c23548cc4814f5e5b71b9b9354a3a95aac5628e78be62`  
		Last Modified: Tue, 25 Aug 2026 00:15:43 GMT  
		Size: 3.2 MB (3177343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b01e29b56cda24c10b98560beba245a7ed5e03149be7450aa592d91402768a79`  
		Last Modified: Tue, 25 Aug 2026 00:15:43 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:1ef5987be5b86fa2b85af4541ece53d280ebea65355110838bc1fb2e17175e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49705077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec58118d8d7829d1c369ddabcf5d2a76c3d4cbdf16ecd595232cd566f154cc6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:01 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf6ea2c91067cd7bf2832e630b25b4f0c39ad32d8f17aa1b9c2ac246508958c`  
		Last Modified: Tue, 25 Aug 2026 00:15:08 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:3a7444ad9229fd98283e485ca5b02d1eb163fc09c1d8991ceab7a2d5813d2704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3182665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fda8b06e87227784cf2e817e1aa4df512f49a432155778f20b1ebcffa206e0c`

```dockerfile
```

-	Layers:
	-	`sha256:7e22c4f7685a1559fb0cbdb65d6270d255aac4248b1deba238d89d62e4268366`  
		Last Modified: Tue, 25 Aug 2026 00:15:08 GMT  
		Size: 3.2 MB (3176813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44355bf8cd76efb1fb5e9b71a60c85dbd1d36c1cc46c43f7edd39e3c72c23937`  
		Last Modified: Tue, 25 Aug 2026 00:15:08 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; 386

```console
$ docker pull debian@sha256:9bc4f1820c47204c7f822fb0d526a674d1e4d2a5a8224344a22292263f8f17ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50831391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e1d1b8b9a5d33cb1d932c9d5ff565e4268e6937039d26dcd46f4cad70e4056`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:15:49 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32aade8ff4b3484565fddbd4ccd7d62dae63afe3a22f7fa7a24192d84dfea60`  
		Last Modified: Wed, 05 Aug 2026 00:15:55 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:306ae700343b9b394c55c9277d1c1ad3e0d332e1acd865a6e6390cac4f9e3ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5de8d0b0f6964f6f83f235216c951154979a225b5e3a0233ae024b1b350194e`

```dockerfile
```

-	Layers:
	-	`sha256:8c87e1e80f9cd90ad3512351e0d75f4347c0eca3328e5cc74ef6dccd3a4134b8`  
		Last Modified: Wed, 05 Aug 2026 00:15:56 GMT  
		Size: 3.2 MB (3168193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e710ef7c4d5758125c754c2a6cd0422b06289241ab6429e418a74fb57478a466`  
		Last Modified: Wed, 05 Aug 2026 00:15:56 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:cccba659952e084d97226155785744d9d25dff7d68518ed614069740f3138e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53133829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2234b8848be8094e8de17420cd2209b637a8d90177378f905f439cde57e902b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 03:52:20 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c112d0dbd70cda5b58a019c455523ea084703d69f84e0b68025c725466721e94`  
		Last Modified: Wed, 05 Aug 2026 03:52:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b75d7ca51b3cc77f3a27ba6b0f323ef094bc120b85ea4755e3b5c0ce9c863af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417443042b15e74538af3d610077cdafc59fd3f29de9ec93e7b2b010ccf5e9a4`

```dockerfile
```

-	Layers:
	-	`sha256:773061e8da33c756c1c8cfbcda07770c0cc690a6dbbd14e41247ff066224d386`  
		Last Modified: Wed, 05 Aug 2026 03:52:35 GMT  
		Size: 3.2 MB (3174504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0349d1938c3d02a2d1fe390ea83a003faf81f61cae9511d655eaf3f8595ab123`  
		Last Modified: Wed, 05 Aug 2026 03:52:35 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; riscv64

```console
$ docker pull debian@sha256:c461311d4e88a84bb72cca90f8d0af8b7b86937e7a1e2bf81a69d7556ff2831b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47831104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:717e6b8ff7cca287a74e289abd26c463e250e5539fdc5922971cf31b4d1a531c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:39 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1917b91d5b1aab28138dbe26241aa6054ae23018e27d35435fc1deb353db383e`  
		Last Modified: Tue, 25 Aug 2026 00:21:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:bbc8b252fad467234329af1ae7fbdb3d4d3e7258a32d11706002bc88727fdffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3174104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b0495cc3100e959186e7586b41728d2f639b8200e2bbabf00a8b9ae3182803`

```dockerfile
```

-	Layers:
	-	`sha256:f12669dedb9e58c36bd8bf058ebb84a9b359dc7d46db0c6909664d9461e6ca99`  
		Last Modified: Tue, 25 Aug 2026 00:21:33 GMT  
		Size: 3.2 MB (3168294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07e2798dbd6bef98602ff4f509b3fa89378ad42e9a3392e78cddc7b4fd96699e`  
		Last Modified: Tue, 25 Aug 2026 00:21:33 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; s390x

```console
$ docker pull debian@sha256:6cdab9efccf49bb7f2cf1745a23c661ede53254b26ea842cf4b06fd3f8c07314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49406920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada80bde3a866bcb0b5ed74cb1074804a2046eab00063d2cab93f21dd981665c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:14:19 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bab234bfeeab6eba7a1c014a0aaecad2ebc201c74747239db837bfd44c263aa`  
		Last Modified: Tue, 25 Aug 2026 00:14:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:596e6c5a526c7eb5894331b828973485f3d5932e70b58fdecac05387ea29a33b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0fbbd5fc52735191158856196ccb96c2173b079094a0553abb0d17e4bbe731`

```dockerfile
```

-	Layers:
	-	`sha256:8b5326c662b5db8288f148b6555a7f2191ed079d931963f16893645ecb4eb525`  
		Last Modified: Tue, 25 Aug 2026 00:14:33 GMT  
		Size: 3.2 MB (3177416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8678b7384c88b92d6cb7637fe51a60aa3992322188233a2a0ca2e0cad04445b6`  
		Last Modified: Tue, 25 Aug 2026 00:14:33 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
