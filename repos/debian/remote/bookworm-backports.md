## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:68e9a6132d2adc8267ef6b7a9768a65765ec0f01aa912e582224ea35f516c23d
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
$ docker pull debian@sha256:428223b7ba8af20374a601ec0644639cd71959e9c858150cf8e912196a674308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44214138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31f909627054a518cde45ce69f69c649db841b0be36c7bb2bb61885a8c5f1b0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:13:52 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fee050d17ddfe974e1cb628c27c4d4d12c370447da52082a0dbe62c790aeb39`  
		Last Modified: Tue, 06 Oct 2026 01:13:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6835c6cf0894bc8e6f5f6fc31aad3e5c40f5a34c08349a3262717573132a43a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa56f9da5e6bd5c2fd63c771fde145814080905e60a7494b5233499995ffd4c`

```dockerfile
```

-	Layers:
	-	`sha256:7d255be4e436d2494efb10c84607661fc8479aaf21a82ebcfac99ebaeb60291c`  
		Last Modified: Tue, 06 Oct 2026 01:13:59 GMT  
		Size: 3.7 MB (3736361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509bc0dc5cc35a6a4dc5e8b1a4f475943fb017bc8417862d65f177d441667bab`  
		Last Modified: Tue, 06 Oct 2026 01:13:59 GMT  
		Size: 5.9 KB (5860 bytes)  
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
$ docker pull debian@sha256:bfde0cb76a8c2e4a3726215104adf6984d05bc57bace3ef7c57a7688a4782493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52362965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0a0f04b940ac697ea00e626c48f2fbb64d096a6f329bbf4548c0e1878c57a30`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:13:38 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f545bf96f6e63519f53eac64c6c71513336b65eb7b6499cceee79b167caeba`  
		Last Modified: Tue, 06 Oct 2026 01:14:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0d239c1c81245b01caa97c1c66c8c3e497bfeca1286bafafcfb52f54cf22bccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c34676d8ce27baa4c4362f51bcf958bcd06b51932abd02eae6f0b17a0625157`

```dockerfile
```

-	Layers:
	-	`sha256:7a0b3cc940ea8e68328bf22a2109a11d8673c049a5b549fb046218a765e74ab0`  
		Last Modified: Tue, 06 Oct 2026 01:14:31 GMT  
		Size: 3.7 MB (3738540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01c61bf92d776a95421996528ae4ec33b265e4e35a6870a3e48e5f4dfef25134`  
		Last Modified: Tue, 06 Oct 2026 01:14:31 GMT  
		Size: 5.8 KB (5830 bytes)  
		MIME: application/vnd.in-toto+json
