## `debian:experimental`

```console
$ docker pull debian@sha256:dec2bd0f8d4196dfd9d643670fa1fad01da0ed34753e07cde4f55a898790c7c8
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
$ docker pull debian@sha256:b762a8895ef82788ba32d3391afadc51c2e1dc7dbf6e9185419000ed8fb0cb2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50726980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b6a2245f05a7455a234ba68dddfa8c226977fbff2fc48980f40797a2dc8cca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1793827419'
# Thu, 05 Nov 2026 07:13:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:8f2a51fc97d5684d4907dd7b6fc5f51cbf1483c180b919ba86abcb198f4aaf5f`  
		Last Modified: Thu, 05 Nov 2026 06:16:51 GMT  
		Size: 50.7 MB (50726761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513a95b8af96fa62905521dcaaafe6edbc82bc27149e1c94e1df9c12bf22707e`  
		Last Modified: Thu, 05 Nov 2026 07:13:08 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:eb35159659b633f1cc66bb6bfb732dfa455b8d065e5a8987056a5902fabf808e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7868aba06e75fa744cfd6d9b9f4afd174e2a4bb4b96e4cfc2743ec08f404de6`

```dockerfile
```

-	Layers:
	-	`sha256:b242b93958e0b17b869a5765e02b38c74bc26e38483278623a8db2b0aff0aadc`  
		Last Modified: Thu, 05 Nov 2026 07:13:08 GMT  
		Size: 3.2 MB (3181875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b30583dafdeeca53d7ca8930572823937ffeed229b5c2413562fbc50a4696a5c`  
		Last Modified: Thu, 05 Nov 2026 07:13:08 GMT  
		Size: 6.1 KB (6100 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:914aafd2ce4a9440c6e66e5a47c13e5887c054ebd03fa6c0d83afd943a043724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46656114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c52528c4c49686cb5c1c4d7b0837696d206535a045405631064f05d8df8b409`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1793827419'
# Thu, 05 Nov 2026 07:13:32 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:08089f15c5b38b83dc5f49e23ceff2c99e178224ac1c74c20c52335fa9bbaf21`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 46.7 MB (46655895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456df6c05a4281e65f82eaea13adab15d46e3a8d68dc6e7afe2b06cd7225374c`  
		Last Modified: Thu, 05 Nov 2026 07:13:39 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:e5ffc65533e870496795c220000b97a80b3a47f8a6a7e73bbffd1b1f9608077b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6518a63b02c251a592dff5837fa9a29df96fa87196ed14f83befd0055eef70e`

```dockerfile
```

-	Layers:
	-	`sha256:cdcca616227f33d485862f747b0457083f982f500e651c75ad356fe8b4bea4bc`  
		Last Modified: Thu, 05 Nov 2026 07:13:39 GMT  
		Size: 3.2 MB (3183416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df0e9de2e1715035c3421f0c6a8a864175cf73b7c5acdcd875ed7f33b58074cf`  
		Last Modified: Thu, 05 Nov 2026 07:13:39 GMT  
		Size: 6.2 KB (6165 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:bc30e6da4e682f2da20ad7aff7cb73ade21db6a5895a6e900f74a7fffdc11751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49866684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c773c6638e31f1ddf4db013c2464c2967dfef1b27b4a9a59177e07053126896`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1793827419'
# Thu, 05 Nov 2026 07:12:45 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:894e22ceefc8790db94ba679b0c3f7a721eac46d267ab7dd0ecd3ec9b8b7c35e`  
		Last Modified: Thu, 05 Nov 2026 06:16:11 GMT  
		Size: 49.9 MB (49866465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e5fd0983ccb0ff32b62749fb034e120ac412256a73c0fcbb42f5a597504718`  
		Last Modified: Thu, 05 Nov 2026 07:12:52 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:9c0bfc48f0c1a2fd7a39bca6649ea479307a0706cba8bb93449223a87b98862e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a35438aa8d00e7ac2317284d9d63dac9efbe55fa443311dfb24bd704da6202`

```dockerfile
```

-	Layers:
	-	`sha256:08379424f95ad21ae1bdeef34a92de607e690aa9150fcd1481bfbc622a698338`  
		Last Modified: Thu, 05 Nov 2026 07:12:52 GMT  
		Size: 3.2 MB (3185338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24af92569d0185910000d02d9c724a04b516a4819ce418e78ff967b6faff00f7`  
		Last Modified: Thu, 05 Nov 2026 07:12:52 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:ceb22c2b03458b96ccab3f1d1ca6c6f2df68a1bcabafbad0c3ac9ded665b5ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51788553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c371750497b20ec439125005b80cfc000df5c68c1209b35bd51f0a3221f48e8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1793827419'
# Thu, 05 Nov 2026 07:12:32 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:ce14cae8506c5e97e4dba899d507862a9ac4ae167d4f852dea0032727231db07`  
		Last Modified: Thu, 05 Nov 2026 06:16:22 GMT  
		Size: 51.8 MB (51788331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c6c8a474c53215d8219e5a3776678b40358c8bb0ba8b112cc3ba9a6e0aef33`  
		Last Modified: Thu, 05 Nov 2026 07:12:38 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:1312d9958b0fbc953e5e38e6b14c2259bead5e774d09f67cac59932a82b552c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf22edb0ea2e2d8f3c7f1eb79f7eaedc4084da90d7c839daf6d8129f5f72df96`

```dockerfile
```

-	Layers:
	-	`sha256:fc2bd1b475a5dd68b40d4efbc2f342b2423ec20743d8d96d59cc60c21101b5a9`  
		Last Modified: Thu, 05 Nov 2026 07:12:39 GMT  
		Size: 3.2 MB (3178963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5bd8542cfef10222d529929d1c8ecf966309775410be0efb1a87659d4cb430c`  
		Last Modified: Thu, 05 Nov 2026 07:12:38 GMT  
		Size: 6.1 KB (6079 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:fbb69e1962014fe9858d150178e349110b7d5020179da885c5f42fbac1605953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55318417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ffbaec74943eb33548005dcd4e588a6eb2051274202bfd9cf75354855463c8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'unstable' '@1793827419'
# Thu, 05 Nov 2026 07:12:33 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:5a8e2bc0dcad1139be238cbbf5df1d797ff33862d00ff23f7374218fb7ed32b9`  
		Last Modified: Thu, 05 Nov 2026 06:18:34 GMT  
		Size: 55.3 MB (55318195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c6c8a474c53215d8219e5a3776678b40358c8bb0ba8b112cc3ba9a6e0aef33`  
		Last Modified: Thu, 05 Nov 2026 07:12:38 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:055b6199386f18632a016ee62a4e7cdf3a2b24a1be1c2a8beb49ef86415248fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56a72282393b290b159e0e97d796f62f93ad9ef23941e3b3fdc0cd32c5096249`

```dockerfile
```

-	Layers:
	-	`sha256:c82b50237ad78a303f7efd1a72ac841311a2cc2ab43137c9a648b07321659692`  
		Last Modified: Thu, 05 Nov 2026 07:12:49 GMT  
		Size: 3.2 MB (3185661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a167739e0c4309643657dc7ae8fe23e6f02bf3d6ee5d326a78e8030b430ea5d7`  
		Last Modified: Thu, 05 Nov 2026 07:12:48 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; riscv64

```console
$ docker pull debian@sha256:0327873cf04ffb4162298b0c06e0b10c916d25e7c1187d97969ef770df01b2a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47998368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ffce4f8e12ce3ba915cd3c2434b6d88c626629ba5d6194ef8d6a8e56fceddf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'unstable' '@1793827419'
# Thu, 05 Nov 2026 08:55:32 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:bcc4e28750abc8ec7f8d6d796e993d965fc3fc21c471974b68c5cddec36e5374`  
		Last Modified: Thu, 05 Nov 2026 07:41:11 GMT  
		Size: 48.0 MB (47998147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087d6a1e203ac878843868ec7430ce7d9ea43fda316f5a37aa710b135b1061bd`  
		Last Modified: Thu, 05 Nov 2026 08:56:43 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:b3ad5b15619034142105d5926eb6d8f387acd157078d790be635dbef754c81fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52939f2ffc6ee7b68b89cf7ae1ec34da9faed43213811dbfa034d728f34aea3c`

```dockerfile
```

-	Layers:
	-	`sha256:6306a43c8af04250e3439a66bf3d402722b8e656b52274c478bd48c4f17f4d90`  
		Last Modified: Thu, 05 Nov 2026 08:56:43 GMT  
		Size: 3.2 MB (3174251 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4804b760f4cbd9aa9e546f56b3e7de0eccfb99ed2bc4adbd89158399e8ef016c`  
		Last Modified: Thu, 05 Nov 2026 08:56:43 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:8d56f8f45d773e2c37cc7242de6901bf22448530bf48da46942d626ba5508ded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49744383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d7926763bed6fe0ea09237628a2b2ce701da0bc030df73c874cb2c27d53962`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1793827419'
# Thu, 05 Nov 2026 07:12:05 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:cb6f2655d1486959ab4c24704bde2d691741a92ae68dc9c453eff66063e6750b`  
		Last Modified: Thu, 05 Nov 2026 06:16:01 GMT  
		Size: 49.7 MB (49744161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8c0d89bc24e1954b35e107fa708097bc78adf1368e1a74c8ec16d5123b3c7d`  
		Last Modified: Thu, 05 Nov 2026 07:12:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:ab5fe9484d092ea7f12239a118511aeff261352c1f7de5793ea5d69b7ad61e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a02a25f7060d01f9c41160b4e71d310289da2e21592f8410288996ad02a769`

```dockerfile
```

-	Layers:
	-	`sha256:beae47537958b5d8411bab72438d495deb17fc8f5dbefa84b9f26bf21157c74b`  
		Last Modified: Thu, 05 Nov 2026 07:12:18 GMT  
		Size: 3.2 MB (3183269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b1c60cec446381d60eed999d9b17b7e1781bbed0b8e12e439e94a8b153d15f0`  
		Last Modified: Thu, 05 Nov 2026 07:12:18 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
