## `golang:tip`

```console
$ docker pull golang@sha256:4e5b09ce38f29448944454eb5c5c770d66a3d51922fe5605ebe61d825fe5eed8
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

### `golang:tip` - linux; amd64

```console
$ docker pull golang@sha256:613a6b57b52b566be16bafde36084375b0d2b5459e7cf3fa86ac981cc6b52193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.1 MB (357144376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357aa495ef1bd8f670ff4e34f5278f63d6c7f8af7d022fe3f25f99f23111ee61`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 22:34:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:35:27 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:35:27 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:35:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:35:27 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:35:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:35:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3d41b9fc34a17fd11b1c52ab432b0ce81a29a0528bdecd1e4b0a9de15004c6`  
		Last Modified: Tue, 15 Sep 2026 22:35:57 GMT  
		Size: 108.9 MB (108912780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7984364c80cd3e9761745232561ae808c7875b1c675fe35a820ab7faba4a7d30`  
		Last Modified: Tue, 15 Sep 2026 22:35:56 GMT  
		Size: 105.5 MB (105453948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f088ca95da66ef2eba07caf8ca3f95d1a0d835f4e3a6e11ae4d6bdb8e6bef799`  
		Last Modified: Tue, 15 Sep 2026 22:35:53 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:1f32218f9869626a361dfcab2e30b44a9311091f56132552b97eff2a2cdd4802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10821258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198d398be1d1c029a45c7a5901307b22e821efb54c9e1b05b82a09cf6c0636e7`

```dockerfile
```

-	Layers:
	-	`sha256:14c2ff7a237748bfee3c36d61080224051adbe5167d87df13c344adaf03c4e06`  
		Last Modified: Tue, 15 Sep 2026 22:35:54 GMT  
		Size: 10.8 MB (10792573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a67a8b82e860ca499f6c55ff606af654b7abd314f3a8831ed52c1993258dd95`  
		Last Modified: Tue, 15 Sep 2026 22:35:53 GMT  
		Size: 28.7 KB (28685 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm variant v7

```console
$ docker pull golang@sha256:40217079a97ac5593333ecc59755f6c3a6ca33c651c26d50f733dfc5f00e60f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312423868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b3b36a83572c2048c8e75362015be6c39354bd89459fbfbcf773f0a6ff12d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 22:44:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:46:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:46:06 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:46:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:46:06 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:46:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:46:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42c90609614e8e6c6187504e271fb8693654de40b1ffe36ae55ee6596dd5a6b`  
		Last Modified: Tue, 15 Sep 2026 22:46:36 GMT  
		Size: 79.0 MB (78952448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a8118ca32c9948b098dacae41a0ef4f00bc8c18d9d65a6518bba5d8fdb4961`  
		Last Modified: Tue, 15 Sep 2026 22:46:37 GMT  
		Size: 101.3 MB (101324765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5625e498a01e42aa9fe1d46e45031e5898cdb0625a963553eb214c0a9d62c6c9`  
		Last Modified: Tue, 15 Sep 2026 22:46:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:d3831f3a1e9b38fcda0e61517f5c85185d9c0de40ddbbcaf46bf0c2fec8d677b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10617268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a237f7027aacda3ca7b5539584aa0d0d136558412e46c9b2e6a743d69dbbdf91`

```dockerfile
```

-	Layers:
	-	`sha256:6bc5724353919124e6a24e9d10120b03a346cefda7e6ef8ca46e06bd02d68811`  
		Last Modified: Tue, 15 Sep 2026 22:46:33 GMT  
		Size: 10.6 MB (10588461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8045d010e055f65bf450778db1181e44587a72c786fa27039806ca74fd14a010`  
		Last Modified: Tue, 15 Sep 2026 22:46:33 GMT  
		Size: 28.8 KB (28807 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bc482be07cc94f9d8d0b32d7a36a24b9ae33fb7d7f1aa7a5a6421064413a3a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.2 MB (347214125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d1d15258908de9b446102e0cacddbd8c9effe0884c89f9df44a50e04bf74e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 22:22:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:23:16 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:23:16 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:23:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:23:16 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:23:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:23:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2695ce32224811ea7a67f681bacdd0dc6be0c4b5b45b03aba61f421964e9c6a3`  
		Last Modified: Tue, 15 Sep 2026 22:23:49 GMT  
		Size: 105.1 MB (105095876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18b6513c88a847af1c37f160e3913f457d3bc3723fc14f1e120510ea5e92930`  
		Last Modified: Tue, 15 Sep 2026 22:23:46 GMT  
		Size: 99.8 MB (99780790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6089f9586d94371d4ed7502a5924b2b2ebab78895229bf118030825ef680842`  
		Last Modified: Tue, 15 Sep 2026 22:23:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:45337e732eb353c1d67edb3872817d7fe46310f0fa8168ed52474ffd8f289fcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10941232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f5e5708e04e71223e38f99f458291a030c90a049b101abb48327a8cade8074`

```dockerfile
```

-	Layers:
	-	`sha256:66b36550b7816973ee8a50a7c209c8e7aebca353ec06cf6fea4fed0abd22a8e4`  
		Last Modified: Tue, 15 Sep 2026 22:23:45 GMT  
		Size: 10.9 MB (10912392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98f9cbe9909ef602f36a309c5aea25419222c1333b4e5e725f3003a3799a19f4`  
		Last Modified: Tue, 15 Sep 2026 22:23:44 GMT  
		Size: 28.8 KB (28840 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; 386

```console
$ docker pull golang@sha256:024aad4e7b3b2c356eade05f51962e2c62a3acf9c269518056afc28beb464d98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357834294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:132631c2cf7d582592adc8a3de60e4bf379966390f24d7ebdd393895001f65ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 22:21:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:22:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:22:59 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:22:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:22:59 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:23:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:23:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307c9ee6d175250a5621c949dfa93c9c5564cecdb3606229d410b43357177256`  
		Last Modified: Tue, 15 Sep 2026 22:23:32 GMT  
		Size: 107.0 MB (106970570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674ba6bfdf2c64013eea230b964b8c691dae63c1096886f4d77b5a6042ef67ab`  
		Last Modified: Tue, 15 Sep 2026 22:23:26 GMT  
		Size: 103.4 MB (103375443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f085fecc1c0cd66ab44130f4cc80ee6f10b8130116345304930c9ec4525195b6`  
		Last Modified: Tue, 15 Sep 2026 22:23:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:7ca6dcf1914ecb6dd80eef39367f163a1c9e584d32d56805e775ce7084eee1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10792475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a6b45029d21c3780ed52a577d3d5f172675a14b43d3f51d4726f7badc894af`

```dockerfile
```

-	Layers:
	-	`sha256:7dff4b08af27c60bf6152c7eb53922956b02a1bcd554058b9abc37c205399cb9`  
		Last Modified: Tue, 15 Sep 2026 22:23:28 GMT  
		Size: 10.8 MB (10763833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fa602d6a5604e27bb9e79fb14e13daa574412175958c1518ece2d40a3283c37`  
		Last Modified: Tue, 15 Sep 2026 22:23:27 GMT  
		Size: 28.6 KB (28642 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; ppc64le

```console
$ docker pull golang@sha256:2131b750ac50cb1ed48b6f653bc4bdd11b349f997a91359c98920f16c5e5c07c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.3 MB (348303776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0eae3a10a4883a88890e2954014e9092c6909207b36c2f161dc21954780476`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 20:05:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOTOOLCHAIN=local
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOPATH=/go
# Wed, 16 Sep 2026 02:38:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 02:38:44 GMT
COPY /target/ / # buildkit
# Wed, 16 Sep 2026 02:38:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 16 Sep 2026 02:38:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63d193985f4543178206a2cc1c3353653643f9eb15b11697b276d2cf6e690d49`  
		Last Modified: Mon, 31 Aug 2026 20:08:55 GMT  
		Size: 93.0 MB (93047161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ceb2c9618f01c240dc561b5c26ab7c2feab790a9451333a05b4a24f478c5ec`  
		Last Modified: Wed, 16 Sep 2026 02:40:01 GMT  
		Size: 102.0 MB (101993636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d51256ae8ea7e8a082b973b2e1d152de9b3c494ef9230a8a0cb0875fa726c8`  
		Last Modified: Wed, 16 Sep 2026 02:39:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:358b4230c895434e4e9fdfd1a9ac05f9c295fce927b977dafc90efcfd94c42ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10816302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90b094e60987ae1369b349b788197bd8c1ddfe1f75b59e161d465defb694be8`

```dockerfile
```

-	Layers:
	-	`sha256:e4c465b24738612daf6fb88080bb341b17240cbf44b25cf2135bf594c069c2a6`  
		Last Modified: Wed, 16 Sep 2026 02:39:58 GMT  
		Size: 10.8 MB (10787564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab4302dd58464b12a89566e61e23869952290965c345992ea1d106a218c6b465`  
		Last Modified: Wed, 16 Sep 2026 02:39:57 GMT  
		Size: 28.7 KB (28738 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; riscv64

```console
$ docker pull golang@sha256:1743a4d62ea9bb1667a93ade0952a50a028519822e18305f94185f19c2a6dfad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.2 MB (377178435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b225fa3d91ea1fa1a9079e2b18272eccc9e1ba3a763b7fc6a7627edf00cfa03e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 14:07:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 16:38:17 GMT
ENV GOTOOLCHAIN=local
# Fri, 18 Sep 2026 16:38:17 GMT
ENV GOPATH=/go
# Fri, 18 Sep 2026 16:38:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 16:38:17 GMT
COPY /target/ / # buildkit
# Fri, 18 Sep 2026 16:38:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Fri, 18 Sep 2026 16:38:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998a450dbf5665d7b23346e5edd3f14ec3ed363948028e24f7cdd66b5c7d3c37`  
		Last Modified: Sun, 30 Aug 2026 14:15:44 GMT  
		Size: 131.8 MB (131824586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bd73e8932c22c38a29e1c93bafa172950de1696918cdbc26fccc04275861c3`  
		Last Modified: Fri, 18 Sep 2026 16:45:50 GMT  
		Size: 102.7 MB (102674982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e308f45a69e51afb948d182cbd9fe58d7622c7a52b4f623f3fa5d52ceff0e93f`  
		Last Modified: Fri, 18 Sep 2026 16:45:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:6cebbce3d47ad7620a271e93ad4e20b5b402326be86022bdf929c34326a805a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10890140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9277bfc6869af2c2827a127e208307f2ab33d1505ccd51a2ff73efec8c4185ea`

```dockerfile
```

-	Layers:
	-	`sha256:c84707b6d66382a9bd4309018aab474d1970c5314e7bc4b27b293ee04a78ef2e`  
		Last Modified: Fri, 18 Sep 2026 16:45:36 GMT  
		Size: 10.9 MB (10861397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77efac6d4d3a3bb05ffb22f8834680ee4030f85b05047e798a51a4d8cedfaed9`  
		Last Modified: Fri, 18 Sep 2026 16:45:33 GMT  
		Size: 28.7 KB (28743 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip` - linux; s390x

```console
$ docker pull golang@sha256:1842600468f0799367a81c2ae671a01aa1a05a32d76ca429ebd0b1e63910686b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.1 MB (325077683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2e7478fc1f13dcfa7e1177220f2753dfadc269d42e83ce1a6e59cabb8dc388`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 23:25:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 21:34:29 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:34:29 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:34:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:34:29 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:34:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:34:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334300c98064ff5942417fd10ae134644c6f860affdb485eca1fa30795f4042f`  
		Last Modified: Tue, 01 Sep 2026 23:26:08 GMT  
		Size: 76.2 MB (76150238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02eaff3bf237d6ed567f2aaea3bd67c5d6fc4ab8eb1c840881d0932916c3870`  
		Last Modified: Thu, 17 Sep 2026 21:35:07 GMT  
		Size: 104.1 MB (104064361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be911d85ea221a4d2db5a628693d950561f555c2ba86e3b513f2fe30d8c43aab`  
		Last Modified: Thu, 17 Sep 2026 21:35:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip` - unknown; unknown

```console
$ docker pull golang@sha256:3118115be285ddb8b5777f1b2d377131e3a3fe095bfdce8bb3c707940b0e7cbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10631604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ddc631db71b46a628f2d4456f533a58d6457c3960869d988a57da6d14a1545`

```dockerfile
```

-	Layers:
	-	`sha256:d8ef748284e563dc2e016c3e8b5e3d488ec60f0fb848a17db46a8a0390455361`  
		Last Modified: Thu, 17 Sep 2026 21:35:05 GMT  
		Size: 10.6 MB (10602924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f93c445593e6b34337c08c4481c8dd9cac23d51f31e4297b92166e414838885`  
		Last Modified: Thu, 17 Sep 2026 21:35:05 GMT  
		Size: 28.7 KB (28680 bytes)  
		MIME: application/vnd.in-toto+json
