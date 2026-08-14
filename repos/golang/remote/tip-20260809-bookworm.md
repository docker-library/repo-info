## `golang:tip-20260809-bookworm`

```console
$ docker pull golang@sha256:29293025a9e4d6449452e4b63893cd5903b2255713f9cdb259fc7fca456ca463
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

### `golang:tip-20260809-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:0e0667b6e2087a79250817b6f511d7d271c3326129d9669497e779f3ff215768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.6 MB (331617515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee67b643f8edebd83df850ddaa479a9d4e3ae7e388c3f950d987711bf0d948ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 20:11:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 20:13:23 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 20:13:23 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 20:13:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:13:23 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 20:13:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 20:13:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7055a916d90df8c6b77afffce659eb6ef025ce51a1a92cc165cd94ff365bf1`  
		Last Modified: Thu, 13 Aug 2026 20:13:53 GMT  
		Size: 92.5 MB (92545201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ba79db5c7c8b5bee8dd5476917bcc23598ce562ecefd16aed54bc7ddb14e38`  
		Last Modified: Mon, 10 Aug 2026 23:32:52 GMT  
		Size: 102.1 MB (102122658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8065c3660a1c83c6892f8a3cc7fe997adfd8536ad31035bdc61f1e799859fdc`  
		Last Modified: Thu, 13 Aug 2026 20:13:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:933cba44542e39d2e7607c233cc691a096938ebae062759176d9b0091e2e4f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb76ac0b6f88c998ac5410d5a024facd340e282d1ac0e63ec27601847bffec5`

```dockerfile
```

-	Layers:
	-	`sha256:9db4934bb518857892f2de2e5f8b0ba76703ad4794e276ab35fcb732f203a3bc`  
		Last Modified: Thu, 13 Aug 2026 20:13:51 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9388d24c15a309cc804cf2fdbd0ae45b6797586e52082552905418d93117e268`  
		Last Modified: Thu, 13 Aug 2026 20:13:50 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:5acc95f61658706198edc24d1462dc6f5c53f8a0dce5ed210b3b3c74ecb24e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290421463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd08a1f452c7706952408387d9ba81977a457e3dc699113fbbafa5f9127d2d48`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 20:26:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 20:29:34 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 20:29:34 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 20:29:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:29:34 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 20:29:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 20:29:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417c1710fd8f34b875b5a02ec81646b473df0d6e420f71c9e6f065ab8e79ec66`  
		Last Modified: Wed, 05 Aug 2026 02:53:59 GMT  
		Size: 59.7 MB (59662276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810131593c2fec56bca5fd976a283e29703bac226427f008474c87d9f7897b3c`  
		Last Modified: Thu, 13 Aug 2026 20:30:01 GMT  
		Size: 66.4 MB (66410434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fc34d5d8629d6029c50a31a63e1c2cb81b094a58e2d08a759a5cff36008918`  
		Last Modified: Mon, 10 Aug 2026 23:31:34 GMT  
		Size: 98.2 MB (98195783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f700559dd6d29c69d37c2ea81536973844abc797814008a2f13efce1520c1958`  
		Last Modified: Thu, 13 Aug 2026 20:29:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:88577a98a027f9056a2d52d2fb69f012e706a8d97c689106732c6dfc2ba7d89b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9bd84441b6bae2eab1bf6db656b1cfd19002c0baf3057acd3afb6a8c2c86d6`

```dockerfile
```

-	Layers:
	-	`sha256:f9d126e83c4de0b8c7e336849d49a6c3c27461ff7cdb204d6c6a607b5a692c14`  
		Last Modified: Thu, 13 Aug 2026 20:30:00 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe6433075080e0f78a206991548965ec467215c7a6903b8f7febd05c8b43df28`  
		Last Modified: Thu, 13 Aug 2026 20:29:59 GMT  
		Size: 28.2 KB (28209 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4c15c88cc2f1b8a98cf65ad8c26cf914fa36516e56689ee9e8f72285f19cd9c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.7 MB (319745399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9aeb559dde9e19a2d02e4e154835104fe8b791437e26985ab76e976e262f1a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 20:11:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 20:13:07 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 20:13:07 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 20:13:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:13:07 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 20:13:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 20:13:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c29ad228cbfd2f27ec6dfaed4ec705572633af42b7a292d5bb7a462088c485`  
		Last Modified: Thu, 13 Aug 2026 20:13:36 GMT  
		Size: 86.6 MB (86626955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345d818a4d1d5c30faebf580653ca52f803e6bfa975af792681a5892e0202fba`  
		Last Modified: Mon, 10 Aug 2026 23:31:08 GMT  
		Size: 96.6 MB (96624070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7651b632d7bc7037539d1c79422ab7fff047f35b11050a4bfbeac29320d4fbf8`  
		Last Modified: Thu, 13 Aug 2026 20:13:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:a66a078fa5c8827cebdd2dd2f3a0defa50912e532a3b1e41954047d458b0097b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14173eb28e7813ac134ef12f97655042de3bb1eac5312d99cb1889da8a1f964f`

```dockerfile
```

-	Layers:
	-	`sha256:9f1bc8b669767c03baaabc40783b1b1b9aae16120649b5001ded025b158b53e6`  
		Last Modified: Thu, 13 Aug 2026 20:13:34 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be7b86ecaf92d21b5249a033c04cc3f4432a4f0c833f4cf24a0b58aa04ccd8a6`  
		Last Modified: Thu, 13 Aug 2026 20:13:34 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-bookworm` - linux; 386

```console
$ docker pull golang@sha256:ef69c733dab2677c5c18bff790496cdc6761d6138965d6bc47f45d6a7aaa7ecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.8 MB (330849185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24561b024ccaf33fcd1e62dfbb811d2e3d9aafc1f75c442fdd0c42b6756f95e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 20:09:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 20:11:53 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 20:11:53 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 20:11:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:11:53 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 20:11:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 20:11:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fb8101655510b20bad67f876c00bb4d21d41b7a275411eb82a0d8cdc9b46e6`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 24.9 MB (24879871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fed12a6feb1930e559968e2bc0bfe7d26d40716344b44941e3f2e9998b9ffc9`  
		Last Modified: Wed, 05 Aug 2026 01:41:06 GMT  
		Size: 66.2 MB (66249235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b947ad15b30144b2467ab594e72197cb36c751bd55b247b5a7684c6374d508`  
		Last Modified: Thu, 13 Aug 2026 20:12:19 GMT  
		Size: 90.0 MB (89971835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3193c8848ea73ab15af846ebf6ea81cd7e12867309e713849b7d248d32dc3451`  
		Last Modified: Mon, 10 Aug 2026 23:29:39 GMT  
		Size: 100.3 MB (100262964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f47a15e191c26c2a934436ccf7a35f59211cbf4c8596a0412d5cd9b94a8b257`  
		Last Modified: Thu, 13 Aug 2026 20:12:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:b8bb9e6609b43c18d18f77aa8449c7079ddb3dec64ca017de84c389a72e610a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792a6ecc812394267c4ddee911312becd64dd8575494eb21d0d217e8192b1317`

```dockerfile
```

-	Layers:
	-	`sha256:16c93ce9f91bd1f091366a6df5566a2c5c847fc488e3995539014eaf7317129b`  
		Last Modified: Thu, 13 Aug 2026 20:12:18 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90f62920c405c3fc73a0b6f0d81e4380d66bde1411e749ef2af91165e4268d43`  
		Last Modified: Thu, 13 Aug 2026 20:12:17 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:65da95787b91707417fffffa46baa5987155c3c2d530604321d11536054a5aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.2 MB (337240253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d061e41c19edc9dcc0041271a1331ffebbd566e3ab68942bb2c56bf6a55be79d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:57:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 09:22:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:42:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:42:31 GMT
COPY /target/ / # buildkit
# Tue, 11 Aug 2026 00:13:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 11 Aug 2026 00:13:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec967797e5dd9489be310b03bea17111b4e6049dc869f8b0a3a81cc540a0e7b`  
		Last Modified: Wed, 05 Aug 2026 00:57:30 GMT  
		Size: 25.7 MB (25687275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb1bed36611a08515b1a40e861280de5d11d18c2f44c9f9eafc31d2ced5dcc1`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 69.9 MB (69851499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef57b69f1fedab5ad34f2fdabfffa7506439baabbe4e3212377368cd92cbb10f`  
		Last Modified: Wed, 05 Aug 2026 09:23:24 GMT  
		Size: 90.5 MB (90543573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d95ff9656836b4d4f9ed4e91f0626382d9c4c4ab41dde220889f5b92f87744`  
		Last Modified: Mon, 10 Aug 2026 23:43:24 GMT  
		Size: 98.8 MB (98816272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72dfacb0f59f337b1a80ae048923bd0e64bce8d9440ab90489ab87f3e91d6b6`  
		Last Modified: Tue, 11 Aug 2026 00:14:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c64847feabee8f3c2513f8b3b3407b96a5d2f3cfd0e432063b38ec5ae5e46b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd36465152d369401cf9425e2c750acb18c0e1ed7bd9d96b58b4713f8ddab6e`

```dockerfile
```

-	Layers:
	-	`sha256:571c5060e13aa7f1a03fc6d38a7f6dd5b5de02471d7d934c4deaa5ee08d7f069`  
		Last Modified: Thu, 13 Aug 2026 22:30:57 GMT  
		Size: 10.5 MB (10469594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:777651e6568cfa037bc2b0ee77d26603104fd92fcce414ae8458dc4a1c364b21`  
		Last Modified: Thu, 13 Aug 2026 22:30:56 GMT  
		Size: 28.1 KB (28144 bytes)  
		MIME: application/vnd.in-toto+json
