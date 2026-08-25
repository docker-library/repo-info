## `buildpack-deps:oldoldstable-scm`

```console
$ docker pull buildpack-deps@sha256:85c17fb03976b47d99a30ea59f3d6451bd1c250749e7b58e22fdf2d274ba1128
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
$ docker pull buildpack-deps@sha256:eff5d1b0d66bc2568787b8b43bbdd4a3f1719a4e7d97a6f35f2a3f974ef75b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114632028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a07716182b3ec25301d7def00d825aea18865b431f13c28dadbb225ae31a393`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:20:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:54:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:78f02c4a9e536f4eb1489b80caa0f24ffc5d691c897b9d8eabf0bfa5de3cfaee`  
		Last Modified: Tue, 04 Aug 2026 23:51:43 GMT  
		Size: 49.1 MB (49067288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e547fab74d5231727514aa7187f974069a1ee9a7f68290afbd470e94e9851e`  
		Last Modified: Wed, 05 Aug 2026 01:20:10 GMT  
		Size: 14.9 MB (14905382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d2221f0bd730fce460a5b83957f059201f1f72aa95400dcd77a3417b834fa9`  
		Last Modified: Wed, 05 Aug 2026 02:54:22 GMT  
		Size: 50.7 MB (50659358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7cb372c75ba47235a035f0fa7f4f4eabd31a4072bcf2233646a39a40c4661ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7930163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76c0e6a1cee83206af211c47b59113c633ea1269a74a0900b0c8c4e523ad0f9`

```dockerfile
```

-	Layers:
	-	`sha256:a89a6864185d00cd1cd45c5a2dfa79b2b23f7e3ce9078f05a69056e816fe1fbb`  
		Last Modified: Wed, 05 Aug 2026 02:54:21 GMT  
		Size: 7.9 MB (7922783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20489a4f840dfaf4c9f8fc37058f074c1fcd859f983bffc27b3418f5ca82bb63`  
		Last Modified: Wed, 05 Aug 2026 02:54:20 GMT  
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
$ docker pull buildpack-deps@sha256:32849b27bf27cec5a4ff2530628a008d672761bdc72eeae7992ac1a4bebd3f5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127058650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48512eb35717aebf0f4c9e27820aa54ec88f9f6cd310595fe975ad6e5f6abf9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 00:46:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:510e82e1d8f7e507a25b2b91429b3607a4e44770b2af5695503b845da3629ad3`  
		Last Modified: Tue, 04 Aug 2026 23:52:02 GMT  
		Size: 54.7 MB (54715733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b30f3a91acd2928e076b886b4ca6835a60bf3b897f1b2e11bf58f61c25c7b45`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 16.3 MB (16295745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99339981fcc7a18d45719c6cb593c685d9566badca90c3137c734193642ebe59`  
		Last Modified: Wed, 05 Aug 2026 01:41:10 GMT  
		Size: 56.0 MB (56047172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b0bf38e7f44693700455829eb0d5319f9ba501d1eba58b687b5949d85a8199a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7924245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202b4041a9173356d84a15504625f417d9541fa08e4010d9689dc3ca1d713b13`

```dockerfile
```

-	Layers:
	-	`sha256:1bd2d7839c790938e5921a78f0bf4158c14c4b39ac80e86032ddbea1f340e7e9`  
		Last Modified: Wed, 05 Aug 2026 01:41:09 GMT  
		Size: 7.9 MB (7916951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc36ac54a6ab45773befaabcbab610fa3bbfadb627937d26a79811c78f031c61`  
		Last Modified: Wed, 05 Aug 2026 01:41:09 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json
