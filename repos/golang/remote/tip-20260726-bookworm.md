## `golang:tip-20260726-bookworm`

```console
$ docker pull golang@sha256:304d2db015f22b62775cdf19c37f9724d006c4bf4d8a674efe4b17d0f3b30868
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

### `golang:tip-20260726-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:77c02de89dd527be91d14a4d568000945ffa09ded951d8db6f63b37b9d7971aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331462304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:426ac7253413e19e47b4fe9cadca365d8cb83c7febce9a45adb54d43731b3c97`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:06:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:08:39 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:08:39 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:08:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:39 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:08:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:08:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12cd618e75dd8eb8eff54a0178b660df30a660d222bb9c72dd65d0466e6a1f74`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 92.5 MB (92523964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70182a89e7d87356ef54209ef5025f5029805de8d8545608195eb8152d0595e9`  
		Last Modified: Mon, 27 Jul 2026 22:08:48 GMT  
		Size: 102.0 MB (101988224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e2e17c302ef7ab69d280b70bf1ec612dfe34fb93a29720454960004c88d757`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260726-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:87af71a658aab9aae32504e68e13e7dc8fde6cb3078e6da0b98dabc36c3cf8a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192d08bb2942940abbfa510290840cb4940be339f42b73fe50844bb0f4901914`

```dockerfile
```

-	Layers:
	-	`sha256:54de97569833921f5071d6597e0b1a194d6d0fe09e21026789fc901bedbc4a26`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40862c0437c3e2160fbf34bc2715ee88789c5c1de654ed2a9484fe630ede501e`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 28.4 KB (28390 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260726-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:c584c0217b424804424a8e40298a83aaa103817fbf253cbc0d0f3cfd16c91d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.2 MB (290245007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa1a18b1a00b4cda71f6412ae9dc61f60540c285f318e57580b8d7af784ef6d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:09:40 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:09:40 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:09:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:40 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:09:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:09:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f08ce4a309195cc7b461516684fc0628d56fd465c538e7c129a9eecab47df45a`  
		Last Modified: Tue, 14 Jul 2026 00:13:47 GMT  
		Size: 44.2 MB (44203181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1132f9cb1292797584a716d4e35906092ffde6a92ac73ad7e53bf2011c37fd7c`  
		Last Modified: Tue, 14 Jul 2026 02:29:25 GMT  
		Size: 22.0 MB (21950005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0890883874051ebbc97c0f302949cefff32c87f2ad60cc2477409b9c7da643b4`  
		Last Modified: Tue, 14 Jul 2026 04:15:26 GMT  
		Size: 59.7 MB (59662246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2cc9a46edcdac9a8db29a4a114cb0a27ea7535e31a42896d4e9e485a97c8fe`  
		Last Modified: Mon, 27 Jul 2026 22:10:09 GMT  
		Size: 66.4 MB (66376416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b961a0d50988d7c9a177ec9e923fb9a4afbedfc3d31275eec2c42aad2d0e7f`  
		Last Modified: Mon, 27 Jul 2026 22:09:51 GMT  
		Size: 98.1 MB (98053000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48d6048083b9ae6043e0d7939522ecc85db88b4747cdc34492edd5518b106f77`  
		Last Modified: Mon, 27 Jul 2026 22:10:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260726-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:87b1f301a6469d9a5e7603e677141a67edf7a47bb38a05a537ff9b6cc28dcdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c920bddcb04505d6aa00e07636b7699e61b2c63e2645b39bd826c458fb732bcf`

```dockerfile
```

-	Layers:
	-	`sha256:64999950d53b2c92b8390c88b028066a9cdf7914309c2370e6c68dfb083a8c0a`  
		Last Modified: Mon, 27 Jul 2026 22:10:07 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0b00d7df7df9d84f5679783b36344e1383880b0cfda25185a8d6599ed2c4754`  
		Last Modified: Mon, 27 Jul 2026 22:10:06 GMT  
		Size: 28.5 KB (28498 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260726-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c3d75e7dcf1124c73e883a8cd3378ef2c61f6669a4cffb6ed5f4069b211609fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319634871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92638e38ee86877d44e65d5eaba0ba4f7a86af476f510aace383d3bfc62636cd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:06:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:08:25 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:08:25 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:08:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:25 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:08:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:08:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af2d47cd8540f7af1f8ba488289fa82e9a2258d051477163651baf22fc99ea6`  
		Last Modified: Tue, 14 Jul 2026 02:37:00 GMT  
		Size: 64.5 MB (64498147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d149cad8cf53b141ca39393dfbd2669fff911e6cf8426669a1a2f56d6d3f388d`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 86.6 MB (86591310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce80571b63faeb14e5839d68cda387b1895c1438d8dec5f05ca729001e5415b0`  
		Last Modified: Mon, 27 Jul 2026 22:08:35 GMT  
		Size: 96.5 MB (96548863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164e126696264818940b07381ea50b1518611abd42a8085529a54537c6d9a087`  
		Last Modified: Mon, 27 Jul 2026 22:08:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260726-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:469cde02c80787cb218f6230f842a6dfd22e73ade92a44fa5dddaa2a7397f02c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a734f87959a7b17e27e2e39dccb44db80105a5e45bb33723d81c15afa3c185`

```dockerfile
```

-	Layers:
	-	`sha256:2b5fcfa3d3dd8ff008e8ae3c7df643e8cfbae80697abdc85129ebf941763755c`  
		Last Modified: Mon, 27 Jul 2026 22:08:52 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4525075338287df6ddb1fc4f5d3ce48a90032074a779e11477ea0dbede4c3af4`  
		Last Modified: Mon, 27 Jul 2026 22:08:51 GMT  
		Size: 28.5 KB (28522 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260726-bookworm` - linux; 386

```console
$ docker pull golang@sha256:60e7e883038a339db07d724f7b32167c5f3db5e2db7ea40de0d0c6a22c40bd94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.7 MB (330665220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dbb0cea0e4acb1ffba408ad7e919c46f8d69e7533d6c313ffe03bd1c80343fb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:04:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:06:28 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:06:28 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:06:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:06:28 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:06:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:06:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57925bd1ff28d8c7df42e8e4386b1a8e5104548196adaa28c62e0c7b26b5f2b9`  
		Last Modified: Tue, 14 Jul 2026 01:46:55 GMT  
		Size: 24.9 MB (24879833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a17209efcdd987645a47d85b886216acc5254a2a0c1aef2364b9a70bdfd8b2`  
		Last Modified: Tue, 14 Jul 2026 02:38:33 GMT  
		Size: 66.2 MB (66249184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38df055a96b75f6de2ea274253078b3bc8dac59f98b8914e5ae0e2c7867bbbd0`  
		Last Modified: Mon, 27 Jul 2026 22:06:56 GMT  
		Size: 89.9 MB (89941039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5a3aaa3a009e10bd7efced5fa5120668bcb54de583202a8de6e5e6ab444e4`  
		Last Modified: Mon, 27 Jul 2026 22:06:55 GMT  
		Size: 100.1 MB (100109566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0528426d40606af1d8b72819275048b0e9ea50f4d8e31b08deb29f742c1b44a3`  
		Last Modified: Mon, 27 Jul 2026 22:06:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260726-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:a829ee1fbf067ca1baabc86609f0121f0d4effa96f0ce3fb06601fff3a872e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74e7b2cfdc734d17a566f854e5d740e6e64dc890a96cc22433b463b9c982335b`

```dockerfile
```

-	Layers:
	-	`sha256:bb04f2bcf3aea40c5a77364ed36656e0ed704a657ab87a6afc6b11053e1a6dd0`  
		Last Modified: Mon, 27 Jul 2026 22:06:53 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e71a7bd310877a93c29456209584bfdcca64225f6ff1df26eb6cf0dff3d22b81`  
		Last Modified: Mon, 27 Jul 2026 22:06:52 GMT  
		Size: 28.4 KB (28357 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260726-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:f9dc240f8b76519200cf804012d78de8db510301a9bffb9557df36731ebc344f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.1 MB (337109211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb483817f77096581e227f21cb439c5c58a83e7edba917c0acb43181d8e6714f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:49:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 12:13:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:07:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 27 Jul 2026 22:07:27 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:07:27 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:07:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:27 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206cda10cbd9dac32ecbd02a80861ff43df730ef77172b28d0e3c72a02c96ae`  
		Last Modified: Tue, 14 Jul 2026 03:49:23 GMT  
		Size: 25.7 MB (25687296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dc397ad605293503e3db0dcc973f7b867a960c6167203f96e7b22c80e4c3cc`  
		Last Modified: Tue, 14 Jul 2026 12:13:50 GMT  
		Size: 69.9 MB (69851191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47461e6374968c33356e2adbad177e6df5804c45e27ae9a811fb6b6b59689ad`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 90.5 MB (90529324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83158c867f68c393c40d80d5a7ca238c6f40445a0d20991e9d1d2641b7fc173`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 98.7 MB (98699408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fd6b755ab84dafd6e6ed1901dcea762b686812432b0a642128db8892ea5ab68`  
		Last Modified: Mon, 27 Jul 2026 22:08:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260726-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:58908f2fb8103bd1ca33e860ca7b641d626fa3a02fb2fdae77f2701cb74d2474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10498026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47ddffb111d5fff5c4eeb4135cc63fa2a9cd0d3764287426b8ad17cd48a5b103`

```dockerfile
```

-	Layers:
	-	`sha256:601a4394674e279ee4324145400db3fd0b5798a3c058cfc1738c51665ff58a58`  
		Last Modified: Mon, 27 Jul 2026 22:08:50 GMT  
		Size: 10.5 MB (10469594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b9aa141bfdf46dcb3aeb243b8c4b77403f833018a47dad3148a82f2dcb0b6ac`  
		Last Modified: Mon, 27 Jul 2026 22:08:50 GMT  
		Size: 28.4 KB (28432 bytes)  
		MIME: application/vnd.in-toto+json
