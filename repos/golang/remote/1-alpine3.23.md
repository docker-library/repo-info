## `golang:1-alpine3.23`

```console
$ docker pull golang@sha256:b17af760035fc2f338eed92d448a6c67f2d45438844fc6c60678fa5f99e44b57
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

### `golang:1-alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:9002107029a2333e1cf00327799187cd0f31070e97efebdbd3fc929a257e2f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71397846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6122cebe641e4b70cd6ed8818a3a2b764d9b8207823243c4aa937dd42edd9789`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:49:19 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:48:54 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:48:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:48:54 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:48:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:48:54 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:49:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:49:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa7c99a68b8360a8f995a0c563ef3ec8739e6adaa573ee4852f6534b682ff74e`  
		Last Modified: Wed, 19 Aug 2026 17:49:33 GMT  
		Size: 245.1 KB (245058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f862ff06300a1a1a02de873a4916a50a5ab95003e0368047090a584dc363cb`  
		Last Modified: Wed, 19 Aug 2026 17:31:55 GMT  
		Size: 67.3 MB (67308211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f488a505b6da2e8e813579888006f94aa4ae1db23293858a08e4984d05e82f`  
		Last Modified: Wed, 19 Aug 2026 17:49:33 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b24c9bdafca4797e8aa5f02f7db6c7e41a9d233084eb602582e2fc39d600b4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a287e47510149f535150ad894022e55e1e83fa7b48bbdbeda5453e4e32f9fe`

```dockerfile
```

-	Layers:
	-	`sha256:7ff490e694c7177dbb82733197b923476a6deeb407ff8203a274cd75fe01eddb`  
		Last Modified: Wed, 19 Aug 2026 17:49:33 GMT  
		Size: 177.0 KB (176956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:780b307607a396c0c2d03d3d5c7d0b216fcd12faec261057ad1e850629cc2867`  
		Last Modified: Wed, 19 Aug 2026 17:49:33 GMT  
		Size: 24.8 KB (24806 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:7f83b4ef0867d72e5ea2523c68c5a5eb51adaee4021c45236e19c2bfaabe3787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69642500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76646cf38edf64e29daff6c05ee41934539fa4bb6a8732115c389c7ef56db17c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:50:44 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:50:54 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:50:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:50:54 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:50:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:50:54 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:50:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:50:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa0a8bbe30bc88fc67bd7ba79e0c52bf3213829d22b10e88bbb7ffdd787042`  
		Last Modified: Wed, 19 Aug 2026 17:51:08 GMT  
		Size: 246.1 KB (246145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699d5b3855957cb7eef07c76a72cea919221aeba411d386a9cf1511eb19afff7`  
		Last Modified: Wed, 19 Aug 2026 17:50:24 GMT  
		Size: 65.8 MB (65843603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8b1ec6f17017525276058023b051b25b550eebb83f63f6e93db0819690c851`  
		Last Modified: Wed, 19 Aug 2026 17:51:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:f17e0c38617833b71b64eaee131575d527a112b5d5180d7e52cf1fa4982796fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 KB (24698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:089c79dbc139e622c240a8b61e1b3fafc3b4980c7de883f88a932289f2ef1f53`

```dockerfile
```

-	Layers:
	-	`sha256:8d4ad3c2257a10a750a62e42386249eff83e17f510250fde2d56fee4d8c9d3c4`  
		Last Modified: Wed, 19 Aug 2026 17:51:08 GMT  
		Size: 24.7 KB (24698 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:fd763fa1b159466fc9ea4c685edb10c4cd0263843625a9ef346f86b56349ef2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69351136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08f88fbc46cfc175d182a736d149fcd84b32829da992f4049d332631b0e5c08`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:50:59 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:51:08 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:51:08 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:51:08 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:51:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:51:08 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:51:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:51:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f965c5978f423c7bc742dbd4a723182918af68616458467d1b2a2ce50d9d68`  
		Last Modified: Wed, 19 Aug 2026 17:51:25 GMT  
		Size: 245.1 KB (245138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63db3652ddb4dc5e193831bd445cd140444ac80ea4d0902af61eab9e4bc1b2a1`  
		Last Modified: Wed, 19 Aug 2026 17:50:25 GMT  
		Size: 65.8 MB (65843987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de9e9bb1166fe8bf2d7e8bcff67470d7660a3bcb0f13c8d861c69db948edae8`  
		Last Modified: Wed, 19 Aug 2026 17:51:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e384bc4ba9265b52c202e1f6b79a5776fa760ed3429454fe9aa4656883259c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 KB (201237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cef9602e6116d426208ab9c3b88d9a0f30a097b546c0a34c32a521c9e0ec782`

```dockerfile
```

-	Layers:
	-	`sha256:185cf14c14bef579c9574b1fc9aac8a0ea7e264322ee3e5c7e4af22b5ecc2710`  
		Last Modified: Wed, 19 Aug 2026 17:51:25 GMT  
		Size: 176.3 KB (176326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11114e11154abfffda3a3b955978dc7dd43ca642181f017a747de5c0aeb7ba83`  
		Last Modified: Wed, 19 Aug 2026 17:51:25 GMT  
		Size: 24.9 KB (24911 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:b1f7d39f3df776a5457eb35695ceefe4aff397cc0a661536d3e49e49b5d8a0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68650557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30913d56f2ab76d310dc28c2beae0550b9ac56b8e8100160b2f27dac4b0a1882`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:48:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:48:44 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:48:44 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:48:44 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:48:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:48:44 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:48:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:48:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7dd003c6c397472dc88137dbd89c1ba92c21069eca16dfac92deb65199d0d0`  
		Last Modified: Wed, 19 Aug 2026 17:49:01 GMT  
		Size: 247.5 KB (247497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c655cc1f43ce5f189d82e57023ce1d05912f7cd5b6ae76647b40778ddad95934`  
		Last Modified: Wed, 19 Aug 2026 17:49:01 GMT  
		Size: 64.2 MB (64221042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a361ff7bee47029754affed050fa2ca507a17cbdb6c9c0b4b39039a634173fad`  
		Last Modified: Wed, 19 Aug 2026 17:49:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:092bd87c2ccf729c7cd42b106f15b5a2f7981c227f1619702758857a6a298a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5301b13a98dab5b8a95302a3afa4b85953f2544f0a2f8584ce18c5e57b3f5187`

```dockerfile
```

-	Layers:
	-	`sha256:cf92ca4cd721eb2aa00d6e4244d1cc5637e850b50fe6cdeb80d63f7cf581f57c`  
		Last Modified: Wed, 19 Aug 2026 17:49:01 GMT  
		Size: 176.4 KB (176362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:317de355d8f209dbcb4426bcf980c332c2a7b6e6b7be1b19af3a987aad2b121e`  
		Last Modified: Wed, 19 Aug 2026 17:49:01 GMT  
		Size: 24.9 KB (24941 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:d11acde37f7fe268b945f43929ad911285317f4ded65c727855ce75ec101a2a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69559000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3ab06e99b44d0735e46dc6bde1b835a719ca000ac6c241ff97bd609e0e22e2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:51:17 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:51:25 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:51:25 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:51:25 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:51:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:51:25 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:51:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:51:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:171a206bc0fb8dad35502588cca2fc9fb57c9edaa27de67ce27ed0bc1f479102`  
		Last Modified: Wed, 19 Aug 2026 17:51:40 GMT  
		Size: 245.6 KB (245583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edb134c4733796b33fe93db5bd18feec5a7887055d9b63cb6574616ff6f319c`  
		Last Modified: Wed, 19 Aug 2026 17:51:19 GMT  
		Size: 65.6 MB (65645269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710269203382be79b9502618f7cd8e85b6fd43b140b96818dfbeb8c09074913f`  
		Last Modified: Wed, 19 Aug 2026 17:51:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:5d13ac381ad0636e2d137f94b09dfd6eaba91fefb64720f431fdaca7fc8f1c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 KB (201686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5445bc8bbd291d5a2d1d8bf425a175c9ea9c3987afe63b95134ff6731a4c87c2`

```dockerfile
```

-	Layers:
	-	`sha256:76f2bce4afe0d99f9c8c077068839f1fd61b0b983667d02e8811208009c06e52`  
		Last Modified: Wed, 19 Aug 2026 17:51:40 GMT  
		Size: 176.9 KB (176915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a42ac6e46d8f5f4a007cc2ee9404f68f286c863de00a8cbc5929eea7f788f2f`  
		Last Modified: Wed, 19 Aug 2026 17:51:40 GMT  
		Size: 24.8 KB (24771 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:2d3a3803f671efd39bea74335003866da209c39786d5532067801acd8c5f6189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68959735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82928b19d52f8e1352e3da032ab82767caa1ea0cd0dd180c9d0e2ba2148c7670`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:35:31 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:30:50 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 18:30:50 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:30:50 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:30:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:30:50 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:35:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:35:50 GMT
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
	-	`sha256:958cbddf16dc304cf67db1893c84df3cec9a471d13eb9488ff01b809730c913e`  
		Last Modified: Wed, 19 Aug 2026 18:35:14 GMT  
		Size: 64.9 MB (64899368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e810a3e713a9b56b8417f6c8d312c883e1d5f65da77e8423dbfb48d8bb98dbb`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:87050b6881a762bf7da3d17800e9ee3b606e23087d5265eeeda431fc496b65ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.0 KB (201037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e24a1d29c9c6cb6ad165bb68e4f0d4decf12e82adb457fd7a1a5be6057c95f4`

```dockerfile
```

-	Layers:
	-	`sha256:17c12e0f8a74058e7a096261d64e3d3ea7ff9043edb126a226613fbc06c77ac4`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 176.4 KB (176355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e87540cfd49144e72e258f841fe06d15e9ec1568b716c52b023f57a9522fac8b`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 24.7 KB (24682 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:645270b97c71c56681cf721a4207dfb513e8f32189b3e0079ec3850c03922bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (69017302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6191c05520736d66c4f518c14d0879b303a520df32c4dbff5546293dadbb9c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:06:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:03:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:03:01 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:14:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:14:37 GMT
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
	-	`sha256:114477b4c88c5490f91752364554f5f31a9f64dabdb50e05a57ae70bd462e4b6`  
		Last Modified: Wed, 19 Aug 2026 18:09:47 GMT  
		Size: 65.2 MB (65198421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a809f89810d0a0bad69651f8f671d48b9bf469227295d0676ef5addb00e07ac4`  
		Last Modified: Wed, 19 Aug 2026 18:15:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:93e7317b6a64f5d4c55ec389f18325acf3f7b236a60e722291015f743cf8ec41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 KB (201206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5e78ea909e95ecaf68e139b47f4e6e31a64fcb943578d6133a75133c90abbb`

```dockerfile
```

-	Layers:
	-	`sha256:8628f17a276ef88ca707aa1d7b00187e0f962ae3c9e190daeb70fdb6b339e194`  
		Last Modified: Wed, 19 Aug 2026 18:15:44 GMT  
		Size: 176.4 KB (176351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04d882d2c7d844e43251ab1bfd97c54803b98c4125dd853b42409a8ae9e0ff5d`  
		Last Modified: Wed, 19 Aug 2026 18:15:43 GMT  
		Size: 24.9 KB (24855 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:36b49ed3be32f3fb67b499383166667968d162ee94b12c78a27d9e4234935fd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70530986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74021cf24ce1c2f03bd60c6085d314cc0596bd13a5ce8a41a0fd4b2959bee8ce`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:51:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:58:30 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:58:30 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:58:30 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:58:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:58:30 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:58:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:58:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f3b3d53cda7020ea953a95f980e347d64b60b0ae77b704cf1db57a77a04b62`  
		Last Modified: Wed, 05 Aug 2026 15:58:43 GMT  
		Size: 246.1 KB (246149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9999a3a9ba6617eb455e6eb7f1aca503ccd1478207314507c31d67e324b401c`  
		Last Modified: Wed, 19 Aug 2026 18:00:14 GMT  
		Size: 66.6 MB (66577429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04422621db006a895cc4c8ce631100b5c5fc45878a4b1e5e49b8e41022dcc63`  
		Last Modified: Wed, 19 Aug 2026 18:00:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:04896329fb8d5c66097e485f8d090a3a59298f24db5eef6449495fbca3ed233d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f572ac98583780ffe6d9ee282d8513077ab40914af0895d0600b9680fc6c5e3`

```dockerfile
```

-	Layers:
	-	`sha256:1c63f435f6384806311209381401756b676378696669e80e85f35f2587d73fe7`  
		Last Modified: Wed, 19 Aug 2026 18:00:04 GMT  
		Size: 176.3 KB (176305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3abb332fd215868e5f36cb3a7776229b90bf43c8bee8789865b1266947ec995a`  
		Last Modified: Wed, 19 Aug 2026 18:00:03 GMT  
		Size: 24.6 KB (24633 bytes)  
		MIME: application/vnd.in-toto+json
