## `debian:experimental`

```console
$ docker pull debian@sha256:a776cb7b8b27810a7eb94222ec3618485866628e20babfed435e57f382198661
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:16b1403f9b8d28184a45a07d8ff8f359c335cc808ff5c06f1b4f96aabce3d89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49387331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b35a9c3a094483655130cb06acb056f8b3211ccc3f48b4e55e216db08dd7db9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1785715200'
# Wed, 05 Aug 2026 00:15:23 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:64cc3d8d47af191799d1d0632cf83c9d7abacfdff774d81ce05ea30879b45063`  
		Last Modified: Tue, 04 Aug 2026 23:52:32 GMT  
		Size: 49.4 MB (49387110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f6a0802cf403ccc913b79cf0f32bcc6a38eac662c7d2aacf9c25332bf43692`  
		Last Modified: Wed, 05 Aug 2026 00:15:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:a4cdd45457fc27032638f2f9b6f16aaf6d6f55e008c95aab0333bcf70f5db113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd8929d9e821657fd6c962906ab5f37519304cd9079aaf31cba6cc90dd54f9d`

```dockerfile
```

-	Layers:
	-	`sha256:632f5ea4977343935a150860cfc3cad63ec3474c7bc2d285cd474db625369d2f`  
		Last Modified: Wed, 05 Aug 2026 00:15:29 GMT  
		Size: 3.2 MB (3195215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e6f5290a306de002a3c25f9b7814c9a02802d8f53bd9f46feea1213fd8a096b`  
		Last Modified: Wed, 05 Aug 2026 00:15:29 GMT  
		Size: 6.1 KB (6100 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:a672628166d9722215fa0051261747bc061cb07a196aa10ebf861a4ab4f1ff2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46273785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2818128df8f7799dd75fea46ed164e3bf97a519d0cdfe411b24a7cad8da6a1f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1785715200'
# Wed, 05 Aug 2026 00:15:31 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:c0ee0ef7c5cab4070c45057d299f988ad8c1399a7a51c005d191202d7fdc111f`  
		Last Modified: Tue, 04 Aug 2026 23:52:21 GMT  
		Size: 46.3 MB (46273564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02aaea8ff679e7a4b0bc1a491bcca01e278eeb297208e8e5edb6212d9ee86b6d`  
		Last Modified: Wed, 05 Aug 2026 00:15:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:afaa1bb3dbc70e33e6788629cacb8edf920937c286990ae11f8f6a8ee15ee349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1355a4b03b604c0e2d298e1c4621dc7b3f30b144e7df6876db10fca84e90c643`

```dockerfile
```

-	Layers:
	-	`sha256:c8bf6b191fa69e43494a142dcd99ec6ddabd8ea734c378fbdc282e7550f5d1db`  
		Last Modified: Wed, 05 Aug 2026 00:15:38 GMT  
		Size: 3.2 MB (3196750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0819368bdfc6cf33a604f832a762d01ce9869918e68b5805e2bfdad0a98aee62`  
		Last Modified: Wed, 05 Aug 2026 00:15:38 GMT  
		Size: 6.2 KB (6165 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:2ee84fbab677c72d14e0f88d290bb00e97aff3a21391aac30ee6e630a4435cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49400244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1993fd055b2e5c8c269807fb6a6aa2cbd21d8686ca49be61098a342060aa0b90`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1785715200'
# Wed, 05 Aug 2026 00:15:15 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:67db4db431f0e050cf42789679df97a4cde8a68d75d6a578a2a754f269005f20`  
		Last Modified: Tue, 04 Aug 2026 23:52:25 GMT  
		Size: 49.4 MB (49400023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f823df42133d3317e81762cc5613494f6888ecb09b049057e08ba5310db5d596`  
		Last Modified: Wed, 05 Aug 2026 00:15:22 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:a1cdecb130032115bddea75a0c5b03d78d0d6d0bf3b6da3c72222d4db69868a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3206133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c3fbf4a1490ee17a4a775030bea679d2f878fc5a560642b487045557a25c0ba`

```dockerfile
```

-	Layers:
	-	`sha256:4bbc19308b9b75e2d1942da2d04f65dc1b63893db6e71b8226e9692cbc5eb389`  
		Last Modified: Wed, 05 Aug 2026 00:15:22 GMT  
		Size: 3.2 MB (3199952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7044bd92a5c14cd597c206f10384f81f06f0338a8711d32b1ab7bd9255113b1d`  
		Last Modified: Wed, 05 Aug 2026 00:15:22 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:35a38b1d384286bd5fdf60e693c5acf7286ac16d9e209d43ae25460b4eddb39a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50702708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a348567ee0d233e48bb030f90465e766a2d8cd3fb7fc50468cff5535534f9c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1785715200'
# Wed, 05 Aug 2026 00:15:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:4e94c2e0bc24612c8b5bb841f0311e38dc2a6707d2ca2c7d67bdf4dba7fc0b52`  
		Last Modified: Tue, 04 Aug 2026 23:52:30 GMT  
		Size: 50.7 MB (50702487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716ec7b396c9b8ae44eb54c3c09f158c3b47e9b8547c5af1af3ad7b00f40c68a`  
		Last Modified: Wed, 05 Aug 2026 00:15:54 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:aca6a5056c8563050380f7e99e7d0f5aef2243edd3a4820ecae4d1011c82a25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c3b45c987ae1e2965017aec7ad7c27eaf5468e7825d97db52cd7bd7c3424db`

```dockerfile
```

-	Layers:
	-	`sha256:98fc75bc3607b2781a8a2d39a9c4dd82ffa8e861b847306c04d6e8cef5038383`  
		Last Modified: Wed, 05 Aug 2026 00:15:54 GMT  
		Size: 3.2 MB (3192308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae89ff8f29706b2e89601a5a99a96c106d60ed0f749fb079b282231a3c475ffb`  
		Last Modified: Wed, 05 Aug 2026 00:15:54 GMT  
		Size: 6.1 KB (6079 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:ae15b055cb5e9c2445762813bd94c5c7eb3df8d4adda6eac37a85e3bfebf6e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54701112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce22c3d267dcdd2fb6dd2aa8695b6fc00166b6f49cada08fec7d873658954db6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'unstable' '@1785715200'
# Wed, 05 Aug 2026 03:52:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:1c372bfcac44792ee525259060ef933192219bcbe206e08ffe5bccc99f454685`  
		Last Modified: Tue, 04 Aug 2026 23:53:40 GMT  
		Size: 54.7 MB (54700892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef5757c1ab5dcf4d1db5025f565f60d8817bf44932cd196148f226fdb836bff1`  
		Last Modified: Wed, 05 Aug 2026 03:52:36 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:d106f7f03749632d6a6c908ef36fae363216aaadb5783a7bd9a6ab9c69e7eff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3205118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39c6df0f1a1e2b3d8493373858ad34ad6f290d05d58c0b8023f9fa8360f8998`

```dockerfile
```

-	Layers:
	-	`sha256:885d1df2181c1c2750afa8dba10381c591cd668085e389eed4815d788a5d5161`  
		Last Modified: Wed, 05 Aug 2026 03:52:37 GMT  
		Size: 3.2 MB (3198985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e3df6cb31260d2e4140bd081f4e800ff03139dc686325a34d07a585a982d1d3`  
		Last Modified: Wed, 05 Aug 2026 03:52:36 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; riscv64

```console
$ docker pull debian@sha256:abc1257abdd935ab8556ca1ab0571c0b5a766f2cbb65e8d3c601633e2f207dfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46977083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23099364e7a8964b8d784d722ce6efa869931fe99dd1ec556e52f81ffd207b38`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'unstable' '@1783900800'
# Tue, 14 Jul 2026 01:22:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:f13c84c39d04faa8fc3460813970bdb4296c07afd7f437e15940c8c3cd5db64b`  
		Last Modified: Tue, 14 Jul 2026 00:32:14 GMT  
		Size: 47.0 MB (46976865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ce305ce074ecc9627459194a46669361667a95ec313be2ee297dde3268eb8e`  
		Last Modified: Tue, 14 Jul 2026 01:23:30 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:6cc1bfc94f21bb9a7e2011aea360645ae02dfaba52a12f4c0762be46db87b1f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3147159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840fafe66e61bb6913ef2403b172d1fc89a16e257beb5caf0155653e7a1e5d67`

```dockerfile
```

-	Layers:
	-	`sha256:2b31ee49158ba462aa6ccf1ddc5f816d92cba148d7ab1f360eec4e46d12d9250`  
		Last Modified: Tue, 14 Jul 2026 01:23:31 GMT  
		Size: 3.1 MB (3141026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5909634f096a0f89fcb817953916964f8e4d2173ce4480cfd4f150db3f94876c`  
		Last Modified: Tue, 14 Jul 2026 01:23:30 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:43f6c35d8958a74cc623f74d617e2bf105289f4e5e67357a5a768eef424f27fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49121430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8800728d22f1c4aa941b380dc6b3af1a4dd87e581da20540478ab72be61c8845`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1785715200'
# Wed, 05 Aug 2026 00:14:57 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:fc4b4db2ed7f6f96ac3a4bf5b47713e2fb9242d2c6fef90c290cdc15948119cd`  
		Last Modified: Tue, 04 Aug 2026 23:51:44 GMT  
		Size: 49.1 MB (49121210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4782148d6f04e2037ce605bc0fa13a5b3c1eddedce8ee4c0fbfa12059b717e10`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:0ace44f52a449bffcfc3204a0d45cba032c18f3d0e6abe351541dcaf935e59e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5242c13f019280819ef9407481f83125587e46e6f78d3147933f461d676ce9e`

```dockerfile
```

-	Layers:
	-	`sha256:110ef2c3d16e1fc231395b548989f6c96bc481686d07222dbfa8dc6e55783db2`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 3.2 MB (3196611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91d3669db182752948ed704999c350c37a3b46505e130a322b8ec2cf5441e59c`  
		Last Modified: Wed, 05 Aug 2026 00:15:08 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
