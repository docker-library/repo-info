## `golang:tip-20261010-bookworm`

```console
$ docker pull golang@sha256:1325303a4cd0e98990423a8c4916d26d3575e314bbdd8632810101e17c018da3
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

### `golang:tip-20261010-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:0f6d09cf5d48060ba1eaa6406541af4ca374aa74aa8b2f0dca479f3369ab0545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336877607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9dd6907b37170ef784a29fa0e2c4a6dafbed476f4397e972d3850b7b960712`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:57:30 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 22:57:30 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 22:57:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:57:30 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 22:57:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 22:57:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c71fff0869aa9bd48cf80d66e30b83adc9a3fe5e77dd9aaf266282c6ec64ff`  
		Last Modified: Tue, 06 Oct 2026 02:34:58 GMT  
		Size: 66.7 MB (66718068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d0abe0ca23f86788b778704e214ccc78a9075a9419030a34f746bf40d4f52b`  
		Last Modified: Mon, 12 Oct 2026 22:58:00 GMT  
		Size: 92.6 MB (92576044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65717b91cdad98d6ed6d8f43d8abd7754dcdfb05ec6c68cf36deb1aae597fdb1`  
		Last Modified: Mon, 12 Oct 2026 22:57:33 GMT  
		Size: 105.2 MB (105193062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b7b2d33d8075382f606c52fd3366274623bd45c85763836713ab81cf198336`  
		Last Modified: Mon, 12 Oct 2026 22:57:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261010-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:0c22d003d2cf78bb51b5c6a85a2b7f141bdd0bb15537f17b2641723e0f573d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10531192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edef5ad565e98dbc36a77adb5d86524fb587cb3111a9219a17a12684d02c3c3`

```dockerfile
```

-	Layers:
	-	`sha256:30175f0e370aac9e0badcd850bcae9108f085c1dfbd2df45e4df5bdf2aa0f96f`  
		Last Modified: Mon, 12 Oct 2026 22:57:58 GMT  
		Size: 10.5 MB (10503090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0f240c73554d6da08881790f497508f2b5321c4c012a982f751af1ba73b9aa3`  
		Last Modified: Mon, 12 Oct 2026 22:57:57 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261010-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:40af2acc2b25b75a02a54af9fc0f7dc5d0e60d51b3ac96cee817f6b61e271aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295269672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b04d734bafdcbccbbafc84706d12148256b8bb0f9706298cef897e3bea5dd3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:04:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:05:35 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:05:35 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:05:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:35 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:05:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:05:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b768da400527c8a0e4827a2830eb7d6018a22af7b71ff5838ebe45eea9ecbd83`  
		Last Modified: Tue, 06 Oct 2026 03:40:51 GMT  
		Size: 61.8 MB (61771060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e27df80a713de267be940a8a679bf8ba6e0cfd5ecb06d9c3115772dc94881da`  
		Last Modified: Mon, 12 Oct 2026 23:06:03 GMT  
		Size: 66.4 MB (66426512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc87745cdb05c3d59e063baf735960355ce5abd2dd91683f9a6a9eeaf3b0fc73`  
		Last Modified: Mon, 12 Oct 2026 23:05:53 GMT  
		Size: 101.1 MB (101083033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e24b819f21dc9e3aa399928f0cf5fc3f9097aabdb78f3dde211565bc75d6032`  
		Last Modified: Mon, 12 Oct 2026 23:06:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261010-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:8998619ca6696b1d6b70a329b3e16f92d85a7edf3fa39131176d5189a7a98d66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10337998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f11af6f501494b3fd6b0a7f1c40003105e07601d0fef4be2708f98953d2ee5c`

```dockerfile
```

-	Layers:
	-	`sha256:0e7f9f367215c28cefff0d4911951ba2315d48d1bacf9b150ce686f08aa8f1e4`  
		Last Modified: Mon, 12 Oct 2026 23:06:02 GMT  
		Size: 10.3 MB (10309784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ba4f7be75fdc7767cb5d0124bcd0c3e3313122618e601db1dd103b5cf6d2baf`  
		Last Modified: Mon, 12 Oct 2026 23:06:01 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261010-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:b9c37e5bba0276c124f93d4a73a16aa912d2aedf58b7deee6a7ce25095a056f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.8 MB (324817113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd42a790fe5d2dbf701a71bb12486fcd12bab8f1582746fd74911e35bfb7320`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:04:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:05:28 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:05:28 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:05:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:05:28 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:05:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:05:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99713dbe79ee22ead7509cd8c7c37d309206e5ddd834ba41611459b49e6ddc06`  
		Last Modified: Tue, 06 Oct 2026 02:25:53 GMT  
		Size: 66.8 MB (66769669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ef290b14967b8c58275f6abd036ed089756a1a91a12f03aa4150445f8d55678`  
		Last Modified: Mon, 12 Oct 2026 23:05:58 GMT  
		Size: 86.6 MB (86641926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a6b26d4e0c26f9dbbaa330a0512a75f183e7b29ecbcd724145cc58533764d6`  
		Last Modified: Mon, 12 Oct 2026 23:05:58 GMT  
		Size: 99.6 MB (99561393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d943f3d2736278d872b1eada8f98756bac64f0ef02e5948ee724b77fd5ca589e`  
		Last Modified: Mon, 12 Oct 2026 23:05:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261010-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:68925a46627501cebf3b2058de6447a2698544d14d8488ea86e783e7b704a70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be3a996e9a24461a26d607a9db4aa178f04e27cbb4ff65e559c02d4860b20f06`

```dockerfile
```

-	Layers:
	-	`sha256:d23b0878b8521571cb8d188e2bcf9c8bfef05ed03e355b5cd2f487b21e3fe463`  
		Last Modified: Mon, 12 Oct 2026 23:05:55 GMT  
		Size: 10.5 MB (10530914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcedee550b1eef8b56d2c77044db52730b1b0736de097213c9d45452ef9628c1`  
		Last Modified: Mon, 12 Oct 2026 23:05:55 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261010-bookworm` - linux; 386

```console
$ docker pull golang@sha256:b6525465a86eec1fda89265559fedcd6ab4e1e8536536b05a5be1585cc52964b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.9 MB (335858272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d8baa51372e7ec83ce5af531f9cae00c625531f98995dc7d8a86b0f83a4233b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:32:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:00:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:01:53 GMT
ENV GOTOOLCHAIN=local
# Mon, 12 Oct 2026 23:01:53 GMT
ENV GOPATH=/go
# Mon, 12 Oct 2026 23:01:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 23:01:53 GMT
COPY /target/ / # buildkit
# Mon, 12 Oct 2026 23:01:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 12 Oct 2026 23:01:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed8fc62fd627a37f6ed2ee27586e27cad83b5283812efa97b05e073356a198`  
		Last Modified: Tue, 06 Oct 2026 01:45:52 GMT  
		Size: 24.7 MB (24708328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711f4e886b543dd0de1ec42d806d33e26264ccc6571085235d546d2e40a384e9`  
		Last Modified: Tue, 06 Oct 2026 02:32:29 GMT  
		Size: 68.7 MB (68690210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d471209eda54eb192029f4022a78e12ca836f3c3a91453927b2e344ce754fa7f`  
		Last Modified: Mon, 12 Oct 2026 23:02:20 GMT  
		Size: 90.0 MB (89991030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb807c52ee12493231d14bc2a22bbd56636bfe01015243adb3e22dee40c0d0c`  
		Last Modified: Mon, 12 Oct 2026 23:02:10 GMT  
		Size: 103.0 MB (102963215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37af7694bb4985e7198ffb9f75a6dcb070b409c7703ade9b83fb1b9c35d13cd0`  
		Last Modified: Mon, 12 Oct 2026 23:02:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261010-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:8ac5e7953a515ba24ac52753b1b58ebb4df250be7284d66a449392c205a23c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb02658c75085bff48c68fca911d01a09eea45f0c0a5eab7506c8716043fcb01`

```dockerfile
```

-	Layers:
	-	`sha256:27315a442fafca1f0ef9e9db3733fcebfb3b2d1029eaa2550c8de89d8361221e`  
		Last Modified: Mon, 12 Oct 2026 23:02:18 GMT  
		Size: 10.5 MB (10482669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81a0f2cb809bb3d2e2e719077289424974244fd0c404bdd5da5efcf45a34ec75`  
		Last Modified: Mon, 12 Oct 2026 23:02:18 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261010-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:c8f07a1df52f7bdb6693f9f8cc6c66fe9a2984d770c94b41a147b7ed0b7e5a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.6 MB (342554356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490418730b93c9e75b61c34d953c124db3a01f86ea73176de2db99eff33b8652`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 17:10:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 00:54:13 GMT
ENV GOTOOLCHAIN=local
# Tue, 13 Oct 2026 00:54:13 GMT
ENV GOPATH=/go
# Tue, 13 Oct 2026 00:54:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:54:13 GMT
COPY /target/ / # buildkit
# Tue, 13 Oct 2026 00:56:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 13 Oct 2026 00:56:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfced81c6d63d57c61f0cc455733d3e2c3415e1c19808bf1b361b6b77a0db73`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 25.5 MB (25518268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c264e2b4d19ba4544ecce2e36be7fa5707180176288bd26f8665e49e08103512`  
		Last Modified: Tue, 06 Oct 2026 11:38:50 GMT  
		Size: 72.3 MB (72326849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d41e77c98051f59478b4a49ca0cf4e06c315a989a523c0a6cb8b7fb1d46d288`  
		Last Modified: Thu, 08 Oct 2026 17:12:10 GMT  
		Size: 90.6 MB (90577932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b34e883d33722590e15fddfa61da90ec14728b57ee958546f7a00424614c84c`  
		Last Modified: Tue, 13 Oct 2026 00:55:32 GMT  
		Size: 101.8 MB (101768410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1953470fb01e40d17e2404f131fe21d376d4cf40b2403609de860021ee2b813`  
		Last Modified: Tue, 13 Oct 2026 00:57:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261010-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:459e26c786c7931b894f679590f99c512f857a0e3118c012fd0737767ee3c4ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10503723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef957b23f0f77ea0f7cfdaf4a225aa38f45ae7a09d44ff0531a8b5c09f689af`

```dockerfile
```

-	Layers:
	-	`sha256:61279b49d4394f0ee6706d7ab75b7db56511868c7729bd4fd17c91cfbc9d30d8`  
		Last Modified: Tue, 13 Oct 2026 00:57:09 GMT  
		Size: 10.5 MB (10475575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da21e3efac383a2b471d1e52c854d6828439d56eb388eb7e309685bc6e1520c8`  
		Last Modified: Tue, 13 Oct 2026 00:57:09 GMT  
		Size: 28.1 KB (28148 bytes)  
		MIME: application/vnd.in-toto+json
