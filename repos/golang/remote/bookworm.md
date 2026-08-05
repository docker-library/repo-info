## `golang:bookworm`

```console
$ docker pull golang@sha256:551752d3ad9de9923190bf5280500617ed8fee287ffb4b0220e770ef89346258
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

### `golang:bookworm` - linux; amd64

```console
$ docker pull golang@sha256:3f6236bd765f898a2a3c2946112b04097814c4529d44534674700cd07b9c6b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.8 MB (296751328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2d88d0c7034f9e48bb74156ea562e66d3064971aed54ccbb23554637580f1c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:37 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 14 Jul 2026 03:17:37 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 03:17:37 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 03:17:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:17:37 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 03:17:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 03:17:41 GMT
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
	-	`sha256:7959e93f36297a062ca6d7a2e7200b60623607007f976913beae44b317dd9e06`  
		Last Modified: Tue, 14 Jul 2026 03:18:07 GMT  
		Size: 92.5 MB (92512821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea3d467f844b8e6fffc2d7793807a1ec9e3a0582655418c1c17013372a3a910`  
		Last Modified: Tue, 07 Jul 2026 22:12:02 GMT  
		Size: 67.3 MB (67288392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba87c45d638b988807a4c8b4dc915a6b7d9f571736c5c2fc780382a1d32419ec`  
		Last Modified: Tue, 14 Jul 2026 03:18:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:6f839fbe3a871557922947d42cf7e379a6effcb4e8b52fab98514cb876d28ec3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10525727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a66147df80c5583a364309dd1d130155cb98bc9b8dc3338d59455c24180a41c`

```dockerfile
```

-	Layers:
	-	`sha256:f12e690b84482670649ac1418c452d824acfd2d6cb7591f0bd146ba7c7321b5f`  
		Last Modified: Tue, 14 Jul 2026 03:18:05 GMT  
		Size: 10.5 MB (10497931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2be482ac94187f17704331aa77b9f596b02aad77d2e9b13932afaf5634aebf31`  
		Last Modified: Tue, 14 Jul 2026 03:18:04 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:1be026b10cf0b237831c41ab642ae89337572f2224756ffa94fbe12d331ab5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257999666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682a42d53f42b360b310519de7b58af581c7e0bcd5eb83fe2442f4d2e7575b1c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:15:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 05:15:37 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 14 Jul 2026 05:15:37 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 05:15:37 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 05:15:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 05:15:37 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 05:15:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 05:15:40 GMT
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
	-	`sha256:54c236db76d9a9befe427e5c1018fb9da5f946115ab6ced50efda5ce71d61b37`  
		Last Modified: Tue, 14 Jul 2026 05:16:04 GMT  
		Size: 66.4 MB (66372399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d9454c8d863c76d3a284f97c400d521e643fafb60e60664dbeea8c2a1719dd`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 65.8 MB (65811677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f7540b09803a0fecd4d5e1572e7a0b4fa5fe9120da7a576b704bd77930327f`  
		Last Modified: Tue, 14 Jul 2026 05:16:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:fe1c0c7d6cff03a48857754926acc784275c9ffa655dd63004207d3a929f02fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f623825207b61f58bc0fd71448ddd0e285dede5267e903b4b9611b0c4a4b84c9`

```dockerfile
```

-	Layers:
	-	`sha256:1ef056bbee8b00e06b221e3b2ad1a6b603e356acaadec637ccc26ed73b6743a1`  
		Last Modified: Tue, 14 Jul 2026 05:16:02 GMT  
		Size: 10.3 MB (10304643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22d43f9ed72037c8eb7f9582a889fbfec847f9c92289d98fc08e2a0c100618ed`  
		Last Modified: Tue, 14 Jul 2026 05:16:01 GMT  
		Size: 27.9 KB (27902 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:145d3e4c318457af3040b2e575f3f511c7860054c277e4cb5de58c4fe913c3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.3 MB (287258840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b67dd879851e02ab4035680c180ed8d607ef4aaaf19e17ea1328a00f2450d86`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:28 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 14 Jul 2026 03:17:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 03:17:28 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 03:17:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:17:28 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 03:17:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 03:17:32 GMT
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
	-	`sha256:77711f94cac5c2618dff47075fb61757e790d35a0a488cadcdd5db8589a87968`  
		Last Modified: Tue, 14 Jul 2026 03:17:57 GMT  
		Size: 86.6 MB (86586901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d5c89bdd324edeb5721c09064e2659473bba39ae9d84fae53c9cc0181cf15`  
		Last Modified: Tue, 07 Jul 2026 22:11:56 GMT  
		Size: 64.2 MB (64177241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac8d5b0aacfe4ea7f2134918fbfc0ee8eb4182e7a012d86fc91d3d4ac70bba`  
		Last Modified: Tue, 14 Jul 2026 03:17:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:7cccf8218d36fbe07b21ff727c18c6a3607eec7a2f577aaba3d59e7bb2405caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10553710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d78ee24f0c150d55187f44beb319d44dc062ed8ad54474ba714f35cf04a2d36`

```dockerfile
```

-	Layers:
	-	`sha256:496f4eeaa560d7cb975c9c5824f61287ea3170ace7b911594705bbd1436e81fe`  
		Last Modified: Tue, 14 Jul 2026 03:17:55 GMT  
		Size: 10.5 MB (10525779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de5bf5bf749a389e5f550a90abfb4d218e00758de880f076d0ea9866ff5f8ee7`  
		Last Modified: Tue, 14 Jul 2026 03:17:55 GMT  
		Size: 27.9 KB (27931 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; 386

```console
$ docker pull golang@sha256:d55ae07a9dd49d72a415f21bdd3f221de69296d8c8481c1a0d7c0cbbd6eaa1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296166201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498aa0f41e04491e3584ee592060f4b34d1588e7a734079604e3ee8bd19b128b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:17:36 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 14 Jul 2026 03:17:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 14 Jul 2026 03:17:36 GMT
ENV GOPATH=/go
# Tue, 14 Jul 2026 03:17:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:17:36 GMT
COPY /target/ / # buildkit
# Tue, 14 Jul 2026 03:17:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 03:17:40 GMT
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
	-	`sha256:ce92a27d05cef049bc61e6b4ab7ce0a699a27f37ffef18b740bdc153cd5414c6`  
		Last Modified: Tue, 14 Jul 2026 03:18:06 GMT  
		Size: 89.9 MB (89935829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ab86c6ec2b9315502727ac923e95a71d0712fb3db2ab9d73161056848e1e17`  
		Last Modified: Tue, 07 Jul 2026 22:12:36 GMT  
		Size: 65.6 MB (65615757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc2605e076f38641dff173fa6dcd7b32be5c4be63164ed88a2f5edcb0716827`  
		Last Modified: Tue, 14 Jul 2026 03:18:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:d4132f15323da9b4de601e9fe148e7a284bf5f5b73d4d4bfef6ce43e1f45485d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10505262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:572c13a2c07ccf26a65d23f27b058e5756170ac86d3bd59750dfa3f1f6d4ad04`

```dockerfile
```

-	Layers:
	-	`sha256:ba758d51d83262fef0978017c38c2b6478eae868ba5fc0961945f348f55a6a59`  
		Last Modified: Tue, 14 Jul 2026 03:18:04 GMT  
		Size: 10.5 MB (10477501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00b8f65dfa63d47a89a56eb202ec26b5ae5b51b388d0a4c0386124482efe47a1`  
		Last Modified: Tue, 14 Jul 2026 03:18:04 GMT  
		Size: 27.8 KB (27761 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:12c4946b0d448ab20fdb842e82476b0436ed3dff84639b421a90e4dff4f87300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303271175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad75ad714b6eefd89dbfcb7eea1fcc388a82f6029a4c2ebf8b7a1b582134171`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:49:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 12:13:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 14:53:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
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
# Tue, 14 Jul 2026 14:54:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 14 Jul 2026 14:54:41 GMT
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
	-	`sha256:f5e1c1327f55ef70a75bb73f617c569396d35e33b9a18f948709d816f296956c`  
		Last Modified: Tue, 14 Jul 2026 14:54:17 GMT  
		Size: 90.5 MB (90527567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9839986f72aaca2347b7deefd93a3d8845b817587999e81158f978f25cf0dfc8`  
		Last Modified: Tue, 14 Jul 2026 14:55:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:b487cf8c5277f46b87a5d4f3b77a5c44cfc4015775a22ef007750b63a8d3d24e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10498100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e6e6e4123062fad0b8a5f72a9f9122f7be749c81e65f28ce2e032bcacba1b8`

```dockerfile
```

-	Layers:
	-	`sha256:07bb5c0e406007f50023f13c57f01a6ed054fbfdafb670d74859c687499a52f5`  
		Last Modified: Tue, 14 Jul 2026 14:55:13 GMT  
		Size: 10.5 MB (10470428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60724ce673da2e63ca971d04de6d13282fa8d3a4ce11400404d9244115a3e92e`  
		Last Modified: Tue, 14 Jul 2026 14:55:12 GMT  
		Size: 27.7 KB (27672 bytes)  
		MIME: application/vnd.in-toto+json
