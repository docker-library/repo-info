## `debian:rc-buggy`

```console
$ docker pull debian@sha256:6adb93a1adf849d94231e00804eca42545867dfb8628586cbb32f22b3ed3b5c1
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
$ docker pull debian@sha256:0279653d22c39854b414e324aa9f4e85385f87422964a7ae0b04205fa7e72d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48864260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb2615ee2120d428c381f6f1a501414a5ce8f6b6fb96f8edb4b84fa7bab63d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:16:19 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1f9d835399d94bbb9c1d9512755b9b608280b31e64100274c49cdd4d234be9`  
		Last Modified: Tue, 14 Jul 2026 01:16:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:8d55878b4e70fdd635294f26c54b682358b35e27038647c6a05e570b8a5b5de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3154751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6a826f475884bc812449a7ecce4d4959a5cfadfa211cd957f7d17e207bcceb`

```dockerfile
```

-	Layers:
	-	`sha256:bcb4a9447c4d15e03ae155b7b57083c22409d909c9c2f681eaac28a50d85ed40`  
		Last Modified: Tue, 14 Jul 2026 01:16:26 GMT  
		Size: 3.1 MB (3148695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:051dc13178c9881836c0141d5b321a322e89649ca05efcab2be43a854c900518`  
		Last Modified: Tue, 14 Jul 2026 01:16:25 GMT  
		Size: 6.1 KB (6056 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:619b2d39bddeaf9940a121aacce17162d3d979a6d53c8d367ab93ed52917d7ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45678858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c216e2a44c4aa771affdd522c1170b23abaed6f7fa4e0630fb7aa40bc0c7cb7b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:15:55 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:d675c589a8a116f3580b1211f18fa575a815f4d2314413ec9c2112d3a61d24a6`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 45.7 MB (45678632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d828da2b6c9d23be4dbde744cfec2f2e8c94f3341e2275f005a83d0a6c75e14c`  
		Last Modified: Wed, 24 Jun 2026 01:16:02 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:7f0751d9d48750b0e0543af8bebc7f7f62da05b07b80fe3239ac115c52cdca28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3159140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc10bad90df478fe318b4dcde1713bb9d7759c3ccff2a81c176c04abdcfdcdf`

```dockerfile
```

-	Layers:
	-	`sha256:4be82d6aade8dd45a6de1ed797f4ada565531da41ce4b982fd663d523cf6bb94`  
		Last Modified: Wed, 24 Jun 2026 01:16:02 GMT  
		Size: 3.2 MB (3153020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cc059bf579e6ba8e42e8d4f2094f9de827c9ad910d07a6a4669038e7ee05f56`  
		Last Modified: Wed, 24 Jun 2026 01:16:02 GMT  
		Size: 6.1 KB (6120 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:a8adf5d3f9f260982a0c3bef4b5f3f915f096bbd70f258dca4b7751974b985e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48880545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80055378da2607bf4a3e1a2e9fce9703b09a4f4e2b5ebac0e135df8d85a36e9d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:16:07 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:4480ca4037883605321976814af29e4ba8cd9d2dca0746762a317c319bc395ed`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48880319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3878bb69887fd66c89e1a8109f1dee2c26f54f1de013012b257124ee9e1f9a7e`  
		Last Modified: Tue, 14 Jul 2026 01:16:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:eb86df9dc63ecad2b2d86a81c7670218fc124d59f5b76539dc34811bbba9c353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3159513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5399fdc92bb8c9db2e935faf2e76895ef2fd70b57b1e34396a07bdc05539bdf9`

```dockerfile
```

-	Layers:
	-	`sha256:50496e240171e6e560217f989bb5a9372a3455b8145f5be12c84b018f0fbb5c2`  
		Last Modified: Tue, 14 Jul 2026 01:16:14 GMT  
		Size: 3.2 MB (3153377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5a2f6c3ad7688b1e27950e67567ac73ceaa349f180eaa5627ca2a5ebe7d9606`  
		Last Modified: Tue, 14 Jul 2026 01:16:14 GMT  
		Size: 6.1 KB (6136 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:72826e9fa721f93ecf3a6e3331788bee71231d3e38364326dd09adfc6eca4449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50191427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91b601662599e82be3ad6c09f6ba3a48429336b8fd09c5f6ae6df44e759ae3c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:16:19 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:80f34b6bdaadd9ae002625a28e22722e313c4ac7d32fe7fa3a8ef3a66ae7b362`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 50.2 MB (50191201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1f9d835399d94bbb9c1d9512755b9b608280b31e64100274c49cdd4d234be9`  
		Last Modified: Tue, 14 Jul 2026 01:16:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:1dabc140d43c3adb4303f2e7c1695205dc2e9cd25c2c8c834560e714387cf25d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3151931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8027a7fa3360eb70ff8c4648a730adaae0cc44f2f2bd70877f7063cfb0ee61b0`

```dockerfile
```

-	Layers:
	-	`sha256:9a14c617b54c7ec1763fc7322c2c6f527f86806b85b0f8559b29b35ef4fc5ed9`  
		Last Modified: Tue, 14 Jul 2026 01:16:26 GMT  
		Size: 3.1 MB (3145897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:880c1bfe5dd2cce3b7664a8ba68111afc369ebcc88cd1af695525df979f8950d`  
		Last Modified: Tue, 14 Jul 2026 01:16:26 GMT  
		Size: 6.0 KB (6034 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:86cc4eab805d6c00978c8d5a8ae9bd6cb88cb5df62477908983f00cb39ee6700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54098203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1d307e7bab7324ed9dd7c0b7a64720d87f977012812a9ba217451aa880fa08`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:15:58 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:207e1fc4a0d78092eada2cd0c9c038e7e28d176a37a4e995ec935b5f148a7e59`  
		Last Modified: Wed, 24 Jun 2026 00:29:01 GMT  
		Size: 54.1 MB (54097978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb62183ea3de24ad4477cd8e283781fdbf98dbd5b318ad99ef0c953b8871cf10`  
		Last Modified: Wed, 24 Jun 2026 01:16:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:895a89a70ae6bb8b9ba5f6977b1199e233a0230a78ac6c2a5d1808d13af6b2d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3161241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503ba7ae42ff70c42b6d67d8978db7b81355a394aff9c3914d656179a1c8d08a`

```dockerfile
```

-	Layers:
	-	`sha256:fcf6e579be633f96250458a582a04510fcfdc4707fdc84ab4ba26db420eb9c06`  
		Last Modified: Wed, 24 Jun 2026 01:16:11 GMT  
		Size: 3.2 MB (3155153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6319d65245e0a5bac877815f2556c6895afe51c69fe3858a69dd1d79b787461`  
		Last Modified: Wed, 24 Jun 2026 01:16:11 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; riscv64

```console
$ docker pull debian@sha256:e140cc24cc96655c6cab44e524d758bb97be56f2e6f6ce3ec1d9b174be52cc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46977085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756273b90976b239c536f461220612adcc1204c5dacb6f9428658201cd54ea81`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:24:23 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:1be6f73fee28b568bfd2983847008ad3e045372345842108c1717134726f14c8`  
		Last Modified: Tue, 14 Jul 2026 00:18:18 GMT  
		Size: 47.0 MB (46976859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b77e9f3ef3f7f6c7b18902fc266dfba2c413576a08faf63c848dbdba27e0e0b`  
		Last Modified: Tue, 14 Jul 2026 01:25:16 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:209b368e6374cdc7376fc23c83e23e8c7b9c097a4043a4678a326b22ea93a152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3147098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d2fa2f14d009e9b4f423b0098507e8558cc603b85bb97c91c8e58fba02c505`

```dockerfile
```

-	Layers:
	-	`sha256:a91476c09bce96f740c9fc8feb88d17320f55a942ab78d7f835a4abdff617f86`  
		Last Modified: Tue, 14 Jul 2026 01:25:16 GMT  
		Size: 3.1 MB (3141010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b02657f2087ed5f42dacc17ad9beee22c8691c256706554595560b1374d498d4`  
		Last Modified: Tue, 14 Jul 2026 01:25:16 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:c98830c4850fb1dcb9b156ca4fe1c7a2ba34825d161a72e48307315588a8ebc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48518022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfefa8e4bee7193ea3c149834fbfdc7355ee19e5927879959a457b68800c067b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:14:39 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:1e9b72b44a72df002ca2c8ad8ccb65d46205892b54ff8d9ce0b5dd7be73544fe`  
		Last Modified: Wed, 24 Jun 2026 00:27:46 GMT  
		Size: 48.5 MB (48517796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7bb484be8e85df606bd80a31148183bdbc9292b58cf585497e93f21ccd5bdb`  
		Last Modified: Wed, 24 Jun 2026 01:14:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:a1c877a25b04acb1229806ebbc1eeba72a9d8a9927f877868dffad5eb15e6d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3159156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcc85ce17e0257341e430987a4c646de5ee0d85db2e4c801a6ff903957104e9`

```dockerfile
```

-	Layers:
	-	`sha256:93881c57340b602694b5908bcbbfff2c7819d79a06b28ac3ffe43b00ae2b461c`  
		Last Modified: Wed, 24 Jun 2026 01:14:50 GMT  
		Size: 3.2 MB (3153101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41abbde934a80ecf1c39e28c72bf95bd80ab5e7362a19dff37e3678392bebe05`  
		Last Modified: Wed, 24 Jun 2026 01:14:50 GMT  
		Size: 6.1 KB (6055 bytes)  
		MIME: application/vnd.in-toto+json
