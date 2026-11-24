## `debian:trixie-backports`

```console
$ docker pull debian@sha256:3f4dc795e2d0fca010e8d356b3ea11c7422b7205b75b3f2223762f6a5bb4099b
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
$ docker pull debian@sha256:cefae1771c5407fc1983addc30059a611b3d3faf6f1437afc79557fd0f8e87d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49409512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6407f4e3f4a1935927fa0330c9984e1d6bcc4b98ee10d9e48a27a9d3024cb383`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:28 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4e6c7b2d37837c39fc18c268999c878be65bc487aff3b6b9488532becafdfe`  
		Last Modified: Tue, 24 Nov 2026 04:13:34 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b2454b9b7c20a6f2df82a04c7ea22258bedd6f5496e01e24462b7e72f4ff07c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a03f5a48ec39b303f91ab9016c8ea7741f66ff464b3b29cae7bb51aeaf742c`

```dockerfile
```

-	Layers:
	-	`sha256:34646c5295f666533847c6c98f3ce300751c22c58ad3ad79cc3e123ff1c3fb38`  
		Last Modified: Tue, 24 Nov 2026 04:13:34 GMT  
		Size: 3.2 MB (3180104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54baa0d23c8e73d9a8b87165ba6a42e02627266b398dc85750f806be300106f1`  
		Last Modified: Tue, 24 Nov 2026 04:13:34 GMT  
		Size: 5.8 KB (5783 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:456c685aca893e4dcb894df347d45267fdfc3a30314b4e789fff1188a58b0fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47571042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a671f047b807d578cf4ab0942b0c4792be82bf6c17aeace0d62ac9c94a0fc015`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:04 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:81e30cd4e7ae71efcf81deb98233bbae603f424a67d390095c38d0b8b2e37386`  
		Last Modified: Tue, 24 Nov 2026 03:40:19 GMT  
		Size: 47.6 MB (47570818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede5315fc73e5be249a665ecddaef3add229d3fb381c632e71a137e78d8800b2`  
		Last Modified: Tue, 24 Nov 2026 04:13:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4976ba35a6d711b0cdc8793eac1b5add8d23087d981fe89e06cbcbe2466e7736
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7995900f24a86e27af5d32d743fee7d0c3de681ea0ed37c62f1114ffa693f9f9`

```dockerfile
```

-	Layers:
	-	`sha256:1c833cb449f2aff78f8aad0ccaf09beaa7ee8c450da52c0c1ba20f6d814401c3`  
		Last Modified: Tue, 24 Nov 2026 04:13:10 GMT  
		Size: 3.2 MB (3183041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de4b318d73158f7caf40803150afa188e16c82be181cbedc8f35b950522004c0`  
		Last Modified: Tue, 24 Nov 2026 04:13:10 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:b0c2495b1a5d3d191a249668f75a29464a53f29795c8c3b88aaf5d84730998be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45839021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e5993cefcd6d54a2cc112f6721f712843e13e49e8721ecbcb70a1c033d323f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:43 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:dfa0232b027632cfcd6c75af294b9fb093493d5e9bedb208e40bbda0d946291d`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 45.8 MB (45838797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39e27b1eed7cfc1e27c8f389d397b2818dd8ee53b93a3956efd9eb9100bdd1e`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:44db16a5c9f3d30fe4e4a84f9224ec398edfca40d3e8ee6e2c2ef0abf9a7f3b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee40e18a6bdfce36bb15679b5d903eaf9e2297729e3925ac73fb5bf23d45979`

```dockerfile
```

-	Layers:
	-	`sha256:f9c335e8fe1159b9dd3c2d31ef3516b07771c4f0c193a34a3c4b90aca437857f`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 3.2 MB (3181478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c34f92ef8d78e9d6ae4037134322632e73b47f29653c936467a2e49ecfdd9f98`  
		Last Modified: Tue, 24 Nov 2026 04:13:50 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:a51bd6744341c683c81a74ceab4fef5c5d8a1e7f151239c2be5ac0c8986f1c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49770310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51013e63a4d054eebce29cce17e9c7d56526c485f24fa5d87cadc16bf9b65486`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:29 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad31dcacd8a4ff7ef632445853198902634879b8955604a9e648466e2bc0301`  
		Last Modified: Tue, 24 Nov 2026 04:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e45e369187a585a18538c6fbb21fa0fc6829826bde4114276a532441ace160ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79395d876fbaa04f2b316bb3dc303342aa5b3c3bc84636c84cce49326b0de699`

```dockerfile
```

-	Layers:
	-	`sha256:f71109d9acb2f2c6e323500e5164dcf67b8868796a37f7cca7765fa3ad33282b`  
		Last Modified: Tue, 24 Nov 2026 04:13:36 GMT  
		Size: 3.2 MB (3180948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:481013e01322ab9bc10f02b70cefa612c8c33d9a9307708771829446add08f92`  
		Last Modified: Tue, 24 Nov 2026 04:13:36 GMT  
		Size: 5.8 KB (5849 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; 386

```console
$ docker pull debian@sha256:a8319741263ad23545a61d19a7e135c3727a6c604b263fb12a2ba27ab029df40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50925668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f28a0c110263279eb20449c9abd6a43a2e1d39448316165dddf3b67fb82c88e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:35 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7297b772984d96a7b6a2ece9230c01f30dc6b1105a99d3e4e8598ccf8726a01d`  
		Last Modified: Tue, 24 Nov 2026 04:13:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b7b083d4c89c859741058b670cebaa1dc7fc90ef5a1cf482239e7d6ee913246d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62cd9aa0d1a1e807168bf92aff85b8f49651a75c1bcb588e053a666c1e65e5cf`

```dockerfile
```

-	Layers:
	-	`sha256:af56e8de692df4fbfed7db0f8e9868fd936714614ac1df8c96932411ee3fce55`  
		Last Modified: Tue, 24 Nov 2026 04:13:41 GMT  
		Size: 3.2 MB (3177308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d315bca920a2e90dada706aea100f3ad40d830e23e5bd0d82e3f1d5db033457`  
		Last Modified: Tue, 24 Nov 2026 04:13:41 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:839c8ec75e2c21491604d6d524ce533b3ca890f1e2a0f81c9979c6b430949341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53230069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab1b22432aa1f4def8c54eec84dc13441b51b38d633819555408b310427a6c0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:13:27 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4e6c7b2d37837c39fc18c268999c878be65bc487aff3b6b9488532becafdfe`  
		Last Modified: Tue, 24 Nov 2026 04:13:34 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:3f52be066cedb5f5c01a39db7f7a2b0d70af34887d3855ca048fce1cc209b9ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c1ffcf11f520267b297dae85fd303756ef0b2cf024cb9e849c32722578b68f`

```dockerfile
```

-	Layers:
	-	`sha256:4cc493db49e1132835d0c4e3c2631b40c4403c010de9e046b804350ef8d4c0cc`  
		Last Modified: Tue, 24 Nov 2026 04:13:40 GMT  
		Size: 3.2 MB (3183613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7f3023cbff79e176dd07d004fa09826ea67ee82d804e8625d3e340438b111ed`  
		Last Modified: Tue, 24 Nov 2026 04:13:39 GMT  
		Size: 5.8 KB (5809 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; riscv64

```console
$ docker pull debian@sha256:e042013fad184b8374c51aea21b12dcad49b4f9502ab0d017088ea614313c551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47892458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177707525ff408c10a903d66e7fb149b0d5dbe27f375535ae43509fae5cba309`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:51:39 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c14b8ddf6f44cf7593992e51d2d8638d5bf0eab35fec3f4b384bc222453acc76`  
		Last Modified: Thu, 05 Nov 2026 07:37:06 GMT  
		Size: 47.9 MB (47892235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d72bc431022c01f4c9e7e3ad4e8c6139337bba56f5c0487e6d7a2c25945a9bd`  
		Last Modified: Thu, 05 Nov 2026 08:52:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9120c3917946ae1b591efba869a4a3b2d5c5c470d00bd70727bab52d0f0cc82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e5bd0ef85cbd7a6b394d6105403ce0997f044010b5bcaf1103609d8c6588cf`

```dockerfile
```

-	Layers:
	-	`sha256:8c2359739d32d801c9a6386de804ed7052240953a193bfd1b4bd9bcfabe801ee`  
		Last Modified: Thu, 05 Nov 2026 08:52:50 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73a6947d8051195edf8661b99c175ffaa0d8fc49b5e7ecf562703013c361ed80`  
		Last Modified: Thu, 05 Nov 2026 08:52:49 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; s390x

```console
$ docker pull debian@sha256:4ee6310be490a836991fe20478fec5a126b835fd6d496c4bb9286e0150323564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49482916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8fef45987de6791b5fc3c1c609c4bb7dbbeae0a81919fb1cdb0c9878980b05`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:11:52 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e99295c5b1d848573a03490220a471f79f26f0d941445a1a1aafd0b9580e414f`  
		Last Modified: Tue, 24 Nov 2026 03:39:40 GMT  
		Size: 49.5 MB (49482692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a20fc24d851e296f7d7d6621d3e6f3cd24808b2fe7426a0bce4e7f99edc5bae`  
		Last Modified: Tue, 24 Nov 2026 04:12:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e96ef6c491eb07b51a91a3a4a82bb2c4c92b2aed33419dbad0fc26c39c1c9491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d2b3bebd16378ad016587f577af81b2a3de1c843648b8f59ef8589c52846c8`

```dockerfile
```

-	Layers:
	-	`sha256:f34a739b22baaa62ef5175d27a49d96726b13a40c2134905b854213632a91665`  
		Last Modified: Tue, 24 Nov 2026 04:12:02 GMT  
		Size: 3.2 MB (3181551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3608369f6d45aff92fbed60191b5405af5645cde096efded88c3cde098e08a11`  
		Last Modified: Tue, 24 Nov 2026 04:12:02 GMT  
		Size: 5.8 KB (5783 bytes)  
		MIME: application/vnd.in-toto+json
