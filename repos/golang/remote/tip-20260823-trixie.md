## `golang:tip-20260823-trixie`

```console
$ docker pull golang@sha256:24c808aab962d179ba8fb836bf723d073f2bcb70ebe65346a017c431d46a068c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20260823-trixie` - linux; amd64

```console
$ docker pull golang@sha256:a51c78d6435494e4c6261aa2534dc25f4712b606af2954760245ed29ea72b894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.4 MB (347368968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0948ed4ac3fcf9e3178a8f17365fdd110b36ac90d3088d0911976f71a626aa10`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 24 Aug 2026 18:06:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:07:43 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:07:43 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:07:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:07:43 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:07:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:07:46 GMT
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
	-	`sha256:a6e106e7197199bbc3b6f1c6d53e466b5659f59abafd26903245c0fddd067d1f`  
		Last Modified: Mon, 24 Aug 2026 18:08:12 GMT  
		Size: 102.3 MB (102322237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f5ec76dbd4d404cbaa638424fa28400fa9bc9e560cc28415edde34653affa8`  
		Last Modified: Mon, 24 Aug 2026 18:08:05 GMT  
		Size: 102.3 MB (102297625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1348dfe08b94d4f48296c4dd63f50c283bc79f7171241cc6be0d1dd3f270ef9e`  
		Last Modified: Mon, 24 Aug 2026 18:08:09 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:a261c4a7c2e15a53081e28ca7a900dc0be5b10a7de3635430a45c014d07a8e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10814782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce5979aa3d619d6660372dca833654922d49104b5256b74afcfc4e94441c09b`

```dockerfile
```

-	Layers:
	-	`sha256:4573eabd1212758c35f11f38f7386bec69dd09de78fba7dbcead02950e05bd18`  
		Last Modified: Mon, 24 Aug 2026 18:08:10 GMT  
		Size: 10.8 MB (10786097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0487d1a6ec69ce59ea133a75d655bc469a5e51675cdd965a9d80a3d822d7904f`  
		Last Modified: Mon, 24 Aug 2026 18:08:09 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:4eef062c5ea54e7dd295b313afdbaf9bf643d6e0ddd10c5d08bfee0be8afa74e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303442845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6982802211342cbbb1219354b1a0eb2bec0d60e83a6817fb9a3c8d9536710aed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 24 Aug 2026 18:08:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:07:06 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:07:06 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:07:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:07:06 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:09:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:09:50 GMT
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
	-	`sha256:f6ba10b1eb483b960f693e2deb1dfd7e90d50b4e4fb1d853451376b93555f339`  
		Last Modified: Mon, 24 Aug 2026 18:10:12 GMT  
		Size: 73.0 MB (72966444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255779f6f088311aa395ef24afc4b95b730438cebd6e48b859df371384a6824`  
		Last Modified: Mon, 24 Aug 2026 18:07:35 GMT  
		Size: 98.3 MB (98338452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4938b7169f299f47a862cd51c17d71d64735381700a93bde7cad5ca045dcfda7`  
		Last Modified: Mon, 24 Aug 2026 18:10:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:859dfda007e4a6d9c9338d34d01d7fa52268c1bdbb722372d1023db31020e793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10610788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c3d8c88ae96a81ae8a431f852a178f6a23a090a9d975d7571376930aad78e7`

```dockerfile
```

-	Layers:
	-	`sha256:90461d4aeb3830ee5e3242b437fb837439640fd8d9fd5ad0772cc2d9f48ed985`  
		Last Modified: Mon, 24 Aug 2026 18:10:10 GMT  
		Size: 10.6 MB (10581984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:187c2ede742fc2e8913640337ea2a09ae22f34379fb741b8666e25542a72ceb0`  
		Last Modified: Mon, 24 Aug 2026 18:10:10 GMT  
		Size: 28.8 KB (28804 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4af0db82d9af56c51efe3180c8e046e47e93a46c9a3fabe73211749c8ceb75ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337563747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97481e6c61bb096727ea94ecfb51ee08ad9214ba7de3c735cdf28810f9c6885`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 24 Aug 2026 18:06:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:07:22 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:07:22 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:07:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:07:22 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:07:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:07:25 GMT
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
	-	`sha256:a7c276655ec227b8252756aa6ef5bbf1b7f2357a61af4d64c83619d259c8f9b9`  
		Last Modified: Mon, 24 Aug 2026 18:07:51 GMT  
		Size: 98.5 MB (98466674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686a1d3b809c5999b3dc7e69208936d8f8330b30050130d366bfa62a4bf5e61d`  
		Last Modified: Mon, 24 Aug 2026 18:07:41 GMT  
		Size: 96.8 MB (96796012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547e539dbd22f27bb0e4b6dddd26291103351999861bf8a1c5a7353bc3a3b82a`  
		Last Modified: Mon, 24 Aug 2026 18:07:49 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:5a40ffd4b13d6ae3cb4c4973a83158fc386704d1793596de16740f45979fb9c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10934751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53f4e171faf3754eba14e22baf76865f3226087e57d080a48e8d64fb32c3976`

```dockerfile
```

-	Layers:
	-	`sha256:90d455ecfda1d76c79243c06e3bbb98e0292b37ba0f4b1f2e741dfc1d627639e`  
		Last Modified: Mon, 24 Aug 2026 18:07:49 GMT  
		Size: 10.9 MB (10905915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:007345d9a9b0ab44853a2ff8ac5e3412f060d131e08a16e2df0a626bf653510c`  
		Last Modified: Mon, 24 Aug 2026 18:07:49 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-trixie` - linux; 386

```console
$ docker pull golang@sha256:06e0c7602988176b7e3e7bb6c922fd096420e975b337ee9a67afd235db62e251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.6 MB (348618737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:277786223f75c9d46a72934c8d5e9b163f0e28a2850d66e0d10305a30b933783`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 24 Aug 2026 18:05:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:06:55 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:06:55 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:06:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:06:55 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:06:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:06:57 GMT
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
	-	`sha256:0efcc6701712dd6a612af1ac9a2665af03d74de53218b64750f8385b47064ba4`  
		Last Modified: Mon, 24 Aug 2026 18:07:27 GMT  
		Size: 100.8 MB (100765088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a8f36cf8449bb2cfbd44774de054c6e99e0a8aea8bf1245033545b0b380609`  
		Last Modified: Mon, 24 Aug 2026 18:07:27 GMT  
		Size: 100.4 MB (100382211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6cb2bcc1b3647a3dca765ab8e29c0d05fbe591ad63ebdcea5def612b0556b0`  
		Last Modified: Mon, 24 Aug 2026 18:07:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:be89864a4a105b243a361dbd5423220d46ea8aab44730f364a1c22bce80c9c24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54eee67c096488ffb7793e93dee8b2cdfba11ea16e8b6e9928aa2166abcba440`

```dockerfile
```

-	Layers:
	-	`sha256:e1b613e18359faea39920384d97142b591900ad696962a210c43e143d5857dd9`  
		Last Modified: Mon, 24 Aug 2026 18:07:23 GMT  
		Size: 10.8 MB (10757360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87be28733ff33e9e4e858ddc9838c7271fa1075d0ef5e603ac2affd9d27263bb`  
		Last Modified: Mon, 24 Aug 2026 18:07:23 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:e4010f3000c090864ffed202532a06c8a042867f067f8f7fce74c5f93ee27a07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.2 MB (345246993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e22ed211b1af0b8e1b3736303714ae6ad87831e399d926d787f3ed780f86bf`
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
# Mon, 24 Aug 2026 18:13:40 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:13:40 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:13:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:13:40 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:13:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:13:46 GMT
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
	-	`sha256:dfcb6e0defe743ac8a5d841ea2eadeae0745aa70db2dbb65ba20339689647f97`  
		Last Modified: Mon, 24 Aug 2026 18:14:47 GMT  
		Size: 99.0 MB (98985330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297cd86baf27477aee07196d34e2c053f058575f9e12a0ef63d8e7f0fbdbe1db`  
		Last Modified: Mon, 24 Aug 2026 18:14:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:464271d8027667b5d3b1c8fcc4362ef791553487ccf730f939fafdd44c13beac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10810619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4026d67c39951d6c3e6d33b7f87ee13c20b84c454274f3cb8804132eff2b6c57`

```dockerfile
```

-	Layers:
	-	`sha256:9b4bd4693341c0426b7d2385f71d18c5a792cd75f5c98ff5b5cfbc9ad726d926`  
		Last Modified: Mon, 24 Aug 2026 18:14:47 GMT  
		Size: 10.8 MB (10781885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bf1e09a307f663cf8b729313c10dbaa3f6359184934c081ecaed2f3a0cdc975`  
		Last Modified: Mon, 24 Aug 2026 18:14:44 GMT  
		Size: 28.7 KB (28734 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260823-trixie` - linux; s390x

```console
$ docker pull golang@sha256:90b4bf6c53e74214ce67e9cd828e4c515d18ca769cd931cf07d7e78ba31efd15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (322000262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a456f503950830bbdee01a710a649d724daff2b1d027a3c58e26ac2004fb1588`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 19 Aug 2026 19:08:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 18:13:45 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 18:13:45 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 18:13:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 18:13:45 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 18:13:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 18:13:51 GMT
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
	-	`sha256:927f0abd7aa26601f33e3e3d75194961c8f61cd6e53da019b67e968ce358607c`  
		Last Modified: Wed, 19 Aug 2026 19:09:32 GMT  
		Size: 76.1 MB (76132315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f17e725e160998a302ed6e7a573ce71961997b4c81c9a82a7ee7e0ef3813a6`  
		Last Modified: Mon, 24 Aug 2026 18:15:14 GMT  
		Size: 101.0 MB (101033789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1847efaeeb2622938923d7bc5d863626d3bea5e1b845afb977e413cd3122139`  
		Last Modified: Mon, 24 Aug 2026 18:15:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260823-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:23b42f67eae2a458b967f272b154aeed7ec2451afc383a2f3118e4b2721998db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10625925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c9bf1a924eec893fb8f8e93985dfb9c85f7bc1c5292e745a4c5e3f4f1596e9`

```dockerfile
```

-	Layers:
	-	`sha256:8808a4576fc76cdb46c490f70f60e3c64abb3ba829b8d9f048fac61ee440acdd`  
		Last Modified: Mon, 24 Aug 2026 18:15:12 GMT  
		Size: 10.6 MB (10597245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b86ebe3c8d94c884c1803d0f386457ec633a65ec3e55743ed1db241ca8c9493`  
		Last Modified: Mon, 24 Aug 2026 18:15:10 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
