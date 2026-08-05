## `debian:rc-buggy`

```console
$ docker pull debian@sha256:29cbe8c9d7aef3de486de9faeff0a400cbbb2543747688d48f8d0c3b440df7d7
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

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:512cc7b07b5fbcffb702d7adc16a0195feeee24b3de7161c285674cfde67a115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49387328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f60a8d81eab5f93b8c8e57eb8f95fc05d1300a83a121c1e39c8492f7f2dbf6f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:15:25 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:15e2aa5eaf636a71504bd52ce7c8344290aaa10d75e6a3774b131afd96ad5ed6`  
		Last Modified: Tue, 04 Aug 2026 23:52:50 GMT  
		Size: 49.4 MB (49387103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ef98e9b6f3c9589086da0f88a0752945971bddf3dbce3b71ed0c5937387616`  
		Last Modified: Wed, 05 Aug 2026 00:15:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:92e0ebdd7f28ca8cd4b2fa43e3619c663cd9cb60f2f1e810e4bf21e780d829da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6234f5a142f7d13c74928b1705bf5d8ade15e03a76948d382239169154033a81`

```dockerfile
```

-	Layers:
	-	`sha256:33f3bda370399093a8593a1b19cda4fbb12dfcbc1428292fbb45bfdd3e6d9466`  
		Last Modified: Wed, 05 Aug 2026 00:15:31 GMT  
		Size: 3.2 MB (3195199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c480e90ad46eadc4c60a9b99b8e2a23a95027b34cf13e78952171b6603490de8`  
		Last Modified: Wed, 05 Aug 2026 00:15:31 GMT  
		Size: 6.1 KB (6056 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:101b4c745a5b4563d3a07355b6d9a5f05dec09d91fb8cce9a99f363ac531a8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46273781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c49c37d9382fe4e2ae4c494b3f4d17bc106322d042709f5e9db1592ef1a2c07`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:15:48 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:251599f66f2d2349f32940dab7d5837b044ff9b8cac629bd1e0c460bd6f75c2e`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 46.3 MB (46273557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf19a9c0fb9d77b828fee0338f936c5045bdbb09dcfb431217874df30b4deb50`  
		Last Modified: Wed, 05 Aug 2026 00:15:54 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:5556fb7051cce09f78cf7acfe0c71aa097a27ddc06a7a0e742c65bc24b2ddfde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30f9e74dbb206c24fb09f8a372bdd181f25df30ab1de697f5eab38f48a8af911`

```dockerfile
```

-	Layers:
	-	`sha256:fa8ae049559244edce0db5a08b7f2f680bf6e2147bd9ba515184b20f81643148`  
		Last Modified: Wed, 05 Aug 2026 00:15:55 GMT  
		Size: 3.2 MB (3196734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc7bbce95c2b040c1627216165e91e47df9c59de40c98816fe9629424420de6f`  
		Last Modified: Wed, 05 Aug 2026 00:15:54 GMT  
		Size: 6.1 KB (6119 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:0f7f91b8167993df49a5378e63a2b1ffcb85e6728c36a862b651b7fa5165f746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49400244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf666fae6f28fa9ace1041d8fcea11be77cff9d30c9b13cd689819321456cfd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:15:22 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:a57a6e9c43887a045814a2d7cd84754b3ba6bf85c26bb62c1127277b311f9c9a`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49400019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd56ce1ddfc75f09b52eff15b4d5a0e9ad9eae4788466ccd08108eab19418ab9`  
		Last Modified: Wed, 05 Aug 2026 00:15:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:4480ea2890cbdef4f91fcd4b8b49c50411408102de63079b1d48747a69cd9558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3206072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f047bd91c9a9abd9063225dad8de842d105eef0aa7d442d5bb1ad02071ec1a`

```dockerfile
```

-	Layers:
	-	`sha256:32d330808ff3877d696168ad308d0b85da8704b4e42775d3fcdbebd9df126b9c`  
		Last Modified: Wed, 05 Aug 2026 00:15:28 GMT  
		Size: 3.2 MB (3199936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed793106b6dace9dd14e970f02acb82c77dd63592cb97efb81b886a9be47e89c`  
		Last Modified: Wed, 05 Aug 2026 00:15:28 GMT  
		Size: 6.1 KB (6136 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:1f0dd8d7786626e7e0241197a0a15569fbc9dc4dc4245a0cc79cba6d21ce384b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50702704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654b900a96cf01d77d17fe2f78af88d21d5993c70fd6ed380a0ba0a2f3ac9e1e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:15:37 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be954217fc6a56fd83cf81eda86b352201784f50f6942e099b144e52563cddf`  
		Last Modified: Wed, 05 Aug 2026 00:15:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:dc9f2f2ecb48dfd0f8e443499f8f483c4bba5d1c3dda7a07513a7665073c32b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6e504c17d6bc005cfb4deb99dcaa71feb3984bdf07c70d66486458e10edd7e`

```dockerfile
```

-	Layers:
	-	`sha256:ee4f1a1eacdc200a57fa2a2cfac3d03891d6d6f7b35d550aabdccb3cf33ea02e`  
		Last Modified: Wed, 05 Aug 2026 00:15:44 GMT  
		Size: 3.2 MB (3192292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4f8c7e29bca5ae117cd165c70c85ca9431db06abb35b7436d22b9842f825c9f`  
		Last Modified: Wed, 05 Aug 2026 00:15:43 GMT  
		Size: 6.0 KB (6034 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:a2064b9f0080fdf17f874aee329860c5ddd6f82e1d1d4f826e8c7a7e22d7a054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54701110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd33a5a0fc0b0f2ec0551ab1c1a2469e4b8fc68f4578786eb4e6ff618c92aac`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 03:52:58 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:12fa46b5cfd5c50def1ed4867be13066aa1179fd67c6b3ba7af2cb4314775c6d`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 54.7 MB (54700885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa6d04f6d3366a8d13533c9908a30e19b784d2f5a06a572a7f8e43d14b11099c`  
		Last Modified: Wed, 05 Aug 2026 03:53:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:4c7cfbfc2c860dcd2b95a722bc9ccedeaad1de729fa9e3cfea8c19d21cc90e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3205057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0003b9226634e04709ef566ad7cde63d924604b81f07d758f75163812cd4b66a`

```dockerfile
```

-	Layers:
	-	`sha256:e9c2c0fc7a766ba88dada5006bbc94eee29e8b90738b56d019a827a5c7a7878e`  
		Last Modified: Wed, 05 Aug 2026 03:53:13 GMT  
		Size: 3.2 MB (3198969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a50251ebbb036cf7e1793fb772e98a3e7ec02675ecac47375f5b6d5c2076276`  
		Last Modified: Wed, 05 Aug 2026 03:53:13 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; riscv64

```console
$ docker pull debian@sha256:5125e755d2673927cda223385067d5729e1ec03d506d864fdcb01c748e861e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47476126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bf6ebd19406ff90edd7a5305723c795fa3c207109e9d16473c310d80c1e3b7e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 09:39:50 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:935a8b7a8a85e4ad6c94cdecece72a76fe398db60a17bd8385e366db5d8bc5cd`  
		Last Modified: Wed, 05 Aug 2026 00:46:19 GMT  
		Size: 47.5 MB (47475901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da08a95ddd781b0a72c31fac8fc71ca0d679737e34eff496ca5b2de3f0182ac`  
		Last Modified: Wed, 05 Aug 2026 09:40:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:497d94fd8d1ae724caa6f690ae11df23389687632d257e010ffb3e375c1588f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3194467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924aab31879b718a05cdf724b8ff21b6d99b35bb9bb6812ebcd39af487a9b97c`

```dockerfile
```

-	Layers:
	-	`sha256:2eab1d511b3c496c011fed02b41f09d021b75ffcb19d402558cff49e25eb4286`  
		Last Modified: Wed, 05 Aug 2026 09:40:45 GMT  
		Size: 3.2 MB (3188379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a0b3b0f901246bb38245b4a77ec384d6225259d103a4b38bbeac678695bcf19`  
		Last Modified: Wed, 05 Aug 2026 09:40:45 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:960a44d7823684e145271a93787aa30d1dd491967b1dad6a122d8d0638650900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49121427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041816ddbe4bef5dc106f3169eee96f6f85236799ed14f736ea77ff932d62569`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:14:57 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:2aa606147644082ade2b9d04128b526910aec7a5edfb0a59cedb03e63172907d`  
		Last Modified: Tue, 04 Aug 2026 23:50:43 GMT  
		Size: 49.1 MB (49121203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9784cdb15bc0720b9e6fdf9766ba5b1c632ca6d96949bf58dfc24da596bdcbdd`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:a2d40ebcf7c2a8a6e564ca9c927bd54aeb38ff56df46be7e0fa33416d7aa9479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086a18219982dbeeb1d870987179f132212edf08645f2a97505f2847133f08f4`

```dockerfile
```

-	Layers:
	-	`sha256:bedf792d81d896486078adc8fa6d08fb2d800ac09281515918cccd58156c6f8b`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 3.2 MB (3196595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc5ff33c3fcc4c6a4651f020a1b7eb53a8efca1b71e514f464c982c9e4982fe2`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 6.1 KB (6056 bytes)  
		MIME: application/vnd.in-toto+json
