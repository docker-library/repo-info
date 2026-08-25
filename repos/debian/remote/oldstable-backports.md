## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:f8790a4754a0417d1009c89281183be7af4cad14652f1ac5ec71e7e1f6cbddf4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:978eaae27609a2d15e6a7e508c68ee039eaf1509fd4be1af0c38dde9ce1fc211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48497588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aaea2c99adc5552274c05ba1f9f35c1e0c60ad841ad4bc92d28711f9152a937`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d2873ad9fe06c6927d0a951391b2491901c760eafe856161e4abfcf76808c08a`  
		Last Modified: Mon, 24 Aug 2026 23:21:06 GMT  
		Size: 48.5 MB (48497364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e2504db36f0c41c04134c97fcd4a201159cd6ffaaf8e6172d26410d643faa88`  
		Last Modified: Tue, 25 Aug 2026 00:15:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f01df9440bfac043c6b083cbd6058da109ec4d352845280b68bd00d7ea246ee9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ac741453697256ce77f4e1383b91829ec1892546b5e3527010b497f87e9ed6`

```dockerfile
```

-	Layers:
	-	`sha256:ba42569ff6e51244059fccfc29421b16533dffd9a0c195338eb115013dc20a53`  
		Last Modified: Tue, 25 Aug 2026 00:15:40 GMT  
		Size: 3.7 MB (3734148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bd07ed6c512e1296991808481b063aa35a64a86f0f8a2ff906139369d9ce6f7`  
		Last Modified: Tue, 25 Aug 2026 00:15:39 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:a9ce6c6226ce8813db8c05f086ccbbe486fa3db716f9cc31c51afe5cd7c4e206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44203354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba498219093dc0e9e5e8f37bda0c1ecdc0b12c8023e7a415d8fd90317278c755`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:05 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:05453ac77b9f3f224439e4976bf6f5aadcbc088bfd672f9aa843e83e7250d197`  
		Last Modified: Mon, 24 Aug 2026 23:20:58 GMT  
		Size: 44.2 MB (44203129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf199987800273d3038370e96fa2eedc2d638a2d8666852bd2d8e1f72b4f4ea`  
		Last Modified: Tue, 25 Aug 2026 00:15:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:894565cf8ee0fc51ca9fad52adcf2f4999791dfdea6beeb9cbd953fc170a8425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef4d97ecc5f60a0c1dfc69bd001ecd5036cb9e4c3da9ac9d715659ffde72ca64`

```dockerfile
```

-	Layers:
	-	`sha256:96b7a6b28d631fa8e9943828e890529f2f8ffec10ed1f054810c1444b0d77250`  
		Last Modified: Tue, 25 Aug 2026 00:15:12 GMT  
		Size: 3.7 MB (3736327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fb890232058edfe91c5c1d0742b2f148082bd44296e0d25361219ec591e0e77`  
		Last Modified: Tue, 25 Aug 2026 00:15:11 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:ea2ab303507d88197cf5bf77db0405c23c45f30e3885d437ef09c0b2d908b7f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48383877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3773b62ac9daae26047832466833c8d0a8bf840b81126cd3106982f824f4b5b0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:09 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:658bc503f0f988a735ae2db35c79a46a0b736320c22fbfdd55c2dd7aee95e93d`  
		Last Modified: Mon, 24 Aug 2026 23:20:59 GMT  
		Size: 48.4 MB (48383654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b024bf917dcbe024e2eba5df20b8c0b478c72f1149d6da4a8f0d6b905694924`  
		Last Modified: Tue, 25 Aug 2026 00:15:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:30ddbdfc8ee306a21a3e4bae954817cbbd81649ca58b0a04822581625864309f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e455e0743543cc7a038c2426b791c2613abf3f2fad096bb075c3bc8a56809ca`

```dockerfile
```

-	Layers:
	-	`sha256:bffd287ab60c490324efad75df2a45ac501f01c17083f1d60f95be3eecaeedb9`  
		Last Modified: Tue, 25 Aug 2026 00:15:16 GMT  
		Size: 3.7 MB (3734363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18e394cc037d54e760523f9e3523a7d54ef99f4f27f353318d3c32b293783202`  
		Last Modified: Tue, 25 Aug 2026 00:15:16 GMT  
		Size: 5.9 KB (5878 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:38fc9ec866d7994054b8e5bd6c8facd0cbd9bae71c6a73ec9c826649c9e57e3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49485351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0bddeed13491e3185282e77fee589ff20d3a84d9e0a7b34713ea3e2bfff8df1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1785715200'
# Wed, 05 Aug 2026 00:15:22 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:198f820bb4677dccfa08706fb9d85437a6410291de3abb953d5b036c1f98c354`  
		Last Modified: Tue, 04 Aug 2026 23:52:01 GMT  
		Size: 49.5 MB (49485126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3afa427b4e9dc3456a82979dea178658a2b03ed3be57d433f5d83a45478d8d3`  
		Last Modified: Wed, 05 Aug 2026 00:15:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c4df08746203196843d9c35b78c2ae949b8546e3b34af796dde3045cef69ba61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13763e42b48d545e3a172d7383e2192148707509b89d7141bb0e2ab52250dee2`

```dockerfile
```

-	Layers:
	-	`sha256:e964dbd19d98503de6d87bc70fb94c8158a97ab48eccc47c8cd4d623408289ed`  
		Last Modified: Wed, 05 Aug 2026 00:15:29 GMT  
		Size: 3.7 MB (3731344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2144dfa099023194d00f47608b9ad8fc216e5806edc84292d0c24fc79985317e`  
		Last Modified: Wed, 05 Aug 2026 00:15:28 GMT  
		Size: 5.8 KB (5793 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:64d768042955c35f7cd2070b157f4c63f0751887aec9ba88a93c9873c7c49a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52341704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770fc372333ec2c0bae3849743afb777f1a88c279aa1cda5adb534a511fbb9e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1785715200'
# Wed, 05 Aug 2026 03:50:36 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4b9d9d61ce6ac35e1d14e5845958c8208eaa3671f7ea5903520ad6f11d161a8e`  
		Last Modified: Tue, 04 Aug 2026 23:51:20 GMT  
		Size: 52.3 MB (52341481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122dd92c38fa11055253274836d70eb15d4d211a5d2cc48da2cf51ce43d0afe2`  
		Last Modified: Wed, 05 Aug 2026 03:51:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:195bca464d7796e68f4897cf78a5143aab31de7d7fae4352a29418ea45f1944c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b9c843c0ae69383a214e6010e85be002c74fd21961485d3ed8a1bd4d7033d01`

```dockerfile
```

-	Layers:
	-	`sha256:e87dfa204cb759d4f383795a0680292bf47b3dd830f1e987c9c1524d96e370d0`  
		Last Modified: Wed, 05 Aug 2026 03:51:07 GMT  
		Size: 3.7 MB (3738506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d440a165f233a86d50c64a5b2e71df7520b516b6cb05d568a607f7edc1ad4a92`  
		Last Modified: Wed, 05 Aug 2026 03:51:07 GMT  
		Size: 5.8 KB (5835 bytes)  
		MIME: application/vnd.in-toto+json
