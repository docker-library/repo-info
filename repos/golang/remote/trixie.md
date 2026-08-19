## `golang:trixie`

```console
$ docker pull golang@sha256:b389f1219965d8ba67776b81d17308ab25fa763be3855e5fe63ebcb10e15f3a1
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

### `golang:trixie` - linux; amd64

```console
$ docker pull golang@sha256:277b40a9f20e4346f3b3386104f2a6c11caf2318a55c3a13ee89a920264bd717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312379287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e4acc4db98ab8e42f8f79f1b3f91927724777998715a6ee8aba813139b1001`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 17:49:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 17:48:55 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:48:55 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:48:55 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:48:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:48:55 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:49:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:49:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f693513358c9ab7c2a37115143f5ce4c815412bb4be9f71b84daf9b57a2ce353`  
		Last Modified: Wed, 19 Aug 2026 17:49:30 GMT  
		Size: 102.3 MB (102321967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f862ff06300a1a1a02de873a4916a50a5ab95003e0368047090a584dc363cb`  
		Last Modified: Wed, 19 Aug 2026 17:31:55 GMT  
		Size: 67.3 MB (67308211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4fab43852e7b265ea760d4f0b551640ea95dfba00f552ede14863a227150a5`  
		Last Modified: Wed, 19 Aug 2026 17:49:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:d82e7e1d3cfe46846f35311049156b23eb9692972687c6509a8ee0670dd3d20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10815864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a53bc5bc1eb4c8d16672ec2cce04d45c73bc3eefe5ad830303256fdff3c782`

```dockerfile
```

-	Layers:
	-	`sha256:0c9e1b8e7dc8efe0240480b1c1e64182d4676e1504ff0a8e1947fb83792c1cd8`  
		Last Modified: Wed, 19 Aug 2026 17:49:28 GMT  
		Size: 10.8 MB (10787487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6393f0965f369770b5ff252ab4583f776ef3a8cb1b397835b4f218a971308bc`  
		Last Modified: Wed, 19 Aug 2026 17:49:27 GMT  
		Size: 28.4 KB (28377 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:20ccb9a8d8e528984d3b4ecdeec05eafcdb01ca02b7b17f385f6879868fc2fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270948382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2919c4980c3dceb017928f920fbf4b84e57c66569998962326a8108c46a3ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 17:49:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 17:49:54 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:49:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:49:54 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:49:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:49:54 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:49:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:49:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0dd361d89842d87704123c0af11b4564310574a6d57fefd0e2be36925c3d8d`  
		Last Modified: Wed, 05 Aug 2026 01:20:38 GMT  
		Size: 23.6 MB (23636453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb135e1760d1271aea3209c73b2b3ca0ea7f9cfde6d547d3d7e708701db7379`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 62.8 MB (62757963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8484687b9111240677e94d6492484325d0c3df8b7a18a4ec144a7f981d28b982`  
		Last Modified: Wed, 19 Aug 2026 17:50:25 GMT  
		Size: 73.0 MB (72966446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63db3652ddb4dc5e193831bd445cd140444ac80ea4d0902af61eab9e4bc1b2a1`  
		Last Modified: Wed, 19 Aug 2026 17:50:25 GMT  
		Size: 65.8 MB (65843987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79c7868519193267c49ddf2047ffd20f9a910b2930817d2dc593abe55811660`  
		Last Modified: Wed, 19 Aug 2026 17:50:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:8f01c8fe80bdd89270afefe900bad8c43d5910e6c419590fab954dc32fc31506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10611918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d0d68680158bf4c5f26763eec7ff7676b3551859504d7b7948fa817ec137cb`

```dockerfile
```

-	Layers:
	-	`sha256:e9a157c9673f8772edd8850a7ccf1519474b5e993ecd4b26640f5687e444ffef`  
		Last Modified: Wed, 19 Aug 2026 17:50:22 GMT  
		Size: 10.6 MB (10583406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:358075414868643823b1f2348254a7a089d18829cf1565f993518e2d5fa8705f`  
		Last Modified: Wed, 19 Aug 2026 17:50:22 GMT  
		Size: 28.5 KB (28512 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9dfad916ebb20c914bf998696fd4842d06c4f1863404efcb40997e33743c230e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (304988771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ca082ef48017c5b8a8b6cbcc367e5e0111042f641b22676be964b2c712f78c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 17:48:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 17:48:43 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:48:43 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:48:43 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:48:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:48:43 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:48:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:48:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe558f39d190b3bb06d5f52b394645394d36f321f55acb4ff436f681b0cc1b3`  
		Last Modified: Wed, 19 Aug 2026 17:49:17 GMT  
		Size: 98.5 MB (98466668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c655cc1f43ce5f189d82e57023ce1d05912f7cd5b6ae76647b40778ddad95934`  
		Last Modified: Wed, 19 Aug 2026 17:49:01 GMT  
		Size: 64.2 MB (64221042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ecf770ec000dc83902598676aa91c60a1a1c396120b0cade45b815c925ba4df`  
		Last Modified: Wed, 19 Aug 2026 17:49:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:2ec733a184ecc885727aebbab58a3f0eed96d05b44245a37aa8c612d4d6bd4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10935909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606e8fc74124482a4d8e0646c7046954b14a259d8b4c94e237c098c007ba3bef`

```dockerfile
```

-	Layers:
	-	`sha256:6f2024858235506e1707fa4a8cfc824ee9886133d1a6438b96c3b3c1c7a8e3d1`  
		Last Modified: Wed, 19 Aug 2026 17:49:15 GMT  
		Size: 10.9 MB (10907353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:156abdc0844d154f54485aaeac40e65bab4990430fc7be3e1a33cd669f982ad1`  
		Last Modified: Wed, 19 Aug 2026 17:49:14 GMT  
		Size: 28.6 KB (28556 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; 386

```console
$ docker pull golang@sha256:800de35c018cf178d6411981bcef091516ee23b1de3a3023c030126ab243df3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.9 MB (313881448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ee8d4a814c1c6fa1fe32ce76e9849e916898bbcc6dca9563d3060b701def46`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 17:50:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 17:50:41 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:50:41 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:50:41 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:50:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:50:41 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:50:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:50:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f34fbe13383f04539c7849f0cc79bc728d4e964e24cda9b947d4784426bd636`  
		Last Modified: Wed, 05 Aug 2026 00:47:13 GMT  
		Size: 26.8 MB (26800384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a3ec548455cf061e33066b297b3d6422e0f3a9b061c1f92a46c05e3687aee2`  
		Last Modified: Wed, 05 Aug 2026 01:41:30 GMT  
		Size: 69.8 MB (69839732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a69fad030b6f788986c2028c89773abeab83c25709f1e76a34ae3ed163cf24`  
		Last Modified: Wed, 19 Aug 2026 17:51:20 GMT  
		Size: 100.8 MB (100764736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edb134c4733796b33fe93db5bd18feec5a7887055d9b63cb6574616ff6f319c`  
		Last Modified: Wed, 19 Aug 2026 17:51:19 GMT  
		Size: 65.6 MB (65645269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619164d0a10e585d16569221eb90ff5ac865456c32c390923096f232787d5a3f`  
		Last Modified: Wed, 19 Aug 2026 17:51:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:7b55a0abfe29fb6c7c6e95effe94e7f654ad73a7f74b4f4d039a420ddb334cd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10787052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ead693afed05fd732ea99dda1596b8b4531af897c54b2636af0f2fa5f1bafc`

```dockerfile
```

-	Layers:
	-	`sha256:9ff25165abbd433a8336ce8147a9c8e7a667d8bf0d20692162e76d86b9decaa9`  
		Last Modified: Wed, 19 Aug 2026 17:51:16 GMT  
		Size: 10.8 MB (10758730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91da6a0c45c7ca6ad739a59b11492f49d5578422bfcc6809c85633949a5fb21b`  
		Last Modified: Wed, 19 Aug 2026 17:51:15 GMT  
		Size: 28.3 KB (28322 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:f5547f5daa847ad8f9fa7af9dbe4b4fc694ff85bb5df276e7726127d48a3d5c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.2 MB (311161031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a0147cb4184edd13ddad7e31a02e1ef3cd17751afb74a408a0fcab488dc7117`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:58:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 18:31:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:30:50 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 18:30:50 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:30:50 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:30:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:30:50 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:31:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:31:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3e6efa722094ba9a2c33899d007294d906fe7730bc19901e78bf43c969f32`  
		Last Modified: Wed, 05 Aug 2026 05:26:21 GMT  
		Size: 27.0 MB (27021100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c136ff5d1eed42b29e608b2fa6073b2ec631c910e2ba490e022e4d31f4ae2f`  
		Last Modified: Wed, 05 Aug 2026 08:58:54 GMT  
		Size: 73.1 MB (73074780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48586e1912b23c7b811befdefc7f661eee232c1e6ce3f318b50c1208bd6d1702`  
		Last Modified: Wed, 19 Aug 2026 18:35:14 GMT  
		Size: 93.0 MB (93032020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958cbddf16dc304cf67db1893c84df3cec9a471d13eb9488ff01b809730c913e`  
		Last Modified: Wed, 19 Aug 2026 18:35:14 GMT  
		Size: 64.9 MB (64899368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ad50252da4e5d0fac2fc2c32d643c569307f88a04ece8209c8c750361aacd3`  
		Last Modified: Wed, 19 Aug 2026 18:35:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:b7969e269393d498b7d8ca67230a91bc7821655961b84463c2a38e66ee5714f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10811572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351de118369adbdd23934ca8ffd0916fc4260b0cb95e830f7fe4d1a604e8b4f7`

```dockerfile
```

-	Layers:
	-	`sha256:a15f6e45e616cc351232f90163c57f2019cca420aec398f1babd3b99d5c1c4bf`  
		Last Modified: Wed, 19 Aug 2026 18:35:11 GMT  
		Size: 10.8 MB (10783299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:804e442a2ce44c701c0e15b29580d30250422099a52260d47129cd7e8d317215`  
		Last Modified: Wed, 19 Aug 2026 18:35:10 GMT  
		Size: 28.3 KB (28273 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; riscv64

```console
$ docker pull golang@sha256:a7d40375c1bfd17b119b619191d7ce48e7a32c20a7ba2964be6f56988b6dd14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336467346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d105dcd43d6e5ad0971ecd7086f53c0a2091df9f403762e516d5ee43f440dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 19:44:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 12 Aug 2026 00:17:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 13 Aug 2026 04:47:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:03:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:03:01 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:03:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:03:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7e2cce4c4a850aec1e4a483b50128246f3126dfd2358f0bcea094e0a9777c25b`  
		Last Modified: Wed, 05 Aug 2026 00:56:00 GMT  
		Size: 47.8 MB (47797481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1945d0945ecd590a3ceb924cca41cd29af5c2598b2fddd7323957355ada24075`  
		Last Modified: Thu, 06 Aug 2026 19:46:15 GMT  
		Size: 25.0 MB (24969684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b352e09933f4b05efde7aceb0834e303817d62f09bb339866d97e70454a5d8ef`  
		Last Modified: Wed, 12 Aug 2026 00:20:31 GMT  
		Size: 66.7 MB (66693765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d13e13b96042538ec41e84b5186c55bc7c6722f6fe6fe060b1ad00de9a27909`  
		Last Modified: Thu, 13 Aug 2026 04:55:36 GMT  
		Size: 131.8 MB (131807836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114477b4c88c5490f91752364554f5f31a9f64dabdb50e05a57ae70bd462e4b6`  
		Last Modified: Wed, 19 Aug 2026 18:09:47 GMT  
		Size: 65.2 MB (65198421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380875d0d3882be75e9aed97747de4a68886dd4727b39871ccf73bda5c30ffa8`  
		Last Modified: Wed, 19 Aug 2026 18:09:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:eaa4834e7e86998a907826fa24ca2023f2366ee9b36764ab7383440342f1bd5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10885582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6909f26397fd6f1d25c203ae9ff9a6772c12fa28fac0a65815ae9e4cbc244089`

```dockerfile
```

-	Layers:
	-	`sha256:6c3f8a5c1d5ae4e3118ad25133176e461a296d4363aa6b93e529cc2ba788a194`  
		Last Modified: Wed, 19 Aug 2026 18:09:39 GMT  
		Size: 10.9 MB (10857132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83c16ed0deaff4727b6c58172821c54c6943c296b3a3d4784ef6355f2e6017fc`  
		Last Modified: Wed, 19 Aug 2026 18:09:36 GMT  
		Size: 28.4 KB (28450 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; s390x

```console
$ docker pull golang@sha256:d723086100535ee3824481a2a3f445eeecbedabc81b77e254c4566f38e567b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.5 MB (287529805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecca7909de8fb415dff8dee02e6bc4c1d85c190ed01946a324d2234ffd7c0e9e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:42:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 17:58:24 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:58:24 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:58:24 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:58:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:58:24 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:58:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:58:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8b239a9d975f9d9fa57e1220f0c69c47026f4fbd5094809de5f822f2097b9c`  
		Last Modified: Wed, 05 Aug 2026 01:08:39 GMT  
		Size: 26.8 MB (26804560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e84d63eaa6137e87f6d73d15defc7c8e1c5f48351989da2ae83463f41f98de2`  
		Last Modified: Wed, 05 Aug 2026 02:03:58 GMT  
		Size: 68.6 MB (68648013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f1467200a6d0b769a7af7bb69faf55f0ddc257b1c2f12914659a3b60aae5f1`  
		Last Modified: Wed, 05 Aug 2026 02:42:53 GMT  
		Size: 76.1 MB (76118219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9999a3a9ba6617eb455e6eb7f1aca503ccd1478207314507c31d67e324b401c`  
		Last Modified: Wed, 19 Aug 2026 18:00:14 GMT  
		Size: 66.6 MB (66577429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7d55e3399fe2c894ade063cd61bf1018e099f684151b831ef0b0e6527881a5`  
		Last Modified: Wed, 19 Aug 2026 18:01:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:e73dc5210fbd8fe165e532c34e059cb7da3048d23459f79625b17792f3c59fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10626261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da046204ceaf2e982b58a845973fa4298943abb92e5b25fbb8df23564d4403ec`

```dockerfile
```

-	Layers:
	-	`sha256:03c43374954372563500163df97339aee7bd849f3bd200df2de3571505cbc41f`  
		Last Modified: Wed, 19 Aug 2026 18:01:13 GMT  
		Size: 10.6 MB (10597887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f91e80ad5156c18dd3d3f88f0533550a536af2a962e0b8966a4a11973517c3b6`  
		Last Modified: Wed, 19 Aug 2026 18:01:11 GMT  
		Size: 28.4 KB (28374 bytes)  
		MIME: application/vnd.in-toto+json
