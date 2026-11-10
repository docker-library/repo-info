## `golang:tip-20261108-bookworm`

```console
$ docker pull golang@sha256:4f7b39d043c52f88b7112f0c2e7d11b8ac08f939b47c0019c5439b58c7a3eb49
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

### `golang:tip-20261108-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:d5a19a748cf813317eb60d04c80d5152607daf13b7e30b945d543f28251b5036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.4 MB (334379610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed30078cf606875bd18b75de4bfefeee41c7f5863a42e37460c47f3558f8d15`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:33:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:32:16 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:32:16 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:32:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:32:16 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:34:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:34:32 GMT
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
	-	`sha256:b69478f2a4a8c4a2f7a8d6b147b59b3783f7f5886060279d771bd14a241e696c`  
		Last Modified: Tue, 10 Nov 2026 18:34:58 GMT  
		Size: 92.6 MB (92630200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd313759153838f796efbe8ecb7e9f68ae45d9185f3ee5035b06feab8320df21`  
		Last Modified: Tue, 10 Nov 2026 18:32:49 GMT  
		Size: 104.9 MB (104916932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9cdea97b78eae5d6ec11d1358a2e9632126ab72a3479aa448abee1aabc2d1a`  
		Last Modified: Tue, 10 Nov 2026 18:34:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261108-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2fd92fc49b7fc9dab5394f171671859111fc0ed6a923b1e6fe8a9db105ecd9c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10529175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef9abc86b4181efece190c17b0a7c70a65858baf31616a4139b856a962fffda`

```dockerfile
```

-	Layers:
	-	`sha256:4c3f6aeb1fe73acf0f62f080f05cb1ec1e06e7648b0c4728ea07a45d46929a9d`  
		Last Modified: Tue, 10 Nov 2026 18:34:55 GMT  
		Size: 10.5 MB (10501073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66a2b7718c905c034574bfe0809e023c6001edbbbaac628232b107dc92bdf206`  
		Last Modified: Tue, 10 Nov 2026 18:34:55 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261108-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:8807e751f7f426378e53a7f676c204333c51aebccbed0517873e4290f5265681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.2 MB (293186269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62546d97665858f26aa894d52e0a63a58fc5061afde8d022aaf8575656405a6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:23:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:30:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:32:21 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:32:21 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:32:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:32:21 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:32:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:32:24 GMT
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
	-	`sha256:73f517421911ce61985f58d9064dad7f920236d466bf78cdf1a9cd49d8a848be`  
		Last Modified: Tue, 10 Nov 2026 18:32:50 GMT  
		Size: 66.5 MB (66481376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8c5d5684401dabd1fd899d30e738f679aa5d8d625523450ff2b44e95ef70d2`  
		Last Modified: Tue, 10 Nov 2026 18:32:45 GMT  
		Size: 101.0 MB (101014185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c929cc056cfda84a17d61ccc69c4bba334458482e865c26bf15e5d97f63f8da1`  
		Last Modified: Tue, 10 Nov 2026 18:32:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261108-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2fbe374510f5640bbd90758ebceed2bfb6a48c09d4d803eefa859181de0cc68e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10335981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f62ba56fc762de5ad49252bdcc5bf891410a1f1142ade0cbda0a7249a75c00`

```dockerfile
```

-	Layers:
	-	`sha256:74945a7367e48c2b64d1725487367a5ebeaeb5765600eacb9ec4684356da3273`  
		Last Modified: Tue, 10 Nov 2026 18:32:48 GMT  
		Size: 10.3 MB (10307767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21df0f00b6d57033c8500ce7f43f9b541138fd4b37dc808d179480651fab4865`  
		Last Modified: Tue, 10 Nov 2026 18:32:48 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261108-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9d2c17b73a6a3b2be3e236329c7330c1a0926b28f7ca3cbfa01fbc176ff32c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.4 MB (322402822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d20eedc0cda84ec36615ec15b4c9ab39a84f04970c6d660a888b8e00aecd299`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:32:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:31:57 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:31:57 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:31:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:31:57 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:34:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:34:00 GMT
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
	-	`sha256:0673b4ea6c3a3fba2ebe46b8a332505667529dd92fe3d38d2869408c919258b4`  
		Last Modified: Tue, 10 Nov 2026 18:34:25 GMT  
		Size: 86.7 MB (86700410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3e4d8481dc1f4c516e9c0d29e711572906b73996a0301834aa7672262b80ad`  
		Last Modified: Tue, 10 Nov 2026 18:32:29 GMT  
		Size: 99.3 MB (99320677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e5618874cc1674b8a70e0c27b833b69bcdf924881ae0945fd5981146ab7607`  
		Last Modified: Tue, 10 Nov 2026 18:34:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261108-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:832f0eff955ef99621e4345a596559aea7b5b36e2a122262a7294d6c69ed74c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10557130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1895326cc10cd144aacdcd826de99c60bf175e796f77028c8bbf63d45904c7`

```dockerfile
```

-	Layers:
	-	`sha256:67315644d00617c4ec1fa6ccac9225a68728a8bb443f6a6f50ef6a6e5bbdee05`  
		Last Modified: Tue, 10 Nov 2026 18:34:23 GMT  
		Size: 10.5 MB (10528897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59eb5dbea2a1d966e1ab7fe5a2ad8ad285680a103acd47e87e4b936d9f505b5b`  
		Last Modified: Tue, 10 Nov 2026 18:34:22 GMT  
		Size: 28.2 KB (28233 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261108-bookworm` - linux; 386

```console
$ docker pull golang@sha256:596671362c73fcd842a3c1eb1de24aa18ab27c5f8ef76603f75024eb46fa0bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.4 MB (333400749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89fb193842b19e022cd0972d7f9d4826f125ee6ec3cad5d9dd9232c5644b83ba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:24:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:21:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 18:31:09 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:31:09 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:31:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:31:09 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:31:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:31:12 GMT
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
	-	`sha256:8548531795c3d424b692246c4d39731faef46f3a56f6cf393a1ac3294e96ff1c`  
		Last Modified: Tue, 10 Nov 2026 18:21:29 GMT  
		Size: 90.1 MB (90051507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0cb944cc32c8be677db6402bc98890b64e4c0bdf5c7c8b6a87327e36040b76`  
		Last Modified: Tue, 10 Nov 2026 18:31:36 GMT  
		Size: 102.9 MB (102852137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38c7822b0e2db0967a94923e74f5a8c24a4d5f20a959205ab73efb404d2d7c1`  
		Last Modified: Tue, 10 Nov 2026 18:31:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261108-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:8a24a2b67fd32b60e6ae36fc1b4192c6bf85179d519029f1fa7cb2aff97488cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10508722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331bb6f1612e9305bef5be68fcf5917691d392a98ec9a1ef194adc3fb799368c`

```dockerfile
```

-	Layers:
	-	`sha256:f24dbbbbb72c8de162e09aeb9d0f49e3ad4b6ab36e25367539ae5b8ba257d1e7`  
		Last Modified: Tue, 10 Nov 2026 18:31:33 GMT  
		Size: 10.5 MB (10480653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f59b358399690b04a8500b66b97b1b70e8f93b0af608107d2b6ddce425f941c`  
		Last Modified: Tue, 10 Nov 2026 18:31:33 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261108-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:ed298eb1a4f12074763d3c1383e244644cdab173379e9f0c3133cd47c2a73261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (340031321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eebf40de1f9283533773915d740f2cd0a53a2a13f4cf95c93bf1a116147f609b`
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
# Tue, 10 Nov 2026 18:33:12 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:33:12 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:33:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:33:12 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:33:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:33:22 GMT
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
	-	`sha256:9af7977e7fa3bbe7e79dc06e299aeb4cd33cbc2e7c2a3def33a2d2799376f2ea`  
		Last Modified: Tue, 10 Nov 2026 18:34:32 GMT  
		Size: 101.6 MB (101625035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f1387a66019859e3308a83a1c798e189a10b2c15f4112b95c2d95b08a6fa78`  
		Last Modified: Tue, 10 Nov 2026 18:34:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261108-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:62c300406d42e99f698efbf120b7e6836c0d2ea871deb773e9ebc3277f421791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10501703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1683cb7d76c655dda6d374663c461c084198e54fd0d5b38f1880b90e3dbcb450`

```dockerfile
```

-	Layers:
	-	`sha256:61cbc37b48b78dd83f1dfd25b0c96681aaad07c732f71e57fb41a2ec23c1008c`  
		Last Modified: Tue, 10 Nov 2026 18:34:29 GMT  
		Size: 10.5 MB (10473556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a074d1804bcda4650f1829afea20ad82bd8575687dc7ad2fde8b38013bae975f`  
		Last Modified: Tue, 10 Nov 2026 18:34:28 GMT  
		Size: 28.1 KB (28147 bytes)  
		MIME: application/vnd.in-toto+json
