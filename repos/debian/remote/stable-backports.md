## `debian:stable-backports`

```console
$ docker pull debian@sha256:30b026705db221bd3257f641548fa2b3b07349f5820ff1efb809df932b247d70
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:1c67bd5b0c0f3e7e7e7d97221ba74a730eaf1e3f50e528aced1d2d808112663a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49379921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5639ef0aad94e92bbb5649ba2b4e84b9585e3da7e29441099308535cf408d45e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:12:19 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:5b2f4c89fd582d08d15b8ee070cd70b636281bd0f1948889bd090fdfd6887e52`  
		Last Modified: Sat, 19 Sep 2026 00:04:55 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff753d9d215298e2df454bdafe073721f41cbecf4fb81b554f89c22a61b47536`  
		Last Modified: Sat, 19 Sep 2026 00:12:25 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2b7eaecbdf10aafc00c659b0a6c7fe6056f5baa74d036743926f289ef0907dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebdd8962bbb4499c482bc14ec29d783e61f18ab39a049b91d8ab3d699fb8eae`

```dockerfile
```

-	Layers:
	-	`sha256:17f4d4fed6bda84e649edd9b7e2edd694f94ac812d5cdbf72d8ba9a7089faabe`  
		Last Modified: Sat, 19 Sep 2026 00:12:25 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5539a0813467fb06b7b721e05cfb5fa2e77803728e74eabfa778e21e76b87efb`  
		Last Modified: Sat, 19 Sep 2026 00:12:25 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:9535d7d75cd2da9c214eabfbcb8cab14214fc00e6833772dd00171901943b4b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47514181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e6c4d1d10074a458e08e7150ac66328ca15ad0b89ded3a706e7f626ba56a6c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:15:07 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1f6f70bd03aa97ef324fd8b807495581b78f700a3645ca2322fcc4a995343091`  
		Last Modified: Mon, 24 Aug 2026 23:19:50 GMT  
		Size: 47.5 MB (47513960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f0075dba60407403e1b90ed4c347a02de54fd5ed26c29e3288d091d7fbe715`  
		Last Modified: Tue, 25 Aug 2026 00:15:13 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:013783eec6b37e6b75fb314c527d7705bdd59ad9265002498817c51510e76ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3184746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c42ffbce26a731c6eea9ab88ef6a66e92a6cac2c44f2a51fb6532e0b698168`

```dockerfile
```

-	Layers:
	-	`sha256:8d58d293a78627e225526e26e5c64e2b2470d7512c3ccbee896c5cbc55264c41`  
		Last Modified: Tue, 25 Aug 2026 00:15:14 GMT  
		Size: 3.2 MB (3178906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d396119344d3599a1cad033cac25a3ec3175451d519333abd7a66ad11661c9b7`  
		Last Modified: Tue, 25 Aug 2026 00:15:14 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:1910ba89c38514f2edf2ee95941d64bdb42a7c406dd43aab62295c9c3a02f794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45804494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ba2034acfeadbb99d299faea808776ae55af0147931c2f9b1952c2105fea7e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:13:20 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4ba2819d481449f9eb8205673e5bebd979a8db9bb2c525b2f8cb0139ee4a4609`  
		Last Modified: Sat, 19 Sep 2026 00:03:29 GMT  
		Size: 45.8 MB (45804272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d6d8bb8d6e78fd0e99a54f7f6269e316de8d589c7f4dbacfcdc85b13cc64bb`  
		Last Modified: Sat, 19 Sep 2026 00:13:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ceaf83790783f1181cd682eba219499ed9a8406c0bd28768c09eaf1523a45ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3c4d128614839e8d77d3a05015a8da987ddbd716531298802f062736078ab0`

```dockerfile
```

-	Layers:
	-	`sha256:e158fe55434fec99de4628db27ddc656e564411752e5d679764b3781859fde63`  
		Last Modified: Sat, 19 Sep 2026 00:13:27 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c0a387f11c5ecee01e6822858a92bc051abfdb919695e986d5ea05899f58d9a`  
		Last Modified: Sat, 19 Sep 2026 00:13:26 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:559772eb5e2c6a0634a160737cf5ac8b33999b92862493588bcf16db0d94dc3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49749055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96268244d87c93c8de2b0eea1aeb58995edd05a0e84415c82be811a14200270e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:12:13 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6b7b02a048d52062eea469add2cba2aff1c9de92848af7dd77d44d20e3072846`  
		Last Modified: Sat, 19 Sep 2026 00:04:46 GMT  
		Size: 49.7 MB (49748834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe89ab4af30b79cea8528b915583dd9c3504635e479e16cebb91a635bf0a978`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8b1b427e40fbf4ead8bf47ebaa9b3ced17e68457a14eea61f6f5c9b6af96667e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebc19c80841c33b5b88b418432ef8b79a988685201f26029e016dae8c064ef6`

```dockerfile
```

-	Layers:
	-	`sha256:0d984e3246cdc5a67f4cf8bc50ecd5819e642c3c1b6eb7c0aaad0acd238b7785`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4afef34373b3e1c63f9cb72e62f6f4eac0dd19ad6b78ac08d54e01d4baba502`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:9f158cd7f1f43fd5d7af622542922560a5df9885890df54078b747f4929e95d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50849806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:961c119f120fc72672d3f99e5f8f44a833afd6ad21257b52e2ee3e871fc9a8f5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:15:53 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:12a62620a060236e0b28d0b61fa8bea71228e9ac710485a1305c6bc799658fcd`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 50.8 MB (50849584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf789d6f6b55dd72f5bc6ecfec60a019188d6333ac573c11f9453e6ba6fc33ff`  
		Last Modified: Tue, 25 Aug 2026 00:15:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:234146e05dbc6ba8b2d4f487f0cbab0265eece3b79d0a65c6e6b4246d56dc414
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e55ca127a80a85321d77ae1e2c0f981e315af614f2a4f36ae84a3bc4098606b`

```dockerfile
```

-	Layers:
	-	`sha256:96ca5a3e270816a399a38a6b1a003a4a1084acb0c04142d6b167c55e73322e8a`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 3.2 MB (3173171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d46c5b502f9a8677fc31a3e1b718a1bed4f27c3023044874717f3c6775814cd5`  
		Last Modified: Tue, 25 Aug 2026 00:15:59 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:fb5806003ee12e34696346de9085dafcfb225979795673b6a182eedd807ece59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53195298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b23972d40c4c243efbde7f6b8c62566e8ee5d3f485dddc34dc261186fa83d556`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'stable' '@1789689600'
# Sat, 19 Sep 2026 00:12:43 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:70036cb8506778def0fad42864ba0a6a6a267706632b93b07225eebd73acabbf`  
		Last Modified: Sat, 19 Sep 2026 00:04:51 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce65617791ae27976215f43e9facbdcb4ec4d4a8d8f99e5b9f38af188f3d429d`  
		Last Modified: Sat, 19 Sep 2026 00:13:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:fdcafcd08d21ab564fb28a0ae6938a05649737558d2a6943fa6910c63a74e740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae9adcade27272ffd98c0b1b143826d8d9d016ad73b336b63759a10cc48548b`

```dockerfile
```

-	Layers:
	-	`sha256:7a8ab3231d882480572c9e3cc71777079a90803ceb01be74c1e49debada5a2de`  
		Last Modified: Sat, 19 Sep 2026 00:13:13 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca029745eb8b102074caf0a818abfdc90a03516c51863177ed648916fcf05319`  
		Last Modified: Sat, 19 Sep 2026 00:13:13 GMT  
		Size: 5.8 KB (5809 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; riscv64

```console
$ docker pull debian@sha256:cea8dc117fd1605de6860a179899b403bc41d20cb5d881992deefdeb3b17dbbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47831108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d489a786c45768f3ded894b51e0a16754b426da6afdb0a3038876a28af8e05d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:17:05 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0f23410ecc995cfb6eaad60c83a35cf1e4789fbcc9f012220a5bf6ce5a974eac`  
		Last Modified: Mon, 24 Aug 2026 23:29:27 GMT  
		Size: 47.8 MB (47830884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efe915bff9a31fadd837604876833015cefc3d68720cf21919f133cd7a6f72b`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:65e245be7809f7c0141ae77206b1fd545517346cfedef67d55a68e3fa7f9f9c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3174104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ecffbf377f35c80a2711a4ec9e1cdd39267423fb97dd93844c642d3af16dab`

```dockerfile
```

-	Layers:
	-	`sha256:b1a261d77c2ec74939b3fe2d5f6b366655b79c7c14ee2c141df179f2db270480`  
		Last Modified: Tue, 25 Aug 2026 00:17:59 GMT  
		Size: 3.2 MB (3168294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df10b67d4fbfb7428e5365ccd2e5fb12730a9dced2531c2ca96e69cc7eb61f5f`  
		Last Modified: Tue, 25 Aug 2026 00:17:58 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:8ada3dc4187110f9bb983e5754b2b68f1d727ada7651cb91deef7f7a1ac4cf61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49406919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b6cb0225999f49699fdf444acde91ec15ff60fb335cde8a999a9473ded666f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'stable' '@1787529600'
# Tue, 25 Aug 2026 00:14:27 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b83c8d25a70ed92472a106b62d2cea8f97af1b349b7554836d46eb7bb9f6e6f5`  
		Last Modified: Mon, 24 Aug 2026 23:19:47 GMT  
		Size: 49.4 MB (49406696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c4e55cd0a904918d04db279b421d2c94b1fc26a7f726f832191c693e402125`  
		Last Modified: Tue, 25 Aug 2026 00:14:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:stable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e0b3d96d6a3bacd38b018b6ead97daeb706fecd1eff98ab8c764e12369b6825e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2c8a9d8352b6e04d4d9630ff37679fbcd09c25fb684d55fbd620767d15b215`

```dockerfile
```

-	Layers:
	-	`sha256:c8b7effc8d9bd6507553fd7718a58d16df72a7ad7d324c6b5edd4a13b35ee9b4`  
		Last Modified: Tue, 25 Aug 2026 00:14:39 GMT  
		Size: 3.2 MB (3177416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:141a003df6d3472e1be128443eed0e32fea87b41e392d0104c4efd0b8a33d3f2`  
		Last Modified: Tue, 25 Aug 2026 00:14:39 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
