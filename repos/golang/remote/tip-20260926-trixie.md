## `golang:tip-20260926-trixie`

```console
$ docker pull golang@sha256:53e62876753b114dacb154786637115d9831ec67dd7374a0ffc32cbc48a86174
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

### `golang:tip-20260926-trixie` - linux; amd64

```console
$ docker pull golang@sha256:457ee32365315b4f360874d3481c9d7f91f01be6773061f0c0be379b4be94237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350442481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3469d798cbbb0e3cb577406991aa39c4491bd3eaa68efa7a3d8a882b6f561e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 17:54:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 17:55:24 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:55:24 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:55:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:55:24 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:55:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:55:27 GMT
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
	-	`sha256:504b8a9af2746482c32c5d23035ca91acd73f4080709e5797acf9ff481554bf6`  
		Last Modified: Tue, 29 Sep 2026 17:55:54 GMT  
		Size: 102.4 MB (102413223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0999eb6622672afabcfc473ab64fbbae45e06ec398e000d9469d723fe2f8fc34`  
		Last Modified: Tue, 29 Sep 2026 17:55:32 GMT  
		Size: 105.2 MB (105201841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bce5fa8334303cf6d98479bcf9fe560d9647036e56ff3672f30d60693885cd6`  
		Last Modified: Tue, 29 Sep 2026 17:55:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260926-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:85631024076f9bb6b7a00a7e3c06d8b52477dda1ba23acf8f7a46e73b161ce93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10826200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f449a033a7e1bc4fb9baa77ff2b8ea7e9dcf635cbed357d18d124750863d7139`

```dockerfile
```

-	Layers:
	-	`sha256:e87eaf7014e348160e106d6d88b5f77cd7be4bcdf3ae50e759145791e2350274`  
		Last Modified: Tue, 29 Sep 2026 17:55:52 GMT  
		Size: 10.8 MB (10797516 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec11405415645f10d437a34e5c23faeed9f71bfd0d8523e1c41da23285aea519`  
		Last Modified: Tue, 29 Sep 2026 17:55:52 GMT  
		Size: 28.7 KB (28684 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260926-trixie` - linux; arm variant v7

```console
$ docker pull golang@sha256:001ed6374a73bb96ce79f95365dab148fbe66d06adff2a903ae39e2a534eb761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.3 MB (306272362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49489fdc228ee492ebcbb6c0a19ca91b512d7b59f660d4749b9455214c6368c6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:28:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:26:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 17:52:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 17:54:20 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:54:20 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:54:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:54:20 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:54:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:54:23 GMT
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
	-	`sha256:744be81a9e2e4bfb4eb03cda3540aa0999c40a0f0423132d4682a8ed0c694231`  
		Last Modified: Tue, 29 Sep 2026 17:54:50 GMT  
		Size: 73.0 MB (73049896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5834c2eea1c38cb14eb938262093caf670b377df50d3011c148b6338e7be6374`  
		Last Modified: Tue, 29 Sep 2026 17:54:51 GMT  
		Size: 101.0 MB (101023725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fcb031c963cc2f1544d65d5b2b9a0be8ed2d201e48ceb076189d44ece61e91`  
		Last Modified: Tue, 29 Sep 2026 17:54:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260926-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:7e5193b1cdbb2cc3994184f5345a4e4069f4cfa1b3392a1ae6d6d5e81358fb47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10622209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9960b2ad1f93b97eb51740e8b3e586e161e340469c8c2dcca62c54ff3ce6e21f`

```dockerfile
```

-	Layers:
	-	`sha256:0ccf852edb7da5129eb458b0ac1d71bc7327f70d7cd7d5a6675d9d56364c8572`  
		Last Modified: Tue, 29 Sep 2026 17:54:48 GMT  
		Size: 10.6 MB (10593404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7df8e88bbc48494b7b946fa858524b4686b97ffc44464942c05143bfe116353`  
		Last Modified: Tue, 29 Sep 2026 17:54:47 GMT  
		Size: 28.8 KB (28805 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260926-trixie` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:95f4a1c40285d12d8d07a3d637ea7b1443cbf8760114b4ab2259650293ae4e74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.5 MB (340497417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e4985b12b7ab91ae565282510f6d44116286671009f8db96482243094153ab`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 17:53:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 17:54:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:54:35 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:54:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:54:35 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:54:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:54:38 GMT
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
	-	`sha256:6c0cfa3d9b1d554aa52383ee6878d2a022faa43e6ebd5543000ef663aa580e21`  
		Last Modified: Tue, 29 Sep 2026 17:55:05 GMT  
		Size: 98.6 MB (98559794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407976649a33cee308503d4aa90a9d7d2d8c1f82dfaafc0b1053bffbd192236d`  
		Last Modified: Tue, 29 Sep 2026 17:54:56 GMT  
		Size: 99.5 MB (99527409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec3148dfd09f671e52ca18ef8df97ebeaf80bff2edeb8aa1acd4fe3a4d0c007`  
		Last Modified: Tue, 29 Sep 2026 17:54:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260926-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:a74559c246402e19936360c39a92c86543d75e35bd886f58e2bc129c4b4d28ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10946171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9771edfa575c8341224b3e7e34396fe53393a2d33364346a4443a1475f887bf`

```dockerfile
```

-	Layers:
	-	`sha256:06d6a08a0239e220dc22a2426415e70abdec74942c9c2dc79c95242c6fcdc7af`  
		Last Modified: Tue, 29 Sep 2026 17:55:03 GMT  
		Size: 10.9 MB (10917335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e97b970dc5573de0a83080c0138f941d5eab761425c0c36c7d05ff5ca4327df2`  
		Last Modified: Tue, 29 Sep 2026 17:55:02 GMT  
		Size: 28.8 KB (28836 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260926-trixie` - linux; 386

```console
$ docker pull golang@sha256:b7a3f49c1c101f215b51893225c7c35eda5839f893aafabb6ed0a524eb8d64d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.4 MB (351401631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf7290b2297a83727c12a2e984e80473b8e6521bc28d62c055ee69aa17f94b4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 17:51:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 17:53:21 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:53:21 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:53:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:53:21 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:53:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:53:24 GMT
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
	-	`sha256:9b41908233754596d7c10244a664f2b22b9b4e332d673092a90967b00acbb13f`  
		Last Modified: Tue, 29 Sep 2026 17:53:53 GMT  
		Size: 100.9 MB (100853096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d967aeb0675415130bbadac4f1c1ac365c9f4ede4e374f1f087f7b4cecd6f6cc`  
		Last Modified: Tue, 29 Sep 2026 17:53:53 GMT  
		Size: 103.0 MB (103005584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0efc86791ac208c23a1c477894f77c39c4a8c7ed7af839b7e16ed38921e172e`  
		Last Modified: Tue, 29 Sep 2026 17:53:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260926-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:df31257b72090e96dcf521f69bf7d2ce1fc3eff0b656018dc0b55e962c6fe6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10797419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf1ef889abbb0e652c6dfe3e10b8f614436df3f4e2eb375dbfa82b30c321a7a`

```dockerfile
```

-	Layers:
	-	`sha256:16d9489407146b0bd3e90481f2e68536ea97d34cf38d0429b63b47c5d7b6775c`  
		Last Modified: Tue, 29 Sep 2026 17:53:49 GMT  
		Size: 10.8 MB (10768777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a59ca2d71a5f178c9af5645adb39943253496a192805b1af5f8e823a353a65`  
		Last Modified: Tue, 29 Sep 2026 17:53:48 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260926-trixie` - linux; ppc64le

```console
$ docker pull golang@sha256:6657712a084aaccf71edf793b9792d2637690aa4f9f0cac9d0658ba8766d0b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348134665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c77acfbd32471cc12cf201cdb692d6cfa69e236958ca5e2e74653954f86dd4d`
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
# Tue, 29 Sep 2026 18:10:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 18:10:06 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 18:10:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 18:10:06 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 18:11:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 18:11:05 GMT
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
	-	`sha256:6f9dfcea9dbd54abdf4735c588b655a34ab5b353623c6254a20d02eaf7a19455`  
		Last Modified: Tue, 29 Sep 2026 18:12:17 GMT  
		Size: 101.7 MB (101712437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa3098bfb7ce2e3538488236568ad6e30e8d7261110b816b6f28febbfb2158d`  
		Last Modified: Tue, 29 Sep 2026 18:12:19 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260926-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:7a858d491a8ba00ffa2405e94143413dfa0bd407276efb55972bbc7e681f11fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10821870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7126c108b5c0417e6b73b5d7210009ad7eeb7e83d910bcd961ee8743c025438d`

```dockerfile
```

-	Layers:
	-	`sha256:e570da101e449a72da099681b590ef4244a7100049fbc7eba83807ab30d17277`  
		Last Modified: Tue, 29 Sep 2026 18:12:20 GMT  
		Size: 10.8 MB (10793307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ef18e25fc4830c14a7b43635111ebd825df0af56e1a6dde8bcbd5e2817d2277`  
		Last Modified: Tue, 29 Sep 2026 18:12:19 GMT  
		Size: 28.6 KB (28563 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260926-trixie` - linux; riscv64

```console
$ docker pull golang@sha256:59b6e2d6312e2fdccc1036562f22a4f7a4d4a7a8f69ed3ecdeca0842f72dd0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.6 MB (373642140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1584b65b23d772a69a98442c35a59f5d2d862f69ec98ef1f23422631592572`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 23:42:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 00:23:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 30 Sep 2026 06:48:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 19:33:40 GMT
ENV GOTOOLCHAIN=local
# Thu, 01 Oct 2026 19:33:40 GMT
ENV GOPATH=/go
# Thu, 01 Oct 2026 19:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 19:33:40 GMT
COPY /target/ / # buildkit
# Thu, 01 Oct 2026 19:33:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 01 Oct 2026 19:34:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b576f41196ce391ebaeeb058ed0bf8ef716528b15a0986154f91cf04d5b72aea`  
		Last Modified: Sat, 19 Sep 2026 04:07:24 GMT  
		Size: 47.9 MB (47866994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719a46bffab9fce37ab8764ddc4a0df7902b9a552542a9a0b30211b8ecfd8e11`  
		Last Modified: Thu, 24 Sep 2026 23:44:16 GMT  
		Size: 25.0 MB (24972374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1f71bb791d26a4189c3a956df1abf3f0a0d661ce0d2e3143516a36ad6b66e6`  
		Last Modified: Tue, 29 Sep 2026 00:27:17 GMT  
		Size: 66.7 MB (66705357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf353757a3c02e82ebc2429f87b2b595cc306b3e16d394ff76ac310d50923631`  
		Last Modified: Wed, 30 Sep 2026 06:56:51 GMT  
		Size: 131.9 MB (131885599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f952667ce7d4fa0b42af84acc0ebd694f60fabe2a8c17c0b63b181ed368fef8`  
		Last Modified: Thu, 01 Oct 2026 19:41:07 GMT  
		Size: 102.2 MB (102211657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede492106c89fbf826cc3c07988f9cc4b4ba73675b5acaa724d8f2733426b463`  
		Last Modified: Thu, 01 Oct 2026 19:40:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260926-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:3c0ffde96bc78511979351c675080cc54f6f4ebe4b962fbf0c43df4431a4b7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10895879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67f5f02ab2e37b85ef578c75b5a26c749533f671e72503a820eefa710fb8fce`

```dockerfile
```

-	Layers:
	-	`sha256:1c50dc3d5b3262d6c6061bcb113213ae6a8dd9d42baf56deabc1a496b62b2c8d`  
		Last Modified: Thu, 01 Oct 2026 19:40:54 GMT  
		Size: 10.9 MB (10867136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e3f44121412a67f3afd6bbfc033f654bd8ee8a2febc288c589fb9384ccd38f3`  
		Last Modified: Thu, 01 Oct 2026 19:40:50 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260926-trixie` - linux; s390x

```console
$ docker pull golang@sha256:14b2777efa5f7812466dca61489f033b70a2fb96081a871ae9e64aa427f21d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324902793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3c0c289338bbb441e9d078cf2667354cfee7f8c31eca866c15d7dde1735280`
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
# Tue, 29 Sep 2026 17:56:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 17:56:25 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 17:56:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 17:56:25 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 17:56:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 17:56:27 GMT
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
	-	`sha256:72239ae676da5bc196c54f187b5dd0a2e3bff0d5dd9ae170b48504f6369b5c2f`  
		Last Modified: Tue, 29 Sep 2026 17:56:01 GMT  
		Size: 103.8 MB (103755533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b215c1f4ada870b115598ab23d138d2df441149be3bcd72147dd3eebf98e78`  
		Last Modified: Tue, 29 Sep 2026 17:57:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260926-trixie` - unknown; unknown

```console
$ docker pull golang@sha256:709cca74d562e24ddb45479ef4f432fec771700d6a543e4e9029561af82353ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10637343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee49076b71e9ed246edcb8f4b44aa649e7408836e0b9ad15c5f7bde98b2e8cf`

```dockerfile
```

-	Layers:
	-	`sha256:c7990c61805d197cedbd2ed24f1c38caebaca698f71511ac5525d8d6f46bdc87`  
		Last Modified: Tue, 29 Sep 2026 17:57:05 GMT  
		Size: 10.6 MB (10608663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:156bc57f8e32d8fe22ad47fab2d8732050f36b7e764a79e6740caa0f0c6daa1b`  
		Last Modified: Tue, 29 Sep 2026 17:57:05 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
