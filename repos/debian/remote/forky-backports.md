## `debian:forky-backports`

```console
$ docker pull debian@sha256:58ce3fd02c94b3f889de32f68a0c6effc6fe35f02c32f21d9362ae62425c6364
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

### `debian:forky-backports` - linux; amd64

```console
$ docker pull debian@sha256:4379cdd172c0a5b13a8cc5a835c29f3af75e69024e2be4766060d011d9c53b01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49814637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39bc6865fc966d70d9ebaf3939891aa163b5c9a32b3312f2a520bd7e5dc64e6e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:13:08 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:65929644eb8cbb6d5dfb27c78d4d6cb80d806c5c2ed37c7b627d5a03a29749cc`  
		Last Modified: Wed, 28 Oct 2026 00:10:34 GMT  
		Size: 49.8 MB (49814412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4201998793c971222620f3b7ebb95592c0c8bbbf9fdc31dfc02fe9fc7833593c`  
		Last Modified: Wed, 28 Oct 2026 01:13:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:29b123b654fff5c4d39bf5360b37d549d8e1c16b36c4addd31b166bafc69f5c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f642493b05d6ad3c4467afb531cec62635f66fc9441dbac947812e61c73d93a`

```dockerfile
```

-	Layers:
	-	`sha256:efff5f58b9e1fbcbf101398d9e7a514d18fb04221988ac6410396549e85358c2`  
		Last Modified: Wed, 28 Oct 2026 01:13:15 GMT  
		Size: 3.2 MB (3176219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe8f6d05a9d38af9c30831c8fcea0bab7ccb0fada11cf43f8a63b74cbc98e0ff`  
		Last Modified: Wed, 28 Oct 2026 01:13:15 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:f7989a2de8587eebc195a660f30441b4ef313ea9d92f6d7fc848118f1d91aca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46005472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9154dd30e92672db931afcf8864cbce2e75376f943e005745cb815bf39c79ec`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:12:51 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:04120beab8a285c5eddc34b1a64b3c13ee0d4b39ff8ed18236f14b053877c362`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 46.0 MB (46005247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54d56adc43811f216e9938d28d317d8324819dff56e7d7b6f87346daa8458b2`  
		Last Modified: Wed, 28 Oct 2026 01:12:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d1309e1492f68643ef8a2831cd2c1428adcbe3d75b3587e1d8a6fc9c6c58d43f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e9dff30c9383a2ce226b23d4c0fd83de10541fc8cd54755abfd87f50b32cad6`

```dockerfile
```

-	Layers:
	-	`sha256:e88f55a210da447284d6e818ca0d63c77ee5bc1106eb69edce9bb4498b1b1665`  
		Last Modified: Wed, 28 Oct 2026 01:12:57 GMT  
		Size: 3.2 MB (3177746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:734c4bbd2a9fe2bfa0aa50abb7f38338e50297fbb1a043e36573dbc9c55faf42`  
		Last Modified: Wed, 28 Oct 2026 01:12:57 GMT  
		Size: 5.8 KB (5834 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:d14bf4d584b3b31fa1f4995ff50d9bfbb9c44dbabb3cf92ae165d25a814531b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49143479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46b018a2be544a2d6f8ea1d7fb36c523cd391ce4b9645b59f7ae99276356d08`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:13:01 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:fba7d1c02cf0644704ea4dcf623c9231723afd3f333d8f052a829e427cefc4a7`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 49.1 MB (49143254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fec7b9857931f4ad6089f35cb916905cd3451f2818b768c8e85bd4740a0c82`  
		Last Modified: Wed, 28 Oct 2026 01:13:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e0e499db9b516a787b97f6f03420309584db1ae206a0d62ee82608b34d0b8dec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543ababff003230cb351ac804b922d44ccf145946c92c04a360b2d76f15e39ee`

```dockerfile
```

-	Layers:
	-	`sha256:3b12d334521c70bea75d3efdefa2b657adce8f7111e582bc3478fd21433345d5`  
		Last Modified: Wed, 28 Oct 2026 01:13:08 GMT  
		Size: 3.2 MB (3179668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cfdf1fb05caa6c1d5b97dbe25ddc1fb95548a4bffae5901a6a7d39c58b28d79`  
		Last Modified: Wed, 28 Oct 2026 01:13:08 GMT  
		Size: 5.8 KB (5846 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:7d98a73b817f769ac7845cb685a108bd949920a7d99cdfe7c81ca3be105b55d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50935672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdca739f74f41f73b0eb91d0c20c9c055c817bb805e98b2f81c00f9e84b17891`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:13:17 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7672c9acd98a1e06add035e6ee3e653a507f7b7f4b4765eff34df030dfbe09c5`  
		Last Modified: Wed, 28 Oct 2026 00:10:35 GMT  
		Size: 50.9 MB (50935447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d1b6af59318a2ac97beb654cf23dc5104561307363814bec0185a3bfae7d8cb`  
		Last Modified: Wed, 28 Oct 2026 01:13:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:776b748dc5deffedc62a5e13b710e79b96132d9866df2f89ef6e5318f0b4a362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f7db5a21c13d69d65f42c2c35ff3e690967a6f66e818643c3e5b25b572f806`

```dockerfile
```

-	Layers:
	-	`sha256:2b44b89113f7d564085eeef694dbfb5d99447048da8a5a25de78d91b86b9bc73`  
		Last Modified: Wed, 28 Oct 2026 01:13:23 GMT  
		Size: 3.2 MB (3173316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3bfa2e90bb1e00f004b19470af060de67b3850b05717bf2f064b6a1d1304e91`  
		Last Modified: Wed, 28 Oct 2026 01:13:23 GMT  
		Size: 5.8 KB (5761 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:ad908e962cc258bcbc836f3ccd5466f12b3e9b1d82cda48f123999ed035e161b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54501915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a92f93ddc70941eac449989bf0a8aff00e32369a5c1927ec63c67d72be6d0c84`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:24:49 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:fdff336143ff910156b179d6bd4838477e3c227ef408959418ba38d6f8413346`  
		Last Modified: Wed, 28 Oct 2026 00:21:10 GMT  
		Size: 54.5 MB (54501692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d8da7748829612f063249eb3749df4711445f364aaac53a164b7b00cc08e24`  
		Last Modified: Wed, 28 Oct 2026 01:25:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:91f14f02507fe3bb8b2531842e8a1d09fcd410e21ec4e515b61a40f0f74ec7bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0d7f13bcd6fa3b87bbde2115b020dca321da61e374cd23bbfd04793992400e`

```dockerfile
```

-	Layers:
	-	`sha256:56432854984164f984b254b3979a17d9537396d005fd57085abbaf15f140faac`  
		Last Modified: Wed, 28 Oct 2026 01:25:17 GMT  
		Size: 3.2 MB (3179985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b92a6540df3387b073f79d0ab247d15154bc25f397a38448d3c491ce1ae5181`  
		Last Modified: Wed, 28 Oct 2026 01:25:16 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; riscv64

```console
$ docker pull debian@sha256:e20181179ac7a9f35abbbabc7dc333a4db1d7313014fe1fab0cbff108b8c9a32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47232662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91194e5fabcaca32643e50c6f15291203548a23fc122042e9adbc433daf4b122`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:16:06 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:adfc591135148650dbf526110c7a281e2348fa5b65b8e9b8f646cec906264d49`  
		Last Modified: Tue, 20 Oct 2026 23:31:20 GMT  
		Size: 47.2 MB (47232438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33bb057e0e07abd18f89a2171abce695b10b992a77184525720abb2a6c86e3ec`  
		Last Modified: Wed, 21 Oct 2026 00:17:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4f86c16b5098f7563a63223b699996fadbe9193aba98d3fcd987f6bdf16c6c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3171942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41342110f7e838444f364dd66e7e8e0b5dddbaf42065bab16398b40aa927c2d5`

```dockerfile
```

-	Layers:
	-	`sha256:fad4f2a9f842c48b578b17c6a37a78d4401c75711e2456b8329b906ed6e6277e`  
		Last Modified: Wed, 21 Oct 2026 00:17:13 GMT  
		Size: 3.2 MB (3166139 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1a661693fd5d1ee52adebede7a76edd9e94ab87a2adc388d31a7db1c7e209ea`  
		Last Modified: Wed, 21 Oct 2026 00:17:13 GMT  
		Size: 5.8 KB (5803 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; s390x

```console
$ docker pull debian@sha256:b0d1aa626d54af1db6d0dc79bc12effb7e1d1953002ca542455c91a2dcebb213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48910611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47d3604a2108777d921f192b4d483a5c0f159cf7a7fb819b48a80d5138c1ee4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:12:09 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d60baeb673f726dfd8d5d1b46f51e89f23e17eb3992e524fa3e225597d8cc8e5`  
		Last Modified: Wed, 28 Oct 2026 00:09:37 GMT  
		Size: 48.9 MB (48910387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ae6dbd5b51a826da6daa703dc65051fd023523f11cb3f44a7e818f9b4a0f72`  
		Last Modified: Wed, 28 Oct 2026 01:12:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6f32b5e17f33aa6397c01b68d30e2edac9f063ed1aa60188f43f67eec420a59d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c532541bdb286d5cc044fdd7d5432d928c250d6f21185dbd4deae85bc9a342`

```dockerfile
```

-	Layers:
	-	`sha256:4bea79b47fe78dd0eff21fb4636372293210477afcc09ab991093dbd0e7d3189`  
		Last Modified: Wed, 28 Oct 2026 01:12:20 GMT  
		Size: 3.2 MB (3177615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6643d78c46ab7114af711b08ebed84174dc3a17c1e3dbbbcd942f7106d71b60b`  
		Last Modified: Wed, 28 Oct 2026 01:12:20 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json
