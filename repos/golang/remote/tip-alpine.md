## `golang:tip-alpine`

```console
$ docker pull golang@sha256:cfea34cd4dde4e32527a61b3b4451ea067566abe3baf9745e6118d485e653fe5
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

### `golang:tip-alpine` - linux; amd64

```console
$ docker pull golang@sha256:01f169da191bc2f9007d203d5e9d20ed8c5e307e8e92062445529d175ee70951
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109460250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0f4fccd71f558e4ef1b9e980d5c996f43c9ffe8b75a9598587ece004cb3086f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:26:45 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:28:13 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:28:13 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:28:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:28:13 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:28:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:28:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44ec14f68f97139d0158e99286c44d42bff0bbf6fd2087bbad17aa3d28b56f8`  
		Last Modified: Tue, 22 Sep 2026 18:28:31 GMT  
		Size: 247.5 KB (247529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2a3c1e67403e8ea59ff8dfb66f8fefe8f254e9f8881c0f25465bc655250617`  
		Last Modified: Tue, 22 Sep 2026 18:27:48 GMT  
		Size: 105.4 MB (105362824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc8f83a45ab39e9b8e2b49134e83bd57fb0eea83ea36734d1b0fc1733eba425`  
		Last Modified: Tue, 22 Sep 2026 18:28:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:8472a2f06acf1906f5539dbeddd54cd632beaa4cc466b1ed80c7278d03474bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 KB (204625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9ffe001230a72d23e16c07dc0e92a93762481fb0a6de84397614d6360837694`

```dockerfile
```

-	Layers:
	-	`sha256:5e2a7ffcf922ef99a9e2159021fd6f0d093550c3b612b4329ebdbaed5ebb1618`  
		Last Modified: Tue, 22 Sep 2026 18:28:31 GMT  
		Size: 179.5 KB (179526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc7cc61787f6f14af2957234ae48c7c176db53c27ada7193d1eb96dc81ade218`  
		Last Modified: Tue, 22 Sep 2026 18:28:31 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:a7d174cce691d96674cd6bc6aa6636317e385fcadaf86cfb74b51783216243c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105370594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746561361a856dbd37f23b5fff3d3c1960a50923a9274e6c5230ce3e85a76aa1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:25:18 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:26:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:26:59 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:26:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:26:59 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:27:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:27:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3a7e0f65aadcba46e0229dc73850f8dbf6f5469171733ff91af9c1aac79eee`  
		Last Modified: Tue, 22 Sep 2026 18:27:16 GMT  
		Size: 248.5 KB (248491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68842e2e406c391a6f70cc120efb661116ff4f95979902d4467e41e42433bf6`  
		Last Modified: Tue, 22 Sep 2026 18:27:19 GMT  
		Size: 101.6 MB (101566832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b5c1e04d9355a03f16523d354015c8cbf772cadc629da61e0f0c09413d10ee`  
		Last Modified: Tue, 22 Sep 2026 18:27:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:c4c84d8d892dd3af2d03833844251c99d4286f291313a1f5142a0ba59649c2b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6dfd310fc7faaa7ddccafe522648015ed288a529c3d3ff151a998f9f3b5bea`

```dockerfile
```

-	Layers:
	-	`sha256:7238704066cd93095c10fb533ab67b026e378cdefb0a663c6a511ae97bd2cbd0`  
		Last Modified: Tue, 22 Sep 2026 18:27:16 GMT  
		Size: 25.0 KB (25012 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:07d833a8c293a0b23011f47df4163098b07e0fbca2eb3971b925d93df865d672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104752298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58372875fa46e433131f2d5022730f4044d61e29de0453619a2c3597d506212c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:27:24 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:29:07 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:29:07 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:29:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:29:07 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:29:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:29:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80284e87c82b2a343972c06c3321a39d81fa36c797f60f17aeaab06ffca050cc`  
		Last Modified: Tue, 22 Sep 2026 18:29:27 GMT  
		Size: 247.5 KB (247544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2594fec72c274abdbe5fd8210c1dcaa3280face8fddb9c0eb3ed407fe446637a`  
		Last Modified: Tue, 22 Sep 2026 18:29:03 GMT  
		Size: 101.2 MB (101239393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5750693a3d0e86922eabae2eddb561301def29099107d06a492103801024aef3`  
		Last Modified: Tue, 22 Sep 2026 18:29:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:520a9547825d7b550a6892d238af326a1c5e4d8100a472f0d7c631f5c27190c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15236c5b58877a7c5165fbee2ce653ed7bc64ead9ac12b8d7c895924087b60c4`

```dockerfile
```

-	Layers:
	-	`sha256:5bb7c5de09690e7dfa9f680809c5bcef83c68ae6ccc0d882aadef46e3c27edec`  
		Last Modified: Tue, 22 Sep 2026 18:29:27 GMT  
		Size: 178.9 KB (178894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca34453a31e040921d82a692bef7bca459f244d5c4d6bd394dfdc14dae99cd08`  
		Last Modified: Tue, 22 Sep 2026 18:29:27 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:419ee9d9906aced0e95697f237b959a8aec0e34e63fafd4b8088da6031de1169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104108042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c01a1b27bbed6ff25e3cc2e6e0e68e24e84514561f8a5edb4362c19427158f3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:26:34 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:27:46 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:27:46 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:27:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:27:46 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:27:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:27:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3b8fc308f99414734ff7d2fbea052680d39c3460cca3287112b84128ecc86`  
		Last Modified: Tue, 22 Sep 2026 18:28:04 GMT  
		Size: 249.8 KB (249820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c144e38cf7ccfd8bb72ace03340f27e2482b99ba6853dbdd5d404ea1f43670fe`  
		Last Modified: Tue, 22 Sep 2026 18:27:14 GMT  
		Size: 99.7 MB (99670404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c954e9a56afd081043d1d1aa186f13662ba80014aa69f816ef68c7faa80af783`  
		Last Modified: Tue, 22 Sep 2026 18:28:04 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:3dd2aec29ea84615e6b8b7b2c047061e7dabecb8ff5e17a53b28a3b0adc271a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf338bb40e0710243cf1d667cac29e81b77e3f6438e63abfb4bc1701329436f2`

```dockerfile
```

-	Layers:
	-	`sha256:a0b3a543b4e905adbc6e9b05418f4758eba26df6bc2c2406ef15cb6245097817`  
		Last Modified: Tue, 22 Sep 2026 18:28:04 GMT  
		Size: 178.9 KB (178932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afb311819bcec8855a6140ced968f1cfaa308f00baec1c8dcb4238855f6f3df4`  
		Last Modified: Tue, 22 Sep 2026 18:28:04 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; 386

```console
$ docker pull golang@sha256:021831ae6b2f40b834d6bc1be85f115e3d51a1cffa9d90c3a03998aa235956fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107236158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95faee1e240e1893b145386a6cb4256b55a2c98d09ee53258ff2bbadc6ab66f8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:26:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:28:16 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:28:16 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:28:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:28:16 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:28:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:28:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd543319a35c075e247f5b10bfff63725067358704245d2843212cca528e174`  
		Last Modified: Tue, 22 Sep 2026 18:28:34 GMT  
		Size: 248.0 KB (248039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a59a96cb04c952ad5d49882f36043709a09e4eb2b1b32a1358cc20c369b7122`  
		Last Modified: Tue, 22 Sep 2026 18:27:58 GMT  
		Size: 103.3 MB (103311180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e592e51b773aaa7614b8dec3d3337869260c9a0c3a75eeae40c0510efbad504c`  
		Last Modified: Tue, 22 Sep 2026 18:28:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:9a3c121b087208a73c9ba134aefa27dceda9d201be419e0ade6d865f4d1c98e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 KB (204539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216b47c02391e7196c98ec83999c27165f0478e27d878001f91565059a2d4583`

```dockerfile
```

-	Layers:
	-	`sha256:c50ee20336a929aeb30db45664059c43b541d3dc82ee4a43bc475548ead2ac97`  
		Last Modified: Tue, 22 Sep 2026 18:28:34 GMT  
		Size: 179.5 KB (179483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93a27ebcad271c07db5eb4a7e13257aee32347fb383ee50c282fa60c56599c9d`  
		Last Modified: Tue, 22 Sep 2026 18:28:34 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:5ef96844cd7b9cc37209f014ef32941a99b8d2d9ea439e04505fa5417d0c49b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (105955137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0920138d9677a69f92f9ece1c25e17fe3866d1f36a36a39006afdf82aa8747c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 22 Sep 2026 18:30:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:26:51 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:26:51 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:26:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:26:51 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:30:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:30:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6683705af79fcafde185094ffca66bfb1eb10f1e8cf19eab7a6716e494969e`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 250.3 KB (250275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf5065b0a443b25220e866e886b20470bf7bbbb219c2fec2f97a7f7a28c0691`  
		Last Modified: Tue, 22 Sep 2026 18:28:01 GMT  
		Size: 101.9 MB (101887227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde23737779d418252d0b37133bb8fa539310ca984ca78e3e3a49389263a4a54`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:c4426bf1c8c4572869335ea4db2d9aa6e0aa3e33f5545132e0001fb84266a5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8091c8e6880fa80de633f636e48b0fe0dc1852581915de66353d40d75873c122`

```dockerfile
```

-	Layers:
	-	`sha256:fa1696e1ed22e6f5571c44c112848be2b56916577faceebb5677b1ac69dce614`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 178.9 KB (178927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bd293573b381470f61d28027f7cf76314c8f86b670965105e081526ecd47a6e`  
		Last Modified: Tue, 22 Sep 2026 18:31:20 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:80098a235784e7805b958389178b94cb1d000ca0981d8fe281342d05275bd2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107773327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40410d0348f5fb7695302a6ef545861786e3c2e2ac2670f1d97ff3c7914f387e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:03:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 08 Sep 2026 23:02:07 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 23:02:07 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 23:02:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 23:02:07 GMT
COPY /target/ / # buildkit
# Thu, 10 Sep 2026 05:42:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 10 Sep 2026 05:42:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4eb8a0847d9b0c7c04686bc15eb9657f78c75e47160e656e88ff25111d0b39`  
		Last Modified: Sun, 16 Aug 2026 13:05:32 GMT  
		Size: 245.5 KB (245497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95d3f110433c8b4d3147c53b9cb531fc5e83ffb0a235d18df5923510b3f9aa9`  
		Last Modified: Tue, 08 Sep 2026 23:05:44 GMT  
		Size: 104.0 MB (103953314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a581cc7b42852d585eee967879d0ba20eaa980ea5a8b208eb82fb3dc8228d4`  
		Last Modified: Thu, 10 Sep 2026 05:44:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:930ca6ccfefc2a395d56e7a53e4829cf74194ab8afd86e0b84df200764667bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975f251247d38d2aaf6b2486fcfed73c9cd2282ff7dfe5716a16e34961a2cd86`

```dockerfile
```

-	Layers:
	-	`sha256:f10816cf5e31261a9a7d0a7d419ec1ff091330dcbf437607bc6246597c476066`  
		Last Modified: Thu, 10 Sep 2026 05:44:14 GMT  
		Size: 177.6 KB (177630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08f8f18447531af7d8cc5ff03ce6b1911c0952b5f824b96d171ac0349c0a67a7`  
		Last Modified: Thu, 10 Sep 2026 05:44:14 GMT  
		Size: 25.2 KB (25157 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; s390x

```console
$ docker pull golang@sha256:bc65703e0d96173fc3a0d2b34dcf53c9ddc84417f8813154bcd42d25ee211663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107914545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d3bfe25a7a167f5cf1978d947dee61781aa6a5c9d968f5b370b078dfda9c23`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:39:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 22 Sep 2026 18:27:20 GMT
ENV GOTOOLCHAIN=local
# Tue, 22 Sep 2026 18:27:20 GMT
ENV GOPATH=/go
# Tue, 22 Sep 2026 18:27:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:27:20 GMT
COPY /target/ / # buildkit
# Tue, 22 Sep 2026 18:36:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 22 Sep 2026 18:36:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36aeb084a89d36054756f2ecffa521adb23085a615dcfce9150711f711b136ad`  
		Last Modified: Thu, 17 Sep 2026 23:40:18 GMT  
		Size: 248.6 KB (248568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e9792bae27e8a4f51cdf2dd333fb7ed79a26fc5949f65e44a75f6a4ce898ab`  
		Last Modified: Tue, 22 Sep 2026 18:28:42 GMT  
		Size: 104.0 MB (103950480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0d2a467a0de04dd594c4fb6e8bcdb515bf1c2a4906a1a757467ee334d3a9da`  
		Last Modified: Tue, 22 Sep 2026 18:36:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:96a47bfe2fad62f743ea9615747214c320cf081d88767298890afe59f24fdd63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 KB (204722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:624eaeab4166df60fda185c1f1bfb7ea3e9cae5366607d5d16b972be6f6ded04`

```dockerfile
```

-	Layers:
	-	`sha256:a51e757674937abb4761b9ddec83fbe6f0e6ba9e2a0f46948098cb60c785ae2a`  
		Last Modified: Tue, 22 Sep 2026 18:36:58 GMT  
		Size: 179.6 KB (179623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60a08b32b75b12585aca8d5438e4b72ee8bff7d4688a6d2820c5ca2dc63db8df`  
		Last Modified: Tue, 22 Sep 2026 18:36:59 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
