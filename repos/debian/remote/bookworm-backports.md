## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:7429d591529d1405d7ef08ee1f1be02b41445700b921cb2198752a0c46289119
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

### `debian:bookworm-backports` - linux; amd64

```console
$ docker pull debian@sha256:a543c9ee14624a0c89cebe7f4fe3aedf7b27268db437c13351ef4bc4cb18e1d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48526708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b88d54c72a70a9ea2ac4cd2c5a24ee9a2ceabc2647b5a24c1175311ccc5c7f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:12:11 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a95b13254bd74f44129c0c22e4dbbbbe47f644c2583ac5fcea446bbbd6c79b`  
		Last Modified: Thu, 05 Nov 2026 07:12:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2bd9e037cf24d157bbde4d9e9fb6af1871b97429369cf7ba1cdef300f3b0eb53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7eaa607415d0f200717a4cc841a1067f96e1a585df6a1d49ef272f9dfb518da`

```dockerfile
```

-	Layers:
	-	`sha256:2160404efa36af3d516a597ef7310c1a5e160568e4fd50e73ab8ecfd043e55e5`  
		Last Modified: Thu, 05 Nov 2026 07:12:18 GMT  
		Size: 3.7 MB (3734182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e37f969e42d739016ea9c67ddd9a8d333db03eb1044c290e0ac86aad9501f5a5`  
		Last Modified: Thu, 05 Nov 2026 07:12:17 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:a94b77577e8690ad743d27f4aba26e8424a101f61a5251fa73741ed39dfd64ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44223511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461e9cdf66d16b09ed06a5f14b4263aab0a914c37138334ff293e4c0d471c341`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:12:04 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8875c3db391f2da2a6bf4bf83b4ecb888a2d0f8a47b60282086b0c2cbb0a3946`  
		Last Modified: Thu, 05 Nov 2026 07:12:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5c98768acd65fe12c6c97e96f42f66842f134a34123a000c95c294f1c315d9c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78d95a152f1b044a830a77d282f8d4ba45271b41fd0d29e1fb7164d60eb4445`

```dockerfile
```

-	Layers:
	-	`sha256:a019ab278000ee7bc388ea09cae15f40d9cdde2b6dcc09a97b30ded2999b1537`  
		Last Modified: Thu, 05 Nov 2026 07:12:12 GMT  
		Size: 3.7 MB (3736361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8ff3a7e9751548da6ca74c0b61b91733805004762140c33079c7d1b44ae051f`  
		Last Modified: Thu, 05 Nov 2026 07:12:11 GMT  
		Size: 5.9 KB (5860 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:ad57937da011f35459469af5811474de0b2339a68513c70edc4039967eab37e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48412680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b49f46e0be7d7f128a2839edbb2b035742808c8e5425bdb9af0dc6c23ac21da2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:12:17 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24dc91e3c8fb2297497ab09f010d551cc69446f8485243aed0128a0ad58b45a`  
		Last Modified: Thu, 05 Nov 2026 07:12:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:fcc02d9994e6efd26c20d320cb1de4da799199fb5b90a94726545eebc508d314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29b23f40ab92f0cdd7b1a03db2001c95847575b57e6cfc5f3dee4f84c0e5472`

```dockerfile
```

-	Layers:
	-	`sha256:e6c3034b7ff69355bd1e0a269ae45213ccfcf9f5892a7c4ff40261787afb7ff7`  
		Last Modified: Thu, 05 Nov 2026 07:12:25 GMT  
		Size: 3.7 MB (3734397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b66625f8353fe4a5fa11f26354c7eacbbcdbb2ed976df4e25d495f1cf12ee38`  
		Last Modified: Thu, 05 Nov 2026 07:12:24 GMT  
		Size: 5.9 KB (5872 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; 386

```console
$ docker pull debian@sha256:98ae36d4f4c99bf3974ea4feff2f711aa304790c6014e0e3596810f38afe6b3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49515919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cde6050c725eb0519da80fc1d86c272bfb0ff1a55a6837ab0c3758ab37a3c37`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:12:15 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968e681b4a5fdc52cf3ae1083a511a1014349162fc4b4f446cf021c81c19b2d4`  
		Last Modified: Thu, 05 Nov 2026 07:12:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5cbf1cc547db03fa931ad76711348f186e46bdd2dc1ff6da53fa23767821df3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dde41e0934cb5f6b1681fda99444016d903b8f45ab0ffea3dcab341abcb330d`

```dockerfile
```

-	Layers:
	-	`sha256:727e90509e54367d39cef904241d5ac4778030b0ffb0bc5eee6c4ff49165360d`  
		Last Modified: Thu, 05 Nov 2026 07:12:22 GMT  
		Size: 3.7 MB (3731378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bd90d0b4aea8b6969ee4f2fdced32b7246ebfb96fa25cb1825d9622ae6e307e`  
		Last Modified: Thu, 05 Nov 2026 07:12:21 GMT  
		Size: 5.8 KB (5786 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:7fce267a3027604f147bb07737895c5acd09933aed02e2501de600cfb1b21ba8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52368846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7a27c1b16df2f42d4c1d462dfa11e3c1e25974d80c6e32d0960e65d9c79bbb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:11:09 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e88937506b9f926a11a1add02dd89f6c0e9bbacce9b2251831a6329266777fb`  
		Last Modified: Thu, 05 Nov 2026 07:11:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e3f868704cb3b9d7113d98d900eeabe4e0adbd04190ed877aecfa52ed4e3fb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e74171a32a56c1f2dd817d26ad3b47e25f420e5285c4fd3a5a955e07ddfdb32`

```dockerfile
```

-	Layers:
	-	`sha256:4174c5547b6e7924ff1d27e7cf67e211e292a32f74418244dd4fe23a852c5175`  
		Last Modified: Thu, 05 Nov 2026 07:11:24 GMT  
		Size: 3.7 MB (3738540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bd7fe55b49e984fa8209d66128fa95d0b178c1ecc34c9ee2ada0a86c1f94ffe`  
		Last Modified: Thu, 05 Nov 2026 07:11:23 GMT  
		Size: 5.8 KB (5830 bytes)  
		MIME: application/vnd.in-toto+json
