## `debian:trixie-backports`

```console
$ docker pull debian@sha256:60906396dcb097a5adf443e327f5e87d237a812dfb10e8943fee6f671a7f2995
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
$ docker pull debian@sha256:37c824a5559e9ba7d4b5a903c8c5cf554fade80ffbdfaf55fa1ae3bb010c3537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49393847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41b38cc4180a4b9640714f76f2ba1c04525a22744cd40a23a9e14426c2045ad`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:09 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d19fe11e473b47c4d5e48c43618d19ab1e0efcffba9c5146eb6f57a1eb66ecf`  
		Last Modified: Wed, 21 Oct 2026 00:15:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7c8b0c6d2613abf453355d76f48a23092c8451da7e9ede0aa23c61d6c00b8daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b72a42a9cf866fad0db839568d43353fdcbb765bb6b0abe251e07c7a6bfd876`

```dockerfile
```

-	Layers:
	-	`sha256:80b77008f0ca21a72ab3639f1ec80cb57e432b05f2aa51d2c0758bbce5ac48a5`  
		Last Modified: Wed, 21 Oct 2026 00:15:17 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6008d194e887dec76e11acc2e14b958a906262bc6c9dbdb04603d85b154e6e1`  
		Last Modified: Wed, 21 Oct 2026 00:15:16 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:076cd77a0977d16a56ceb96049effc490897285432f797c3b3a58cd34cf0795e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47560118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992826d2a63a7ace9bccb32a33a8c599c74b4ba3b8559c90740063d00cac9c90`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:14:21 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a7d42171331b896f009a1d89b03785bbf95d0d6603d81916619bf24f05194252`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 47.6 MB (47559893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9343a7b473caabd58eebd4c2d67be8c77677605788216aea3092e4d794905f7c`  
		Last Modified: Wed, 21 Oct 2026 00:14:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:406ed8e9ee885ef7d1dd7b3e1851097ba5408031a2b2614e54aa9145d6bdde1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62179beb3113bc6668672bc59f86bcee9da3e58f731db5082893a168cab66bc5`

```dockerfile
```

-	Layers:
	-	`sha256:de9088ba68fba04d8f026325543ce3df654aae45cebad39ca4c6fa6826705d2b`  
		Last Modified: Wed, 21 Oct 2026 00:14:28 GMT  
		Size: 3.2 MB (3183813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d7fbe77e516c609910483e1380514089f0ac55d84cc694b6ba339741767f7ee`  
		Last Modified: Wed, 21 Oct 2026 00:14:28 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:58e662b62f6782c23d368be27133a37ef8594eac14364352e946d42e6dbfd074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45813824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:491058d257a64e467a54cc532c4000cb625412e60853d26e4b82716832318218`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:28 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1754e402841fcf147f7bb4372f827a1d5e90cc18bd4014a1d7bd715e8ece4ecc`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb0837cd77d9cbb1f6d614d1b3883fcdf2115b5e0b8ac6c0368e4707f9f3cd0`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:74edb4f5ae3e6148070ce14b3b9f10a5917f6d8ae571828ca36078b8e9a607af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13e76d37fbdbfabb0da0239a989e4e87e476d9a4c13f9e59fe561fb0cbaa909`

```dockerfile
```

-	Layers:
	-	`sha256:7fb5042560697825f2ca7bc505495ba5982fcfd84bddb39524fb289cd0944304`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e5a926dbfa36103a8b7f0699e9fea4493ae42edabe072133a3a800ae27473c8`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:69afc8f628f0a7d096ec76021266a57262cd286385bdeace0d2709a09abbc340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49761826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b263ca13f86d850e451c0df2a1b3c096c4db2ceaf9b1c6416e6602097e00f1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:07 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44dd52dad806cef957078d90a3543f5ac5fc38a96b879cb7a45b5763add0fac7`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:723b1a91cb15b24abbdff5ef9b8a6057c652191cacedc2e312d95ee18bb65b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f39ce6dc32321b850a637ce761ea0e9c9057321e2d765be72eda7b00c7ed1a`

```dockerfile
```

-	Layers:
	-	`sha256:d97627da0ede92060854bd64f51781ef397d24e8f37115c4f313fbd07b55f5af`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cb25767b0eede1e0f383c11b5fde56e170174e5ebd848bf1506ad925674f84`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; 386

```console
$ docker pull debian@sha256:97ec6de8ee6cd7f65662d03da719bf7b4dc14fdd1b1788db14fb3d62ee45f294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50921790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07519ded677cd9d101fa9f7275ffa9bd463ede2c297f4063b253cb1109d3532a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:14:02 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e133d7c59f84dcedc4d3049a8444176487057de1da58ae75597065fb94a1e92`  
		Last Modified: Wed, 28 Oct 2026 01:14:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c8b1a4330224359b5fd2dc45cf2d362d6f50b68f748cccefee9e8cfa632e3457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0fdd7de10f298f72ddb926d3baccebd62c9a21031c7329bc33fe2820e67cbd`

```dockerfile
```

-	Layers:
	-	`sha256:ea75e9fa9d7359f911f8d1ec68ee5d9db8b8d058d4df17b10ca9d5730ce297c3`  
		Last Modified: Wed, 28 Oct 2026 01:14:09 GMT  
		Size: 3.2 MB (3178079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5059f63bc71b07046ba2173c3bd3d6a0130e3dc523e88aecc1e32c05df2075c`  
		Last Modified: Wed, 28 Oct 2026 01:14:08 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:44ba212194323a0ad253496527a425e3a6f7337df300001a3008d7490897280e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53207803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd12034438cd9561f544242966443e74071caadd328d8ff1a3a446978b6faa1a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:12 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593bb4a634dcd221b4619d4d52de96c10dab31dd1483fba08d5f021d0a0a26ae`  
		Last Modified: Wed, 21 Oct 2026 00:16:29 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:613775791645f297b4e40d2f9866b19280a478682ebf7e1eaa70936c1322b445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cfb2308ba52f0489ad8634860f4add05a59135bb30b9728466773caab03708`

```dockerfile
```

-	Layers:
	-	`sha256:097e654231e1539cd0db9d006d2cd359c29accca9955a0984a4040cdbac7c862`  
		Last Modified: Wed, 21 Oct 2026 00:16:30 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:957ed835e8ba21e59599ca8264fb3a1c6494177f6c8e707ab0f3864a89d270e5`  
		Last Modified: Wed, 21 Oct 2026 00:16:29 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; riscv64

```console
$ docker pull debian@sha256:c658a9ee6296a41ec3b0764dde51166558eb06ebc23d3dabe587331e55f0c808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47876861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a234e5ab6b18c957b710e4d64fbd030cd210d3d3d2cf3daa4d30c782912b3ddb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:27:30 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e2f042c7c15ffcf761b9add85d4edee585d3d2835fa5118e05f7a7803f078b20`  
		Last Modified: Tue, 20 Oct 2026 23:47:25 GMT  
		Size: 47.9 MB (47876636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3ab39014d76987c122776872007edb4c19a8ff2f1033e90260b41de73e68b7`  
		Last Modified: Wed, 21 Oct 2026 00:28:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e8ef10a5fbd5cfac517f8fb5134db51181d6d20555d43b00cf8eee57cfc58419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad148a001c20175a9f42d88c83db8f0c88e99eacc1745fb13b0ea8cc5b6e825`

```dockerfile
```

-	Layers:
	-	`sha256:5061c6c761919e7ed3d93b64e395da59216e82b341fa71b92f24840aafbf5362`  
		Last Modified: Wed, 21 Oct 2026 00:28:35 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0093cd3fdf6d51791a47c90df419f5b767529a562d6b8edf370c364d9496dfc0`  
		Last Modified: Wed, 21 Oct 2026 00:28:35 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; s390x

```console
$ docker pull debian@sha256:baacc2a0028f691a37b070bfb022214609a9349a44a1f066afebf84f168cb72d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49476056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91db04cc0826d5bca5bdfbdeec68566eec3621adc2708762ea679424ba8d6d0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:12:42 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2250e610e1393c26b6c89de550932ab3d31129c6532b4cf00f5c62c0d6bda7d2`  
		Last Modified: Wed, 28 Oct 2026 00:10:37 GMT  
		Size: 49.5 MB (49475831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63adc8468013fe2843de304b7144871bb860b951f5e415ea632998af79220d97`  
		Last Modified: Wed, 28 Oct 2026 01:12:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:726637740501918d75588353d666de28fd10e3ee7d75c2d363c8f6ee2d2a6d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1775074ce73c979926edafd66d9cb97ddd8f5641f53e39ece1c8a9272f11a4f`

```dockerfile
```

-	Layers:
	-	`sha256:7c927b4046a1cd5b02131e5d1134d65e587dabe69694405cd09d6e1ebfc331ec`  
		Last Modified: Wed, 28 Oct 2026 01:12:52 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58e12d7daedbbfee2a8918a88a5d7278dadeda49a829338c70a782530a03674a`  
		Last Modified: Wed, 28 Oct 2026 01:12:52 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
