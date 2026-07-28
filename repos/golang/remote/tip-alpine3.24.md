## `golang:tip-alpine3.24`

```console
$ docker pull golang@sha256:4a348cac0c406e1989c4cb71edb44fdb861c687c12b8bda5941c3e0ae8091ce2
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

### `golang:tip-alpine3.24` - linux; amd64

```console
$ docker pull golang@sha256:9686659d973f023ee4f181830c87cedd9ab9320801ee5062fcc764fdc92d5031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106079832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c6099905b807de526f94739cd400cbcfd26e447e656dd6dad7ec87e0c50e82`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:06:38 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:08:29 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:08:29 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:08:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:29 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:08:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:08:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151becd93d7a4167acacb51dd5672a898ec904fc2fc19bb13301abc17ff60cad`  
		Last Modified: Mon, 27 Jul 2026 22:08:45 GMT  
		Size: 245.1 KB (245059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70182a89e7d87356ef54209ef5025f5029805de8d8545608195eb8152d0595e9`  
		Last Modified: Mon, 27 Jul 2026 22:08:48 GMT  
		Size: 102.0 MB (101988224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a15ac411ff8f58e3a66af1c0c9743b3c2483b0b96ef9ad682c7e8c2590b1c2e`  
		Last Modified: Mon, 27 Jul 2026 22:08:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:028c7bb548ed06aedb9dd7540fb406287657bcfd30fa9f448ddaef644e3366bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:697de520cf3dc929f46c3503d2f31083dcc09f8a7d9cc6fef2835c7f52eec9f0`

```dockerfile
```

-	Layers:
	-	`sha256:a646be00882a9173c355e0a773284e026faee645218a522e2906168005e96e48`  
		Last Modified: Mon, 27 Jul 2026 22:08:45 GMT  
		Size: 176.8 KB (176752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4bf87ca036bdf298b73c76bfaeeeca74c87fec5e06ff709e9ccb3a2db905ed7`  
		Last Modified: Mon, 27 Jul 2026 22:08:45 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:da590031001f1bc47367dab099239490b9a4dcecaf7612b9edda0cfd29dd6b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102160362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc384c5f640948fe01db503638a87aca1c163ed452532a98854c1bc4ac539ce2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:03:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:06:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:06:49 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:06:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:06:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737401551d5e7603257fd23c7220a3d5324266ed50974b14f761e9ade57dc2fa`  
		Last Modified: Mon, 27 Jul 2026 22:07:04 GMT  
		Size: 246.1 KB (246136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e9cc25946692310da1cfe48c646383b2db2accc298cb5efc82dd8095ace6b9`  
		Last Modified: Mon, 27 Jul 2026 22:07:07 GMT  
		Size: 98.4 MB (98360618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3552207931e8e31d8b096bd0d0589ba194bcf97e5d960b867cc0f00e4a5936`  
		Last Modified: Mon, 27 Jul 2026 22:07:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:55074753e56f82b24027a3e3d1bde177280c8f079e9486fa1e91914f63f3730b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6734e1c0f1e03c66130f167d9160fb58254e569b66a6d64e16ad7fc54cf3c690`

```dockerfile
```

-	Layers:
	-	`sha256:b1a595c73781f6a0868f4e59fd7bb9d8039a9f362bbdfc3ebe9cd1388a3654f5`  
		Last Modified: Mon, 27 Jul 2026 22:07:04 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:58ada75198ec7d5fa50d951817f422e16265eef45b72cdbf94d45ff01b8a835f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101558893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00dc76851e205e22f55dbbf785a9c6f4cb4274f2cfa3fa1b256165bda4ddd941`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:06:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:09:39 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:09:39 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:09:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:09:39 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:09:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:09:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d095ea66045f1f3aeefdd14348407ebc7efc787978caa91bbfc30d575bdfd9f`  
		Last Modified: Mon, 27 Jul 2026 22:09:58 GMT  
		Size: 245.1 KB (245119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b961a0d50988d7c9a177ec9e923fb9a4afbedfc3d31275eec2c42aad2d0e7f`  
		Last Modified: Mon, 27 Jul 2026 22:09:51 GMT  
		Size: 98.1 MB (98053000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6bda15d2d2097e2b6274b74c5eb3627bd2b799033ffb0e3f2b6486c9372243`  
		Last Modified: Mon, 27 Jul 2026 22:09:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:f956414361b2de5d4c27563987b051c9047e6da98a2873b938483b87e8d742ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7263c26e61e74758b71bf3ea007d099d7e724785450f46e9a2fcdac1b9c73269`

```dockerfile
```

-	Layers:
	-	`sha256:773a740e613da1eb617d3bfcc61ddb5cff9626186cdd4a6581acced14860d789`  
		Last Modified: Mon, 27 Jul 2026 22:09:59 GMT  
		Size: 176.1 KB (176122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfda736109b14adc98c146ecf6c735e64c4f75b74e671f169bf9a207d06c0840`  
		Last Modified: Mon, 27 Jul 2026 22:09:58 GMT  
		Size: 25.2 KB (25223 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:dd82233a701f07efd1eb65883d1ac5090d61f221907152313b7cad0ac7ba26b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (100979569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef49048f07b4d930ffeae9c4ae6613ae5fdae569e4b4c5705b95e4f7efe4e3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:06:20 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:08:14 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:08:14 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:08:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:08:14 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:08:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:08:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a5c8124ef11bef74a390d224bcd9d6eb81237abd580b5400e3f7fb8c426f9f`  
		Last Modified: Mon, 27 Jul 2026 22:08:32 GMT  
		Size: 247.5 KB (247511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce80571b63faeb14e5839d68cda387b1895c1438d8dec5f05ca729001e5415b0`  
		Last Modified: Mon, 27 Jul 2026 22:08:35 GMT  
		Size: 96.5 MB (96548863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd053e6081b87fa00d28b25dbeef872804b6f2858584b0b896f3e9b37151201d`  
		Last Modified: Mon, 27 Jul 2026 22:08:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:bd5484b0d86bc42b955ae45bca8bdec2d00e7cd8f0f8ec1611b306b8c45cf7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:134af3277774c8a76c26959208157a3ed4bf68221f8f56d389a66138a21c7a75`

```dockerfile
```

-	Layers:
	-	`sha256:4febe41c57f44ae063871017138b31b9f411d4f8fc56db2b9ff8ecd041eb111d`  
		Last Modified: Mon, 27 Jul 2026 22:08:32 GMT  
		Size: 176.2 KB (176158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7712442d450284fa625f4ab8286487122c51b133a76d654e6069885179189eec`  
		Last Modified: Mon, 27 Jul 2026 22:08:32 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:b974fb940bb7893f75f202af7e73b868b47b2f060c1726f104f6cd1418873175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104025456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69c71650d06833d28d7eb72b9e16f38c06fa1fb10048e834e363c34e6c8e01d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:04:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:06:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:06:36 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:06:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:06:36 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:06:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:06:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e3badfc744249b4c30cee3f6fcf35b019a28067358631d972861bad5b3d885`  
		Last Modified: Mon, 27 Jul 2026 22:06:53 GMT  
		Size: 245.6 KB (245591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5a3aaa3a009e10bd7efced5fa5120668bcb54de583202a8de6e5e6ab444e4`  
		Last Modified: Mon, 27 Jul 2026 22:06:55 GMT  
		Size: 100.1 MB (100109566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676fd111e754590577ea6accb141f01f4b301529ab28cb683ef165d6540668cc`  
		Last Modified: Mon, 27 Jul 2026 22:06:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:adc9a5e5e8fb529a345235be3fc3f520ff53bf656017d355f16c74021d83824f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1867286c7958dd5bbaf9d254143faf2640b63ad862e6c3d4a77413575bf3eac1`

```dockerfile
```

-	Layers:
	-	`sha256:56ea86ecd04f535059f44af16f8267f25b6c6e139eeaa84a606dbf57d98519eb`  
		Last Modified: Mon, 27 Jul 2026 22:06:53 GMT  
		Size: 176.7 KB (176711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73b24b971f0add1ee42f797cbe3725c74c0144831429359c034ab182682b7383`  
		Last Modified: Mon, 27 Jul 2026 22:06:53 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:6c8d44252aad7dcd071e4f30d12fe7c5ff4f0fa87f0bf31ab7c8668f96a22e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102760888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524ab61ec83107a78124c317d44ae13164bb5ca76e986b351475203d1efb1228`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:13:20 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:07:27 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:07:27 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:07:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:07:27 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:13:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:13:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8f3743677e2130e3042ab5c98f2b6b215f0854ec22790e14bc92619b7a49e1`  
		Last Modified: Mon, 27 Jul 2026 22:13:46 GMT  
		Size: 247.9 KB (247922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83158c867f68c393c40d80d5a7ca238c6f40445a0d20991e9d1d2641b7fc173`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 98.7 MB (98699408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7394e0bb6b7efa0757b8afc518319d5d32b3dafb9cda34970b5f8bc583e5a6`  
		Last Modified: Mon, 27 Jul 2026 22:13:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:3e353907c716bf6ebb9e018b7391eb7e1a25935aed6f8e3e003972d57c73e884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c636bb6e329e6086fb53e8a1adcbbffe8e899acc11e6e960c56682ef72b9abf7`

```dockerfile
```

-	Layers:
	-	`sha256:5873e214a4fbf1696f0125c300e1ec54f6183c04b35b6e6d622108a74c9add04`  
		Last Modified: Mon, 27 Jul 2026 22:13:45 GMT  
		Size: 176.2 KB (176151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:636c84ce7d493dd6c1164ef2ebc9e8ed0957040338b14bfa499a61cf4d955d51`  
		Last Modified: Mon, 27 Jul 2026 22:13:45 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:ae1de1f59337031007f0038d7bff9dcddea0e54fe3a939afe51ac55b1d6207f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103445207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95acbf94fd9ebb8dd97b2d9d9add6ce42a8d89f9871239d1eee9aee63601785c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 18 Jun 2026 07:35:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:45:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:45:26 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:45:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:45:26 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 23:36:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 23:36:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2021d7589f6c18103a6d7e004a2611e54bd2e48edc8f74827e7357bba545c1fe`  
		Last Modified: Thu, 18 Jun 2026 07:38:04 GMT  
		Size: 245.5 KB (245484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a5772b4cc1953cda36dc836a2216136a33f1844e18cb64168e374be9436847`  
		Last Modified: Mon, 27 Jul 2026 22:52:39 GMT  
		Size: 99.6 MB (99625207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6dafa7c0a89a7ce8ac14afd9c8a7c6deddfd16659aff64cc2bcf27b3843d8a`  
		Last Modified: Mon, 27 Jul 2026 23:37:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:127d6691f075a77f7fa399f21732b2e1e87d30a86b121080796dda9154306c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea85d225d479fdfb253a2e8462672453ae700e8d5575b28030faa9a7fab71db9`

```dockerfile
```

-	Layers:
	-	`sha256:716a56aeaa77ccf101e5217f32c20d8d082917f298bfbbc9240412fa0aa3ba48`  
		Last Modified: Mon, 27 Jul 2026 23:37:17 GMT  
		Size: 176.1 KB (176147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e595e3eb0bf7f7371d050b8df9882fb1dd421cd6eb3e26dc8eb711336c30cc46`  
		Last Modified: Mon, 27 Jul 2026 23:37:16 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:8344cdb0f21c164092085ffe3248504e102055b7be0aa8c6b6f9d5c397c3a576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104710889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8964ac598f3639b10ec7cd94ac10d6cd5490e8301fc00e8481f0f0d8eb00997`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 27 Jul 2026 22:06:26 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOTOOLCHAIN=local
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOPATH=/go
# Mon, 27 Jul 2026 22:06:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:06:26 GMT
COPY /target/ / # buildkit
# Mon, 27 Jul 2026 22:06:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 27 Jul 2026 22:06:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c259f6d33372d7ae45e3c42e81e889ba1d67fe89807ff7452e5291215f9c890b`  
		Last Modified: Mon, 27 Jul 2026 22:06:51 GMT  
		Size: 246.2 KB (246150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4901984dca8b01222f860172bd7d3abeec2877520e2c096cc3d0112238dbcb`  
		Last Modified: Mon, 27 Jul 2026 22:06:53 GMT  
		Size: 100.8 MB (100755261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdce94f43dd9ba914e8c30dd7f7ed6fbfe36c76641c00a7bbecbedaff89decc8`  
		Last Modified: Mon, 27 Jul 2026 22:06:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:70d046a8a117c328281b455538167845cb6e29b711cc4b423ccfd4da8fa72547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448c9d180dac6d4252a002c8bb300581b4c9820e9ab2296c9623159b5f7275a0`

```dockerfile
```

-	Layers:
	-	`sha256:b1a7b5b3fbd5dcdb08493c5dea965ebaa1696b07dc0118ca50caf6a53986c57d`  
		Last Modified: Mon, 27 Jul 2026 22:06:51 GMT  
		Size: 176.8 KB (176849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84007898b208433d2cf6df965f4107bdaeda9b0c725d43cf5fb1926ae9a3b450`  
		Last Modified: Mon, 27 Jul 2026 22:06:51 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json
