## `golang:tip-20260905-alpine`

```console
$ docker pull golang@sha256:e4deea68568fa1a1a71c8656c1cef3711badd2ea0891bd2fe1f71d96fc529219
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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

### `golang:tip-20260905-alpine` - linux; amd64

```console
$ docker pull golang@sha256:d9bb7f0da9752e15304adca7ef98a8df2a800d8196350d91e0fdeae633752365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110894196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb147e23ae3eabbd11dfaceed8b28c4222d3fb287d135c4f730288ccd680f279`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 21:49:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 08 Sep 2026 21:51:03 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:51:03 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:51:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:51:03 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 21:51:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 21:51:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbf52051563329ae6c6f7eef42beef5298e7a7675e88d56aaf5295c993f1b70`  
		Last Modified: Tue, 08 Sep 2026 21:51:21 GMT  
		Size: 245.1 KB (245069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac17540f5cceac916e4539f8deaa7cbe1cd8da5e1f61a1a2b7c72ecdfa1de309`  
		Last Modified: Tue, 08 Sep 2026 21:51:23 GMT  
		Size: 106.8 MB (106802578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6a4677332037b7cf199635d050a8199f23bfb6209baab1de0035d7b0c5b786`  
		Last Modified: Tue, 08 Sep 2026 21:51:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260905-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:d5744b9410c1be118464ac270ab2d1b5dccba3a3e7e1c7f5a8b31543eada966b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c44623ec12db3eb9d55bd5e82e64f1b276c9bf81f35dcbedc09c194f77cb679`

```dockerfile
```

-	Layers:
	-	`sha256:937c79d8562508d6e3e7543ceb24a4568944146c39eb1e60947dd052acff9b67`  
		Last Modified: Tue, 08 Sep 2026 21:51:21 GMT  
		Size: 178.2 KB (178233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79315f513fccf3b5b8c6106cda5483f003e4aab8d8a54af5ef5c46e14052c90a`  
		Last Modified: Tue, 08 Sep 2026 21:51:20 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260905-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:ade5ab66dac33ba0083e2245062ec3d7038045a8adf84142f17c7c50844c0b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106634553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ea1609c8ee3c6c973a8fd90788f0dfe2713c9dffca8e0bf8ee7b9e4f33a10b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 21:52:01 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 08 Sep 2026 21:53:57 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:53:57 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:53:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:53:57 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 21:54:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 21:54:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d3fc6beed277d013388ce9eed1d9141046de89efb8a7ae3f4d06e46d0332c9`  
		Last Modified: Tue, 08 Sep 2026 21:54:14 GMT  
		Size: 246.1 KB (246137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69f9f5b27ab94abf26bc938b425cc6019b096d896c7f02915bed7537392b36f`  
		Last Modified: Tue, 08 Sep 2026 21:54:17 GMT  
		Size: 102.8 MB (102834808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd508cfcbb937d350acf5f54f40db2ec292461ca5b7bac87ffbf9b7c976db1f6`  
		Last Modified: Tue, 08 Sep 2026 21:54:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260905-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:6baa2594896851d72780307feee1bc9e55ba7ed90bbc0d09db04d566ae35904a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2175f003fda827332056ab34ecc7956376101e67f0a77d6c6b97f683a6efefa`

```dockerfile
```

-	Layers:
	-	`sha256:7203d32a0c0dad58dcb576b33014c75c98f6b1c6888c6b86dd734057f22aa9fa`  
		Last Modified: Tue, 08 Sep 2026 21:54:14 GMT  
		Size: 25.0 KB (25012 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260905-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:bfd0a373041fab0fc57d8d2612433d7d7f743a112c9982e6a061178e6fb3a8b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106030694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223f02c01676b2ab626adf54df9762cbb4bcda92ff22918188b1d75062425675`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 21:50:12 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 08 Sep 2026 21:52:08 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:52:08 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:52:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:52:08 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 21:52:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 21:52:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895415103076a28ff829d4e3c2cf8fcf2e8e45ac913f2c01569edc249803c64a`  
		Last Modified: Tue, 08 Sep 2026 21:52:27 GMT  
		Size: 245.1 KB (245123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b736addc0c7bb190fb28c994eb775c4b9149f8b95ece971021c0922a87fddd90`  
		Last Modified: Tue, 08 Sep 2026 21:51:43 GMT  
		Size: 102.5 MB (102524798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef5f28609c68cd8f4ebe4250677af849f3285855f9c146bb97c16d9576d1e826`  
		Last Modified: Tue, 08 Sep 2026 21:52:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260905-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:3a4255d5f911e41dd5c1090f9239594fbbe9225fe024cfe8cfb6afe05d42c12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8734ceef95800c34e8fa25d350281be4d64f2a7af532866c3411b574931c3fab`

```dockerfile
```

-	Layers:
	-	`sha256:429e7750a21706b796c765e6c3220f4db2e959f3cb70f75dde25989c49de2473`  
		Last Modified: Tue, 08 Sep 2026 21:52:27 GMT  
		Size: 177.6 KB (177601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6cf8801aa16b1ff7b68f1e174a764f5d319b89726f91208259d9d2743f46c9f`  
		Last Modified: Tue, 08 Sep 2026 21:52:27 GMT  
		Size: 25.2 KB (25226 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260905-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5d44d33e1f42f1bcaae69349a9da5528b78e57549a5a54f139a2f98ebe5464b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105343694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0f6be6ff0dc1f76bc5457322af1ea4c23eb0366e8d69511a2ad4d56966d588`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 21:53:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 08 Sep 2026 21:52:45 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:52:45 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:52:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:52:45 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 21:54:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 21:54:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e952601cee01d24ccea57fd1cbe4830eb573b0ba7c517bb4aedd8850504f96`  
		Last Modified: Tue, 08 Sep 2026 21:54:46 GMT  
		Size: 247.5 KB (247508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9b7efd6afd01c2a4c783a8f61a196df40c8b99fcc4e927ebb9e0be51a36cb9`  
		Last Modified: Tue, 08 Sep 2026 21:53:15 GMT  
		Size: 100.9 MB (100912991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa35559df1c43acc77f768616a6bfd897a6b3b303329a5f34b40712c9af26e9`  
		Last Modified: Tue, 08 Sep 2026 21:54:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260905-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:f140c12391e6619d2509ec44e8df70c1792a343c7632758f793ce54a0ee9ee03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c2df17c34b882b27942ac1fbb0e3355c7dbd1411126ad270254ff782aea73a`

```dockerfile
```

-	Layers:
	-	`sha256:9af2d2863777511422815e4d1bdb1c66da5fa5296c56a34964e4679080cfa890`  
		Last Modified: Tue, 08 Sep 2026 21:54:46 GMT  
		Size: 177.6 KB (177639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5936cf7d51586d1fe208b8ca421850a64b13bda07fa5596e385f0009aa7fead`  
		Last Modified: Tue, 08 Sep 2026 21:54:46 GMT  
		Size: 25.3 KB (25259 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260905-alpine` - linux; 386

```console
$ docker pull golang@sha256:1b4048e600ff4986889aa2cfb633a20720fdecd45819d5e4c57871e197fe9ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108675951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed976183c0121ea6b4ccca7ff5df87094316d7bd3811feb38209c01d6252ea56`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 08 Sep 2026 21:50:56 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 08 Sep 2026 21:52:40 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:52:40 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:52:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:52:40 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 21:52:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 21:52:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a48b31a2890e1a7182b2d78eb69af67ebce819d5abb55af5afa39f308706e4`  
		Last Modified: Tue, 08 Sep 2026 21:52:57 GMT  
		Size: 245.7 KB (245653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0147ca65fb42a1c50d6e29537e267f9a761330f8e8325a648de2209a3b0fb512`  
		Last Modified: Tue, 08 Sep 2026 21:51:27 GMT  
		Size: 104.8 MB (104759999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97925682e81ba4e74c3925444c9e634811a8f2ce2f464d096fe29bc3ee2e2c15`  
		Last Modified: Tue, 08 Sep 2026 21:52:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260905-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:75319487db9581fc0509729041263d8df9f21b58e3b275763507752b6896e138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 KB (203245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0707a31de11cf79b0cad26eacda15df6609cf021437d91d84c443b220c32f13a`

```dockerfile
```

-	Layers:
	-	`sha256:9ddea07185ce04b5f1a94cf6e816d9732861f4daad42ccbc972dc049804f4b77`  
		Last Modified: Tue, 08 Sep 2026 21:52:57 GMT  
		Size: 178.2 KB (178190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36e462837bc11536312c0c71095b29a5b44c17179deaf4f226de0c54b7fca18c`  
		Last Modified: Tue, 08 Sep 2026 21:52:57 GMT  
		Size: 25.1 KB (25055 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260905-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:2f1d1e07751b30d408f83ed497ab9b6ff37ee66b5d19b42d3bc91137c7d861f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107315679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a257ff8f9e96bf9744fc025d714070f46f59586a85739e1843dd2a2ab3b711`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 20:09:04 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 08 Sep 2026 21:54:10 GMT
ENV GOTOOLCHAIN=local
# Tue, 08 Sep 2026 21:54:10 GMT
ENV GOPATH=/go
# Tue, 08 Sep 2026 21:54:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 21:54:10 GMT
COPY /target/ / # buildkit
# Tue, 08 Sep 2026 22:01:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 08 Sep 2026 22:02:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffbdab6c90a4322a9180bc8e51cf7e0d5252d269efaeaca51c8841d8f5e6f45`  
		Last Modified: Mon, 31 Aug 2026 20:11:50 GMT  
		Size: 247.9 KB (247925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9303b243b143ded787a4bc1455983d7a51b7b67d2848e6f305ffc6faeb6b60`  
		Last Modified: Tue, 08 Sep 2026 21:56:12 GMT  
		Size: 103.3 MB (103254196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e9512a0429ecec70dd6c94e2840caa4cb016978ebc55df42b416fd423cc60a2`  
		Last Modified: Tue, 08 Sep 2026 22:03:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260905-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:19d6ca13a316b218e5d5bcaac2b18d24d23864fc95eedd2ee2eaa88b80957d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4fc98cae50f30e076c79e13a350ae5082be9bac7b04603c81c4e0089932011`

```dockerfile
```

-	Layers:
	-	`sha256:d068c1aa0362f96f00232add83f67d40346c385be3367751010b7d3ac9b82238`  
		Last Modified: Tue, 08 Sep 2026 22:03:03 GMT  
		Size: 177.6 KB (177634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c11afb3896735c00d5c7ce304a09178fdf873e0c2d4aaafcc97efd8087a52c1`  
		Last Modified: Tue, 08 Sep 2026 22:03:03 GMT  
		Size: 25.2 KB (25156 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260905-alpine` - linux; riscv64

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

### `golang:tip-20260905-alpine` - unknown; unknown

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
