## `golang:tip-20261002-trixie`

```console
$ docker pull golang@sha256:d16e5ec361a0d95a0ad4d3812b6a2bea2d042b3cdb1e5aea7e0efe2c19cf2ef1
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

### `golang:tip-20261002-trixie` - linux; amd64

```console
$ docker pull golang@sha256:f009425f94f2fe1cd252eedf4a011bfd61caf332d2059502c87e08e4015f31a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350683566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c320903a9aedc4737cbd42e5cf0ba23589fc2e2ab032f45515a296607df1be4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 05 Oct 2026 21:36:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:37:42 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:37:42 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:37:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:37:42 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:37:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:37:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af46a57b04d6bd51d4353c1366a99721634f4cda1eb26828f5283a8d24e0752`  
		Last Modified: Mon, 05 Oct 2026 21:38:11 GMT  
		Size: 102.4 MB (102412929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef570f6c400a5ab9e47632258880e95d4a2988a96cc4642ddfe60394775421`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 105.4 MB (105443220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e483b330b7d3b3acbe173b276f9cc56da8d7e29d519c3f6401ea66ffea6d933d`  
		Last Modified: Mon, 05 Oct 2026 21:38:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:d934856492fc5f71dd7c1cd4537122584ad836a4ed262a7475bdea6a00feb097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10826201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51afe1035c00ff7e2cf13fd7b6b87e480774ad7cb11aa1717b2d4709f2b648b4`

```dockerfile
```

-	Layers:
	-	`sha256:33ec96e46647238ce107f00df606dfce7f919a211f0650863e962504dcdfed86`  
		Last Modified: Mon, 05 Oct 2026 21:38:09 GMT  
		Size: 10.8 MB (10797516 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efbcedace246137eada20f0d5e965c99d5a40eed152ffde9432937934ca019ed`  
		Last Modified: Mon, 05 Oct 2026 21:38:08 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:9d6c979cca7ca65242f3eb5badc5fd3fbe1ee0e3572ef5fe818f80c32b153fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.5 MB (306506236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9663be4b86fb6a70a1d67c753aa14f51ba83a0ef1abd6e7eacfa9add14bb351c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:26:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 05 Oct 2026 21:54:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:56:11 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:56:11 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:56:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:56:11 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:56:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:56:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a96b81f7dd856e671dd780163738168310a9b621a2e674fe3f0d153d5d2c28`  
		Last Modified: Sat, 19 Sep 2026 00:03:37 GMT  
		Size: 45.8 MB (45804267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5263bfac9f818f4ca845fc2fa75a1e1d26ab28688cfeac566c3195860cb82ae8`  
		Last Modified: Sat, 19 Sep 2026 01:28:39 GMT  
		Size: 23.6 MB (23641382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147b8adbb165d616a23eb3cfaefae1bbc21052b5d1f10a004e035c3229e1add3`  
		Last Modified: Sat, 19 Sep 2026 02:26:59 GMT  
		Size: 62.8 MB (62752934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0da1e8b45c16a8a8bcd441ac477d9820e6613eedaaea6ab4c8172adad31e9c`  
		Last Modified: Mon, 05 Oct 2026 21:56:40 GMT  
		Size: 73.1 MB (73050141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515c1333ab75ca71603a5b7e1af77704bd20991eb69d5a691790833b0012028b`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 101.3 MB (101257353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28df7a679f381b76c5efc9a025fd7fa80e293bfd9dc757b026abddf997e9f5d3`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:0358a9e1caeb261ad5967baa49dcea7b03dbedec02cbf997908e1af96487f15a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10622212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa3ac01476e0ae47998cb7605426a77d3b9c1f0a72bb98d7ce3cd0ef0f3ea4f`

```dockerfile
```

-	Layers:
	-	`sha256:a082c025d630d75c9fc5fb3d2eec1b7d0c75bc15a02f637e6e78c6cebd0da262`  
		Last Modified: Mon, 05 Oct 2026 21:56:38 GMT  
		Size: 10.6 MB (10593404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0fb084860b9e9577cd0304bcc0c20cbb0c3deb02516765e3ea4cba4645a4927`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 28.8 KB (28808 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:31181b1a36f4e6a05d4e9dd63039ee46b69bfc8897ae0534ce455b6410d66a26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.7 MB (340715775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c47556cba5646a10ed451602f99483adde60f9bd3ce38a7ece4c3660de4464`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 05 Oct 2026 21:42:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:43:29 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:43:29 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:43:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:43:29 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:43:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:43:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5bbf0fc8f380fcd8d48b18e6c502009732d09725ef6638110f1e6f0ad314b5`  
		Last Modified: Mon, 05 Oct 2026 21:43:59 GMT  
		Size: 98.6 MB (98559631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1197fd4c40c6856ef324b69c19b8599e9e15c840333cf3f9c4b76fe452d8781e`  
		Last Modified: Mon, 05 Oct 2026 21:43:48 GMT  
		Size: 99.7 MB (99745930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81af39b59f2111c079c72556df8eacbcb2e90e2e4e5270e34a12a4e671bc738`  
		Last Modified: Mon, 05 Oct 2026 21:43:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:b61b693492aac25690b2f1b2c2e7255aa8502b90f447384909dedfce28ab1357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10946171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af077503799746af63e1077172943cc06f3f4d30a19e20d74cdb658881bf2785`

```dockerfile
```

-	Layers:
	-	`sha256:4e46dd8fa7d27321ea540a76d53e071d6e3bfea7bdb294fa030ea6569b05b989`  
		Last Modified: Mon, 05 Oct 2026 21:43:58 GMT  
		Size: 10.9 MB (10917335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c8afc4fe452693b7657a97b6bbe315fe93cf136bf156a04f0a036115a21d0d3`  
		Last Modified: Mon, 05 Oct 2026 21:43:57 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-trixie` - linux; 386

```console
$ docker pull golang@sha256:36b8e5b53bea67ec0b84595115061fb7fef981b074fae6e69e8c00552737d0dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.6 MB (351578167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3692339e1eae236c17b6cb5e6ede2eef9f5f4741d283275cf4925d75ac5920d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 05 Oct 2026 21:50:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:51:32 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:51:32 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:51:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:51:32 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:51:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:51:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec368f7ba9933d2d015f4cd3464d99ee1552020b38fa6a1df25a691d59f7efa`  
		Last Modified: Mon, 05 Oct 2026 21:52:00 GMT  
		Size: 100.9 MB (100853078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97df23ba1563255fea525e9b90d953a3fc91bbf096740e750085812721554aeb`  
		Last Modified: Mon, 05 Oct 2026 21:52:01 GMT  
		Size: 103.2 MB (103182138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914fbfd093d5f6b03a2b0cf089d3e8395b7c8cac845a8b9d6f6f92496bfad669`  
		Last Modified: Mon, 05 Oct 2026 21:51:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:7f92243407d512ea31fb8d39bac3fe226386e954cba2dbaa3a5704db54aa4e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10797418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78cc7c0fb2f7408c221ed601373e7ce1076617f4fd49487313f6e73be661491`

```dockerfile
```

-	Layers:
	-	`sha256:aeedc0850d8eeac2ca1dd78ba626277a608bfe5830610f7fdf6dd60189530f29`  
		Last Modified: Mon, 05 Oct 2026 21:51:57 GMT  
		Size: 10.8 MB (10768777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:541f9b150edfcb64707a73ff3a9a389bbb4aa666dff591e26a92677ffc3df980`  
		Last Modified: Mon, 05 Oct 2026 21:51:56 GMT  
		Size: 28.6 KB (28641 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:053f83540618355b7be50e7a5697b5e8398c435efce23c91c8517d9a320cfeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.4 MB (348383945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22790b29ff8aca01487c557a9cbaa1d7aa9de055f56373b0c763087f9b851a1e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 03:17:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 09:07:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 18:10:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:50:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 22:50:26 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 22:50:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:50:26 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 22:50:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 22:50:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57552d4d0f86a402301d735d57c01cd3d2d1724c711b625717be1f6749424be9`  
		Last Modified: Sat, 19 Sep 2026 03:17:41 GMT  
		Size: 27.0 MB (27022750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688421ee6cf78616bfc56c3cd74e55a2ab39b5a15aae8b60dd132fa0e6540f48`  
		Last Modified: Sat, 19 Sep 2026 09:08:06 GMT  
		Size: 73.1 MB (73088760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b590588f65a31bc4544eac4a46e84e9867d6f38d4d02d2efa6b84e3cbda62f8`  
		Last Modified: Tue, 29 Sep 2026 18:12:22 GMT  
		Size: 93.1 MB (93115487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a38b7e603d87210e83d472af3f9689d93ce5d229c01fadbc15ca279744bf2d`  
		Last Modified: Mon, 05 Oct 2026 22:51:44 GMT  
		Size: 102.0 MB (101961717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64afec86ae2fdee26cefc613f159de1768241e9b20a7c42c2ebc4d3163da73f`  
		Last Modified: Mon, 05 Oct 2026 22:51:41 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:6648bb1e082e580d6b1d3052b50c5b757c86a2a44ca40381c9274b59c4729497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ad7cc443d3c50735fd2ed08da08940c4da3baa64a73d07ea91be05b2ae674d`

```dockerfile
```

-	Layers:
	-	`sha256:11c864333b077332ee3db406445c7d7d8a44635e1702782102db1060f3767b76`  
		Last Modified: Mon, 05 Oct 2026 22:51:42 GMT  
		Size: 10.8 MB (10793307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aaf42073efbe42924d2eb4a84cb7767e60c78e98078cfe1b820d567adda7869`  
		Last Modified: Mon, 05 Oct 2026 22:51:42 GMT  
		Size: 28.7 KB (28738 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261002-trixie` - linux; s390x

```console
$ docker pull golang@sha256:38ab76239ad3ae39951709fd0b20523fec6f8a2f3f706f10b6733143a67adffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325150606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0388704dabe769f1b7af1541dceb5f9498f29613a43710cfde8f566d811bf790`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 17:53:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:36:54 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:36:54 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:36:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:36:54 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:36:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:36:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ffe2361bede6e19377b18f8c9ee9c7df071e7ce3ea2067d5cd01d7ef4f5b4a3`  
		Last Modified: Tue, 29 Sep 2026 17:57:06 GMT  
		Size: 76.2 MB (76226759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4224d60fdd825abdcc86346793af4d4ea3e1c06771a495a1aada2b7e57593ead`  
		Last Modified: Mon, 05 Oct 2026 21:36:55 GMT  
		Size: 104.0 MB (104003346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708fdefd71a12e510d0426025b60e018cd029daf9ee6b416a22075aa93503c16`  
		Last Modified: Mon, 05 Oct 2026 21:37:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261002-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:165e73c0151319a7bd5190d2c1042fd4ec785f5e709d6016020c4f64012e5280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10637169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f96a1a86ece1749a13eae293b842348be62eaa5293a272a3fcd22e2193fa15`

```dockerfile
```

-	Layers:
	-	`sha256:31d40488e7a5233276c1ef00a3122086cab075e979decc30cd3fc3efe90b035d`  
		Last Modified: Mon, 05 Oct 2026 21:37:25 GMT  
		Size: 10.6 MB (10608663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f773511cfa32ebc2469eafd5064bdbb20d11cf939aebefc8ae383b1dba99016`  
		Last Modified: Mon, 05 Oct 2026 21:37:25 GMT  
		Size: 28.5 KB (28506 bytes)  
		MIME: application/vnd.in-toto+json
