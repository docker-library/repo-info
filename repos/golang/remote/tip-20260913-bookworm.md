## `golang:tip-20260913-bookworm`

```console
$ docker pull golang@sha256:be213163e4861db2def022c35b09fd660b531f067d4bdac6ec1ba03101f1731b
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

### `golang:tip-20260913-bookworm` - linux; amd64

```console
$ docker pull golang@sha256:b31ef124c6adc37684924b834e359583530b876962ac4198ce41622c8886af50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.0 MB (334996727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee107db61179256e872a25960135acfc52f4c20601bd0c218e15cbb682c26174`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:34:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:35:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:35:36 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:35:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:35:36 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:35:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:35:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea661648ceada729be7c839cb02ac9d77958bd33dce3b15be324022d6f2875f`  
		Last Modified: Tue, 15 Sep 2026 22:36:02 GMT  
		Size: 92.6 MB (92575947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7984364c80cd3e9761745232561ae808c7875b1c675fe35a820ab7faba4a7d30`  
		Last Modified: Tue, 15 Sep 2026 22:35:56 GMT  
		Size: 105.5 MB (105453948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c14e95def74a131e5dc3fe0eaf3b939ad8ea9ef86e9da3003e0209de255b42`  
		Last Modified: Tue, 15 Sep 2026 22:35:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:779d3d446675b2e9b30a6d0fca6fd7eead0ace5836512dd369c97f9c44a4ef43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10531931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d435377feb0c343d22d9c074c2f680cdf982e8dc090350b20ef9dd5bd16df5`

```dockerfile
```

-	Layers:
	-	`sha256:9b140e1fd401829d49b7a0986233173d08419f352270182dae354649cb169e54`  
		Last Modified: Tue, 15 Sep 2026 22:36:00 GMT  
		Size: 10.5 MB (10503829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b89def784267bac9ff751882a4fb2cea6f26347a9e3ecfefb78fce77bd761932`  
		Last Modified: Tue, 15 Sep 2026 22:35:59 GMT  
		Size: 28.1 KB (28102 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-bookworm` - linux; arm variant v7

```console
$ docker pull golang@sha256:29744150494d91fd2806f0bcf3185da8ac51627619b0735e6e78865de1243946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293579236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f559e543010e51661b1b71562f85b0492641b7909c3266e99559dc0501054b0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:44:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:46:23 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:46:23 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:46:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:46:23 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:46:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:46:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca08be0fd7d081e4e78483a7fa3f9237219740d03869baa583db09e6007a80`  
		Last Modified: Tue, 25 Aug 2026 02:36:28 GMT  
		Size: 59.7 MB (59663002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b006675117c0393b47538a413c8f608e64028d37132f8e8b1bcf93ed36eb14b2`  
		Last Modified: Tue, 15 Sep 2026 22:46:53 GMT  
		Size: 66.4 MB (66426518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a8118ca32c9948b098dacae41a0ef4f00bc8c18d9d65a6518bba5d8fdb4961`  
		Last Modified: Tue, 15 Sep 2026 22:46:37 GMT  
		Size: 101.3 MB (101324765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6b070d8c2f49197cb47db4c04de993531030cc2478b104acb381a00ea6c509`  
		Last Modified: Tue, 15 Sep 2026 22:46:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:c8e31254529c4424f9f0fa76c1fd530031ec582206cfabe6addce07b7ae4cf39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10338736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b7b4ffd94dc3495e9ba369591c4a5cb061aad81d019020be6755479745a8f8`

```dockerfile
```

-	Layers:
	-	`sha256:e96b66efbf583ae3b04776533368100dd34e02b3a6e35afed4751718e01baf0d`  
		Last Modified: Tue, 15 Sep 2026 22:46:50 GMT  
		Size: 10.3 MB (10310523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f77d8da967935753fb6dc58eaeb258e49da6be2af5f591229082a37d2dfc1e0d`  
		Last Modified: Tue, 15 Sep 2026 22:46:50 GMT  
		Size: 28.2 KB (28213 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-bookworm` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9ec15f9a114409f3ed061bda713edd44d2b5d53fb77231f82968f46aceebd656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.9 MB (322935236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd995b797ea4233d53cecbb483d3f568957372ae253056b6787954dfa354da28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:22:14 GMT
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
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31bab81415952531c319f218a207fd821a1e7491358b05c4c044b32f7b917083`  
		Last Modified: Tue, 15 Sep 2026 22:23:46 GMT  
		Size: 86.6 MB (86641800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18b6513c88a847af1c37f160e3913f457d3bc3723fc14f1e120510ea5e92930`  
		Last Modified: Tue, 15 Sep 2026 22:23:46 GMT  
		Size: 99.8 MB (99780790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3355260e56f35bc96a7d32ae35742314b15d6ed4c153d5c939532c73a287cfc`  
		Last Modified: Tue, 15 Sep 2026 22:23:43 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:b5f1e45028d8037561b18d834f085eee23d5e68520080d086fb2a366e944d756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10559887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6124a661d83ac17f4e3a9250ab3067f6d8cf4f1f2c5eab4a636e0e31c78dae27`

```dockerfile
```

-	Layers:
	-	`sha256:7ff9c5c32d97373821171115870262475f28e8d984ac8214a62b44cf89d6d6eb`  
		Last Modified: Tue, 15 Sep 2026 22:23:43 GMT  
		Size: 10.5 MB (10531653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea143fd529ed7eef7ddb6b2a6eb2f36a94d713e9022f4ddba07a0bc43e3f03ca`  
		Last Modified: Tue, 15 Sep 2026 22:23:42 GMT  
		Size: 28.2 KB (28234 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-bookworm` - linux; 386

```console
$ docker pull golang@sha256:efb4128b643368bc894b4438dc03c03f1534adf5c8eb617ef69166db95095a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333995361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74c011469eb18f3554abcaccf017fd82997992c5a0434b50df30f30bfd43614`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:21:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:23:21 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:23:21 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:23:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:23:21 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:23:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:23:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900bdd75b1bff668db87c57193fc93484238fbbc250f83a36df417cadc73eb32`  
		Last Modified: Tue, 25 Aug 2026 01:42:05 GMT  
		Size: 66.3 MB (66252378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8aec34c7fa2c0ee6faec6d832891da196d9cdbc7e209cf2d63353ae47289d69`  
		Last Modified: Tue, 15 Sep 2026 22:23:49 GMT  
		Size: 90.0 MB (89991548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674ba6bfdf2c64013eea230b964b8c691dae63c1096886f4d77b5a6042ef67ab`  
		Last Modified: Tue, 15 Sep 2026 22:23:26 GMT  
		Size: 103.4 MB (103375443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1f9aeef3c4acff4cdb5feaf707dc2c38efa08f662c1dd8962a3e27a980ad29`  
		Last Modified: Tue, 15 Sep 2026 22:23:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:6f8a7f5a0ea4450ca7f7dcadae3b88bb9f8776a8874de850b0b95e48a22bc3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10511476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c96a84bd3cd516bd974e02ecf26e7149686181545120fd453da50c96859220a`

```dockerfile
```

-	Layers:
	-	`sha256:30d60d4067ab59bfe22059ddf61ae2b82e7a818222d09f87b17021d24e183c34`  
		Last Modified: Tue, 15 Sep 2026 22:23:48 GMT  
		Size: 10.5 MB (10483407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bc3921cc786d1ad121fd2b05fad930b9b6cb20fc791090db1890dae0240a594`  
		Last Modified: Tue, 15 Sep 2026 22:23:47 GMT  
		Size: 28.1 KB (28069 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260913-bookworm` - linux; ppc64le

```console
$ docker pull golang@sha256:e0967d29b562b8b992432d32476cabe0ae0f895ad567774eee944ef53d9d0721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340438403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241dd63dbf9db17b230ff18f084598438d096cecfd6c7752444b403c07c1bf9f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 20:05:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	; 	dpkgArch="$(dpkg --print-architecture)"; 	if [ "$dpkgArch" = 'arm64' ]; then 		apt-get install -y --no-install-recommends binutils-gold; 	fi; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOTOOLCHAIN=local
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOPATH=/go
# Wed, 16 Sep 2026 02:38:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 02:38:44 GMT
COPY /target/ / # buildkit
# Wed, 16 Sep 2026 02:42:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 16 Sep 2026 02:42:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab97d6c86c4c9d046b724863206ba218be9b417cddc31a614c2878f576cc609c`  
		Last Modified: Mon, 31 Aug 2026 20:08:50 GMT  
		Size: 90.5 MB (90543108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ceb2c9618f01c240dc561b5c26ab7c2feab790a9451333a05b4a24f478c5ec`  
		Last Modified: Wed, 16 Sep 2026 02:40:01 GMT  
		Size: 102.0 MB (101993636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5aac45e6ed053121bf0a96639b97e6cc7d17533414cbe945806c8cb4fadc45`  
		Last Modified: Wed, 16 Sep 2026 02:43:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260913-bookworm` - unknown; unknown

```console
$ docker pull golang@sha256:04e1ac2d9c49a7ff1910984a986770e42739bbc195f2cb493a47b2d766f21999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37326563e0484a91958795585c0d2bbd1778a5e4629930ba0f13d61faa2e1863`

```dockerfile
```

-	Layers:
	-	`sha256:9b1b6f91c548c896a9a608968e11e0ec86d7dae0218c8d6d540413168e6bdb67`  
		Last Modified: Wed, 16 Sep 2026 02:43:14 GMT  
		Size: 10.5 MB (10476316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d07ec500d6f1eb21aba5d268fb2ea3d9afa6fc5e478e46a1edaba416d9f3195d`  
		Last Modified: Wed, 16 Sep 2026 02:43:14 GMT  
		Size: 28.1 KB (28148 bytes)  
		MIME: application/vnd.in-toto+json
