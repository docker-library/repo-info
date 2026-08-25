## `golang:tip`

```console
$ docker pull golang@sha256:4af207385321c9f86ea7b453883b6e261ee2c771d731600f3e15c675fcdf3e3a
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

### `golang:tip` - linux; amd64

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

### `golang:tip` - unknown; unknown

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

### `golang:tip` - linux; arm variant v7

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

### `golang:tip` - unknown; unknown

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

### `golang:tip` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:0ec8cc9208a34f5c77103ca968faf69aa6e8679582318b28367f5c0ee68e9edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337600224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb86a63232bd5e4a728c512d16fa9729d28918885ab5e3a6e713ab86bc447265`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:17:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:18:16 GMT
ENV GOTOOLCHAIN=local
# Tue, 25 Aug 2026 03:18:16 GMT
ENV GOPATH=/go
# Tue, 25 Aug 2026 03:18:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 03:18:16 GMT
COPY /target/ / # buildkit
# Tue, 25 Aug 2026 03:18:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 25 Aug 2026 03:18:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1566488eeb3947984e77901ba68d832b40122c2d9cad6e8791d514c8c63e56`  
		Last Modified: Tue, 25 Aug 2026 03:18:45 GMT  
		Size: 98.5 MB (98466754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686a1d3b809c5999b3dc7e69208936d8f8330b30050130d366bfa62a4bf5e61d`  
		Last Modified: Mon, 24 Aug 2026 18:07:41 GMT  
		Size: 96.8 MB (96796012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dae037b0f8736cc8d501b77b4dc0b27cb5bc09f1a3997abf38ddc52065f9fd5`  
		Last Modified: Tue, 25 Aug 2026 03:18:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:698d972ba5cf338bd36f5c6c67eef7165ef8cd903685aaa086b9d1444c7527e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10938949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26bd947b587238b078e0b0af329c2a2519927ce0d8823ca1a945eaa426f6b02`

```dockerfile
```

-	Layers:
	-	`sha256:79d0582dd8fbd706f85685472ef4f7c0466a4d14242e271b23d97f4cc08edfe3`  
		Last Modified: Tue, 25 Aug 2026 03:18:43 GMT  
		Size: 10.9 MB (10910113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df492e6764e89941b53ee82fcc1eb8e1cca6d08c6685b5f6a120c1996cca56d3`  
		Last Modified: Tue, 25 Aug 2026 03:18:42 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; 386

```console
$ docker pull golang@sha256:95018d67962cb34b507446898a1291090a6fc4d9e50522ca7a3f4c76cf79bb46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.6 MB (348635483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9719544bfabec72834069f49e8f37630a5809f398a38aa4486fb12d9dd4d08ae`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:14:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:15:52 GMT
ENV GOTOOLCHAIN=local
# Tue, 25 Aug 2026 03:15:52 GMT
ENV GOPATH=/go
# Tue, 25 Aug 2026 03:15:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 03:15:52 GMT
COPY /target/ / # buildkit
# Tue, 25 Aug 2026 03:15:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 25 Aug 2026 03:15:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e7e0dc170c8b00a5859d3a9bf8c1d9f676e85a5350df29556de70c87b0bea2`  
		Last Modified: Tue, 25 Aug 2026 03:16:22 GMT  
		Size: 100.8 MB (100764991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a8f36cf8449bb2cfbd44774de054c6e99e0a8aea8bf1245033545b0b380609`  
		Last Modified: Mon, 24 Aug 2026 18:07:27 GMT  
		Size: 100.4 MB (100382211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4514b4de2aa66bd160110e2147b74a9a46dd961f9d0c52eba5d5a8710ac2e2`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:9e1296ce73592c36ab4dab88d59ca0170f08d6017ff63579bdd7629d8f968bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10790201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe087834a8e22200ace2ea64bdc33de1ca41a8d0a422035ceb0df74bb1d68c6b`

```dockerfile
```

-	Layers:
	-	`sha256:c8925d2d01dc634ab45be8767c84bbd982e76b88424eb8783ab57d1f564f8d7c`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 10.8 MB (10761559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd8f32c95c4b544755267f7f2a61884aa7d8af65154a21e1e650e3a3efe25d3c`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; ppc64le

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

### `golang:tip` - unknown; unknown

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

### `golang:tip` - linux; riscv64

```console
$ docker pull golang@sha256:037d151c499de9d74ef3cf63bfd7b57c69287107ad34b71f53ef52cd762a6890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.9 MB (370947864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7b48ea6cd77d718cbf7c0eda5fa74a87d67152339e0bf0a6baabf8b3f41b1c`
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
# Mon, 24 Aug 2026 21:19:15 GMT
ENV GOTOOLCHAIN=local
# Mon, 24 Aug 2026 21:19:15 GMT
ENV GOPATH=/go
# Mon, 24 Aug 2026 21:19:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 21:19:15 GMT
COPY /target/ / # buildkit
# Mon, 24 Aug 2026 21:19:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 24 Aug 2026 21:19:33 GMT
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
	-	`sha256:f1ead90997fd29a7594732c2fdabad47d7b80ece2a969b3066af1b8321880d85`  
		Last Modified: Mon, 24 Aug 2026 21:26:29 GMT  
		Size: 99.7 MB (99678940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd3b6f1c20d8c7ac5223aac0954b870c07fc048941dd88f6ae8eca5761f53c4`  
		Last Modified: Mon, 24 Aug 2026 21:26:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:4be99ec75a7e1e8b0f0c524f6759e0081989b906169a4944db81827e274e3a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10884457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72af97ba553ba51d7df209f350f5409d4e8869e411b12c3a98740112a49d57ae`

```dockerfile
```

-	Layers:
	-	`sha256:a28a2576c7af6883e2e46135d9dd5f728e7abfed11d409455b9a25def4474e48`  
		Last Modified: Mon, 24 Aug 2026 21:26:14 GMT  
		Size: 10.9 MB (10855718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d380597b549f379ac95b546c72a019842f8324b933f1c768beb2fe993a8512d`  
		Last Modified: Mon, 24 Aug 2026 21:26:11 GMT  
		Size: 28.7 KB (28739 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; s390x

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

### `golang:tip` - unknown; unknown

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
