## `golang:tip-20260815-bookworm`

```console
$ docker pull golang@sha256:c4717607fd68225aa38b81e4b4256c9469e2803446c7569c5cbe5143cb9da197
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

### `golang:tip-20260815-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:cc5849853a8b828b319690381c624aa88fb1f55708dfd3cbc7b77f9fbc3efb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331684159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c8eff248dba227a8ea9a27e639bbdc45173fa18ff3de5b721f73d54725efcd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:10:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:12:32 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:12:32 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:12:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:12:32 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:12:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:12:34 GMT
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
	-	`sha256:42dace4ef3602c484fbf6df1c2907f45e179fe3cc835d634844082ea76e599d1`  
		Last Modified: Wed, 19 Aug 2026 18:13:02 GMT  
		Size: 92.5 MB (92545195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4b108dc2887f1874e475aa93655dfb3cee66bdcaa485cfef77f44a1da802`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.2 MB (102189309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe33dc99421429412b0ed4f0945703a72c35515455d1a4cad8e12e6a2385b47`  
		Last Modified: Wed, 19 Aug 2026 18:12:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:ba647518a1df15bc2892425f316707665c299448842df0b9721f08073e3b6792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbd32bb3ecf2b94a3d684f9be5df1a8baad9563d08bde1eb2266610d2a8c45a`

```dockerfile
```

-	Layers:
	-	`sha256:d554decdf07478d41bf10cf212a7afb26572d7d114e1d28d8dcbcc269e7f09af`  
		Last Modified: Wed, 19 Aug 2026 18:12:59 GMT  
		Size: 10.5 MB (10497109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a4e0020134d00382359015466b68bec39959aeeb73be964d55dd103272db063`  
		Last Modified: Wed, 19 Aug 2026 18:12:58 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:c28c203aa920847db54e864fd855a970873e1d07f3b776fb2ba4705bbd220d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.5 MB (290473935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fb18c756d1cb4c6a3ac5ebb6ddd93b8eb88d6d298fd45fdddbb61a58a08139`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:13:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:15:49 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:15:49 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:15:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:15:49 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:15:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:15:52 GMT
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
	-	`sha256:7bdf2afa1f997f52a48c652bd6dd62ef2e5c13ff44b68a6c185424d938894de6`  
		Last Modified: Wed, 19 Aug 2026 18:16:17 GMT  
		Size: 66.4 MB (66410781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fafa218b44764d9c306166742866e740ed62051825597c3c8a3bea4bd4709bb`  
		Last Modified: Wed, 19 Aug 2026 00:15:48 GMT  
		Size: 98.2 MB (98247908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff57ea18443164a904c06b724d17aacaea2a757e3c1e4b52eb63c6fa6dfa27bd`  
		Last Modified: Wed, 19 Aug 2026 18:16:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:a95ee5d430905f2ed1c064bffc8fc1539905e622d919430c6488fdee3d2df790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d6a5e6963de576bdba991cc5d3f7c76a78f18a2de13c2ed027d9c4dc5bff56`

```dockerfile
```

-	Layers:
	-	`sha256:adbd428df4055f48c57fc747c6926c378acb5e2f97b98ac286fe5d66e634e2c7`  
		Last Modified: Wed, 19 Aug 2026 18:16:15 GMT  
		Size: 10.3 MB (10303805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee84361722b96aa6296e1819222348677f55f29e7bb9a82047fb8a74069cf9a`  
		Last Modified: Wed, 19 Aug 2026 18:16:15 GMT  
		Size: 28.2 KB (28210 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:3d4ceaf13bc5ff1601854c6b7aad37e9968e12c47fa7fa68ece2f9d7854fe1a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.8 MB (319808817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80b1045318e4a1c2e5fd225c4afd29f28d38cb373a73e9b263a9a6ba4320a20`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:12:11 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:12:11 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:12:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:12:11 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:12:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:12:14 GMT
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
	-	`sha256:abb8a2de981375c3f24fc7a039c5130cd49081b595637b6e942b04b0314bcbb7`  
		Last Modified: Wed, 19 Aug 2026 18:12:41 GMT  
		Size: 86.6 MB (86626941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9b83df000c9f6c1608586eb67529963919d8f16a0c472bc1c8f6bb835fe29`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 96.7 MB (96687502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3955a5aec0450ca17200d52517ef436e5b44e8a6ceeb50a96e3f91a8d865426`  
		Last Modified: Wed, 19 Aug 2026 18:12:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:81507315f8ac10f42a31ae007d11dd4bbc2a911878e1ff1e81cfc41dab84cdda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f74ab5e97272db67a004df3042aa19daada735ad3415d866a71c45c4ed9e64`

```dockerfile
```

-	Layers:
	-	`sha256:49ca0511750d8d14cd61b3d990bd1b816a08dffd559699a79b51202d302f800a`  
		Last Modified: Wed, 19 Aug 2026 18:12:39 GMT  
		Size: 10.5 MB (10524933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11eebf26f65816a0a9e08d62b2e01b25589277a916feb6c039d036573ae64a62`  
		Last Modified: Wed, 19 Aug 2026 18:12:38 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-bookworm` - linux; 386

```console
$ docker pull golang@sha256:bd3793b573fd5d97c15b3ddd503c31600e50fd397405395bc18a3f835a5b2d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330919948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba6f4de0a084f5990571e66bd42df726b473284539be6623d2a6d5b3b51f5f76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:11:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 18:13:06 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:13:06 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:13:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:13:06 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:13:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:13:08 GMT
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
	-	`sha256:0640d9af37d9028fef8ef3b5126fb69ff58dfca20e9450f51b800b574082819f`  
		Last Modified: Wed, 19 Aug 2026 18:13:34 GMT  
		Size: 90.0 MB (89972131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b49515783d03dec2ef915a8f13b4f3ee4ca575a14e7cc8e02b6f494c0cf82`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.3 MB (100333432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64dda4ef2248c209e4c022b84949ada107e6e7867c44c3e5d14f597dfdc3a725`  
		Last Modified: Wed, 19 Aug 2026 18:13:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:a78db84ad3906ef448f730be9121ab64a65bb2135a3925206153d6ba26a6d0b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e10c42c8ce9bebfea8d44c972cf4ecfc5e2e85c41344f1acc5eaa18d5f8d88`

```dockerfile
```

-	Layers:
	-	`sha256:66cf65a75ebedead638022e2ee21df19565077e258aacb5b42bb643ccf9e6712`  
		Last Modified: Wed, 19 Aug 2026 18:13:32 GMT  
		Size: 10.5 MB (10476689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88a4e5ad97fed658ab5bd0acee64b85d3638fd5e463eacb31e7425a601cc5ac2`  
		Last Modified: Wed, 19 Aug 2026 18:13:32 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json
