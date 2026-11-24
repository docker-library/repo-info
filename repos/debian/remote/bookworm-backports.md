## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:5c983e1ad73b740e2203340b61d3cdc6077654f405a80f2ed1d4a98dd3d42513
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
$ docker pull debian@sha256:8053f6b04091e4bdd9bebdc3ee262c0e2edcbdc80729e4082e069bb1e2d6165f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48526603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c993dafe7b4f232bfcab281498787fc51bb231b571dfd59f3e13fee4c46990c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:12:39 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb47cabd2300e07cf3d371d31184833e858ac550fa6e5ae40bdaf55c997da13`  
		Last Modified: Tue, 24 Nov 2026 04:12:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:3d21f2bbbc4f83efd2b22651ae09e50fc218b893c883d598ce99780ba725d20f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed0da443a865225e1141e0e4c9d29f1b3edd58f414158ffbf698ba16f37eddab`

```dockerfile
```

-	Layers:
	-	`sha256:a1ceda8f7a0c4a2a1ff43c5b017b71053d3ade6ab3cda62cf70de44b26951158`  
		Last Modified: Tue, 24 Nov 2026 04:12:46 GMT  
		Size: 3.7 MB (3734182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c059feab6bbe539625a11e687e48c544b424327f49f3f68f8ef4c8889c0a1e5`  
		Last Modified: Tue, 24 Nov 2026 04:12:45 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:1aba36fbff4c063ba3ac09c791c671111dea999881c83baa29866cb23ac7a677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44223426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d1cfa66f4f4beeabfe9996c189db329c06094ff955420153cfab74262d3272`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:13:23 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bf46e8a44ab51f3c808ab48aaf11399ad2da7d0966cd41620337234ab118fa7f`  
		Last Modified: Tue, 24 Nov 2026 03:39:44 GMT  
		Size: 44.2 MB (44223203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa3259fd2396208e8c9573c23f42f9ee208d7ee19c6e1d107d5748330be6619`  
		Last Modified: Tue, 24 Nov 2026 04:13:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cc4edb53de7e53d45045c025c36047037887189c58e95846e766bbcab2e8ba4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59591c9097e9e8cf45ac88517c69063f72d4ac34b7a1f1d6449748b99157d177`

```dockerfile
```

-	Layers:
	-	`sha256:c39f5dac341724a02f9a7e743d2fe2159f80fc6cffc59cc8a034784506487e76`  
		Last Modified: Tue, 24 Nov 2026 04:13:30 GMT  
		Size: 3.7 MB (3736361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f11eda491ce107644e45b034b301e52fe76a116ae9bb75a78def2be8f651e31`  
		Last Modified: Tue, 24 Nov 2026 04:13:30 GMT  
		Size: 5.9 KB (5860 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:ae600ebbea94bd73d0d97af09a617b564a91f3bfb5fd27e222a8f4dac60375d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48412484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445bb6a358cf202710f376115e2380965fd161edfa9f7a87e742a5f57b00c9e8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:12:49 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6cedbfc211aaf4187f1044778bd8612148423d52cf8187b6bb0c2ba189f1e8`  
		Last Modified: Tue, 24 Nov 2026 04:12:55 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:20c68c977b4ad467b8f06755c8223ba588191f741cb84c0a5292817a5ed4cd0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f13f9a3341ec4bced9681f59d874e4867c3cae455671f46b4c578a818e97547`

```dockerfile
```

-	Layers:
	-	`sha256:d7b1d4833ddceb294b9652707e975c535c1970b32d2decaf104684e45aadd3ce`  
		Last Modified: Tue, 24 Nov 2026 04:12:55 GMT  
		Size: 3.7 MB (3734397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7753937ea8920b13511cafe17ce540c5f225dbb1e787f5a9e0f8d19048dcc24d`  
		Last Modified: Tue, 24 Nov 2026 04:12:55 GMT  
		Size: 5.9 KB (5872 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; 386

```console
$ docker pull debian@sha256:6759478f504c77b9bbade74f8df6735547787a70ad084a58836f122218b8fc7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49515756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b62d9b3546719cfca43fef54b5c32c96a1918227f3f4fa92159e662befba33`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:12:46 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50007ff42d7ba08ab1f0ceecab57fdb5eafd4f9116aa7d9670a2b7409303a047`  
		Last Modified: Tue, 24 Nov 2026 04:12:53 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:786e9299ed4a1b11b48c95fd4a33697ba959c70e4a265d587ef71fd932a4c9ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d0e3a1edae99e9f94294cf55ef1afc4c4442703b3acbafde9ab31138dec49b`

```dockerfile
```

-	Layers:
	-	`sha256:0dbc5edbd02b42571c569f1a2b2e89021fa703fea63dbdf04173dc9111135f55`  
		Last Modified: Tue, 24 Nov 2026 04:12:53 GMT  
		Size: 3.7 MB (3731378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9abd6e78100b77e7263eda3cd30609d4341b6e0318f79dd4481e6065b1bc584b`  
		Last Modified: Tue, 24 Nov 2026 04:12:53 GMT  
		Size: 5.8 KB (5787 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:df71f0486e31f46ec087804535c4220cdfe33ede966e532b52718e2a1bdf5235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52368727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8444a156add9fc0fb9677fb9f972ba7fd8ab249af31655c26a7df8b1a026846b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:11:53 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23b5be164364fed7a82ffe72f21fff14724a256ff1768d3da8c384a382d00ee`  
		Last Modified: Tue, 24 Nov 2026 04:12:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2d3b066a2abe0477cbfef5424dafe9aa6ba3fddfce102fceaf612285c596a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd1d1f6f36b01e4cfa4913e3ebcfbd1ad50a9385daf55a9e77d406f2cbd96fc`

```dockerfile
```

-	Layers:
	-	`sha256:082c126384cf4806b8e6142c73f97f500ddb13cc59e1231aadabed0a0867374f`  
		Last Modified: Tue, 24 Nov 2026 04:12:09 GMT  
		Size: 3.7 MB (3738540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f826ef798a23bee6dffbe6ed8d162399dae2615604a2c99adeec45d7f32953`  
		Last Modified: Tue, 24 Nov 2026 04:12:09 GMT  
		Size: 5.8 KB (5830 bytes)  
		MIME: application/vnd.in-toto+json
