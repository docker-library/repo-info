## `buildpack-deps:oldoldstable-scm`

```console
$ docker pull buildpack-deps@sha256:c1b6469f8abc3b1064ff8e58c9334dd34f461789966455f2571e99628ab03125
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `buildpack-deps:oldoldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e108255ef59c844487ab73dbde378dd3fe0ca3a272d9cdb9815e4f6afe104edf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124325830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4355f7cfa0627193a1084606556827f4f2452841c27bc4b7d5619b7382df8f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:50:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5909957719ab662a311099b46df8f146fbe5be5ec749fa12615589aaf221b5b8`  
		Last Modified: Tue, 25 Aug 2026 00:50:43 GMT  
		Size: 15.8 MB (15805167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f735ad8e196ddab59dc182a0d1821e340e843e689d0287b68a2a2c51eba6a98`  
		Last Modified: Tue, 25 Aug 2026 01:38:27 GMT  
		Size: 54.7 MB (54743271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:10785bca49ea03441440c0aa6cec28d95e089afcd38863e7c453eedcca3fb2bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7933900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f3b3665e2cc4a53f4e673e9d635c589ee4b55b5be7c50767632cd6a7c72623`

```dockerfile
```

-	Layers:
	-	`sha256:319b1437b7af0efbac610620b0f4605196eeedc4218984e1d1cd0d7adf97d210`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 7.9 MB (7926584 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e097685f4f84b54c154541198687a4dfcdb8c0677397699a2d857e645458520d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 7.3 KB (7316 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5a8555e57c13c0c75b41d110359a6ff0445210d110d6763dfdd8170d510871f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114644842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddddae56a88f3f16f61e9cc5697c1086e0fa7f43fe5086edf6cc2a9d1d0f7b34`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:32:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f6631be4d16afcfb3d74014e88338a92e7c1065338576d3e2dc9e061a4f3bbd8`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.1 MB (49067696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85cae38623c0f9775252c0e52955b53b4a7fa5906ecb81bf9eccd32f57af5a46`  
		Last Modified: Tue, 25 Aug 2026 01:32:56 GMT  
		Size: 14.9 MB (14913721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618fd6f46995e477521337b77d8c13199469f427c6209974c35c194c4dabdad1`  
		Last Modified: Tue, 25 Aug 2026 02:36:31 GMT  
		Size: 50.7 MB (50663425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:baf6c95e6deacf92423205c2dfb2131ca06a3529bb929b74332734a689d09d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7935366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cac8efa0b112d799f7fcdcce68c512a81f1f4def757ed56438829c7a3586d9c`

```dockerfile
```

-	Layers:
	-	`sha256:4a4227810de2043873e0d7ac484f676df457b7746505cc5db1af7ba3f2ad62ad`  
		Last Modified: Tue, 25 Aug 2026 02:36:30 GMT  
		Size: 7.9 MB (7927986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb9af63515cd6ffb331805352554e4a02abbc75738c5de25146b756fedf591c6`  
		Last Modified: Tue, 25 Aug 2026 02:36:30 GMT  
		Size: 7.4 KB (7380 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:66d29070327f34d8138298d19a154154bf81769e03c8d88bca08c6e75ebe9b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122931527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15e95a9f694ae31b4db4671954d4b8c5855e7c900f00913e73b7ae9cd815054`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:52:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ebf8e47572aa15d512f1dc9c2f5be1d99ab6c1c7747e4670e36bd9518a42b0`  
		Last Modified: Tue, 25 Aug 2026 00:52:51 GMT  
		Size: 15.8 MB (15789863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a95e7eedddd8f8d0f051099560d562e62c6a499ed176b8b62a0895f7c3a397c`  
		Last Modified: Tue, 25 Aug 2026 01:43:19 GMT  
		Size: 54.9 MB (54880321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a47cfd0dacde07832d8a49d2183569a26c05e7581329cbdac982884842b54b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7939714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b08aecd7e741712983129fd238c582d78be7795c3240aee8c2ccf1f5714fbd1`

```dockerfile
```

-	Layers:
	-	`sha256:ffcdb3bba3804137c625d8cf04897b43cfd5ba3f5c15ae03f870273fc59f83c3`  
		Last Modified: Tue, 25 Aug 2026 01:43:18 GMT  
		Size: 7.9 MB (7932318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:108c9f9a80eb7712c76a3529f2cc671db50a40ded61d7a393f2ed8adcde767fe`  
		Last Modified: Tue, 25 Aug 2026 01:43:18 GMT  
		Size: 7.4 KB (7396 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:12d6b41effddffbb8bcdbf336be4e2e1c363d4e51fc3dd3e70f4dc624d86019a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127078269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c171c4ee25a56576a30a5a6c9b0804d83861f8878b2646d2338838998d86ac6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:50:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcda78a9270c75800a19723999e4b6e90e7f8bb3d12a0b61bb9eb4b9d2c5a0c0`  
		Last Modified: Tue, 25 Aug 2026 00:50:57 GMT  
		Size: 16.3 MB (16310635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621309314e0c8fd3763b34ad20f9cdf0c5c511120b5b490360cd397268fd18a2`  
		Last Modified: Tue, 25 Aug 2026 01:42:25 GMT  
		Size: 56.1 MB (56051465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b2fd23d5f4b8932d93e1d5ad0e717b12738b1039767e7d7ebd3a5c65e63e9c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7929448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7883465ccdff82d437999789151f5b7297be797e306a2a3a75b6355ddad6c707`

```dockerfile
```

-	Layers:
	-	`sha256:f7e9cd44630a0e45b31c688329836aa798061e428bf8263df3c13bae0629ac07`  
		Last Modified: Tue, 25 Aug 2026 01:42:23 GMT  
		Size: 7.9 MB (7922154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ad81990694b74fc2bb6e3208415fa4d9b43040f71cf91dbc3a98d1016491698`  
		Last Modified: Tue, 25 Aug 2026 01:42:23 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json
