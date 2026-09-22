## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:835994ab54cf8e1fad3829bc356441c6c90f3781d1c14e6d66227e23f2841684
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

### `golang:tip-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:6c6d1eaa9f0df7ec954ca113fd3a78c7ffdc1800edb671356ef7ddf509666d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.9 MB (334922605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8281e8c0a70abfef3040968cabed744d94d47f3565fa4dd55b70c405d51db3e4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:26:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:28:12 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:28:12 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:28:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:28:12 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:28:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:28:15 GMT
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
	-	`sha256:ac115e8a3c5cb1d7a50a8d4c92ac215dcdd5d318f684031d6c9b2f43e437d55a`  
		Last Modified: Tue, 22 Sep 2026 18:28:42 GMT  
		Size: 92.6 MB (92575834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2a3c1e67403e8ea59ff8dfb66f8fefe8f254e9f8881c0f25465bc655250617`  
		Last Modified: Tue, 22 Sep 2026 18:27:48 GMT  
		Size: 105.4 MB (105362824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62939cebb5c640249b8f80887c733296d7e43e5ea2d5841436a4d889ab71e6e1`  
		Last Modified: Tue, 22 Sep 2026 18:28:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:8ae712c9648cccc4dabd420c86fdf5d70668b0872367baf6759dc4e7ca8d160a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10531192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b03a01908bb5451cb5b521a77f77e5acd552196c1f4e26197174ffa511fa2e7`

```dockerfile
```

-	Layers:
	-	`sha256:3560d3ab7d74ca0a8f81f8739b2448b1b188e0b41cc9939fed88b66f98dc2f60`  
		Last Modified: Tue, 22 Sep 2026 18:28:40 GMT  
		Size: 10.5 MB (10503090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17f5e7e8e53bd6e96b4a0af16b97310e6248e711d78a9cbaa548800a29b89d4a`  
		Last Modified: Tue, 22 Sep 2026 18:28:39 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:ac78efc356446d36abe967e7e7d557819ce97c9821954db939a1f890ff6a60e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.5 MB (293489031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f3d0a6d8fc8f31c1ea7a41bf6453c77f0e8bacb0072ee7243a558e267c1652`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:27:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:26:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:27:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:28:34 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:28:34 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:28:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:28:34 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:28:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:28:37 GMT
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
	-	`sha256:67d4e64954f9e916a9b9922a81734d90f9e36a5130c5b4c498ccc831923566e9`  
		Last Modified: Tue, 22 Sep 2026 18:29:04 GMT  
		Size: 66.4 MB (66426437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2594fec72c274abdbe5fd8210c1dcaa3280face8fddb9c0eb3ed407fe446637a`  
		Last Modified: Tue, 22 Sep 2026 18:29:03 GMT  
		Size: 101.2 MB (101239393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0ffd2df09ca060c590adec83533846559979540fecccfb00140451ce04838a`  
		Last Modified: Tue, 22 Sep 2026 18:29:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:84ac06fa1a416254b7996b9d75029566325466dc551c8f716a81cf64bb819362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10337998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e811064be0fb2a6b8f9fb64f8ecbe11ee592039485d356cc631a0886c36900`

```dockerfile
```

-	Layers:
	-	`sha256:48163db3f8de97849324a2f39d47e1cb33175b2207acd81a5a7e72003f1484bf`  
		Last Modified: Tue, 22 Sep 2026 18:29:01 GMT  
		Size: 10.3 MB (10309784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:368299b9209ee33802bc261ddc8814421d8f1e518bcc68a0fce062ed40a3df76`  
		Last Modified: Tue, 22 Sep 2026 18:29:01 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:13943c09b0f67c72eee3eecbc4d178f8e87abf5ade31facca6aa3fa16c0e02e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.8 MB (322830279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9475ed13f8ed694e81185daba3200a17ff115b43a143ad8469778652f7be9853`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:26:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:27:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:27:35 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:27:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:27:35 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:27:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:27:39 GMT
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
	-	`sha256:d246c0fad7eb127421395bfd016161e9847c0c2401edbba1ebef8f6c1755b03f`  
		Last Modified: Tue, 22 Sep 2026 18:28:06 GMT  
		Size: 86.6 MB (86641978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c144e38cf7ccfd8bb72ace03340f27e2482b99ba6853dbdd5d404ea1f43670fe`  
		Last Modified: Tue, 22 Sep 2026 18:27:14 GMT  
		Size: 99.7 MB (99670404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0aa956f73b4ba62b0fbea44792f739f0c7447478c2087b711bf3b45848973dd`  
		Last Modified: Tue, 22 Sep 2026 18:28:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:8df71d9878a7e9efd5cec1dc661fc36546dd6bd533cf18a1445a3c1907cfaaeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10559147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d432dab9308ac877b7d97751164d04917287b9ad7e7285d59c6940c116d2f9`

```dockerfile
```

-	Layers:
	-	`sha256:a6f2a8c1f7a56567d1a621ac8dda6be4518fa27d3da38dfe9b3d6bbefa92424c`  
		Last Modified: Tue, 22 Sep 2026 18:28:04 GMT  
		Size: 10.5 MB (10530914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7723bd0076bd6a100ae0cb048f12f1241e2a471323f1393470de8ccb000f8a0e`  
		Last Modified: Tue, 22 Sep 2026 18:28:03 GMT  
		Size: 28.2 KB (28233 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:8b1ce6cc6ea82319d3e3bbf3099464ff1c85e679964e1071dd05b20b49937bb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333940420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e67309b2c78e9b7cad2cc0fc6e21e37ee10bb1cb7abe8cd023c85c37f06ce2b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:35:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:26:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:28:23 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:28:23 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:28:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:28:23 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:28:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:28:26 GMT
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
	-	`sha256:cc1014737412937addb4ac69b57c5cfe188992c60196209a90b96fd0092b1985`  
		Last Modified: Tue, 22 Sep 2026 18:28:52 GMT  
		Size: 90.0 MB (89991168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a59a96cb04c952ad5d49882f36043709a09e4eb2b1b32a1358cc20c369b7122`  
		Last Modified: Tue, 22 Sep 2026 18:27:58 GMT  
		Size: 103.3 MB (103311180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd7a7191490f143b34d2fe007b7b365f77f96c8fd58bd130e8cf6920bc9f757`  
		Last Modified: Tue, 22 Sep 2026 18:28:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:94a84b55b073607ae5c57bd2ce21af3575b6e229f5c422958c32c023422df2cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6e11a3b14cb0d0e0e05826d52fe7d919e02a9f2da361f0b24e7a9f8aed1e70`

```dockerfile
```

-	Layers:
	-	`sha256:9e3004022fd3c37b6703287a6a7a66d111df8063e9218578735ce7e26f3f06aa`  
		Last Modified: Tue, 22 Sep 2026 18:28:50 GMT  
		Size: 10.5 MB (10482669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03bd9c8d9cb12029e87e38ff73598e04b2fd568d0bd93b029d30332d573da69c`  
		Last Modified: Tue, 22 Sep 2026 18:28:50 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:b987f3516ebf65a66bf077e68e900060e4de9efd70e31b099fc5415bbe3a999f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340367031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c3a02246353268df339601c234eed597e0ab2d7d955b2715786c2d37e4be55`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 03:15:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 09:05:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:27:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 22 Sep 2026 18:26:51 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:26:51 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:26:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:26:51 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:27:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:27:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e9f3363ace736c21292a425cd627663814b1275272b7cf79f502454af1cac`  
		Last Modified: Sat, 19 Sep 2026 03:16:20 GMT  
		Size: 25.7 MB (25703264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb8363b45637c8da3b7da1113159dbb24fb241a976701cf530477d2ae974472`  
		Last Modified: Sat, 19 Sep 2026 09:06:01 GMT  
		Size: 69.8 MB (69849171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4301c1aba18bb0c47d58fb4be104ffc232141a646325408a1ded5e859374cca6`  
		Last Modified: Tue, 22 Sep 2026 18:28:01 GMT  
		Size: 90.6 MB (90577906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf5065b0a443b25220e866e886b20470bf7bbbb219c2fec2f97a7f7a28c0691`  
		Last Modified: Tue, 22 Sep 2026 18:28:01 GMT  
		Size: 101.9 MB (101887227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08deff53e64e72c11940e925ad30ea5db6edd14b71aa6af01a53888ba15cc7b8`  
		Last Modified: Tue, 22 Sep 2026 18:27:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:0b59009536fa096ea5a4820b47b117067913bbffcf5d4f889012074c901f7506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10503549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425bcd2ff0ec379c55f3a06305d1a133441727584181159b6098b40f5c50bb33`

```dockerfile
```

-	Layers:
	-	`sha256:3f94b62a0ef46f5e6e2bfce707321e752016362899eb071a6af9ffdeff2cd9ed`  
		Last Modified: Tue, 22 Sep 2026 18:27:57 GMT  
		Size: 10.5 MB (10475575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f74ca9337ca34e9b50dd0125762e592eeb8252450ee738fd15ca6d127a0f011`  
		Last Modified: Tue, 22 Sep 2026 18:27:57 GMT  
		Size: 28.0 KB (27974 bytes)  
		MIME: application/vnd.in-toto+json
