## `golang:tip-20260913-bookworm`

```console
$ docker pull golang@sha256:1b6ab2b034606c6707cad8888569b469cb26f146c8045713fb61c6989f091384
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

### `golang:tip-20260913-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:bcb6e033e51f755c75c75b491d048de3b7a1d0c33f38d7e4af814a49f72df57a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.0 MB (335013862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0de0e6001ab10add374a2c311bc7fd5c3dd8292fe2b335d0b525402c34ccd52f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:16:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:17:39 GMT
ENV GOTOOLCHAIN=local
# Sat, 19 Sep 2026 03:17:39 GMT
ENV GOPATH=/go
# Sat, 19 Sep 2026 03:17:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 03:17:39 GMT
COPY /target/ / # buildkit
# Sat, 19 Sep 2026 03:17:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sat, 19 Sep 2026 03:17:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81578410df169380efec491bfdc60a7e586d4b48ef4c0aeb9b6ff085812d9a7d`  
		Last Modified: Sat, 19 Sep 2026 01:46:20 GMT  
		Size: 64.4 MB (64424271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8549e1dadd02a81a4742e415b6c4971a67478504a16b3aa709b022728f2f05df`  
		Last Modified: Sat, 19 Sep 2026 03:18:09 GMT  
		Size: 92.6 MB (92575968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7984364c80cd3e9761745232561ae808c7875b1c675fe35a820ab7faba4a7d30`  
		Last Modified: Tue, 15 Sep 2026 22:35:56 GMT  
		Size: 105.5 MB (105453948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e9bf419d0623de5051cf8a770d2ab6b42f927d13019e68e789af25212efb30`  
		Last Modified: Sat, 19 Sep 2026 03:18:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:ee950f1fe3616c2d322f3b883604a6ea2ce000de5220ddb4ee4892b44adeb82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10531192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2f697bc9a56536373bcbc54bfa3a781c8d16d3d743156678207f432601e484`

```dockerfile
```

-	Layers:
	-	`sha256:6fa8a6513cc0ae0ee315c67ca84177f044f303c08455a58e5a448bc1d6e200e7`  
		Last Modified: Sat, 19 Sep 2026 03:18:07 GMT  
		Size: 10.5 MB (10503090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:205d1b01727952e0f07a3a137a3a545128b30cdcab27726ac2ae0a6e78bff469`  
		Last Modified: Sat, 19 Sep 2026 03:18:06 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:6153b470e9918a9ab72473a97d75864e7c1dbd6dd15ace02360b96eb24a4182f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293574235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f586b5e0acbfc5d25d92ff0ff65b91418a33fea7850bde5f8decbd0f6fd379a8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:26:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 04:16:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 04:18:11 GMT
ENV GOTOOLCHAIN=local
# Sat, 19 Sep 2026 04:18:11 GMT
ENV GOPATH=/go
# Sat, 19 Sep 2026 04:18:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 04:18:11 GMT
COPY /target/ / # buildkit
# Sat, 19 Sep 2026 04:18:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sat, 19 Sep 2026 04:18:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a6c5079853e28bf683246929969c9815b5fe2309ca7008420ffa4f3b69991189`  
		Last Modified: Sat, 19 Sep 2026 00:02:43 GMT  
		Size: 44.2 MB (44202209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a5fc11ebbfafa0cb2b3f94f30ae822f4f3c68b9cc1fc076c7fac3bd1a4e8f`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 22.0 MB (21959053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b05f2afa4aeb0abd1b387e407cc8939c894ecaf8fbd3b034a72e34dae98c9a2`  
		Last Modified: Sat, 19 Sep 2026 02:26:25 GMT  
		Size: 59.7 MB (59661780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b576bc707691aca74f427e32e63efc87e47fd36709393e8474e2cebdf27eabf5`  
		Last Modified: Sat, 19 Sep 2026 04:18:39 GMT  
		Size: 66.4 MB (66426270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a8118ca32c9948b098dacae41a0ef4f00bc8c18d9d65a6518bba5d8fdb4961`  
		Last Modified: Tue, 15 Sep 2026 22:46:37 GMT  
		Size: 101.3 MB (101324765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79267182de85e542fecebc1a3c8ebc095cd8eabbd5c48b08c3c42a83171d13c`  
		Last Modified: Sat, 19 Sep 2026 04:18:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:ee3b066f645a2d095d60e6df64e729703697b57b2ef36a1248fbea1dcb8c299c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10337998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772bf1dd1ae391051d07bd9318dd7ceb29c4a4af46344e7b619bb5f0a0552eaf`

```dockerfile
```

-	Layers:
	-	`sha256:9ef6a97d4ed92c48eaad75561d03f84b7e8f290bbd4caeaf3d756013a56b0633`  
		Last Modified: Sat, 19 Sep 2026 04:18:37 GMT  
		Size: 10.3 MB (10309784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0718f9a1d619a4da802c6a27f3c3c0f20ebf6fadf6ae125b024a245714bf14fe`  
		Last Modified: Sat, 19 Sep 2026 04:18:36 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f554b0c4cc5e808ad18f483aa800f2003be9bbe12061033b4e860eeeb371f802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.9 MB (322940360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f022f111c5f47113141df5ef7c2212a6098803c3aaa93aae5bafe4ad61855c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:16:30 GMT
ENV GOTOOLCHAIN=local
# Sat, 19 Sep 2026 03:16:30 GMT
ENV GOPATH=/go
# Sat, 19 Sep 2026 03:16:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 03:16:30 GMT
COPY /target/ / # buildkit
# Sat, 19 Sep 2026 03:16:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sat, 19 Sep 2026 03:16:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89a2fc7697dfc6e43a46b701833b3575498d187c9de5572ffe075127046669a`  
		Last Modified: Sat, 19 Sep 2026 03:16:59 GMT  
		Size: 86.6 MB (86641673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18b6513c88a847af1c37f160e3913f457d3bc3723fc14f1e120510ea5e92930`  
		Last Modified: Tue, 15 Sep 2026 22:23:46 GMT  
		Size: 99.8 MB (99780790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3808c3b080975a309cbbe5e05cb192fbbe83370ebe8c85582488d3c41342fcc9`  
		Last Modified: Sat, 19 Sep 2026 03:16:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:3c9c2b5aa890b9e09c0efe83563510cbbe00264281d9eb049dfdce83f623ce5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9920f09e468cc9f402e9de5c114bde3ff35c55be6761d9db0fb497b839172aa8`

```dockerfile
```

-	Layers:
	-	`sha256:df7ac0cccffac85192d27f0583b8b98080bf4b8a57aff9a251443e698c0e7df4`  
		Last Modified: Sat, 19 Sep 2026 03:16:57 GMT  
		Size: 10.5 MB (10530914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:972c0a3bb1b2150612dd87df753c17f4130554b24ef987fe2f1aa543a6384eea`  
		Last Modified: Sat, 19 Sep 2026 03:16:57 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-bookworm` - linux; 386

```console
$ docker pull golang@sha256:6ba947c993855f2f58f8da1fde47af826246400dd7ff529e0761863b3c9df4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (334004782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5ca1e85e7cc44eff0428f07c76fb42bb1a444bdec33af2a7359fae36504cf5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:35:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:16:04 GMT
ENV GOTOOLCHAIN=local
# Sat, 19 Sep 2026 03:16:04 GMT
ENV GOPATH=/go
# Sat, 19 Sep 2026 03:16:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 03:16:04 GMT
COPY /target/ / # buildkit
# Sat, 19 Sep 2026 03:16:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sat, 19 Sep 2026 03:16:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef8e3c04f871b1b16e9e51e8bd832c4d6c6367991bf2fb4fa68e1ada0e92f4d`  
		Last Modified: Sat, 19 Sep 2026 00:49:43 GMT  
		Size: 24.9 MB (24889211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5707b21c933ac81a1325c7daf018024e4ba50850e560f2913144ce64343b9d3b`  
		Last Modified: Sat, 19 Sep 2026 01:35:29 GMT  
		Size: 66.3 MB (66257299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82513c9fdd7a3332a530754cc3212c3cd7b0f89de85d379df7a20cfb5b9f7cb4`  
		Last Modified: Sat, 19 Sep 2026 03:16:34 GMT  
		Size: 90.0 MB (89991266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674ba6bfdf2c64013eea230b964b8c691dae63c1096886f4d77b5a6042ef67ab`  
		Last Modified: Tue, 15 Sep 2026 22:23:26 GMT  
		Size: 103.4 MB (103375443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a829678b3cbcf061ed75430c470b43a6ec6e24661742d0874059f39ac12e3b8`  
		Last Modified: Sat, 19 Sep 2026 03:16:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:8017b676dc7d68111d19ab9ab941d7ca31a10bfb9fcde490e723861daf15da39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a39a5c40e72a39ba38819a380192d9d5f545eb637c53300c53f4de8f385c36b`

```dockerfile
```

-	Layers:
	-	`sha256:5e7c81465f45a891e9f7035c3541da556e288507f465266d3a35623b8e516d75`  
		Last Modified: Sat, 19 Sep 2026 03:16:32 GMT  
		Size: 10.5 MB (10482669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27f7b39e577deebece5b39728f21712ea10911489f35daaaf813369c61188be7`  
		Last Modified: Sat, 19 Sep 2026 03:16:31 GMT  
		Size: 28.1 KB (28068 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:e0967d29b562b8b992432d32476cabe0ae0f895ad567774eee944ef53d9d0721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340438403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241dd63dbf9db17b230ff18f084598438d096cecfd6c7752444b403c07c1bf9f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 20:05:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOTOOLCHAIN=local
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOPATH=/go
# Wed, 16 Sep 2026 02:38:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 02:38:44 GMT
COPY /target/ / # buildkit
# Wed, 16 Sep 2026 02:42:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 16 Sep 2026 02:42:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab97d6c86c4c9d046b724863206ba218be9b417cddc31a614c2878f576cc609c`  
		Last Modified: Mon, 31 Aug 2026 20:08:50 GMT  
		Size: 90.5 MB (90543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ceb2c9618f01c240dc561b5c26ab7c2feab790a9451333a05b4a24f478c5ec`  
		Last Modified: Wed, 16 Sep 2026 02:40:01 GMT  
		Size: 102.0 MB (101993636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5aac45e6ed053121bf0a96639b97e6cc7d17533414cbe945806c8cb4fadc45`  
		Last Modified: Wed, 16 Sep 2026 02:43:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:04e1ac2d9c49a7ff1910984a986770e42739bbc195f2cb493a47b2d766f21999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37326563e0484a91958795585c0d2bbd1778a5e4629930ba0f13d61faa2e1863`

```dockerfile
```

-	Layers:
	-	`sha256:9b1b6f91c548c896a9a608968e11e0ec86d7dae0218c8d6d540413168e6bdb67`  
		Last Modified: Wed, 16 Sep 2026 02:43:14 GMT  
		Size: 10.5 MB (10476316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d07ec500d6f1eb21aba5d268fb2ea3d9afa6fc5e478e46a1edaba416d9f3195d`  
		Last Modified: Wed, 16 Sep 2026 02:43:14 GMT  
		Size: 28.1 KB (28148 bytes)  
		MIME: application/vnd.in-toto+json
