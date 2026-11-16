## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:cf9e95a8b875510a3a17ed77612209fcddd850fd3bb379116e7ed0dd1e7fa279
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
$ docker pull golang@sha256:292665460da8aaf9dc3ca5e5ba6f9951c9d7d368b760b0a3c037770c9a34ea0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334812584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ac3fc4ec0c58322af928f05e5dafa8fb7b4aded5ee995cf50aee97a02f4db4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:02:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:03:52 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 20:03:52 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 20:03:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:03:52 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 20:03:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 20:03:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822d6d03654c81fd755842f042c7edf40626daea39e97dfc62cd496bde67bde4`  
		Last Modified: Mon, 16 Nov 2026 20:04:22 GMT  
		Size: 92.7 MB (92679123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad85a89f87fc149936abff9320ce12e5276df7e3e0b9baf1d1634a8964fe99fa`  
		Last Modified: Mon, 16 Nov 2026 20:04:06 GMT  
		Size: 105.3 MB (105300982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:504c572d475fa4a9a70c8a9c9d162ecb7137f91c7c081224c05e631dc4791a81`  
		Last Modified: Mon, 16 Nov 2026 20:04:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:be893afa15d0d96bd850c8a4a1b1c24b501e7394f03d5bacf0b1778448dcf8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10529175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fa7caafebd3d4c995184403de69407fe6d75139d762f3b36e9451d1b22bb05`

```dockerfile
```

-	Layers:
	-	`sha256:4c94a6c049c2ff007ff4ffdfe32bb6cb813fc8c7e0add47a09c48c4f1c8c2342`  
		Last Modified: Mon, 16 Nov 2026 20:04:20 GMT  
		Size: 10.5 MB (10501073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bff1df3013f69587c1fcec74f918945f9204dc1fec7480c56bc62ca857d654a`  
		Last Modified: Mon, 16 Nov 2026 20:04:19 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:219ab6443bc90e279d17a4fe1902ed89a6e6648f62ae8914315d45c57f55c88d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293631905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b6f16833023f0946b8fb3745993e4217ba5e7a57452734f13be9b4b9340d175`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:23:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:47:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:48:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:36 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:36 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50deba4733467d14fa01e8bfb1524dd99d6586f87bd64d8d193d5c9fae44d49e`  
		Last Modified: Thu, 05 Nov 2026 09:23:44 GMT  
		Size: 59.7 MB (59697462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdb3ca2438424af22cf596cb5eac55c797b8a467ee3f1e168aa70045a85c2ee0`  
		Last Modified: Mon, 16 Nov 2026 19:49:04 GMT  
		Size: 66.5 MB (66532328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0682325f35574741c2b46338269a06687f5ff9e31a5f02cab62501cd269ece`  
		Last Modified: Mon, 16 Nov 2026 19:48:51 GMT  
		Size: 101.4 MB (101408869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a323f0b395d7f834b8449be7e0f3948d6fb905c972fbb88f046749fb652f10`  
		Last Modified: Mon, 16 Nov 2026 19:48:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:1f9f20d5a13fc79840b6a539836f38085c3995c12b6820fcecaed5c226911ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10335981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d63ecc36245f3a51301be5595052dec2588a43efe5d61f8f731b9317d9210b0`

```dockerfile
```

-	Layers:
	-	`sha256:073dc847a97c18b55f4d7243bf86a8787648ea5a5863e62277b3a3ec4ecde4d2`  
		Last Modified: Mon, 16 Nov 2026 19:49:02 GMT  
		Size: 10.3 MB (10307767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2d34de08500c04f0af9570d74b06659a2df7366244f80bfb300e69f2b816b56`  
		Last Modified: Mon, 16 Nov 2026 19:49:02 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:467b6ae53c3b0f0f2a5e8654aec1d068a196e9adb8ae0e703055d5619e32c69a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.8 MB (322831882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a511fd6b2398018beecc83f3083737d5a7b0e26835fad3a8f72609e3bb132f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:47:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:48:16 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:48:16 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:48:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:48:16 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:48:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:48:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8438374286386730a0226021ce50e1decd4a1368cf338165a672601ef340a673`  
		Last Modified: Mon, 16 Nov 2026 19:48:45 GMT  
		Size: 86.7 MB (86749225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2987a923307e8bb085d010c49e21c6802ab42ee36a1373237f3317b5e0604ed0`  
		Last Modified: Mon, 16 Nov 2026 19:48:27 GMT  
		Size: 99.7 MB (99700922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f6770c7ea74ce7d3fdfc070e55a1bf7659d78641e426089f2b38fcb0a68eee`  
		Last Modified: Mon, 16 Nov 2026 19:48:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:935f0207af5841c539d327afe4bc39d45f0a8ce7efde7f3764071fa861559f7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10557131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df875a7ada1df5aa4f38653fb8de2198334075739317185128069bb79917109f`

```dockerfile
```

-	Layers:
	-	`sha256:236e7d1eac3c9f61de20010741c4293b9d84b856e7480521c45b45bda27568d5`  
		Last Modified: Mon, 16 Nov 2026 19:48:43 GMT  
		Size: 10.5 MB (10528897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5ff6ecb0124cf4e7f90e549b35fd810100afaf0c90e8a7a68833d4bee48acb4`  
		Last Modified: Mon, 16 Nov 2026 19:48:43 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:e8c1c0bed2b583e3a49a6dd7a76d649bc19137619ee34f48ba474be221944581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333839779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74e658ae8e2eb3bf4f8dd808d10b1cbcac65f4f872a380721c8c60661017d235`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:24:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:48:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:49:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 19:49:26 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 19:49:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:49:26 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 19:49:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 19:49:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be98d36659ede814751c7330e91612ca4d73d055912e94b9a90e6adfc1eb30b`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 24.7 MB (24703903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2dca7ecb6f0d6c1c3297d7e97569ff07eaf0a74e8949b12aa33e39b2fee126`  
		Last Modified: Thu, 05 Nov 2026 08:24:39 GMT  
		Size: 66.3 MB (66277351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742f1207fd3e84d2e31c03703fba1806dfe3892eacd208bb291c44ab50e111e3`  
		Last Modified: Mon, 16 Nov 2026 19:49:55 GMT  
		Size: 90.1 MB (90099958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68753a5ee6310f665de8b43bde628a2a60c5be6510cc4d63d8f7a5872ff51b5b`  
		Last Modified: Mon, 16 Nov 2026 19:49:15 GMT  
		Size: 103.2 MB (103242718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08824c0e8d209056267becfb90e72b81233aca3ac84e66a3265e2740de232a1`  
		Last Modified: Mon, 16 Nov 2026 19:49:53 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:4bcb5c48c4289e3ecc8b55df733367b018bddeda1a73ffdfe3ffc61f402c5e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10508722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18de9604bb0665836fc9a12a62dac5474cc80d3f9df2aeb65ace6140ebeb07e`

```dockerfile
```

-	Layers:
	-	`sha256:29f5ebac32da52a8d62023a463989fe19d0737f391da0148d3a7713f0df686c9`  
		Last Modified: Mon, 16 Nov 2026 19:49:53 GMT  
		Size: 10.5 MB (10480653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dec15060b2277d9db65ea65c0c7f9ce2ee37f5a81985c9bf5a2927d6505ee4c1`  
		Last Modified: Mon, 16 Nov 2026 19:49:53 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:ee1982b798556a3efe0b5a4d01329c363f7143a856c01477644f062f2e6606c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340413726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d6a6927d293a0a7491f2e646400ccbb9c703b05b88f00c29c6331f9b7850b9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 10:07:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 17:24:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 20:53:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 20:18:47 GMT
ENV GOTOOLCHAIN=local
# Mon, 16 Nov 2026 20:18:47 GMT
ENV GOPATH=/go
# Mon, 16 Nov 2026 20:18:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:18:47 GMT
COPY /target/ / # buildkit
# Mon, 16 Nov 2026 20:19:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 16 Nov 2026 20:19:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ffec0873fe14b6e584873c80e384c7a988558ed670b69a2083f4a9eff8ef04`  
		Last Modified: Thu, 05 Nov 2026 10:08:16 GMT  
		Size: 25.5 MB (25515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f86862ce2795897774b132f3a86834590ad3758900c8ec8c600b44058ae52`  
		Last Modified: Thu, 05 Nov 2026 17:25:45 GMT  
		Size: 69.9 MB (69899279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0334c8eab0af713da215ae81530f60418c80743a6f42455e075aac10b9855a`  
		Last Modified: Thu, 05 Nov 2026 20:54:39 GMT  
		Size: 90.6 MB (90623054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f5395f83e6cd48331cd9ec5843ef191fbe2946bb645580c1e8235aa95b7bb1`  
		Last Modified: Mon, 16 Nov 2026 20:20:10 GMT  
		Size: 102.0 MB (102007441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441081feeb50f1acbf362208a870674dfe68d6f997403206cc8b60edc95b975`  
		Last Modified: Mon, 16 Nov 2026 20:20:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:e9582dd47853677bf5843232c2f7dd5b5473d32e363b773ced2c0531101033c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10501530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebe36550156e001b9d708afc9659800ba09ba3387582da4eaee091ea984ab4b`

```dockerfile
```

-	Layers:
	-	`sha256:4f1d4b1c9c1314287243cd3f70580c6f35b893cdf44561b56b7cf6a2c1ac8143`  
		Last Modified: Mon, 16 Nov 2026 20:20:07 GMT  
		Size: 10.5 MB (10473556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14755b7bf0b04c4792dc1e48f5484eef746ff518e333307d938d47a1bf42d2b4`  
		Last Modified: Mon, 16 Nov 2026 20:20:07 GMT  
		Size: 28.0 KB (27974 bytes)  
		MIME: application/vnd.in-toto+json
