## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:53f411a9dcec5e51fb4f3970e4cd2a98ea02d31dd976b4d3cf055bd7e5c83923
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

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7855aaa701da55deafcc480effcc98803476fd53f16670a5d41cedf0b98bb38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77861081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd8321d70177742dea6d5cd17835e009b8f08501bf1a516f92e06b5430d3a56`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:50:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:11241ba38bb772621a206eff61590aea7dec9f95a23f267942b9b02ca75b7a37`  
		Last Modified: Mon, 24 Aug 2026 23:20:44 GMT  
		Size: 49.7 MB (49685515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bd8d43e7ed1119cc0fb577edd0e8dbc8a8a2076a9517859aed9b78d6cbda98`  
		Last Modified: Tue, 25 Aug 2026 00:51:02 GMT  
		Size: 28.2 MB (28175566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ad25cf7d67abee6366e27c37d2174fe5cb0872f80bf9b315290505bbc9941940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4099943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffef1345e29c255908cc59295f344c409e4f3abac6d8f21c4996a8e4f285025`

```dockerfile
```

-	Layers:
	-	`sha256:1af37fc5aecc26e08eaf7ff2160bb9b15342363f5ef23577bce7c392079a7fa7`  
		Last Modified: Tue, 25 Aug 2026 00:51:01 GMT  
		Size: 4.1 MB (4093173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91652cd40215913be27f494d177d513bf941d9288e11efa5771d47eac8fbe999`  
		Last Modified: Tue, 25 Aug 2026 00:51:01 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm variant v7

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

### `buildpack-deps:testing-curl` - unknown; unknown

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

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:83505a55db079e5426ffb0c6e50d791c4bd13eaa86b5bc110a5fb656296d37cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76712697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e4671658e6ef9d6a9973d8c4dd4d86160465367d1d6e9024c6e151b1c87388`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1787529600'
# Tue, 25 Aug 2026 00:53:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ad280b75322e6e78371ef86f07cf13a9b43130485f6088f3c11bc956d28be45d`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.5 MB (49503919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a702c6fb3fd4756e63ac2330b9f8bba04992304d9055ee5f69bbfce2c342b3`  
		Last Modified: Tue, 25 Aug 2026 00:53:18 GMT  
		Size: 27.2 MB (27208778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3df0a9a7e452e2a35dda2e40c05657bc9a9fddeaeb88553300eefc7e8a5f2ad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4104164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15578928084f55a73cdcfb5076329578e04a2991710b6a22ffba714d61f2611`

```dockerfile
```

-	Layers:
	-	`sha256:becb12b9cf8d02b0fbdfcc3260e1ed9ee721e3a966e3caf13ab57737bbb10f26`  
		Last Modified: Tue, 25 Aug 2026 00:53:17 GMT  
		Size: 4.1 MB (4097311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8368134bb126cec07b6a0eacd43e52784c3a4d6c636bfd445bb8b39cc7ae1f78`  
		Last Modified: Tue, 25 Aug 2026 00:53:17 GMT  
		Size: 6.9 KB (6853 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; 386

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

### `buildpack-deps:testing-curl` - unknown; unknown

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

### `buildpack-deps:testing-curl` - linux; ppc64le

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

### `buildpack-deps:testing-curl` - unknown; unknown

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

### `buildpack-deps:testing-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:dbaeba597b6d154af1a3e93f31cc7e6c325469f715807e7c216523c4197b4ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74769225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae4c617e0d4d922a18a33773648b9cc855ffb65a931748e9b0b772082c30d2ca`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1785715200'
# Thu, 06 Aug 2026 19:37:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7d6264eb27b4d46a7e7575918f716988899968772092709a97545cd295d76edf`  
		Last Modified: Wed, 05 Aug 2026 00:42:45 GMT  
		Size: 47.4 MB (47433047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84241173dc12785777bb63b4572ca91a744f6c1fd8520cf9461b3af0e1ea695c`  
		Last Modified: Thu, 06 Aug 2026 19:39:07 GMT  
		Size: 27.3 MB (27336178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7d21921ff768cff0d83c54b192bdb08551b1f88dd2baddf6783a9456a13a58e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac239b8bad6b63763a02bc953d7374c2bcf9d3a36aae24e1352a827f0538ffb9`

```dockerfile
```

-	Layers:
	-	`sha256:134b6ea94cb71b08ec320a2ff6214137c2de47d2e4473155ea97172a1b87ad91`  
		Last Modified: Thu, 06 Aug 2026 19:39:03 GMT  
		Size: 4.1 MB (4080364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:967259659dbbd625f23fccca70575138af3822cdf4b199ef93ab861d6f49d0bd`  
		Last Modified: Thu, 06 Aug 2026 19:39:02 GMT  
		Size: 6.8 KB (6804 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; s390x

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

### `buildpack-deps:testing-curl` - unknown; unknown

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
