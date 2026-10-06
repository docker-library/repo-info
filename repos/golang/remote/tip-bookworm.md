## `golang:tip-bookworm`

```console
$ docker pull golang@sha256:59b6cd9bf96ecce562ede93ed5090838a4e21df8a40d06722818f158ddd84157
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
$ docker pull golang@sha256:af5ec3ecb83ab062653af8b24836ceeadb95b07bd5fd0d2c3e1d4eaf637bbfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.1 MB (337127542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ebd80206a68602a22629be76999df909056b9aa07430e9cb5bf186264f6539`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:19:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:20:13 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 04:20:13 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 04:20:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 04:20:13 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 04:20:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 04:20:16 GMT
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
	-	`sha256:b0c047a8e8c6962a75d56e98815a3e7bba6fa552ecdf11e3f6db481a2dc3cfbc`  
		Last Modified: Tue, 06 Oct 2026 04:20:39 GMT  
		Size: 92.6 MB (92575822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef570f6c400a5ab9e47632258880e95d4a2988a96cc4642ddfe60394775421`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 105.4 MB (105443220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffba315fe6feb8b1be5b7c52efade2ea009fbb5a5d3fc80c485cc18b04c83f2f`  
		Last Modified: Tue, 06 Oct 2026 04:20:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:26439c02d8e843687ba92ae382879485d119c6bff6c3d4de8af1c44cd45ae04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10531192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd954617f81f19d166727a8b9aac6f50028dfe6102705aa3c7327aa6fcaabe9`

```dockerfile
```

-	Layers:
	-	`sha256:6b5d108e7e9f00511bcd0fc41eb47e7c2a70b008ef78df31bd57363e47ce7833`  
		Last Modified: Tue, 06 Oct 2026 04:20:37 GMT  
		Size: 10.5 MB (10503090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0410dc9b7a49e23c662f5848839a65f7319eec0fa95fb9fae337d1c1ea5edf3d`  
		Last Modified: Tue, 06 Oct 2026 04:20:36 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:5ab20609bd869a4631f86e9d7e3af8bc957b50b8b3e4d1b7e66e70d6dd657a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.4 MB (295443931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc16e84a1c89861e6091d111baf74fc4cca592da72a335347510a584e3892a7e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 05:20:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 05:22:01 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 05:22:01 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 05:22:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 05:22:01 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 05:22:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 05:22:04 GMT
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
	-	`sha256:677082dc550bd4338ced3028a33fddf3af6f7fd321d814bcbd62cb0154e15148`  
		Last Modified: Tue, 06 Oct 2026 05:22:28 GMT  
		Size: 66.4 MB (66426452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515c1333ab75ca71603a5b7e1af77704bd20991eb69d5a691790833b0012028b`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 101.3 MB (101257353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbc987aeda57508091fe8436dd80b13e27ab96d40a64ea0fcecf6de1e0b0a79`  
		Last Modified: Tue, 06 Oct 2026 05:22:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:9e44c44f63a4cf8e97d019aab82b12f301835856f81b04f615fc0844a9fca9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10337998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b368142462434321da823cdc08f0a76caebbc55ce65ec2d8fac33708de959ee0`

```dockerfile
```

-	Layers:
	-	`sha256:8f0bd11ffa1b7901c03f0fae4604128b90e1172b73e59d2e742f2cd90d179f11`  
		Last Modified: Tue, 06 Oct 2026 05:22:27 GMT  
		Size: 10.3 MB (10309784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9de724218cff01cf71fab0a2ddc4d0829d8c219814c3a80ddf6a2abcf2f77100`  
		Last Modified: Tue, 06 Oct 2026 05:22:26 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a14fba416729e7e1e9964f5b0715884e1221a1b97350f8657df0d4d4f3a7c319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.0 MB (325001962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e3e2b755c1e822020139e97b0c04aaeb4f1d10e6fb7fa72bc4e107fe62e5a2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:17:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:18:17 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 04:18:17 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 04:18:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 04:18:17 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 04:18:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 04:18:21 GMT
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
	-	`sha256:31614e2ad2419f8f7476c108fe000b7e5ee939140b3515b6be3f195dd9767dcf`  
		Last Modified: Tue, 06 Oct 2026 04:18:47 GMT  
		Size: 86.6 MB (86642237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1197fd4c40c6856ef324b69c19b8599e9e15c840333cf3f9c4b76fe452d8781e`  
		Last Modified: Mon, 05 Oct 2026 21:43:48 GMT  
		Size: 99.7 MB (99745930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239a878fbe50179b07efee304d7ce8457cf3de43eaff0111ffcb09beba4cf9eb`  
		Last Modified: Tue, 06 Oct 2026 04:18:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:ea1fe60b46fe4b699835eac211bfd004b3fcad6be9529070c80a842641079369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10559148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b379dc39244c2b778738b6f961e8bf0242443df683558ea01d4f72b47d7923e8`

```dockerfile
```

-	Layers:
	-	`sha256:a42a7fb9984b7ef2a0297ff09cf0f86c4e541b4be94a31938d5d887951f90a8f`  
		Last Modified: Tue, 06 Oct 2026 04:18:45 GMT  
		Size: 10.5 MB (10530914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:017df4984ad45713c6b45886d6c961fb7b2544ff8ec4fba829ced3f57301d5ad`  
		Last Modified: Tue, 06 Oct 2026 04:18:44 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; 386

```console
$ docker pull golang@sha256:c6ae1181c0b080823237364fd3913637ff93a583c92dbdac5a8307c2bb856ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336077583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc6953a3dee1d7630ac085eb6d664a8341e8fc816253fef72aaae154cbe7b1d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:32:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:13:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:15:04 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 04:15:04 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 04:15:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 04:15:04 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 04:15:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 04:15:06 GMT
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
	-	`sha256:d70a8632646fef1ab89d2f5294b78515eb87a52cf39f8bb873aea2d680ac8e0a`  
		Last Modified: Tue, 06 Oct 2026 04:15:33 GMT  
		Size: 90.0 MB (89991419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97df23ba1563255fea525e9b90d953a3fc91bbf096740e750085812721554aeb`  
		Last Modified: Mon, 05 Oct 2026 21:52:01 GMT  
		Size: 103.2 MB (103182138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0af250df50e2b19a13de098cf41ae822244a9a4ba0bf1778052fe018802d4f9`  
		Last Modified: Tue, 06 Oct 2026 04:15:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:0c8eec884ed2397f09fd52884fac9a0a6adaf83e1847528e1d9e3fd7ebda4b56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aacf42840379303aa4e1c9d5ddca4c5f6136e2e6e05415d10c37689fd649c2be`

```dockerfile
```

-	Layers:
	-	`sha256:67d1a5e7eef4653fc8fb92caaac5613d9a51bedb16e3b289eeb3c5c0d426ddb7`  
		Last Modified: Tue, 06 Oct 2026 04:15:30 GMT  
		Size: 10.5 MB (10482669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2da15e13e87c3288ccb4f5d6088b224be4c926e2463c006002fea92aeffed90`  
		Last Modified: Tue, 06 Oct 2026 04:15:30 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:e62690e4a6224cfec259c769d705e1d02bbb902349fa2da87bdc0bdfd3bb67b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340441812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382792a0a7171a9b9273660edca73970195ca8db69b6673d32f6daf1a052d55f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 03:15:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 09:05:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 18:10:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:50:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 22:50:26 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 22:50:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:50:26 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 22:55:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 22:55:02 GMT
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
	-	`sha256:c2297a3bf9de8e522a5fddf94dc3aa1a0c0fead87ee774876352205e76ad574c`  
		Last Modified: Tue, 29 Sep 2026 18:12:16 GMT  
		Size: 90.6 MB (90578198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a38b7e603d87210e83d472af3f9689d93ce5d229c01fadbc15ca279744bf2d`  
		Last Modified: Mon, 05 Oct 2026 22:51:44 GMT  
		Size: 102.0 MB (101961717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac676012f1bbd8448d220a8cfba37f4a3c5a64f330bfc3efc7d2b7d17868a22`  
		Last Modified: Mon, 05 Oct 2026 22:55:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:bba022df7ef011036c0bd79b0f43aa0a0d1b33c9384ca31d5225eeccf64eb560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10503723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca0c4cfe7258b0a0bafc345f8972286b9d1b0fa9fa036b9d17ece9f4482f0f26`

```dockerfile
```

-	Layers:
	-	`sha256:f97627c0f3605b56b04cdab8415f1ac7f2d45c28ed8cd01504a321a1e50e08f9`  
		Last Modified: Mon, 05 Oct 2026 22:55:56 GMT  
		Size: 10.5 MB (10475575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edda888b61607ad6891d7bd4396f37c1c2d70a29c5f981c039dddf31bed6b721`  
		Last Modified: Mon, 05 Oct 2026 22:55:55 GMT  
		Size: 28.1 KB (28148 bytes)  
		MIME: application/vnd.in-toto+json
