## `golang:tip-alpine`

```console
$ docker pull golang@sha256:c61c3f305dc6840b34e56dadba7283c1bc98ecf269d157e3fb8fa70d1190d784
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
$ docker pull golang@sha256:d491f21d74800192e6eefd498edfbf5c4437b17206dd4104d1a816d8c902d0c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106280917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ac2de5c34d99d2ad588d9d16c2585490efa3ba46ed83ecedaf8ed5203f3b9d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 00:12:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 00:13:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:13:59 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:13:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:13:59 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:14:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:14:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fe2c596d475294235aeeeba5c87385c583e59eb6d34fe4d3d58ff2113d1e3c`  
		Last Modified: Wed, 19 Aug 2026 00:14:16 GMT  
		Size: 245.1 KB (245060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4b108dc2887f1874e475aa93655dfb3cee66bdcaa485cfef77f44a1da802`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.2 MB (102189309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3072ce85f331ce62693f0de96e2ba8a941bd4d0841053a7a1b85a529b222841e`  
		Last Modified: Wed, 19 Aug 2026 00:14:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:7fc768cb14919fa4982136aebf6b9b1559484480ea3ab8e0266d9af79b1d92a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f61e9d80ed2fbd7d656385d54a2e804f2cb6b73f70a8ba932855a4b9ca42ce2`

```dockerfile
```

-	Layers:
	-	`sha256:226967d4809f85c7eaee313a2ab10387082d432c8368c784a3de7dc4b91368e9`  
		Last Modified: Wed, 19 Aug 2026 00:14:16 GMT  
		Size: 176.8 KB (176752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e76989a362fbf5deecd1d0b7aaaf92dbee5bd935d0e69382ec51acfb6a25ceef`  
		Last Modified: Wed, 19 Aug 2026 00:14:16 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:aa0c064d575b8c4085bbc453dc7c265e7e7492db8047eaf79284bcbae6cbd5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102368026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a30f1de20a62d4f9a913ca4e854ddab7990a782d59a2f0c7f2a5dc516e96240`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 00:11:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 00:13:33 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:13:33 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:13:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:13:33 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:13:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:13:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c56a2975df80123ea72828442c87876122ec60c5463fbe034e3595aba5d9e2`  
		Last Modified: Wed, 19 Aug 2026 00:13:48 GMT  
		Size: 246.1 KB (246132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcc62bfbeb36462a50ce5b709d5263ccf49472a53306f8874fd2293a9404bc8`  
		Last Modified: Wed, 19 Aug 2026 00:13:51 GMT  
		Size: 98.6 MB (98568285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a3ff5f50d56240760613013d0e99e17bffc660b4354457c610c74975e283cbe`  
		Last Modified: Wed, 19 Aug 2026 00:13:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:d04c0804643ee58993fe1aa55a3849ec615183a35c6361170d6b0014aac9672e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfb2fe01a965428149380c394c91e536b477e407fd0440c2c9425fb23e3cb27`

```dockerfile
```

-	Layers:
	-	`sha256:cfb64db585f5083416243e48338423bacc43fa43d1f1c2aa8bc62af3521bfbe3`  
		Last Modified: Wed, 19 Aug 2026 00:13:48 GMT  
		Size: 25.0 KB (25007 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:70137a68748beb6784010918b8362e3c39b7cb86315bd1347efcb14b5f281791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101753802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a09089ad1a780306b105e5463c16bbef722135c88c97765abf9e3f5fdcf3b7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 00:13:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 00:16:08 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:16:08 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:16:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:16:08 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:16:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:16:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf1e7b98b7117034aa99c21a4dea364b592280ad8a436d9b1e2d272f2542e37`  
		Last Modified: Wed, 19 Aug 2026 00:16:26 GMT  
		Size: 245.1 KB (245122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fafa218b44764d9c306166742866e740ed62051825597c3c8a3bea4bd4709bb`  
		Last Modified: Wed, 19 Aug 2026 00:15:48 GMT  
		Size: 98.2 MB (98247908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2489a9725447bcbfe302386298112fa62dbf142b053030084772d745bf3e1078`  
		Last Modified: Wed, 19 Aug 2026 00:16:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:306dd0e89a26a5bdee9381cd5c6c438740ba3f34c009fc0e6b46df19644e292d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8706f0d13626594a0b806d46b630454b162c4e008529cb40707dad66c45a0f67`

```dockerfile
```

-	Layers:
	-	`sha256:d5e77627ffba72cde46545a50650bddfa5e55d4c823acbee61c9d5edca671e46`  
		Last Modified: Wed, 19 Aug 2026 00:16:27 GMT  
		Size: 176.1 KB (176122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:547cc182cdc602eb94d6ef14f7893d539498f40e7ab3caaef6ac7f103d754ea8`  
		Last Modified: Wed, 19 Aug 2026 00:16:26 GMT  
		Size: 25.2 KB (25222 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f658619e78651e9aeb3dc682f6d35c01ef6fa23bdaaaadc45de723864d5b24ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101118204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b05cd3c50b8cbbf8ea2a1d2e7d6ae5d5ae63f8cd7a2842f7de004f56ec74d9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 00:12:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 00:13:47 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:13:47 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:13:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:13:47 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:13:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:13:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c38e1a6a8ad47c8045cad90e1547eeeeef2c1fdc9b92b76458f8302bb9ba487`  
		Last Modified: Wed, 19 Aug 2026 00:14:06 GMT  
		Size: 247.5 KB (247507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9b83df000c9f6c1608586eb67529963919d8f16a0c472bc1c8f6bb835fe29`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 96.7 MB (96687502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee295f08218f36646b6d9a91e3fb3c222a29eb4b0b91d68c40923f0b9bbc3eb3`  
		Last Modified: Wed, 19 Aug 2026 00:14:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:5f73ab4999f8d38d85381f0a90498359bfd7e6cf89e1f557437f6bcbf80f1816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e021fd58b42b1668b1912a1a73f43ed389c773306033f5d3e5addbc95fdb25`

```dockerfile
```

-	Layers:
	-	`sha256:99bff3f7eed2fe54ec475623590e56b46a8f21fc306d146d628ffd4723825894`  
		Last Modified: Wed, 19 Aug 2026 00:14:05 GMT  
		Size: 176.2 KB (176158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb74d1c09c3a3d25c7071c926a94b483ee9c2e34e13af3277b257f513bfb628f`  
		Last Modified: Wed, 19 Aug 2026 00:14:05 GMT  
		Size: 25.3 KB (25254 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; 386

```console
$ docker pull golang@sha256:80ff0ad0396c9d8d64c110d216baf8d00714358bdcd62cbb1eac72ecfcb88e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104249333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dda8d25a055b681bf5bed7814874b20696b9707e9772779e8f67dc8e10dc68`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 00:12:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 00:14:47 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:14:47 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:14:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:14:47 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:14:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:14:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2861104c3984ded4ad8a91d038199e171bcafbffe32f0e39b2a4c5233c932c`  
		Last Modified: Wed, 19 Aug 2026 00:15:04 GMT  
		Size: 245.6 KB (245604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b49515783d03dec2ef915a8f13b4f3ee4ca575a14e7cc8e02b6f494c0cf82`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.3 MB (100333432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f7b2caa8c0aaf3ee25ccc461c06b7cbc362f77f9fef35030f9077ee71c55e9`  
		Last Modified: Wed, 19 Aug 2026 00:15:04 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:09ea0425af9742b4c334f0642b7cede7db849015596479af66637b232ae66803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac85e4a39867299288c729c3abfc477c39b2b1991599100251bc39a7b479f9a`

```dockerfile
```

-	Layers:
	-	`sha256:179cb181b34f93048e484b75d094651c233771db10cde8ac531fbdaa323c72fd`  
		Last Modified: Wed, 19 Aug 2026 00:15:04 GMT  
		Size: 176.7 KB (176711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:648a51c984393e68d357f2dbd39e7898875058b6a525d95957468cae50f6f976`  
		Last Modified: Wed, 19 Aug 2026 00:15:04 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:49dfc818f2fc0661f173a503be2efa712bfde57c994d3ea8abdc6114619dc889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102877751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e9dc2ec536869ac388c01c35530478168b3c8ad455f8c9476a79c002f43969`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 16:01:30 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:42:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:42:31 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:42:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:42:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b473c25e2fc3a2c6e3a6db0e87ddd7f731e62e38bf48ce30e73e3daaf294b6`  
		Last Modified: Wed, 05 Aug 2026 16:01:50 GMT  
		Size: 247.9 KB (247921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d95ff9656836b4d4f9ed4e91f0626382d9c4c4ab41dde220889f5b92f87744`  
		Last Modified: Mon, 10 Aug 2026 23:43:24 GMT  
		Size: 98.8 MB (98816272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75338da31ac7324fcd0e828455976c5a1aeeb973843e17ed1b3e9397ba302170`  
		Last Modified: Mon, 10 Aug 2026 23:43:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:0516490ceebd9f4d3377be428b0921ef15f0d22422cc0d80904ff9e4c9732a61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e98c106441c750ded024146f05648d81fea88fc5c9e94403db3ce7caeba4d357`

```dockerfile
```

-	Layers:
	-	`sha256:3684be47f86a7f06bf6f75a6008c48a67192992dd6c46183b1837f6a5c762799`  
		Last Modified: Thu, 13 Aug 2026 22:36:02 GMT  
		Size: 176.2 KB (176151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faba34230ea2ac038a8e0cb890d44ceb536fb351c1d92ded48cca940b61049be`  
		Last Modified: Thu, 13 Aug 2026 22:36:02 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:51baf1b4c761efafb83c8ab122687f67d13cbb0bf83dea8ede773f29a0799635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103524021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ad8bd28ac19f38d58a6e3cb10dba494c4db657e73859f909177a96b4e85cac`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:03:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 11 Aug 2026 02:53:31 GMT
ENV GOTOOLCHAIN=local
# Tue, 11 Aug 2026 02:53:31 GMT
ENV GOPATH=/go
# Tue, 11 Aug 2026 02:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 02:53:31 GMT
COPY /target/ / # buildkit
# Mon, 17 Aug 2026 03:18:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 17 Aug 2026 03:18:52 GMT
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
	-	`sha256:816adc9907e95ba61a538b68e3405fd060c36e77845839e12392cd93ab7a3a04`  
		Last Modified: Tue, 11 Aug 2026 02:57:01 GMT  
		Size: 99.7 MB (99704008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5729562aea3187f88d5747c50f46b82bc848f346b1d2f955dc1c5d93e55155da`  
		Last Modified: Mon, 17 Aug 2026 03:20:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:333d6f5a25569eeae2a35b86f32171b7e20fb0eb3aef0177168ba6484896fd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1363a172690345c553c435b473b29c3d0e06e17cf5bfe40ef0e2e45fe25fe625`

```dockerfile
```

-	Layers:
	-	`sha256:f358649724bd3c4d7f10e8a20ff882d1e480ca3b908a3be035a89afe24ef9835`  
		Last Modified: Mon, 17 Aug 2026 03:20:11 GMT  
		Size: 176.1 KB (176147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6b7a6d51f516c36f9d99055cd6d0d912775c4cc6394466e72d8638c785ee164`  
		Last Modified: Mon, 17 Aug 2026 03:20:11 GMT  
		Size: 25.2 KB (25152 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine` - linux; s390x

```console
$ docker pull golang@sha256:61ca94109a1d8a5a785f77ea0b5723d1331cc4d96455c77eaa4f6e9a510dc596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104903693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b6e89b087ba0360a7d2885097f75ff3fd5f24567959a033f25fc9abc5e0bfa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:51:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 00:13:38 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 00:13:38 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 00:13:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:13:38 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 00:13:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 00:13:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289b5e867dee8258d2bc7ee83bccbf1005763af2a8e03ba1284bdfe16b0745c2`  
		Last Modified: Wed, 05 Aug 2026 15:58:43 GMT  
		Size: 246.1 KB (246146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e711788918c346e1a3f433c8b9817ec45f0192b16aeb86ddced82c503184f525`  
		Last Modified: Wed, 19 Aug 2026 00:13:13 GMT  
		Size: 100.9 MB (100948068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941aacf3f6be2ca60763f0e7152b1f79097d8cda2b242362bd705b86ace8df02`  
		Last Modified: Wed, 19 Aug 2026 00:14:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:98663c06f486f2cebd71ee8502b0440b3b68689e31f47936dc964e56c40cebd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e041f0970df6c19eaec88e6f2bbade612431dd1258fbd9509a74a0b352156d`

```dockerfile
```

-	Layers:
	-	`sha256:cc85bc2764f3ae6328c516cb5669255dc514b2a35cc17f88824dfa3b313340af`  
		Last Modified: Wed, 19 Aug 2026 00:14:03 GMT  
		Size: 176.8 KB (176849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8002c0e6c23adaf5c0de112f400454982278dd67ff494e59511256b080b793a5`  
		Last Modified: Wed, 19 Aug 2026 00:14:03 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
