## `golang:tip-trixie`

```console
$ docker pull golang@sha256:458d0559e07899761527a9a954c533f6f532839f5036a11a0d989da7c47445fb
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

### `golang:tip-trixie` - linux; amd64

```console
$ docker pull golang@sha256:cdb6fb3d981fae12c2f16cfe095b299a23943f378b59186a4d186efca0263278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.0 MB (347043411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5801c2f3c6c64318d82292f9cc83d878f77b043a65adbd2bfedaecc73454e63c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:17:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:19:33 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 03:19:33 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 03:19:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:19:33 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 03:19:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 03:19:36 GMT
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
	-	`sha256:989b77d628c20e956229a1768e10f92304f8781fcf2e4bc347364aa52ceb36cf`  
		Last Modified: Wed, 05 Aug 2026 03:20:02 GMT  
		Size: 102.3 MB (102306078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70182a89e7d87356ef54209ef5025f5029805de8d8545608195eb8152d0595e9`  
		Last Modified: Mon, 27 Jul 2026 22:08:48 GMT  
		Size: 102.0 MB (101988224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf060038d4202b94b4af436bd1859aa7461c5b6ced3e3dc76e91e36a691ffe0`  
		Last Modified: Wed, 05 Aug 2026 03:20:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:5813d8e6dfb08a7f22cce4783902ddd5ec67ffe879add46a99207878da06fb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10815070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b370ad648f74651ee007376894f3fcd5cc0f555cbf00a34a851b632a1d1fe943`

```dockerfile
```

-	Layers:
	-	`sha256:16f6e91b9fee089f2078c82fbace8b7bec3af9e356674d5b4285a10cb97976e5`  
		Last Modified: Wed, 05 Aug 2026 03:20:00 GMT  
		Size: 10.8 MB (10786097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:518f5241ad5a953bbed76129fa4d3007f813cc2fee9ca8ff5e88b4177f566a23`  
		Last Modified: Wed, 05 Aug 2026 03:20:00 GMT  
		Size: 29.0 KB (28973 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:ae56ba3fa661eb734ee2d5a603b20e27d0e3f2d95986a97a518f6c5e81ea357b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.1 MB (303140274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50894e842f456aa698c1623510525fb95bb1b6da37448ddf93ad281185ee2b9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 04:30:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 04:33:34 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 04:33:34 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 04:33:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 04:33:34 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 04:33:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 04:33:37 GMT
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
	-	`sha256:8a3042ce4b4fee3f63c8e1863a17ab2e471867783708f4d076b40b0ef5695009`  
		Last Modified: Wed, 05 Aug 2026 04:34:02 GMT  
		Size: 72.9 MB (72949325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b961a0d50988d7c9a177ec9e923fb9a4afbedfc3d31275eec2c42aad2d0e7f`  
		Last Modified: Mon, 27 Jul 2026 22:09:51 GMT  
		Size: 98.1 MB (98053000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc90a01e32b6f9827ba4c2287098c795c81ac7034dc49eab54fa79cfe3f0e23`  
		Last Modified: Wed, 05 Aug 2026 04:34:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:a9422a8c3aea06a6783ad9a16fa86db1947658267f4e9a012b342e476f739217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10611076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0d66acfe2ea55e6dfe9b70a5c028e23a2323722c9e1e2e18a3bfc7a1b34fd9`

```dockerfile
```

-	Layers:
	-	`sha256:44bcf72350b4e831c8b4dd45bb569f9c2b78612f6f43257f7cf90f2c5cbcf544`  
		Last Modified: Wed, 05 Aug 2026 04:34:01 GMT  
		Size: 10.6 MB (10581984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b3f56622118ee74dae1ebe539d098109ab299fe51673d4250bd39025c6399cb`  
		Last Modified: Wed, 05 Aug 2026 04:34:00 GMT  
		Size: 29.1 KB (29092 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:de768354ab976d03bbd1ceb159fadce5ae2fd27780925fdc617203cf62f67d74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.3 MB (337303624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1db75e7bc7786d0e864f96641bcf8eca4d6435666df492f3a3407ce44b2b17`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:17:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:18:51 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 03:18:51 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 03:18:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:18:51 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 03:18:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 03:18:54 GMT
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
	-	`sha256:a68c189198bed16d25afa047e99302d2412ce69b048c107aeb74b2cf904ad6c6`  
		Last Modified: Wed, 05 Aug 2026 03:19:21 GMT  
		Size: 98.5 MB (98453700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce80571b63faeb14e5839d68cda387b1895c1438d8dec5f05ca729001e5415b0`  
		Last Modified: Mon, 27 Jul 2026 22:08:35 GMT  
		Size: 96.5 MB (96548863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf86b9f92a7319653fb1ee2026f573289b10ad23c01750524175d30567a8129`  
		Last Modified: Wed, 05 Aug 2026 03:19:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:003647791d65af18ce1ba70c48f2649c86ae6bbfe908a14f2f80f87b06a2f5b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10935039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b2244bc3b0d66f7a902e7c21692ce531d4e3757e1085088bd496b88c9aaff6`

```dockerfile
```

-	Layers:
	-	`sha256:d97c933201f1cbdb989d4b854020b5c35fd616e80c6301615234572eae06d176`  
		Last Modified: Wed, 05 Aug 2026 03:19:19 GMT  
		Size: 10.9 MB (10905915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91ff52e52133ab35e4b08492fdcbcdd70201868fb0e17ec649eaad535209fbb6`  
		Last Modified: Wed, 05 Aug 2026 03:19:18 GMT  
		Size: 29.1 KB (29124 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; 386

```console
$ docker pull golang@sha256:4b80da24f1e82a3c68a3bb0640081f11b4fe69cedbc52badf8a7a011d5bdfb9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.3 MB (348333045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd9b00e84e8c86279f2a4ba85e28d1cc37790e7c1f25f367df48a3604f53048`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 03:14:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 03:16:15 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 03:16:15 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 03:16:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:16:15 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 03:16:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 03:16:17 GMT
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
	-	`sha256:8563998b02c96337218be6c03b78f67113b75e7caab489f199bcd86386a22136`  
		Last Modified: Wed, 05 Aug 2026 03:16:44 GMT  
		Size: 100.8 MB (100752038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5a3aaa3a009e10bd7efced5fa5120668bcb54de583202a8de6e5e6ab444e4`  
		Last Modified: Mon, 27 Jul 2026 22:06:55 GMT  
		Size: 100.1 MB (100109566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb9672ec9c861ececeb9b1c077823bd8f5d40e152c945b32bb37b3d2aeffc3b`  
		Last Modified: Wed, 05 Aug 2026 03:16:40 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:d0a92dab7a93a1832c1b07c2ac3e1c0819419ab6128dac4abfd224ba463501c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c086dd7d7c322c2daef133c98402b6e3c2383f3124f032871cae1a3a803843c1`

```dockerfile
```

-	Layers:
	-	`sha256:4a3076e4b9ed29f86921ddcc60e1ed62f9db3862348d16fbc7aa38723d4f6477`  
		Last Modified: Wed, 05 Aug 2026 03:16:41 GMT  
		Size: 10.8 MB (10757360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed5ed7b2566ba651b2b661dbf24ddecda018c28898ccefcc5cb347b51c240e75`  
		Last Modified: Wed, 05 Aug 2026 03:16:40 GMT  
		Size: 28.9 KB (28930 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:676cee03fa57bc7c83b906ffc0b7383caa71fa6ee7309d9abc3aeb6e0fba68bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.9 MB (344884060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83328ca4d4987ba4f16d35bc159664d1f202005f0815810f93bf632cfb2f1366`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:51:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 12:15:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 27 Jul 2026 22:07:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:07:27 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:07:27 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:07:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:27 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:07:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:07:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83863de742cad030811407b90530c7828802e9f11207386bf85f9d35cecf7503`  
		Last Modified: Tue, 14 Jul 2026 03:51:33 GMT  
		Size: 27.0 MB (27021065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b551dcb76f19ba607c6efcd591fb5d3e48d58c66dc467f180227abb4f55f0844`  
		Last Modified: Tue, 14 Jul 2026 12:16:23 GMT  
		Size: 73.0 MB (73044102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73ec828b5b29ef0047f44513b750f75f99cb72c8a7967e48c15e6f476bbf1b3`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 93.0 MB (92985318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83158c867f68c393c40d80d5a7ca238c6f40445a0d20991e9d1d2641b7fc173`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 98.7 MB (98699408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f6e2541a9a8d955f12e5906bf1ad329888bddcc3ea205867d64a91ee2f7e23`  
		Last Modified: Mon, 27 Jul 2026 22:08:51 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:8070254dae980ec7117cffbf50f9731724abf057cf38f0f4ab5a74ddc8a278e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10810698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dc5b6f6d2312f787fa3ee035c402eccecb718f58b5577c5c8eb6bc959b5b99`

```dockerfile
```

-	Layers:
	-	`sha256:492bc9741a5155ab9101c5c524f605fb806192af08428ef289c2d0531cf8505a`  
		Last Modified: Mon, 27 Jul 2026 22:08:52 GMT  
		Size: 10.8 MB (10781849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e3f165a646472a6316c1bfd0498db12f83f2aba44edf7ae763d2b33248c266`  
		Last Modified: Mon, 27 Jul 2026 22:08:51 GMT  
		Size: 28.8 KB (28849 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:9c9153387c39172fdfbe12e24f5a51a4983ce912076565dbf022301287b53bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.8 MB (370831059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e38c78a650b08cf0cd10563794eb31a24bcdb3e1d95ee3cb1226b56a8861217`
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
# Mon, 27 Jul 2026 22:45:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:45:26 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:45:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:45:26 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:45:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:45:45 GMT
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
	-	`sha256:33a5772b4cc1953cda36dc836a2216136a33f1844e18cb64168e374be9436847`  
		Last Modified: Mon, 27 Jul 2026 22:52:39 GMT  
		Size: 99.6 MB (99625207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59dbf476b2608eda7e891f23559e063c76b5d251cc41fe06dfb1ed768845322`  
		Last Modified: Mon, 27 Jul 2026 22:52:21 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:90047b6d24b095de5fd8e866b5a50f9745427f68b7713ec8d7052ccc47da8824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10884709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b9763de0628e03def06190506ef452637f4c33e26c4b368c9c34683e6ac476`

```dockerfile
```

-	Layers:
	-	`sha256:97e3efdc9d31cebe0e64141753b9fd9187efd6c343c5eb18f611997d7f448f2a`  
		Last Modified: Mon, 27 Jul 2026 22:52:25 GMT  
		Size: 10.9 MB (10855682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb664c33115cce7669b7db6231fa6f5b258b426a2d89145b86a2b226f1eb427f`  
		Last Modified: Mon, 27 Jul 2026 22:52:21 GMT  
		Size: 29.0 KB (29027 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-trixie` - linux; s390x

```console
$ docker pull golang@sha256:11df97218f325aacd6fdc99d79c44727011a858185557a92a498d338b954378e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.7 MB (321707062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f449c6a0ecd41ffae2f3cd0dc9dd1f103db28eac95c9b6584402841af26aa8`
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
# Wed, 05 Aug 2026 03:16:49 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 03:16:49 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 03:16:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:16:49 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 03:16:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 03:16:51 GMT
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
	-	`sha256:1e4901984dca8b01222f860172bd7d3abeec2877520e2c096cc3d0112238dbcb`  
		Last Modified: Mon, 27 Jul 2026 22:06:53 GMT  
		Size: 100.8 MB (100755261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:121ac4ddadca45e0c35f4c9beec023945ef58178564dd7ac79fc3a8b1e8c5cb2`  
		Last Modified: Wed, 05 Aug 2026 03:17:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:6d7c82b2be3133bcc0e827f94f082c89c3c5a75aa3748da91582aef6bc93f00f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10626213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431b0fd508a4fc85265799136947f0a9205a1d5edb3b0de483eaef25770bafeb`

```dockerfile
```

-	Layers:
	-	`sha256:5e7afa3fed62279cb73eff4b64d8a12d649ca0c9abe37e075b65bbbe04da6567`  
		Last Modified: Wed, 05 Aug 2026 03:17:24 GMT  
		Size: 10.6 MB (10597245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea97cea4e96a0e917e46d359913e1b8cbe53f3dc0efe02daf9f6465bde820be2`  
		Last Modified: Wed, 05 Aug 2026 03:17:23 GMT  
		Size: 29.0 KB (28968 bytes)  
		MIME: application/vnd.in-toto+json
