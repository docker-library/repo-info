## `buildpack-deps:noble-scm`

```console
$ docker pull buildpack-deps@sha256:0f0bbda28bd5dfb36cf03fec38f05de01899ac76c68bfa68bd39dd40a49f9861
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:noble-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:3499ba66ea3258e86ebedc69188f58882e2738357dea0e1583da9838d61e15bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.2 MB (91192365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853859ab7afcf9eb267c1dde08a1e70bdc47ac8c18f4063f066d1953db053cd5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:08:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:17:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18de6fffc95da6fd8b525e32806e2a2dcb7fd062bcceb096d938c5808715cc0`  
		Last Modified: Wed, 11 Nov 2026 23:08:28 GMT  
		Size: 13.6 MB (13588593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8ca1731c21b4b6d98abadc6c0748a0605651f903a3c78c3c7d1c52f4f8763e`  
		Last Modified: Thu, 12 Nov 2026 00:17:19 GMT  
		Size: 47.8 MB (47810549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a47146cfbed611d40c024e4c758f4e5215cd5bb9d187fad5bfe43ee7ef7024f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5265694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c146be2c43b26d06b37ffb774127ac0877ca4934c5ce0e792a47b0bdc27c3a50`

```dockerfile
```

-	Layers:
	-	`sha256:f808bf2010aac4583c9ef5a91d061be447e8c91300b834f14563b483a1864798`  
		Last Modified: Thu, 12 Nov 2026 00:17:17 GMT  
		Size: 5.3 MB (5258432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e68843a5c03397b377ba69e07f9981714e83c0ac67e309304b220d8ff66ce01`  
		Last Modified: Thu, 12 Nov 2026 00:17:17 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9b9e16831ed231abd6af9c95c5121667fbad9d28a0dfc521f2d716b4934b77a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88609551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fe806a138fa1b097990741fc8bf862edb4d6d92646ce4a73401f6c4edf080f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:16:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1838b6e701e1670302624658ff490ee122535756df83b8f1ed73243592e2ff8b`  
		Last Modified: Wed, 11 Nov 2026 23:19:41 GMT  
		Size: 12.7 MB (12743373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab204a10604f561968f955d2a07366f2208ac85ff58a6565faea6cf58a64e06`  
		Last Modified: Thu, 12 Nov 2026 00:17:10 GMT  
		Size: 48.9 MB (48944170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:de78053618b775a96ededb5c6bf683f4045a3c91111c1dc109e8d73168aead85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5267055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce2fae7be33eb7179b0160842dce6747407d608e32313675adc147d072f4dd8`

```dockerfile
```

-	Layers:
	-	`sha256:742e40d1e3165dc746ac388e275c3ff32e1c696ef8d7cc4bd9d7d79bbf87bb85`  
		Last Modified: Thu, 12 Nov 2026 00:17:09 GMT  
		Size: 5.3 MB (5259730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e30b931bd25eac5a7ccf99648d8ca17590ecd522c6374aa7ac467f8225c8a6f`  
		Last Modified: Thu, 12 Nov 2026 00:17:08 GMT  
		Size: 7.3 KB (7325 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:1c127f5b0b0b10128b7973cea167c96c64c44e06d1cde7d0f1ae585a1fed8715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87753942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409eb1d5b60a5f07499ad530b41458d828940be319b01dfcc8cd1d9b907e3c58`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:31:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7463fb1902b7bb65f107d1b20b2f4109b39089b658c7a32c814ae9fb54cd6436`  
		Last Modified: Wed, 11 Nov 2026 23:13:39 GMT  
		Size: 13.4 MB (13431609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12854bcd170a41b628c1ee6f26b967938ef842ff82c9b7709c45be8cde17a8dd`  
		Last Modified: Thu, 12 Nov 2026 00:32:10 GMT  
		Size: 45.4 MB (45357075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0d555b36fe0036ae24ae7bbd00de790b58cd53829e3f711e433fab030e83cb27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5272966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7522a3c6b021760398fb560407b62e6cae1c9cb4ce0a565fe5cb02711763f7a`

```dockerfile
```

-	Layers:
	-	`sha256:dd2d79885fd85c4226dfde8b713961e33cc534e16549d3a8ab773a6ab2ab68b8`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 5.3 MB (5265624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4628f91d46b6a919bd90bca4bf5fa66c441f4e0088c610afdf94f750cba35cb3`  
		Last Modified: Thu, 12 Nov 2026 00:32:09 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ec4c75a0a6c9b35f7e563b70453e7e0bec6cf864024efb5038256e58820fba5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100773920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b555270134d85080b2521608bc1f1ff747be6e1c561618fd201d54504738ae`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 01:37:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 05:13:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eba43d40b9d10e72ecb282fc20863a0d1fba14f318c5ca7053a12531be210aa`  
		Last Modified: Thu, 12 Nov 2026 01:38:19 GMT  
		Size: 15.9 MB (15915010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6704f0b8b1645abe509b70b953f4be357a4d175de419d0feec23fa83a9270568`  
		Last Modified: Thu, 12 Nov 2026 05:14:18 GMT  
		Size: 50.5 MB (50452399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c7524b295a62c793285b6cec1ce95b21495b8939c7104d2760d58c9c41e16274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72c8a51d3b983deb9272a6ea5c54bd89775716866cbf03038c31c381459c513`

```dockerfile
```

-	Layers:
	-	`sha256:05ae63f2bcc1bc687e570a67d1577cd1774c3a3ffdcd8b1524c75b25393a9ea4`  
		Last Modified: Thu, 12 Nov 2026 05:14:17 GMT  
		Size: 5.3 MB (5266286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a60ecc82909ccaf0d5dec95936622bc904ce8c4b4da91e84c270b1285169f0e`  
		Last Modified: Thu, 12 Nov 2026 05:14:17 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:24161954eadb95af25479b238f7377a74e76cfc9d2af2d5348e85f2bb5834aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99274459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a985a9d68c9a326ae997dc4a4359279373e35693254761c58a4575b9e4a79964`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:40:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:41:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:41:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:41:55 GMT
ADD file:bd60d80275224295b295318dc71399dbd358b15bea499dc5c524ae8260970dd4 in / 
# Sun, 25 Oct 2026 14:42:00 GMT
CMD ["/bin/bash"]
# Sun, 01 Nov 2026 11:28:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 07:54:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9c292ed508c8980046daab8996841e49bec6ec20e645ab48bb63b8228da83d11`  
		Last Modified: Sun, 25 Oct 2026 14:50:32 GMT  
		Size: 31.1 MB (31054629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6a95e766b7860b047e49d033542badca2f0ebb78f3f1b5af4fab8f4dc39f26`  
		Last Modified: Sun, 01 Nov 2026 11:29:31 GMT  
		Size: 14.3 MB (14301315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c47ede4e756b490dfaaf6436afb35cfc953f4671a16130a77d417545da6936`  
		Last Modified: Tue, 03 Nov 2026 07:57:43 GMT  
		Size: 53.9 MB (53918515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fd97dfebc26357a384ce3839f9f20af9a30ce3bcc163d5c777908b5265445c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5255518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69cc5a717381ffd12ac2be07611dd2ad15145d4e21f6d7dab3782367f4f7da15`

```dockerfile
```

-	Layers:
	-	`sha256:fff3140e3fc12146d9c6a2a4db5de757f65050e742daac3a9435f434958a48ec`  
		Last Modified: Tue, 03 Nov 2026 07:57:35 GMT  
		Size: 5.2 MB (5248224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faf8a32ccaf9c65944a3b149e6b3e709750ef1051b07e98ac5eb4839dfcaf3a5`  
		Last Modified: Tue, 03 Nov 2026 07:57:34 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5ca6e3ee59c5382be99465d7e0432d19d94637730cfaa44cb9262ea6e0a29510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91702952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901b2cd65b4532a5ad075b666d6752362be53c4989479a6c94e24ee415795137`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:12:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 00:15:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2832bd3b2825db4ef002cba25e41a30394bc6ec8e3b3c63f7177efa9098a08`  
		Last Modified: Wed, 11 Nov 2026 23:12:37 GMT  
		Size: 14.9 MB (14898081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4238ea88909276a1059f4644e8e637adead1dc848346e27ab01e62412792ed`  
		Last Modified: Thu, 12 Nov 2026 00:16:14 GMT  
		Size: 46.8 MB (46837287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ac7daf6c5cef462f09fa761f834bcd7b5925446de6db3e685f3f51222da1893a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5268026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73846704543de55a54e23dedae0785c2bb435b987b58efd18c32128ed83ed74d`

```dockerfile
```

-	Layers:
	-	`sha256:a6c9c0c2d1655554c2bf5bb584dfc75812ab076f78f477ee814ddf38a1060d37`  
		Last Modified: Thu, 12 Nov 2026 00:16:13 GMT  
		Size: 5.3 MB (5260764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2049c60b6697ec38b8389670e28a24aa4cf51a9d9fa54fc74e159d86fd06cab1`  
		Last Modified: Thu, 12 Nov 2026 00:16:13 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json
