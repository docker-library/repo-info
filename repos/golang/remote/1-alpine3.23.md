## `golang:1-alpine3.23`

```console
$ docker pull golang@sha256:622e56dbc11a8cfe87cafa2331e9a201877271cbff918af53d3be315f3da88cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `golang:1-alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:73f9732658b30852522ee5ebe698daa27e1829add9a70ff4f4a828409f8d0a99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71378037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d50a70a238292248d422b8627e855f137b001ac5fbc53ad6a2e53d5323e1db1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:11:37 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:44 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:44 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:44 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:44 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb326bc0efa9ff309c916827f5657f7c3ea9412159ddc640fd492436c5684613`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 245.1 KB (245065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea3d467f844b8e6fffc2d7793807a1ec9e3a0582655418c1c17013372a3a910`  
		Last Modified: Tue, 07 Jul 2026 22:12:02 GMT  
		Size: 67.3 MB (67288392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87c970de4824d13a2c90eeb4914276b7f577d520b7a89db4630167e47fcda62`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:4575f02d92353f93f0e46f35409641e004a24ebc353a1dc90b58fea96cbb7399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3078691c3ba92bf732955531fbf3438e9288e859c229398eae271548027a05b`

```dockerfile
```

-	Layers:
	-	`sha256:8588380cb72c1291cf442ba60239f6638fdf8217f93b34604ec4f3c75f1f030e`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 177.0 KB (176956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adc43889a5c89a2fedc4e4b47f1cd5964f207f4c5b7bc89f7d803d64db6fa175`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 24.8 KB (24807 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:15703d451d7e5ea574a3bc66c383a6d70ccdd412c1ea12ce546f63400e24f0c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69610595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175ca3d2a47682678b245241cbefdb563e9e7192c1639e32420545724e2444bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:11:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:37 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:37 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:37 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:37 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4841d5ca5cf2b1e38a3ac33b8cd8c6b5f3aae3cc494e9f48f00491b7396ceb9`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 246.2 KB (246157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003f4ea07f7de8a847f56c7629b6e0b13e0de4150729c6eab1d61123660df36f`  
		Last Modified: Tue, 07 Jul 2026 22:11:31 GMT  
		Size: 65.8 MB (65811684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25636db4e1671dc33e72dd188136f911368694836bd748a72e9150af7aded82b`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:654e60c196576607d5c4d8e435ea1f837e531ba87740cd4f40769493cfdff98d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 KB (24698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdf710477fb6a9f355616aeb993085bf6e4100bc38de7c181b17d401e1a7027`

```dockerfile
```

-	Layers:
	-	`sha256:c90db6c907dae4bff0a2c1d89c44ba205a3c2d8d6c0e15736ae2befbef1f0ef1`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 24.7 KB (24698 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:039658b7adb895d42d9d2f2fe07ba4bc90c6bb8d86fc8b2570a3dd04359fc4d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.3 MB (69318828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1164ccb4a4eb952f919173f78b9822e75ba20952a6592e30b8197f2c17d44350`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:11:50 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:59 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:59 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:59 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:12:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:12:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9554119cca3a78f0cbd2208844d848840039378658907549730921e1bd4a360e`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 245.1 KB (245139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d9454c8d863c76d3a284f97c400d521e643fafb60e60664dbeea8c2a1719dd`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 65.8 MB (65811677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b610de1d05b7d4391a592df2e757decb81c69b5faef373da23fea2caf8cfb6`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:27b919b22c6b920896c8078453a2dcf3d6dcd9af9adaa273754a22b673210ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 KB (201239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5510241f921f4667f6376f547237a414e994730ba6fcbcecc0692911de15eca`

```dockerfile
```

-	Layers:
	-	`sha256:08a2adb8dd0282c9195aa6d38d964c6f85208b05d884373c6c4552c9b7d2e6e8`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 176.3 KB (176326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fb61ef336444c05e1a2b5a31493702f2b72eae609e54aa43b13a81ef36c3693`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 24.9 KB (24913 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:b2ea5a645393e07321932e68da92e086ae55e6afa555d0e631ef33e8ac981009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68606759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d92e05aea7b202c37eae7e539ff0a9952646f19ca8f2cfc523bf49c8e679399`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:12:03 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:12:11 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:11 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:11 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:11 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:12:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:12:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf4e9506b0cd90f2a35302b25dce6e92a631fcc0a5fcdf15ca0561fcb6d48627`  
		Last Modified: Tue, 07 Jul 2026 22:12:27 GMT  
		Size: 247.5 KB (247499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d5c89bdd324edeb5721c09064e2659473bba39ae9d84fae53c9cc0181cf15`  
		Last Modified: Tue, 07 Jul 2026 22:11:56 GMT  
		Size: 64.2 MB (64177241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3572bfb7dd8765799af6a8e8b6793477958af8c067e710fba2f409ad2113b843`  
		Last Modified: Tue, 07 Jul 2026 22:12:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:056e27eb0e1466c58b782071ce3ea03a8dddb8783ac7e930e46e191044d4bf47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32933032039ec03c91ab851b7f358598363899e08b7ac908d698678b946e0974`

```dockerfile
```

-	Layers:
	-	`sha256:687e979d64c9c296e6ef4323f005a109ddaf8c1847e13d0b6789350426c5d238`  
		Last Modified: Tue, 07 Jul 2026 22:12:27 GMT  
		Size: 176.4 KB (176362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b68a3c20deb9389a6358937bff6014eaa965d02dd602fab90485db978a3fde91`  
		Last Modified: Tue, 07 Jul 2026 22:12:27 GMT  
		Size: 24.9 KB (24941 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:ea2db10851a434b7d1414613d9cb9307de088673d1ba301ed8896ac229472d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69529484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b55baeeda5a33b3db29487c7e77f696491453242e73164142ec997029bc89a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:12:12 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:12:19 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:19 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:19 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:19 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:12:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:12:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f72f0404875e9bb7a750ac3bb7b465b1661138c8ec2517505e51ca22cbfd58`  
		Last Modified: Tue, 07 Jul 2026 22:12:34 GMT  
		Size: 245.6 KB (245579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ab86c6ec2b9315502727ac923e95a71d0712fb3db2ab9d73161056848e1e17`  
		Last Modified: Tue, 07 Jul 2026 22:12:36 GMT  
		Size: 65.6 MB (65615757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d8e25f83fbe714a6bb2449e84961f26f6ea128380f11a1abe9614d9e5e4cd9`  
		Last Modified: Tue, 07 Jul 2026 22:12:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:fd37e782360261014c63b07fb57b21182711f2c2ca144e2a54ecfe42bfebc7c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 KB (201685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe65c5e23a9437b2fea931dac317206221017092f24a9b2b36df1552ab838a45`

```dockerfile
```

-	Layers:
	-	`sha256:ece3143f564c8b27a390074153ed2cc65d8d8fc486d9559670eebf5066ec31f2`  
		Last Modified: Tue, 07 Jul 2026 22:12:34 GMT  
		Size: 176.9 KB (176915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33fe197b1739b67db801fd6ddc7c7fe800043732ce58868966d8be073d24406c`  
		Last Modified: Tue, 07 Jul 2026 22:12:35 GMT  
		Size: 24.8 KB (24770 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:e472fc34655e9c3590b6df56c1e54ff5e66c475f71d314a826edfd2d2af940d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68923493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee52c8538aa51fbd2dad3f2b367b6e3291f2ba5bf7f4d1be7e448ad61419a747`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:59 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:15:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:15:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2afe4ddf70535a87895dd2928115f13eed6bd80bb630863f6b224ede37a652`  
		Last Modified: Mon, 22 Jun 2026 20:49:43 GMT  
		Size: 247.9 KB (247906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837a88f92efe9877f23e6c12528d62e7ccdb9b8fa95a610a27ff13c8eae13062`  
		Last Modified: Tue, 07 Jul 2026 22:15:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:d642ca7130c8d27910782a72ba5e22935b49fe3b6fa55c959b351a430caa0200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 KB (201210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4db65aa7ad707a665ae23c88bf8ab8341ac9bb4bb78bc513d1d4f374fa30a27`

```dockerfile
```

-	Layers:
	-	`sha256:b32ca0ddcf114db0af0a90c830ce7caf1c42445d0a0d2293eabb0125e37c4d63`  
		Last Modified: Tue, 07 Jul 2026 22:15:28 GMT  
		Size: 176.4 KB (176355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b41edbdb1501509d89cead975824d88fb758b059a9caff11350cd90838859d3`  
		Last Modified: Tue, 07 Jul 2026 22:15:28 GMT  
		Size: 24.9 KB (24855 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:59ff037c42d97fc5ace86e52696da113e59270207939a65e05b20a7237ef7da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68982215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:366516c20cb5b3fb1aaf811169a2f3c5100a8d75d088dc0db27cebd5c2c7e9c0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOTOOLCHAIN=local
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOPATH=/go
# Wed, 08 Jul 2026 20:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 20:35:16 GMT
COPY /target/ / # buildkit
# Wed, 08 Jul 2026 20:46:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 08 Jul 2026 20:46:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d1b6a4c21a78dbb25159d2e273a4550eac3caff5f0f9a74168efac89740c36`  
		Last Modified: Tue, 23 Jun 2026 14:06:21 GMT  
		Size: 245.5 KB (245467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ba61866bff16c6d67dd671f0c2945d522b517e8a4429596c829088207b394e`  
		Last Modified: Wed, 08 Jul 2026 20:41:58 GMT  
		Size: 65.2 MB (65163350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c5e36bd441e281c048a60c9d5c8f0cb94a07a80df27a9fdaf1078658646bd1`  
		Last Modified: Wed, 08 Jul 2026 20:47:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:000f9b4737551731a6b922bf0eefc6e2c45f2ad6ec0f29c05316d2e5e6ff8464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 KB (201206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d49e3dfc51e5bdc68c871ba70a077e9e32f51893421a906efaaca89e55dd110`

```dockerfile
```

-	Layers:
	-	`sha256:ee9b9644af70ed18d9896e4c7ad0fd1a4379c08d3264b38446de64a0ada3f025`  
		Last Modified: Wed, 08 Jul 2026 20:47:38 GMT  
		Size: 176.4 KB (176351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd1615d8f8ec8dbd9122411c989415e40768240027f81813b980f4aa9cc74d19`  
		Last Modified: Wed, 08 Jul 2026 20:47:38 GMT  
		Size: 24.9 KB (24855 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:40d258d0c7de93e8aeab76c3512fdff9e0a7ad106f62bb1656dc0badb803f549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70482410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0631a6d6b5a0b54f5a94eb5629f4a98ea99f3d180b58ad24d3a08385d4bbb634`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:41:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:26 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1718196a71a3addbf43c83e0e65418bdf203de52f5b7783093a5f70b48bfa636`  
		Last Modified: Mon, 06 Jul 2026 20:42:07 GMT  
		Size: 246.2 KB (246160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02a0b92c64bea7b8e82336e0a7f2afcc7dad25aedbcab036aeb985d0f3e2228`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 66.5 MB (66528843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d0e6a39272a6e8258b921992f6a9600bbea6bd650620f7ab098d55cd81feb2`  
		Last Modified: Tue, 07 Jul 2026 22:11:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:6c9be1897083c4abbf9c5231ca70a586b5e3b087d221e90f82813e02c5075ee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3799dc286aed2ca8e9e66f5c1636f317ceb43a91e6d9997ce0dada79f8604270`

```dockerfile
```

-	Layers:
	-	`sha256:9eae48a431fc1c40ebb2c2ae0c1b876c6ed24ccb151c0251c0738949a9528a09`  
		Last Modified: Tue, 07 Jul 2026 22:11:50 GMT  
		Size: 176.3 KB (176305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8d021851021aa6149cc1cd520b5cc2ef115818c2de3ce00b290ba043c163a05`  
		Last Modified: Tue, 07 Jul 2026 22:11:50 GMT  
		Size: 24.6 KB (24634 bytes)  
		MIME: application/vnd.in-toto+json
