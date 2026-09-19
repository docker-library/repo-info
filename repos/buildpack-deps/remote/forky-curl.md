## `buildpack-deps:forky-curl`

```console
$ docker pull buildpack-deps@sha256:888347b7bd0901c249825fbcc699eedc05dfcd215d780dad0c9ec44e3ea437ef
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
$ docker pull buildpack-deps@sha256:eaed18342d056482ca6a741fde689287914898377a342a9968c1aa844c9c7848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71791618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d78ff1eb767a8edd3f700d5c8ffd4e882ccf243912632920273e8847b4dd2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 01:32:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:478451078f487a859e53e54198fefbd515ce0a5752509069c8373fea4adc6f73`  
		Last Modified: Mon, 24 Aug 2026 23:20:33 GMT  
		Size: 46.4 MB (46382990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b2eb524e40175582fd4bcda78ec14a907c808cabc5a51d6a86d81fc6f66659`  
		Last Modified: Tue, 25 Aug 2026 01:32:59 GMT  
		Size: 25.4 MB (25408628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:379e5148db642e8fd3c68800230f2cb9c0ca1d4380f8341994fab5e54ffb7a56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4101662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0229b061163b163eca818262b9a0a4d9e93916f04df584dd5f68b05670899b42`

```dockerfile
```

-	Layers:
	-	`sha256:bbd51d6d523f245e8ccddda613c80ca99876c44a1aeaab448e035b533d329011`  
		Last Modified: Tue, 25 Aug 2026 01:32:59 GMT  
		Size: 4.1 MB (4094825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a92dd9116728d1f4249795707fa49f2986a144622bca8621bfd2d90bceb44daf`  
		Last Modified: Tue, 25 Aug 2026 01:32:58 GMT  
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
$ docker pull buildpack-deps@sha256:bae361491109eead6e3e0259dfa6f9abac3dbd7e8ad5a7b54912a338e2a5d328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80172767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc81a48a2fa60d179f0e4be1e6a6f207fde3a4b43f93df4796401e95b9696fcd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:50:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:aaf68b813d1715d979a28cb2734f0c4792e12b8f67526d02f1eb51e9f0ab73d6`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 50.9 MB (50891162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afac29dcac6d57fcdf320a960605fc95022f24439598d52a6707708ed54ba65f`  
		Last Modified: Tue, 25 Aug 2026 00:51:04 GMT  
		Size: 29.3 MB (29281605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f5cc8027d6b94350f19638a0f5f00664dfebbde19f652cdb7ca1d6eecd034879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29e21fdf99d48fa9b19dc101de451174c478611a3cfc636abd11db4e87c68373`

```dockerfile
```

-	Layers:
	-	`sha256:24a97e3d563339ff3b1ad530dbe4488f1aa0fc3b6d9c080875599816222812e9`  
		Last Modified: Tue, 25 Aug 2026 00:51:03 GMT  
		Size: 4.1 MB (4090177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be95e9abdd5ce7f2951ae30e8928292f3e023c6b1de86d74fbee051ece4ba6e9`  
		Last Modified: Tue, 25 Aug 2026 00:51:03 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:bdc7fee15b573c22c2c414a2b0aa4bf2344248e3953b2770ba7de4f0544d0a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84924087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c73591675e663798d7fb8935fb20f556ab1bbf8f2398d4bd0d1021a54256587e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 03:36:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c7ecd50aeb6375d3d0c7120423d98e9beb1310a2c03f9fe165066e2287c041a0`  
		Last Modified: Mon, 24 Aug 2026 23:19:44 GMT  
		Size: 54.8 MB (54795070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ef2fd685cc834ec77ecaefa9d4d2ded6cc2a812e515ecf4f038047e90cf914`  
		Last Modified: Tue, 25 Aug 2026 03:37:11 GMT  
		Size: 30.1 MB (30129017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b1c8d214ae9bff2271b88d0f8a97be316c35cbd46929c4b82fdde1302275f004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4104089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5acf43e51122b6adfe95d2f9c432c837bfa64f8432a7bac64ef0c6889159aa0`

```dockerfile
```

-	Layers:
	-	`sha256:70d6a786ace7d286b4edadb940217b3aa80a9bca7682bd32237cf44e5822d298`  
		Last Modified: Tue, 25 Aug 2026 03:37:10 GMT  
		Size: 4.1 MB (4097284 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f67ad805136ed491f6c6be22ea668a4a9596a6437c9da7447d02c8a4b6cfdba4`  
		Last Modified: Tue, 25 Aug 2026 03:37:10 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:d8262ee93f7e823050b2151ad9d3fae9b3a65054fc0770f240d087ed98550d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (74972335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36221fbf7911beb5e08c29d705b0947e44f6e808d99ce2e7a2480ec2e2586488`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1787529600'
# Thu, 27 Aug 2026 00:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:317347724f0611ba03877e1eee8b21c4ddf58f85ee0ca414fa59f47dec32c320`  
		Last Modified: Mon, 24 Aug 2026 23:22:21 GMT  
		Size: 47.6 MB (47566939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253230d95d702f8845d5d679ec180622069de8bad3dec9a6982542793adebe41`  
		Last Modified: Thu, 27 Aug 2026 00:18:10 GMT  
		Size: 27.4 MB (27405396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:23ac862e5cc8baa25a0b16cebe2dd60d1ba8723ca6ed9176d4ec910ab261e708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94109b28b4e4915c16a7c66a14ee4156178469479b28a63550c7e4c09a78f78b`

```dockerfile
```

-	Layers:
	-	`sha256:9a9a443c9f77c0159ac2b5e1a06f699f2edcb105fa4f91ce8d18b2e7d82c657e`  
		Last Modified: Thu, 27 Aug 2026 00:18:07 GMT  
		Size: 4.1 MB (4085726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6145a591c1a8d43bcc8ef2b676a3da7e606627d4569667cb38b556f775083ffa`  
		Last Modified: Thu, 27 Aug 2026 00:18:06 GMT  
		Size: 6.8 KB (6804 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:24c485d680c474d2a8f858a1a6ba96d47cdcec2b932fd23492b9c6baff2cc108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76841453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7bb58e022a5bbd439b1a0deba078ba0858975dbf9685f2dda0435ee82875f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 01:24:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:89aa4da0330231a8a129dbe1eded1750d074f8b5beae07f864cb9d5b9ce64feb`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 49.2 MB (49244053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d1f67637999394f5ae66879fedfb4c975d0875fdc0f60458ceebf524c12d8c`  
		Last Modified: Tue, 25 Aug 2026 01:24:26 GMT  
		Size: 27.6 MB (27597400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5b4cd6b7368fa4658fa1f498821226b723ec38a0b4d614e9a04f32c8da13e3d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4101303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90fcc44cf2dc83b1ccee5bfa551658cd6ea20201fac135b6945a8c8973ad24c0`

```dockerfile
```

-	Layers:
	-	`sha256:1f68d518a224ef6e7d4a43a9f98b99f1c319cf746856fb61a9e8541c988e683c`  
		Last Modified: Tue, 25 Aug 2026 01:24:26 GMT  
		Size: 4.1 MB (4094530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8841da28d3b3c148a03e5aa9a22f94391eac2d8cdd1ee6f187fcd8e0173a327`  
		Last Modified: Tue, 25 Aug 2026 01:24:26 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
