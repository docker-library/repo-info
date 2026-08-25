## `debian:trixie-backports`

```console
$ docker pull debian@sha256:f24f7dcd8af3131f29d8d0c6c044cb313cec78ff2db6e0376c798c968dccf898
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
$ docker pull debian@sha256:7d5b304322b552ea91db31a16f0900a406735e9a0a9640d5224b441860c4cbc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47514182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499aaf8a5ee7c9decf6b5a0de3e8705188c71a093b04ade757e0d1e43b7434a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:13 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:eb6dd3c63a4e348778a39eaaad39d8544405ca793fafad8492987c16b93bf6c4`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 47.5 MB (47513959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6bfafcb9289851b50666ac57d7853daa6bc6320f298dd257b039091541f476`  
		Last Modified: Tue, 25 Aug 2026 00:15:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c903d829ec58b795634f8cb438bf92ce8b97268a4b5b7ad015dec3fd0cab235b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3184746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27eee7055fc46dfe68cd0ec0f2b2f7a86dfb2d44214ae2dddeb29c8f2070329`

```dockerfile
```

-	Layers:
	-	`sha256:b41030d32068b3481143916d26066cf28ef387a66a888c2df821d0cba129a790`  
		Last Modified: Tue, 25 Aug 2026 00:15:20 GMT  
		Size: 3.2 MB (3178906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d04004815e28f0f39134e4d00b30b45a91c0b647b17cf3355a380f2c5bf67db`  
		Last Modified: Tue, 25 Aug 2026 00:15:20 GMT  
		Size: 5.8 KB (5840 bytes)  
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
$ docker pull debian@sha256:f0d6469cac6099a6363db591b341064f41cc27407c91637b64f5e7e2cc1161d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50849806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9667f83aa50a6552118f2f4141661b6814240f63fd3d5c3d25398ab5e80cff6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:59 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7634f075be17b505aee9ffb550552e7162573a2a688014310d3025860dc6d826`  
		Last Modified: Tue, 25 Aug 2026 00:16:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:606333534d00dd1c27d11ad0c56d2fbb07dde1a4113d0627eea3fd3b280fc7f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14ec0e394f8980d37b6fea509c029ea3df13464c24628c89d8e0f3e619e883b`

```dockerfile
```

-	Layers:
	-	`sha256:e50f03954886e23a6d6fb857dd76ad994aa5a97037a620255fdfaf9333719eb2`  
		Last Modified: Tue, 25 Aug 2026 00:16:06 GMT  
		Size: 3.2 MB (3173171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:338f56c6204412d8fd54d04963b2afb9d004906dda3724a0b5f84456ca3f2f4e`  
		Last Modified: Tue, 25 Aug 2026 00:16:06 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:f9ed10a565b5316644169137148e77154b2573a53fb5fbb00f3db1883700622c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53164506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538b386ab62580bbd6c46eb9ac5d9a6b0a899eaa869d076354c1694ca2073e6f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:16 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57dd1a868545c360ab7a4ff7b12192deb6d08db48ad2e877a08906c782f64473`  
		Last Modified: Tue, 25 Aug 2026 00:15:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:97922b1ba5434e7afc519c714657797388a11b68836e4fa0463ee32140f075bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0993d66446148d77583ace167c3e95e41547b22f0fe2c56c57450c84c901be`

```dockerfile
```

-	Layers:
	-	`sha256:dd2f038118dd0376ded29eb8c887a6627ca37aae0a8e4983bb486d9cc2b1ba37`  
		Last Modified: Tue, 25 Aug 2026 00:15:29 GMT  
		Size: 3.2 MB (3179482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae2502bbcadfbbde7c751977f0990077dcc06f57ad329faec81ae1e7b9f3788a`  
		Last Modified: Tue, 25 Aug 2026 00:15:28 GMT  
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
