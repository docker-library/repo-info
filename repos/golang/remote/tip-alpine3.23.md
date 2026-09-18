## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:9243a1362c2291f3ba0dd7eb470e302884fa19f3b2079fb014cf68eb85ca3dd2
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

### `golang:tip-alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:32b6a9aa33b6d72c20adf2642f76ad802deff077b9c14a5f3fc9ce14da7ea17d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109550122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058b848c9b16109da80b0658ed41b00168093c301e949b46c1661636571705f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:04 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 22:25:30 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 22:25:30 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 22:25:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:25:30 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 22:25:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 22:25:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8b93319c563e830501464d47c98ee276fdb901ca614fb2703e5f4721e84ba1`  
		Last Modified: Thu, 17 Sep 2026 22:25:49 GMT  
		Size: 247.5 KB (247509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7984364c80cd3e9761745232561ae808c7875b1c675fe35a820ab7faba4a7d30`  
		Last Modified: Tue, 15 Sep 2026 22:35:56 GMT  
		Size: 105.5 MB (105453948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30b899c87b4a4a30428e3524c925a971a4881a8385d01591a209577c7402ea9`  
		Last Modified: Thu, 17 Sep 2026 22:25:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:61ac31d66f4718926e03cd8003b74452b7ac4a099cc8b3a7989eda367ecece1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20fa2728d344dc77f006e7bf6f72375762ec499309fdef1a51a892bdba078338`

```dockerfile
```

-	Layers:
	-	`sha256:ee817b5e749fce5d788f752049e90ce8d02895e94bc44f903b9f818c34fd96ce`  
		Last Modified: Thu, 17 Sep 2026 22:25:49 GMT  
		Size: 178.9 KB (178900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a0f700a0e8e0607393c4c3a936981b6153f7a5f4e4ed1ef238c8c6975db9fd6`  
		Last Modified: Thu, 17 Sep 2026 22:25:49 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:cad667f3bdc3223987705a6bbfdb04a58aa1be7e3e00cdd13cc201048d76a532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105452737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e53b79f0a4ef5b74e3966c0c37e660424b4ac6012549c85a52fbcc4e71dd6c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:39:05 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 22:40:50 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 22:40:50 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 22:40:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:40:50 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 22:40:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 22:40:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0fa3b815843f5a512e39960416b04944ad8ff82d23070c70947f964a84999d`  
		Last Modified: Thu, 17 Sep 2026 22:41:06 GMT  
		Size: 248.5 KB (248459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb9508dd029c503a81a8bd52b79a32b5213c3ae31081f2fd0601d9e9ccd2b75`  
		Last Modified: Tue, 15 Sep 2026 22:27:50 GMT  
		Size: 101.6 MB (101649194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc0a184df41419324316f9fa491d4c690ad073f930c7c932a577617b6de8b3`  
		Last Modified: Thu, 17 Sep 2026 22:41:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:31e0cae2a848634fcfa706dfd5e3641575bcdf0232911b936c2cb087daac3e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19edf587a264574e70316c0fdea3e5cb37c8817b171ecb190e23532acbc8f23e`

```dockerfile
```

-	Layers:
	-	`sha256:779a6f97b320e9c2f851b910c4295eae82187ff502cdeb7e37e66dce0680e88e`  
		Last Modified: Thu, 17 Sep 2026 22:41:06 GMT  
		Size: 24.4 KB (24366 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:9a6bf44accb36a9d0c88880895eeff9649d845646d5c39d17a4cc9e4e8e9fa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104835392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808801b95e8f2d4d1574eb3549a3b5331768e5490ed60ef0bc4064dcae71ef07`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 22:43:38 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 22:43:38 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 22:43:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:43:38 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 22:43:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 22:43:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e898337927197f93ecc02336ca74a48f0483d9567fbe206624cab30bdc4a1e`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 247.6 KB (247555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a8118ca32c9948b098dacae41a0ef4f00bc8c18d9d65a6518bba5d8fdb4961`  
		Last Modified: Tue, 15 Sep 2026 22:46:37 GMT  
		Size: 101.3 MB (101324765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8c91db84a08c9beb7cd983918c5e50cf6f975e92af601d05ef910dd82aca78`  
		Last Modified: Thu, 17 Sep 2026 22:43:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:2f92e72548445baf356113fa51df89fabd8e44cdf343391796a22c594b1b877a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c58597c20bc6550a5337358e1b101f98420bff15f744ca46cb5d9d8b34298f5`

```dockerfile
```

-	Layers:
	-	`sha256:b0b79b75ffe49822ae53de67d0eda13abf6ab89951593dfdf29bb6b31e1b5fb0`  
		Last Modified: Thu, 17 Sep 2026 22:43:58 GMT  
		Size: 178.3 KB (178252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:565a56faaa461249cea3221e3d952b736a2bfb928253f5a3f076f38d82b25e6e`  
		Last Modified: Thu, 17 Sep 2026 22:43:58 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:92f42715068d230ee967ddb2c0de0429a812555308f9f0b41497d2fbdc7e97e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104216842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4fe5a8342480d96d12cc6aa9b54f1b78d86b1c507f8b6b86a915d775fb4e134`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:48:19 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 22:49:31 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 22:49:31 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 22:49:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:49:31 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 22:49:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 22:49:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b35a13e8aefc44e779db59072622389567d44afe2468f382da46ae007a2ee9`  
		Last Modified: Thu, 17 Sep 2026 22:49:49 GMT  
		Size: 249.8 KB (249838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18b6513c88a847af1c37f160e3913f457d3bc3723fc14f1e120510ea5e92930`  
		Last Modified: Tue, 15 Sep 2026 22:23:46 GMT  
		Size: 99.8 MB (99780790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e9bbedc60a44af8f0faa3c08599a64e5d8001cc43cf1eab2382630907014ab`  
		Last Modified: Thu, 17 Sep 2026 22:49:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:db5b13b0b8f22bc87d93f797eac82bccc3feb7bf364186050e8866ab5600b233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1125a3865810384a466891771c9b5d2e9932494103d1ad9403ca9f256f84646c`

```dockerfile
```

-	Layers:
	-	`sha256:3a0aca7bf020fa111efb562cb0234e38c76b1fe2387aaa53c354a4191a25f862`  
		Last Modified: Thu, 17 Sep 2026 22:49:49 GMT  
		Size: 178.3 KB (178282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f7426458c628feaaf0eb1693b32dc99a91bb74407250e2026564754ad928701`  
		Last Modified: Thu, 17 Sep 2026 22:49:49 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:33923949963f3d9755893a53a7a51c3c551005a030ad4d4c24afb1a7b3640850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107289165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675efe2b0814daec068a9b5fe7fde556f30e13e9b93677ed7deedf66ec29933d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:21:54 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 15 Sep 2026 22:23:27 GMT
ENV GOTOOLCHAIN=local
# Tue, 15 Sep 2026 22:23:27 GMT
ENV GOPATH=/go
# Tue, 15 Sep 2026 22:23:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:23:27 GMT
COPY /target/ / # buildkit
# Tue, 15 Sep 2026 22:23:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 15 Sep 2026 22:23:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ffbb9ea1c1deba166d4cb14e927e731cd8be7423057fdc758d56c84306e37d`  
		Last Modified: Tue, 15 Sep 2026 22:23:44 GMT  
		Size: 245.6 KB (245574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674ba6bfdf2c64013eea230b964b8c691dae63c1096886f4d77b5a6042ef67ab`  
		Last Modified: Tue, 15 Sep 2026 22:23:26 GMT  
		Size: 103.4 MB (103375443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc7f98fe858bc31766be80f86ba585b732558367b907e47f1f49b435e6a8319`  
		Last Modified: Tue, 15 Sep 2026 22:23:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:4c41f09dcb308a84055c1e7dcc84b1ef5d06fe26ab4c8253911ab09098eb2515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 KB (202010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef54b9ae267c55d999871e006efe53448c85e82903342ddf49ce0c402f51dda9`

```dockerfile
```

-	Layers:
	-	`sha256:1c32c37938952e36bb3ede544362d04bd8240f76af000bca3753641cc6c00b57`  
		Last Modified: Tue, 15 Sep 2026 22:23:44 GMT  
		Size: 177.6 KB (177574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fd718fc1163a6367637337cd0f90566f6778bdc8603078649612078b2b0e4ad`  
		Last Modified: Tue, 15 Sep 2026 22:23:44 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:5a342e53d9f7301a86d78b139e795de3c38ff39f50b6656affbbdd829a709a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106054002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f087a4e78db7a00f0f37a3faa87397e411a0828e01b365219149e1c7892b50b7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:35:31 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOTOOLCHAIN=local
# Wed, 16 Sep 2026 02:38:44 GMT
ENV GOPATH=/go
# Wed, 16 Sep 2026 02:38:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 02:38:44 GMT
COPY /target/ / # buildkit
# Wed, 16 Sep 2026 02:48:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 16 Sep 2026 02:48:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c573765b09b24aca0c81a2ec6fd7fd55ac09922a693c253d9ed444b9e8b24cf5`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 247.9 KB (247909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ceb2c9618f01c240dc561b5c26ab7c2feab790a9451333a05b4a24f478c5ec`  
		Last Modified: Wed, 16 Sep 2026 02:40:01 GMT  
		Size: 102.0 MB (101993636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a695e6220c267cdbfed7514aa31b2d2ec01aaff942ec350c9fb8983903a239`  
		Last Modified: Wed, 16 Sep 2026 02:48:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b6dbd5d53280ce1f16685d2a39e68710f1b94a5c3e2a82c9172acced50e0ea21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 KB (201511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e8ae83abffc764960fbb228130f9c3bf28f6164fefeff475e5cc53a1d4d053`

```dockerfile
```

-	Layers:
	-	`sha256:e3bd0a58389d9201d6b4555e0691f4947f1c9a488ff16bca1b62bec74a937a7b`  
		Last Modified: Wed, 16 Sep 2026 02:48:21 GMT  
		Size: 177.0 KB (176996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f06baa49d8bb39d0f90336a45b83a6327a67f8ec96148b4f38e13976b4c6b31c`  
		Last Modified: Wed, 16 Sep 2026 02:48:21 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:ecb28d50f329ba71b85fc2c1414ab34007287dd398aae1bb5d1822bfdf43235f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107772192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266849b71699ec994682c4e5f404b8b9a13a7eb2220eb937cdd52fee8cb85b81`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:06:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 08 Sep 2026 23:02:07 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 23:02:07 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 23:02:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 23:02:07 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 23:02:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 23:02:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763e37d0b14f752701961821911203ad5187201b24aff2865f93072c9c427a4c`  
		Last Modified: Sun, 16 Aug 2026 13:08:36 GMT  
		Size: 245.5 KB (245482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95d3f110433c8b4d3147c53b9cb531fc5e83ffb0a235d18df5923510b3f9aa9`  
		Last Modified: Tue, 08 Sep 2026 23:05:44 GMT  
		Size: 104.0 MB (103953314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce6e24317a8ff0c9b0d70d23e7445572a663be320c754c45de3042a8a170eb0`  
		Last Modified: Tue, 08 Sep 2026 23:05:29 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9c5e9a968b204d8c2e200179ee934d7e61bfd898c6350488d52e76172ed25d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 KB (201507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1139ecaa090f260d6a987e41408bfbe43efc3a9b862217c7e25843aae85ba5b5`

```dockerfile
```

-	Layers:
	-	`sha256:c7e1908cdf85261c40e35ddfb5e0656aa6923812948b9fc766d3df762cf6f636`  
		Last Modified: Tue, 08 Sep 2026 23:05:29 GMT  
		Size: 177.0 KB (176992 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff96b4135016b3930fa43089b9f3c95f48329e66660f230d24471943227fc2d7`  
		Last Modified: Tue, 08 Sep 2026 23:05:29 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:2cb67decedc99c5b6bb0fedf6ed7396d0b4083a685ef142780c6d8e9086cd1b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109235306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d7374a7ac83b7afdd041620bc9745fd1172804779ef78923abc8181d76ba7e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:25:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 31 Aug 2026 19:08:21 GMT
ENV GOTOOLCHAIN=local
# Mon, 31 Aug 2026 19:08:21 GMT
ENV GOPATH=/go
# Mon, 31 Aug 2026 19:08:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:08:21 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:32:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:32:55 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3710e0868e52965c92e51695026c829a917fe06c1a1181ca4b32ad3ff6de5a`  
		Last Modified: Tue, 01 Sep 2026 23:25:51 GMT  
		Size: 246.1 KB (246141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cf706a32919aca7b61ca98611a2df2887125374161a1b8b1b5cfb7fd6fb8cf`  
		Last Modified: Mon, 31 Aug 2026 19:07:59 GMT  
		Size: 105.3 MB (105281758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33f2c26d12513b0e14e5c1073f504c90a7966ccfb6a8975a9d81d914274f9c1`  
		Last Modified: Tue, 01 Sep 2026 23:33:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9effa0a3aa4aba53d9a4bb4170a24c034e779a3d4ad05099816716d0171f313e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 KB (202173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:444736ca98c4204e0919fe419a52969d322c360dda2dfc3ecef365e29c28c4a0`

```dockerfile
```

-	Layers:
	-	`sha256:74f8a187c987aa0e42f8fc22aa1a2466795a18f3921bcbe98eb98f49bc583642`  
		Last Modified: Tue, 01 Sep 2026 23:33:11 GMT  
		Size: 177.7 KB (177704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:960e49bc30ed88b338ca725130088e586f95cd9f8e868f71d802838039a3caf3`  
		Last Modified: Tue, 01 Sep 2026 23:33:12 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
