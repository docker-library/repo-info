## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:e44a7016050c3235be0896ba60a44e42fc828dfa4692e196c228939736903079
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
$ docker pull debian@sha256:eb7f7ff0c38b770980cd16e8b492fabe98ebb933e9d6889e5a2e86542d8f823b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48524779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794abed37b7304ec295d77534995a6df2522eb30c019e6926d028d4bf496d08a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:13:00 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ff00e5a0c7d74336512928befc9da823fcc7e3fed0b11ae0b3457ad87cb2cc`  
		Last Modified: Wed, 28 Oct 2026 01:13:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:395543d1df409b3326e71c64733c680ab8bc24e2d02ea01a4429d3fb425583b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d298bfdef2691d745dec733e97e0ef696ff454f3bc18131040dce1c3987e54`

```dockerfile
```

-	Layers:
	-	`sha256:ff53af1f25fc6d57313ab7574a673c141624128ccb810c0a3b94799992a2df9c`  
		Last Modified: Wed, 28 Oct 2026 01:13:06 GMT  
		Size: 3.7 MB (3734182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a82deece52883438c0284de1b89dd8df6c7534db094143b23e0e4933a803baf`  
		Last Modified: Wed, 28 Oct 2026 01:13:06 GMT  
		Size: 5.8 KB (5803 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:cf9a4d4a6b03b6d2813348aca54d324dd293ff786f59e24111c81e652e87ed54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44221329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1dff69cf9459590f36344efec4c194abf0fa7d84244e235cfb00b76908de05`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:12:52 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:72f4613dafbee94a9d937a8241dd188c8143e980307c6c720b773c03ddcb2285`  
		Last Modified: Wed, 28 Oct 2026 00:10:32 GMT  
		Size: 44.2 MB (44221103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8d8b00926ebd755ffc4c9058ee350b05fa264c06e10c1f4149ca75e53b8fbd`  
		Last Modified: Wed, 28 Oct 2026 01:12:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4e0342d8de2e1a5571eda417ac9ac804838904cb4d7dde99573e1ef57515091f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e131c7a9500444e66792f5c0b56dcaf49a770c2a39fa43b7249fa6f5431da095`

```dockerfile
```

-	Layers:
	-	`sha256:7436bf8b0a8ae2558c6885242150e8b3e9c64195f8f3a01acc0bbdbd1e128a53`  
		Last Modified: Wed, 28 Oct 2026 01:12:59 GMT  
		Size: 3.7 MB (3736361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:355dd5d841cd4d4e74f535c1837828a06dd26e98efcb91a0e44c4aa699dd8d3a`  
		Last Modified: Wed, 28 Oct 2026 01:12:58 GMT  
		Size: 5.9 KB (5860 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:488ec99d4993fd366e99d0cc413e91eff86129fc8d5b81e55cc4206b9281aa02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48405397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9bbf624fbe451187c80892024382e02ae1efabb2e43405695b52bf072cb114`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:12:48 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb83414a252e4b1f0dca478595d96af0ed0cb245145c3e9965071ae9dbc98f6`  
		Last Modified: Wed, 28 Oct 2026 01:12:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4b52857d128be8a275c3abbc948d5a8e5f2805b4694fbabf5f005b8afed26cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7796ef5d48d4b57351fe767ca0df0740a9db55eed52254c9c7305a26c5a8b34f`

```dockerfile
```

-	Layers:
	-	`sha256:fbe2024f56487b8543029f65beff645fd5bc0285216bc6b92f9b675c74fed516`  
		Last Modified: Wed, 28 Oct 2026 01:12:54 GMT  
		Size: 3.7 MB (3734397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4527c8a75d63cc58794afc7a68ad130add73270bc9eb55cd774bc47dc9897fe5`  
		Last Modified: Wed, 28 Oct 2026 01:12:54 GMT  
		Size: 5.9 KB (5872 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; 386

```console
$ docker pull debian@sha256:4a12f3f837c4070da9a2954398a0ac29c10488cde1e94e5801d15d18535130c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49513764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8efb051324d5b6100b9c1a1e47b6f07ee92b60744ab5b4dda6283462d7d1394f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:13:13 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7d013cfb99f9a659ec5a70c7dc91ff3a30fef8cec1975cdded7a6450f2dc79f0`  
		Last Modified: Wed, 28 Oct 2026 00:10:25 GMT  
		Size: 49.5 MB (49513537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f09a10041b323b96cfbed6476ee4b9407d85af90395e48ba9f673795291c7b`  
		Last Modified: Wed, 28 Oct 2026 01:13:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5d90fe7084419fdc13f96b428a82b48a302782c70d7c44081b9e4712ef0bb996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf0d9036cea5ceb08d4d8dfe06e97753f3fd2b39f1db465cf7a15a15a9b52d2`

```dockerfile
```

-	Layers:
	-	`sha256:278a5e98c5fdb8c51a6b2b7b4bda60496caeaec61d2907900863413d6a97b7dd`  
		Last Modified: Wed, 28 Oct 2026 01:13:21 GMT  
		Size: 3.7 MB (3731378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9e7e05c08490fb44905fabc17ad1670b1ea3a9596627216ed419e9df03419ac`  
		Last Modified: Wed, 28 Oct 2026 01:13:20 GMT  
		Size: 5.8 KB (5786 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:65bc0c12375daaea255c18708e03a35fad54501e7f1542d803792cbb94060e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52366533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f69a919dc96c00ea7680647399a866681c3a91ebddc625be79204486567d0c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:24:49 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614e4a45c5fe2550f0e2219b5734393fc387c9763a051f785264fad6ac81d666`  
		Last Modified: Wed, 28 Oct 2026 01:25:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:33f612fcd403afa7dcfffac024e368c74d00f9d7293eb79186fc98ed774234de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b6cf0a37cb4990be80027f6352b550b5465f3434a7d5ae0266a32d86fe1aa91`

```dockerfile
```

-	Layers:
	-	`sha256:673a367ff28114e0d77fe254565ceb0dc3b3f97a6b92f3ca761afa7a9655c320`  
		Last Modified: Wed, 28 Oct 2026 01:25:16 GMT  
		Size: 3.7 MB (3738540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:944e3a99631e2e5d0ec9bfafa1d90ad0932c9e4a36560b853b258dc0b1f6992f`  
		Last Modified: Wed, 28 Oct 2026 01:25:15 GMT  
		Size: 5.8 KB (5830 bytes)  
		MIME: application/vnd.in-toto+json
