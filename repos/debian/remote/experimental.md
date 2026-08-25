## `debian:experimental`

```console
$ docker pull debian@sha256:cf8b056bde722b56fd8bb34d18754b9ed48e2a756b97467886d46849a1c2a476
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
$ docker pull debian@sha256:57d34da65e83c9c0bab9188b9afd174b98a729685f1d1d41768db8c1f20b5647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49841980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b95db028d5ef5fb7b04c23bac8786205906e03cb92e621a71302c6a38acc925`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:16:06 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:842fc6f2fffa487b6d4d78f12910dc9b23af206b722ee70a8675f0c04baa8345`  
		Last Modified: Mon, 24 Aug 2026 23:21:03 GMT  
		Size: 49.8 MB (49841759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b863467ac3fe9d86f34628d1cd351fd382f224b1227d23580da0742f69645f0`  
		Last Modified: Tue, 25 Aug 2026 00:16:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:77428453c252f9dc0a4e13c0af93ec16a8d0ec11622022eefde8b7fbd77d7852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf593000f942c0ead8da3543b316527c3f7603ee2648cb9668dddb7753dec5b`

```dockerfile
```

-	Layers:
	-	`sha256:3fc3c465ea0a4831edf96ec72220c4ea3e2867ea4f60078c8499a26067703057`  
		Last Modified: Tue, 25 Aug 2026 00:16:13 GMT  
		Size: 3.2 MB (3195037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab2a1daf08a0a97aa112217a935e89fd079cd5e39ac7cf382079cf200627446a`  
		Last Modified: Tue, 25 Aug 2026 00:16:12 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:c58a30c4baa9467663528d213b82ac1de84dcfa7b7ff307da19b722aadfd2402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46377777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:149c0b81a4761657c802736778ac543868723436d4458230776a77c55e734d50`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:10 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:64def7128555d3c787c0eba890a7e831d88b65ef62eca13e0f457a0f76e5367c`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 46.4 MB (46377556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092090b17f878dda57673d31946e98f461a7ee88ebf49465b537c6a30cebb524`  
		Last Modified: Tue, 25 Aug 2026 00:15:16 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:e084472228a2c783e797fd5c9f60cdf3cfb843e29113a5bde8dcd0b69bc9cb6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1fe7a480b27e99250d55f51bc312735caf4587f84cd7de8131cc128628f5070`

```dockerfile
```

-	Layers:
	-	`sha256:39783b2d6da1d26ed3546dc5e6a10daf894b4c01adb9071562a42841b356c201`  
		Last Modified: Tue, 25 Aug 2026 00:15:16 GMT  
		Size: 3.2 MB (3196572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:461d1957a2915578114d939f7d3a4e4ee04d4ff1d4dfd9306ef2e0cf633dae21`  
		Last Modified: Tue, 25 Aug 2026 00:15:16 GMT  
		Size: 6.2 KB (6165 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:757fc86ef6216217fa997999496bef19363af1b064b2bb1982913769a9f4fb9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49493994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b36d6b8806476db5762b92fdefa6a36003782fc503bd06b9e66fd5e233d3d3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:0d5dad86beb204b92aaecee96161a493efa404787841cdcc789fe8375e044d4b`  
		Last Modified: Mon, 24 Aug 2026 23:20:53 GMT  
		Size: 49.5 MB (49493773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc75f05a5c3780603234919cfdc634f8ad35a8b1046b13ff6be1c9155819a1d4`  
		Last Modified: Tue, 25 Aug 2026 00:15:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:1ba309d7498c7dc83d3a73e459c7b310cb3942dc8b2a5f313b9aaffb34e86c6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3205317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fe28a37c26ee72a6a0c8298d505430d567cb5faa7720d671dffbd332872384b`

```dockerfile
```

-	Layers:
	-	`sha256:1373ca3d31f61fc1c5521fb980b5cdb85efc43e09ddec7f24406ae5509d8f4e9`  
		Last Modified: Tue, 25 Aug 2026 00:15:45 GMT  
		Size: 3.2 MB (3199136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0429d43266d025c4f5c543cbb9e6149c2840fafc5755c3a56adbffd858401b98`  
		Last Modified: Tue, 25 Aug 2026 00:15:44 GMT  
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
$ docker pull debian@sha256:1ba11faecc58a4262cb7db2757b7f143699ad5abe2fa0e01e18ed92bcbf86421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47562511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafa0aea860dd71c644c92dec3b0c11b355b99bb2401e6bbeb5cd7a8b91c3ba8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:22:27 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:9a062a9ce513a0a6955103fe96cea4bb5819555372d2091ea37e8832038cf143`  
		Last Modified: Mon, 24 Aug 2026 23:40:03 GMT  
		Size: 47.6 MB (47562289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b48da336040aa981780c8992a3f68ca1ed381c8787c41b8e46c12666a9f8f70`  
		Last Modified: Tue, 25 Aug 2026 00:23:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:f32fcfb4fc3d7f197ffec34c5672f8b54ab969da76b46d019fbd1dafdc77c48a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7b559b6cbf1dc61fb82112e0b5e6e73afcc5e63c37f3a40f67ca5949642d66`

```dockerfile
```

-	Layers:
	-	`sha256:c3831c66b10ba92177346781ee40c8d34b116314b1ae885e1e119cf8af8a1d00`  
		Last Modified: Tue, 25 Aug 2026 00:23:20 GMT  
		Size: 3.2 MB (3187405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c57a4567b42926eca108c22c75a2ede5c32cae6d8ec0335aeabcd7e47057a16e`  
		Last Modified: Tue, 25 Aug 2026 00:23:20 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:7428b286448951017fa68bd7fb9072832388c43363aef841f4b66be40f71631f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49248531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45819364dbfa4c7204222907e850cf2d452e4ae2b2016993df9540752758e874`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:17:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:cd822fae30033ef5a57fd4181be81a44db3990b3c74604020c5ef41014dc9d29`  
		Last Modified: Mon, 24 Aug 2026 23:20:31 GMT  
		Size: 49.2 MB (49248310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ad8d58580ca12ee88d1cbdc4d23f9376da0fa7473f40432c7be1e48a73767d`  
		Last Modified: Tue, 25 Aug 2026 00:18:09 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:9fc4955246f38a86cfc2c1c12fbda4e0a50f8f595d0f51e58d417f3379860832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa02cd91271c0cec5a3d20cdd1700fa7a13bda22a3af970fb4b3c398d7c60a8c`

```dockerfile
```

-	Layers:
	-	`sha256:e6fba381079b39d6a2b2e90a4c15943960b7bd72469ee56e867f7927a327ab5c`  
		Last Modified: Tue, 25 Aug 2026 00:18:09 GMT  
		Size: 3.2 MB (3196433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a43b31ac619e34d3761bd29b0da2836e18a8b5c50f3c883ccf1dce2e672d7f2e`  
		Last Modified: Tue, 25 Aug 2026 00:18:09 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
