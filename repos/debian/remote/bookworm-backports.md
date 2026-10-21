## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:18f7c93589ce1de73f2be19921a668bbf46f6c5f460cd9e72796ea15b5fbdf57
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
$ docker pull debian@sha256:0341ab73d65f63088fba4a1dd2420a09f1aca9a61e30367a936dc04372a0e310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48518247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3af52ef2751cbcb4b5a552e6789c7bee7b87f585df4e32f51275447e316fb63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:14:16 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d94da54796ceff08c98413a60eafcb0a330932dfdc959c83326470165082193`  
		Last Modified: Tue, 06 Oct 2026 01:14:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f9f11beda32518a3507e237fc91df4e8c2c8d2030179205779c45b97a10967b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f8d0deb2bfe7e1b1039005c6b5ef3cd8f378ca17e5d192b6919030a96d3626`

```dockerfile
```

-	Layers:
	-	`sha256:dbb204b5f16b1e9d1d1f9abb8c81d5ffcac14540fb8a416fa43e5adfe621e6b3`  
		Last Modified: Tue, 06 Oct 2026 01:14:22 GMT  
		Size: 3.7 MB (3734182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6070bd28cd4d74e904e7ded33654713cf6a353071ea09016df9cc17b3a442406`  
		Last Modified: Tue, 06 Oct 2026 01:14:22 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:97d215e7606b512649b0746c39181906164469798dec653c63e099577996e1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44220021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff7bfaafe6525569f3a45cd9cdf6004599509d42e08407cbeb18cf9d185668c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:25 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a023d8ed0a87a43d8959200d06a3325408557d6f3d966d41cd6363387b6d3c06`  
		Last Modified: Wed, 21 Oct 2026 00:14:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5d65b0bd9a4dfd4e05ceb0a7a36b1512e3d355b04852965de6379721729f08d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9701af7dbf1ab9b19a9326a68f7992b5946bedeaa65154eca14c34de3737d00a`

```dockerfile
```

-	Layers:
	-	`sha256:5bf5bbf2c3a8f42cab5ea27e9a254ca48eed7e1f7f2a800cc457945594a0ba5c`  
		Last Modified: Wed, 21 Oct 2026 00:14:32 GMT  
		Size: 3.7 MB (3736361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd241cb875abf92cea80cd95f6a274035ff0eebd88cd941e1ad1d29a717cab7b`  
		Last Modified: Wed, 21 Oct 2026 00:14:32 GMT  
		Size: 5.9 KB (5859 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b9eee99bef03fa604f52bd231df7e3a2ae82cfe8b34f6fbde84641c7a4820994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48401779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19442e2e53205f4eeb96e35cc0dd2cfaead0a74722f942332b43cb92a9ddc92`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:13:46 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cf487988c067a266913a8c2aedadc9b7776fc3ff56f8025b4be3ead13b266e`  
		Last Modified: Tue, 06 Oct 2026 01:13:54 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:550b4162eda71a19aac6f49498e2ecf41462e11c86447c8edfc858ce2ab6a10c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cbd32a23bf7abcedddf94424921ce929e796721a6cf468d2f3cf5020b8cb69e`

```dockerfile
```

-	Layers:
	-	`sha256:cdac7dac264a7b6788183e2fab87f1092612f4f4612d3afa3df254010d9d64ef`  
		Last Modified: Tue, 06 Oct 2026 01:13:53 GMT  
		Size: 3.7 MB (3734397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bccc38ddf02993eb05fd71b048d2475a7303934925868d418e3843facaae87b`  
		Last Modified: Tue, 06 Oct 2026 01:13:54 GMT  
		Size: 5.9 KB (5872 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; 386

```console
$ docker pull debian@sha256:b7eabd9d7e2d34dc964adf4dc2825ac346cd59cb6dfe13998e9a94c11d20dce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49505556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb53d02a22c205c55a638d192a029215af7c95985ad672b6a6a3722dcda22e6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:14:29 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd524ba0558792286161a46090bcde97f745f3d31091a439c3441f8030800365`  
		Last Modified: Tue, 06 Oct 2026 01:14:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:29eb059d27358e491aa899fee23acb3a7775e3699b49bdac36f89cd3df57090c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3802f6cf2c6df621d5c6a38377a39a588b54dc1bdfe348cbfc43990329a67071`

```dockerfile
```

-	Layers:
	-	`sha256:a0c643ac49f83e512a12adc119990aa3b8a2a379026adff978da435e628847fd`  
		Last Modified: Tue, 06 Oct 2026 01:14:35 GMT  
		Size: 3.7 MB (3731378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31e8c544393316b496b25d1bf7c337894ab48ab6216a4207c9cd6595872dbd2d`  
		Last Modified: Tue, 06 Oct 2026 01:14:35 GMT  
		Size: 5.8 KB (5787 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:b072e3cf36434d76e28a3c150a939a97ff3c292adcb1b8a1f6a4bcd6864b38c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52364968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1e653762d109c76b1cb4f78e3aae4738cd29a7a9a30e36f89c998ac75cdcf6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:14:21 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32dbc5645c1c37be7a5bbe3b202c90471da22eb5245301beb1a3019b4f1d8b06`  
		Last Modified: Wed, 21 Oct 2026 00:14:48 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:603fcd95cb8575aefc10a8e6b9c561b08198f86f1618525a43e04b6de92996ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d8069dad09d539c705897e9ded485c855d789a31c2c8e86a20bced1dcab8c9`

```dockerfile
```

-	Layers:
	-	`sha256:691db3340de59a3e44a4e62e1f6fbdc03da6166f7a428f96b6a2ec3973ab27a9`  
		Last Modified: Wed, 21 Oct 2026 00:14:49 GMT  
		Size: 3.7 MB (3738540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:829459beb0fed84c19fd8e59c5d1daf645af62c9bb7cdcfe62665674453e9562`  
		Last Modified: Wed, 21 Oct 2026 00:14:48 GMT  
		Size: 5.8 KB (5829 bytes)  
		MIME: application/vnd.in-toto+json
