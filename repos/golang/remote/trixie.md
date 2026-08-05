## `golang:trixie`

```console
$ docker pull golang@sha256:87ffdb09b6a2e29ff910748b745395e8a0299aa80b7c0551cdca9b55e3fd2b3e
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
$ docker pull golang@sha256:c05f28d5148bc5c4b60ab5c002291e830b7e835922d23875152b3af5951cecea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.3 MB (312343664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ba3d0a48020fd9a5264fde0b4821d6234ec420e177f82fd895d928fac26ab0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:16:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:42 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 02:16:42 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 02:16:42 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 02:16:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:16:42 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 02:16:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 02:16:48 GMT
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
	-	`sha256:c6c63cfd25b1f7517f8596be47ff433b982bb8526b187ff92ceeaf0eecf203bb`  
		Last Modified: Wed, 05 Aug 2026 02:17:15 GMT  
		Size: 102.3 MB (102306164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea3d467f844b8e6fffc2d7793807a1ec9e3a0582655418c1c17013372a3a910`  
		Last Modified: Tue, 07 Jul 2026 22:12:02 GMT  
		Size: 67.3 MB (67288392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:303e4d5dc995b1f5233521ec6d78820c01e78a17a779a440e5a1d51f24288410`  
		Last Modified: Wed, 05 Aug 2026 02:17:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:cdfece14a6c452e7819e0f02581c585d716b21589febf1d52fce833cc86b948c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10816440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f51da7438afb10bbf11a6b5dd9d9dda441a3f82da16d1950dc98fb22869673de`

```dockerfile
```

-	Layers:
	-	`sha256:7e7858f0783f6ccc4f9ae8855c8a9ddf6a1ed2d28611cbdc7f624f6175e84ec1`  
		Last Modified: Wed, 05 Aug 2026 02:17:12 GMT  
		Size: 10.8 MB (10787487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b75ca74bdeb40e22b903c7cdd66346d6677fa335b7e1a398b9469128b3376928`  
		Last Modified: Wed, 05 Aug 2026 02:17:12 GMT  
		Size: 29.0 KB (28953 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:fe90589824f75d0276ae08a55a848b472fcc6db2e08462490aa95efacfc9dbec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270899206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:429164ae7c310a4d48b639a24f2bfc1bed33c951ce039509f4cac40dfbdabd7b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:17:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:17:14 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 03:17:14 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 03:17:14 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 03:17:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:17:14 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 03:17:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 03:17:20 GMT
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
	-	`sha256:023514f5863e4bd88fb229667a6425c99ef3c0ade57b335559515607292e1e74`  
		Last Modified: Wed, 05 Aug 2026 03:17:44 GMT  
		Size: 72.9 MB (72949581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d9454c8d863c76d3a284f97c400d521e643fafb60e60664dbeea8c2a1719dd`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 65.8 MB (65811677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f3bc8294822f465dfff7c7ef6ba7888ea9325d071549679306f23e9bfd0982`  
		Last Modified: Wed, 05 Aug 2026 03:17:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:5494ab4cf846da0b679e62b7fe1f5e7fe33e26ebcfd860103b1f758b9ab90012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10612492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f592456170a5dfcbf867977c0a8280e6b4c057e9f29187cd1dca55fca3cb46eb`

```dockerfile
```

-	Layers:
	-	`sha256:3adebfc14c2ae6bbb3c1addcd27579533edf820a2e333e20bf54b213e1cabe66`  
		Last Modified: Wed, 05 Aug 2026 03:17:42 GMT  
		Size: 10.6 MB (10583406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c3ecb1b18d8cbe20d632b74bef84528179f64f4d29600245786e690d9ea6816`  
		Last Modified: Wed, 05 Aug 2026 03:17:42 GMT  
		Size: 29.1 KB (29086 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:b11b8c1efa832e8b83ecba5bab41b496edd3fdf6ecdae89dada36831cb51a5b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.9 MB (304932015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08caf3b248bcd76bf73af9de0e7015e2c6eff3df81755865ba95c19d92cd4fdf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:16:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:26 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 02:16:26 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 02:16:26 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 02:16:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:16:26 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 02:16:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 02:16:34 GMT
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
	-	`sha256:94bef5b7cd41de589e4ed12ffbcc9f3a4c25c468c5c6820ed15a262a78903861`  
		Last Modified: Wed, 05 Aug 2026 02:17:01 GMT  
		Size: 98.5 MB (98453714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d5c89bdd324edeb5721c09064e2659473bba39ae9d84fae53c9cc0181cf15`  
		Last Modified: Tue, 07 Jul 2026 22:11:56 GMT  
		Size: 64.2 MB (64177241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5f5f6ea4dd7359e82910aaccfcc19c9aad8f669a358fb7943ec939e80f8535`  
		Last Modified: Wed, 05 Aug 2026 02:16:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:b4c1505507df0d5d25400ac9706d5df92da40727f608b873168ffd774c47f2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10936484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114113fef3706814af617d253ea97d0243c6c0c4b6f160e8ec4432e8dc707601`

```dockerfile
```

-	Layers:
	-	`sha256:f7832ddcb3b5082a23b1966ac09a5b0d365fa04a34719269ab0047f4efd06e74`  
		Last Modified: Wed, 05 Aug 2026 02:16:59 GMT  
		Size: 10.9 MB (10907353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40313b5087747f39a424334fa03bfc8e4d9d44e2c875e176940dc1cfddb439c5`  
		Last Modified: Wed, 05 Aug 2026 02:16:58 GMT  
		Size: 29.1 KB (29131 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; 386

```console
$ docker pull golang@sha256:fc5ae864d6306cdd96e0a1af8c67a13888d511e9cb61c629f88bf875be7c7abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313838192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a5eb8acffdfb762e2c7a5ddbb7a88a7d115a64ec81cf8cfbc31dcb50a05c2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:16:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:16:51 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 02:16:51 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 02:16:51 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 02:16:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:16:51 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 02:16:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 02:16:59 GMT
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
	-	`sha256:9b49076b8be294429fe887d48de27d5a58e8b3c7ba70f0362bea36bc4df39c7c`  
		Last Modified: Wed, 05 Aug 2026 02:17:26 GMT  
		Size: 100.8 MB (100750994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ab86c6ec2b9315502727ac923e95a71d0712fb3db2ab9d73161056848e1e17`  
		Last Modified: Tue, 07 Jul 2026 22:12:36 GMT  
		Size: 65.6 MB (65615757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b300aea72ada365268f49227bf10ca05ee870aff9378170f0f206940b45b5ff`  
		Last Modified: Wed, 05 Aug 2026 02:17:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:977dc8b973c22971178ceac48a8696d4aa0904606ab2e56b1ee48650f599492a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10787627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f1187bff08fd6a256462996df17696911525309396d1152da5e4a4ecf172bb`

```dockerfile
```

-	Layers:
	-	`sha256:f6fbe8e059e06b0cc085383c04eddfaf285119cd470ff95a812c36d1e7ba5690`  
		Last Modified: Wed, 05 Aug 2026 02:17:24 GMT  
		Size: 10.8 MB (10758730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f82f2bbac8f58f5d818386e8c087dab02484b522029ac8bf32bd0dc4aa969342`  
		Last Modified: Wed, 05 Aug 2026 02:17:24 GMT  
		Size: 28.9 KB (28897 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:b74f2ce67a591e90ebd221b76baacad93849419800af6cdd5d81a910bc2af88e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.1 MB (311105498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e51bce04644c910f902b423d227702f473c6a9a7cf15e1ed914cee109cc240`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:58:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 11:42:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 09:23:51 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 09:23:51 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 09:23:51 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 09:23:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 09:23:51 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 11:43:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 11:43:47 GMT
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
	-	`sha256:4e3f0f5b402dece7615c4ffda3cb1eef1790a5091c1011cb7ca95d9143ba521a`  
		Last Modified: Wed, 05 Aug 2026 11:43:23 GMT  
		Size: 93.0 MB (93012725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d9dc70d6d1fc025f615ef9fc38cc11d00eb9097a6a0cf1f17fe4a1153d0004`  
		Last Modified: Wed, 05 Aug 2026 11:44:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:57eec141ff820d8af9bc22b4ec1bd14ccdda94a8a3aaba4618a80ff20c5d2bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10812320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7a6bc4d43c707fea9b9620281798f4e5201609b17a752db1e272d104b46629`

```dockerfile
```

-	Layers:
	-	`sha256:7f89822f04de98906d1b1893fec57db671c0a5dd59664f6828e5946643900db8`  
		Last Modified: Wed, 05 Aug 2026 11:44:14 GMT  
		Size: 10.8 MB (10783299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63f730c252245b03813a64aed1083407a2c791b7a6b6a600f3c2cbafae4af6b0`  
		Last Modified: Wed, 05 Aug 2026 11:44:14 GMT  
		Size: 29.0 KB (29021 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; riscv64

```console
$ docker pull golang@sha256:57603eb74230a7eff25d7e098ca6d7cda934e8ecce7ff44ef0dae1ae6858e91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.4 MB (336369204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b27bb83be1376d0a8eb1f2bf2a35732c0bb98f2954be0c6ef7e8aa10f29c6b2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:32:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 16 Jul 2026 22:52:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 20 Jul 2026 00:58:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOTOOLCHAIN=local
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOPATH=/go
# Wed, 08 Jul 2026 20:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 20:35:16 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 01:08:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 01:08:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3b6761664ee64309406635b6031c9fbc23849478cf77b4c50cc52c5a5a142dc8`  
		Last Modified: Tue, 14 Jul 2026 00:28:46 GMT  
		Size: 47.8 MB (47797790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56e13f8ba5640653be74c77c11bec4a12b57a50d949a7c24cdcd88f8c959bb5`  
		Last Modified: Wed, 15 Jul 2026 17:33:59 GMT  
		Size: 25.0 MB (24968294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81442ecb065fc9c5f293fca1a82fcd48a01ca1d9549e5862c62bee3c2c85b85e`  
		Last Modified: Thu, 16 Jul 2026 22:55:38 GMT  
		Size: 66.7 MB (66683012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ed21429f3ed16374064128a8e211d4bd14f3883466b6c753262b1b54d92d`  
		Last Modified: Mon, 20 Jul 2026 01:06:54 GMT  
		Size: 131.8 MB (131756600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ba61866bff16c6d67dd671f0c2945d522b517e8a4429596c829088207b394e`  
		Last Modified: Wed, 08 Jul 2026 20:41:58 GMT  
		Size: 65.2 MB (65163350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c032b6639f10c9080324cd5aeef8647a071c1b78b83ceef2b88977a9ec0ac87`  
		Last Modified: Mon, 20 Jul 2026 01:13:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:63de5e2adb18c5f80991edc744fde37d59bc6501ca3ca20e86a1cee8f8aae63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10886121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807c76e28a5729aa3a3b94aac33f9ea33b5cd9395b59361a5fe8123729e9a6a0`

```dockerfile
```

-	Layers:
	-	`sha256:3e6510e7f4c76106403cf09b31952b2179233ae661763f66533969f121e91a6d`  
		Last Modified: Mon, 20 Jul 2026 01:13:10 GMT  
		Size: 10.9 MB (10857096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ca4fe345b2008ba23547ffcfe8b932803594da94e63b1d1482bcc8d2e9d225e`  
		Last Modified: Mon, 20 Jul 2026 01:13:09 GMT  
		Size: 29.0 KB (29025 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:trixie` - linux; s390x

```console
$ docker pull golang@sha256:b22a462ff4e955a54f668e1a0cf8e76b1bd86ce186b14771a83ea612b8c813ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.5 MB (287480644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3de160fc640813c7462654a6454d1f49561b4afc1aede4c1f13a69c90c8c2d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:41:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:41:50 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 05 Aug 2026 02:41:50 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 02:41:50 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 02:41:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:41:50 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 02:41:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 02:41:54 GMT
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
	-	`sha256:81fc699035ad8e6aaa8d7f054b1b1b983cd33be783b486da5848932ed23b2a7e`  
		Last Modified: Wed, 05 Aug 2026 02:42:31 GMT  
		Size: 76.1 MB (76117643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02a0b92c64bea7b8e82336e0a7f2afcc7dad25aedbcab036aeb985d0f3e2228`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 66.5 MB (66528843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5b57fb5a506abf143d7492c6824cc21d1fabab45391798d250fbb37fcf4cba`  
		Last Modified: Wed, 05 Aug 2026 02:42:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:trixie` - unknown; unknown

```console
$ docker pull golang@sha256:13380a41e13ad58e9daf6f76455dae3a595406e67aff12664dc5ef0abc0dfc4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10626836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e0bd7de91099ed40882257bb2523b47ef4bff7605bd6fc4c28c2358ed3b624`

```dockerfile
```

-	Layers:
	-	`sha256:6bc4c1380da3c099fca43a553b99a2486b77b046f257549baab80e83fc0b7eea`  
		Last Modified: Wed, 05 Aug 2026 02:42:29 GMT  
		Size: 10.6 MB (10597887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdb17c16687388a4b2417b75067c0939931ae4e72a14096214c50f59fee736e1`  
		Last Modified: Wed, 05 Aug 2026 02:42:29 GMT  
		Size: 28.9 KB (28949 bytes)  
		MIME: application/vnd.in-toto+json
