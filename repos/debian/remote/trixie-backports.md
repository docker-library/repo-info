## `debian:trixie-backports`

```console
$ docker pull debian@sha256:240cb3db1be64ceba0afaa9c6a6476717051213bd4785f6b96e46884099fa01e
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
$ docker pull debian@sha256:b3f1ee7e3184346ecf461f26e07cc1c2fb3f1a2fd2de52b0902a4784c163b8b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49408120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf14eeabad42ebe4fd6fd7e827bde331eb9bd419b52c3477e9dae875472008a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:48 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745205ea50d28a09a8300f8203873f1adda9dd020780982d018e98b1bc54f4fb`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6241508e160051fa2ac971ad4dd18bd3378e3290de3402d1ffeead2b1edd3293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f6cafd8c5dbf625f9e83cb5657b572ae08723803d18fa744e6f20f5d180c9f`

```dockerfile
```

-	Layers:
	-	`sha256:78fb833bd8242959d1deef11d6d912c313cef7dd53674a3b95dac44569780d24`  
		Last Modified: Wed, 28 Oct 2026 01:13:55 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bbc8604dccbd439919a75fd6ef6b8cc71c9cfc21e43c8e21892acbef2b63aed`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:5f27ddfb41a4aa1049c818b29be4ae3e1772301a2e34babf095c0f11b8fe0f3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47576353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9e27d400392dde85ec7339f15098c25dfd6895bbe50d1ae12de1e5d985ba09`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:08 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:49eebe9825563c4d645a935992f1602e05bccea6dfe4c79e51c1fda75045c88e`  
		Last Modified: Wed, 28 Oct 2026 00:10:20 GMT  
		Size: 47.6 MB (47576128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b5cc61f19366eeb0a8cafcdbb63c5bfb288ebc556c281e2d436b414cbb88f4`  
		Last Modified: Wed, 28 Oct 2026 01:13:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6b821e3ed4599ae17fc8df475019d894d4e01912f0eb9f2d2d5bd016fa4f741f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:110f583ebeba885b3a978a67fed55d53df2409f9b64a24ad5e62acaf6a698289`

```dockerfile
```

-	Layers:
	-	`sha256:b99f2f9a5909d6cde547bb12189b78407f4b581f7bbb6415d4ec79f997c32156`  
		Last Modified: Wed, 28 Oct 2026 01:13:15 GMT  
		Size: 3.2 MB (3183813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b57862ae4f57e515ea10e5b5dd23f1fc97c2eae044e924f64ddd13362fd1506`  
		Last Modified: Wed, 28 Oct 2026 01:13:15 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:2dcb97e093484653aaa0e53c9d1463b4e341bd506ca5dc3de9dea5fc7a99b435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45829605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423116de4aad1d4d72065b26c638ed7ded00acc44bf31abf3a8cb753511b1d28`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:08 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:05cefee146590a5be2c7703c704e5fd78889941e24ab1dfa8296ebafd4153810`  
		Last Modified: Wed, 28 Oct 2026 00:10:51 GMT  
		Size: 45.8 MB (45829380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b5cc61f19366eeb0a8cafcdbb63c5bfb288ebc556c281e2d436b414cbb88f4`  
		Last Modified: Wed, 28 Oct 2026 01:13:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b3011b4e6e096f64f30963be9c6edc279bf495bc186c456a8d4e4e6e7139d1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d423aca2a34f459e4e4fd6ac8345f408a635332cac80ad6c669e1257a7c569a3`

```dockerfile
```

-	Layers:
	-	`sha256:30f639e54c24612c284507ec806c3739ee500222fcc1ed9db2ef3c08fafe3bff`  
		Last Modified: Wed, 28 Oct 2026 01:13:14 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c683f5dd52805b2864ff055e2ac341f8f39dae824a1b776d4ea135740f542796`  
		Last Modified: Wed, 28 Oct 2026 01:13:14 GMT  
		Size: 5.8 KB (5839 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b2cf9052df6023a375ead3a2ccc0e12ef3ce1b899dec9f749f7ac6b4c0751bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49776403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3cc17255358ad26a2d260ba49ca59d71013f701b55924f61943d10d2e59dfb4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:13:32 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a75de4ba91cff9ab084aaabe21a9d5077cf6d1e27babd877bd06626317eb83`  
		Last Modified: Wed, 28 Oct 2026 01:13:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cb7735eb50b5b2eb8c44d9ee6fa54e05bfdf369a220c5337d4f7af8797732d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ff926d399fd5cdced08f0a6c98cc4115b107e259311682a250fda0554491c2`

```dockerfile
```

-	Layers:
	-	`sha256:46dd252fb7a50b60ba9759f6dd24b231d6c0140443122cebe6cae147c2f448d6`  
		Last Modified: Wed, 28 Oct 2026 01:13:39 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:519854e892d08ebbbd7951509cc77bc0ef2de500216296a210cd500dcd925fdb`  
		Last Modified: Wed, 28 Oct 2026 01:13:39 GMT  
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
$ docker pull debian@sha256:ca704433e202a0c1fbf52ad1feb174f27d0bf95628b56a939901a6463cd81e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53222467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1df0dd0c876735f13c6e38600be819c33e9d7abb3e4d0239687c92dc436725`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:26:49 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41bfe4ec7a36be8fa36f1cd6bd33a11f50511f65c87713a0b13226f50068373d`  
		Last Modified: Wed, 28 Oct 2026 01:27:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:82802acec4a53c0f657c6e5fe0f3d79f996f9b61a909ad52e188d8a4e35a63ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90d8517bfd16d47f3fe956251d2a4fb4b33ff1660f8b42e2bb6e4e6a84a7b59`

```dockerfile
```

-	Layers:
	-	`sha256:9b178092d3aaa66042866f7877b0f99c89bd5b6ef9e2c7cef5d5be07c9a2ceef`  
		Last Modified: Wed, 28 Oct 2026 01:27:05 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97cef4d0013df13f2f0bb3b86394702920f4be2d83e20ce033e1ad433df67073`  
		Last Modified: Wed, 28 Oct 2026 01:27:04 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; riscv64

```console
$ docker pull debian@sha256:d6875f3895b3f9f82eaab45faa1930972c024a033813f601cd069e92428b6f86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47891761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:310bf29b02d3eca45548cba717042f24581f99dfe920b396eead503eb4ed59f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 09:06:13 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6b9c47bfdb663aa1d432fc6bfee0c5338e5f9e48ccd84b41427dc0fd31a54dc4`  
		Last Modified: Wed, 28 Oct 2026 18:37:39 GMT  
		Size: 47.9 MB (47891536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b763a257ff2c9bc8dc77f47d54e2b2aaec89f1b4a7e87061227180186d0f97`  
		Last Modified: Fri, 30 Oct 2026 09:07:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ac9949cc04d127e3f6aead2f2aa347dfceff3176d69e664d22da9c69a5711421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13dc333609cb2abb5ccf73ac3c05a9f5e90bc95e9194795efecca193bf14277d`

```dockerfile
```

-	Layers:
	-	`sha256:7b2ebb654f43be02ac4359264831c250231154e946efad9e69f1eb30f04f6998`  
		Last Modified: Fri, 30 Oct 2026 09:07:11 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daae2386e8bc5e900eb4d7ac690c476dbfc4fcd65b29fc5c19b154ac78632a2f`  
		Last Modified: Fri, 30 Oct 2026 09:07:11 GMT  
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
