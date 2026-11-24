## `golang:tip-20261122-bookworm`

```console
$ docker pull golang@sha256:81b4fcbb29796cf3087579ffa800b1e809dd75e4aa7f359d66a66deca9a1865f
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

### `golang:tip-20261122-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:4efc0bec780573338f4c9bc1b6849260659bd0045722148273193d0065261935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.0 MB (336951438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07934d9bf5f9730ff2e99361c0f719d75de88254b60b33cd39ca5f06a31fe9ab`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:20:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:16:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:18:11 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 07:18:11 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 07:18:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 07:18:11 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 07:18:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 07:18:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d5603818e4025d8c8e4b5578914535e7e3466d860768e69f957f49fc5fac8`  
		Last Modified: Tue, 24 Nov 2026 05:21:02 GMT  
		Size: 64.4 MB (64432507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c9a478bd1647f33d5b422791fcee65af513f340ad3a05f444b50c77cb19f75`  
		Last Modified: Tue, 24 Nov 2026 07:18:43 GMT  
		Size: 92.7 MB (92679393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efe33ce08c2ab749d7e469454c13bd2c73074fd6987df765916f579beb88f77`  
		Last Modified: Mon, 23 Nov 2026 21:52:44 GMT  
		Size: 107.4 MB (107439749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddc4df64e4f5d548379cbc05c8c26c3b06fe1da3b7886e9db4469f43b1078b9`  
		Last Modified: Tue, 24 Nov 2026 07:18:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261122-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:30daf857e6ca1d8fb0489dca5fc900fe68a908d451a00b23070632a2ff426c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10529174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60166f1ca115a0c19752e86721d37be4a897d4b0c9967435c7f4d81f59cc694a`

```dockerfile
```

-	Layers:
	-	`sha256:533a450e483ee3b8b88fb8885b40be56018de4c81623f5dfa42247df260acca0`  
		Last Modified: Tue, 24 Nov 2026 07:18:41 GMT  
		Size: 10.5 MB (10501073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0789179bb74a1bcb0865a661b7c57d5e43c2dd13347d62bcfe34e853da6b017f`  
		Last Modified: Tue, 24 Nov 2026 07:18:40 GMT  
		Size: 28.1 KB (28101 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261122-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:bf568425d263f890bd7b4da16ae672ee969623f3b287cf1e76290c1756738cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295577883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc11c3433aae1b3c24c7d97eff12b83c7b250e50a20270ba01141c5799a935f4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 08:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 08:21:24 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 08:21:24 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 08:21:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 08:21:24 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 08:21:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 08:21:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bf46e8a44ab51f3c808ab48aaf11399ad2da7d0966cd41620337234ab118fa7f`  
		Last Modified: Tue, 24 Nov 2026 03:39:44 GMT  
		Size: 44.2 MB (44223203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd6ac0d814892f590af7533060e7d411f4b069b41846d6b77643c1ec671212d`  
		Last Modified: Tue, 24 Nov 2026 05:16:06 GMT  
		Size: 21.8 MB (21769445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22aecb817db0f9e40c6e19edcff5610744501481756bfd0fbc3b3cfe54d407ef`  
		Last Modified: Tue, 24 Nov 2026 06:42:14 GMT  
		Size: 59.7 MB (59697363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e715bf5c460060cecd35d687aa4a93357f66be6092e2aa9c18924f0a197f0a1b`  
		Last Modified: Tue, 24 Nov 2026 08:21:52 GMT  
		Size: 66.5 MB (66532431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39b245899a237a3af132c690f97082215657bd5be945fcbe2d30fc351bd15f3`  
		Last Modified: Mon, 23 Nov 2026 21:52:15 GMT  
		Size: 103.4 MB (103355283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23249f393f5701a0bc71237607f3091ee29706ac9d1bbe753ee97528a174b21f`  
		Last Modified: Tue, 24 Nov 2026 08:21:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261122-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:501f50017cdf6b08f8f8735ac3decd14f42a23057cf17eda79721c636e8cee34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10335981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5130ba7424bf560ef09d43f05bba27d3479e19d549033a1c0224985014ad8fb3`

```dockerfile
```

-	Layers:
	-	`sha256:17e488f3139244240262814b728cd804a969d7c400459867fa8a36a9ff81afdf`  
		Last Modified: Tue, 24 Nov 2026 08:21:50 GMT  
		Size: 10.3 MB (10307767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56a0f556c80f5c378c4d2cf8f0a762b70e11e47e07e55db8397ac3f76465a16e`  
		Last Modified: Tue, 24 Nov 2026 08:21:49 GMT  
		Size: 28.2 KB (28214 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261122-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:518f89f864eb62ec051216f996c0e4154b89a5fb6063e3dc4ef5607c0833e969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.8 MB (324776332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bb80ac87a8e6521d9b673ec8e62dd277a4a3cb39414f5d70245f8bfc0c6b94`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:32:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:18:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:17:37 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 07:17:37 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 07:17:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 07:17:37 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 07:19:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 07:19:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4d528de4b5383d96c1d03b858675d089f6dffcb1103cda3766265f17482fda`  
		Last Modified: Tue, 24 Nov 2026 05:32:20 GMT  
		Size: 64.5 MB (64528539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a89aafc476c6236c45a041d734a1ffc2cbb464a22e3bb0905cc0541d72b0aa8`  
		Last Modified: Tue, 24 Nov 2026 07:20:00 GMT  
		Size: 86.7 MB (86749597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5832b11a785e394735436b1d989145581e95a9a87780254d1918be0af3a577`  
		Last Modified: Mon, 23 Nov 2026 21:51:59 GMT  
		Size: 101.6 MB (101645398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998009020e9d3e669d4988923548813bd8502f9a1fd965368b581af7e7389a0`  
		Last Modified: Tue, 24 Nov 2026 07:19:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261122-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:63d549a4f567efdfb593585978cdee65cd3c067cbd7b70aced3561c734e674d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10557135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb46f15d97f6d9753c8d231eb215b7a6fc4661ee2d424713b34d0b896d367343`

```dockerfile
```

-	Layers:
	-	`sha256:be69cc0259bd71d35703f285ae444c1ce3b13bdaf0a07ad36b4ea4478b3224ca`  
		Last Modified: Tue, 24 Nov 2026 07:19:58 GMT  
		Size: 10.5 MB (10528897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fae1fc402f428a4adc37c6659fd5b8473768b34df89a0a4d79c11ca0a0f99a6`  
		Last Modified: Tue, 24 Nov 2026 07:19:58 GMT  
		Size: 28.2 KB (28238 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261122-bookworm` - linux; 386

```console
$ docker pull golang@sha256:cf1355ce584d0130dc682b1f0113fe5cf2b78de9a72db7f96d608883e9c1ab7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.8 MB (335796535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:679d0c9cf5e8ab2035acb2be50136f1d776407e5169e3f78f7a0bfa95adb5cc0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:24:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:12:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:14:22 GMT
ENV GOTOOLCHAIN=local
# Tue, 24 Nov 2026 07:14:22 GMT
ENV GOPATH=/go
# Tue, 24 Nov 2026 07:14:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 07:14:22 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 07:14:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 07:14:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88783f32aad09b5608dad8e3ae3a279d819927fdfd70306f643bde0f0d4fee0c`  
		Last Modified: Tue, 24 Nov 2026 04:41:12 GMT  
		Size: 24.7 MB (24703788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dab45eed6abc8d2bffa7ecbd77476aa63bebb9085d90a9465823b63c72419c`  
		Last Modified: Tue, 24 Nov 2026 05:24:37 GMT  
		Size: 66.3 MB (66278926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0c4a78549ea2fd66dbe1fba77397035654626c249b4c6562a336bb3b5058fde`  
		Last Modified: Tue, 24 Nov 2026 07:14:51 GMT  
		Size: 90.1 MB (90099692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4213e3c8db6bf2b11a1cac7a3711fe6e326415ca3b60eb2f135ec39bd863251d`  
		Last Modified: Mon, 23 Nov 2026 21:52:20 GMT  
		Size: 105.2 MB (105198439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6282e7d60148bac51bcecc95efee9c730b9937ac95a03f9f9e6b9e3fb1cc70a`  
		Last Modified: Tue, 24 Nov 2026 07:14:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261122-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:ba0f8657275c93d5c4efc163ec869edd25e62aaa8054149d8583e5dff7208531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10508722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7127f4b350cab96bf84705d1531389154dfa98f4226634141f8d3766798ea89a`

```dockerfile
```

-	Layers:
	-	`sha256:876f8c7550ebaf6be049753d66e73606d61e70114d111e672d59a52c79093d64`  
		Last Modified: Tue, 24 Nov 2026 07:14:49 GMT  
		Size: 10.5 MB (10480653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48557c89beea1262f427aef67c97ab80ffbc5c5d3aadfc7b50e1d91cd964c737`  
		Last Modified: Tue, 24 Nov 2026 07:14:49 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20261122-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:a47cb6181ed3b2b4f1e76a359fe07609235cda5918bd4b37d6cf4cb80a5bc451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.5 MB (342490661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85be719071e3237f4421b3c1491897fc1fd4a2e4f16fae06605859eaa98ccb7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 06:50:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 14:03:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 17:02:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOTOOLCHAIN=local
# Mon, 23 Nov 2026 21:52:13 GMT
ENV GOPATH=/go
# Mon, 23 Nov 2026 21:52:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:52:13 GMT
COPY /target/ / # buildkit
# Tue, 24 Nov 2026 18:21:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 24 Nov 2026 18:21:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7ed8c49f58d7cef751e5a8d933be1e5cbede20189d3feec192fcca8c63783a`  
		Last Modified: Tue, 24 Nov 2026 06:51:01 GMT  
		Size: 25.5 MB (25515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8a075a611c950b5418ef5c183f5c32939050bc2f1b43d9f568986900fa9b4b`  
		Last Modified: Tue, 24 Nov 2026 14:03:43 GMT  
		Size: 69.9 MB (69899368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1bf07d06e9448bbf0b4e295b852948c79a848b92368ffb799682b88425f63d`  
		Last Modified: Tue, 24 Nov 2026 17:03:54 GMT  
		Size: 90.7 MB (90671615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6398754657f6617d56396f3bdc393c5a6e4b0491499f8730567ce43a74afb4`  
		Last Modified: Mon, 23 Nov 2026 21:53:45 GMT  
		Size: 104.0 MB (104035836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7bdeb29ac1659efb56fc64b7e26cf46de4d9824e860e6c3e25f83342500b34`  
		Last Modified: Tue, 24 Nov 2026 18:22:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20261122-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:2e3a06e289e664128cf538ed2847611d80eeab65b0cb08f537fcdcf5cee61bf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10501530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c045596f455a6c77fdf1e5b59728b5df73b4585b74dcafc196ab50dd142c0b45`

```dockerfile
```

-	Layers:
	-	`sha256:76e7c06bb2c1982374352e3410139a0d67e2b6ad54fc6829104ed2fa78c3bc61`  
		Last Modified: Tue, 24 Nov 2026 18:22:28 GMT  
		Size: 10.5 MB (10473556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e81f61f564a6af05d43f0636ea8858722c717202dc67c4a787c31e98509d551d`  
		Last Modified: Tue, 24 Nov 2026 18:22:28 GMT  
		Size: 28.0 KB (27974 bytes)  
		MIME: application/vnd.in-toto+json
