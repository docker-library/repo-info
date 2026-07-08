## `golang:alpine3.24`

```console
$ docker pull golang@sha256:9097beb5536220f7857bdcb65c1b4b340630dd7a70b85f03d5af29640b06693d
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

### `golang:alpine3.24` - linux; amd64

```console
$ docker pull golang@sha256:111d79159b2326f7e80c4a4706e1ba166acb0e2611df853955f3621828cd49e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71380009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7849a63a4b6c8ad0698b3bfc67b07165835208d8d82ec5766dfc9be5d56ceeab`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:12:34 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:12:41 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:41 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:41 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:41 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:12:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:12:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6563b0ba6ce9e242d9162b6aee6a1a9aa1a38b009348c1fcb7beee0b41ee523d`  
		Last Modified: Tue, 07 Jul 2026 22:12:58 GMT  
		Size: 245.1 KB (245067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea3d467f844b8e6fffc2d7793807a1ec9e3a0582655418c1c17013372a3a910`  
		Last Modified: Tue, 07 Jul 2026 22:12:02 GMT  
		Size: 67.3 MB (67288392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bd32640bdfb6a9d786910d18868a249777b8689c6ef795f41a3c46968dd508`  
		Last Modified: Tue, 07 Jul 2026 22:12:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:fe60797764ac9e314aa3d3e233bd31c95904d64016e746fb89234fecaa06fb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b4b252c24b19baa6b9e82b58b602f41bde69e9c0d1ebf9389b353b16c36c0e`

```dockerfile
```

-	Layers:
	-	`sha256:accb3d404831c8b6aefceae0a9577f1b5d6ffe76241aead09d9261ec976ccdf1`  
		Last Modified: Tue, 07 Jul 2026 22:12:58 GMT  
		Size: 178.2 KB (178172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e788521f9ebc5acf2918a739677de3d9faed268d2f623fc94f29e88d1efcb613`  
		Last Modified: Tue, 07 Jul 2026 22:12:58 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:fdf0ef0ac2185883dc30cff25c2a3950847112eac1d4299497d77d511d387aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69611428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b03eccd31f675bb3613d216e94f1fef7b699303cad231754702e048e6abcc77`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:11:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:15 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:15 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:15 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:15 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023b6ded76c3d896e4298d6ac74135351ffb67d7d7416feabf1d4ae87ee6e77a`  
		Last Modified: Tue, 07 Jul 2026 22:11:29 GMT  
		Size: 246.1 KB (246135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003f4ea07f7de8a847f56c7629b6e0b13e0de4150729c6eab1d61123660df36f`  
		Last Modified: Tue, 07 Jul 2026 22:11:31 GMT  
		Size: 65.8 MB (65811684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3ca53501fa59aadf262f581118918b47ad2d83157b7345e89c1115e0badee9`  
		Last Modified: Tue, 07 Jul 2026 22:11:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:d1f69f68745ed2565163275ac81e6c3474cf813b807bb4dfcdfda790d83f6860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 KB (25950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20cec612bacc95faeee98bcfdf6f5ac6ccb483dd2690c258632c1d0c9f8fb5b9`

```dockerfile
```

-	Layers:
	-	`sha256:ca3bc2be8423da8d1cc6f237076b9d9101c23f41618f66047fc665814e63d684`  
		Last Modified: Tue, 07 Jul 2026 22:11:29 GMT  
		Size: 25.9 KB (25950 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:998db2a281cd6b76995ae99ddf658e4bfecc5e2a9173342e9454a022a2d26f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.3 MB (69317571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6c72b48703e4c72832f117dc1f8a34deb0569fe870cafe6c036c82bda84168`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:11:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:41 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:41 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:41 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:41 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bf1162f54b416fed192cabb78e4e8ed67b98a774463febe2a8ce8bd20dbed9`  
		Last Modified: Tue, 07 Jul 2026 22:11:58 GMT  
		Size: 245.1 KB (245122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d9454c8d863c76d3a284f97c400d521e643fafb60e60664dbeea8c2a1719dd`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 65.8 MB (65811677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0360e65aec8b3fda64a1a28a1e2ee62413d158e79be7b1b1f3c29708c131bd2d`  
		Last Modified: Tue, 07 Jul 2026 22:11:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:783822c6145f0d271616542137c265a00af5fb56a6d37792a0d30b903ee85bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d98e29f8467296ac2c9438e18258f420a585b4e78b9589ce6316cd13a96e3306`

```dockerfile
```

-	Layers:
	-	`sha256:886202f64c5e35f638c689249728e9d851d40bd1f5f93e0a10bafdf8ffb4d5a3`  
		Last Modified: Tue, 07 Jul 2026 22:11:58 GMT  
		Size: 177.6 KB (177574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fea17e89705d7f526cd9d453aad99fc5f8fe0dd205b66a0174ab39779cf1003`  
		Last Modified: Tue, 07 Jul 2026 22:11:58 GMT  
		Size: 26.2 KB (26165 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:787328cefd7937073af18fc4b3a725f47e011ffdde9c2908239a25cae6b2f02b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68607943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766c0063a18bd23eff1d68216dd04832370d5f356af68c8b7683923c4c279f5f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:11:30 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:37 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:37 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:37 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:37 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb60d774e748fc8e1175c75ffa3c47b99f167c67645ce2fe81fcbec8a146704`  
		Last Modified: Tue, 07 Jul 2026 22:11:54 GMT  
		Size: 247.5 KB (247506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d5c89bdd324edeb5721c09064e2659473bba39ae9d84fae53c9cc0181cf15`  
		Last Modified: Tue, 07 Jul 2026 22:11:56 GMT  
		Size: 64.2 MB (64177241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46b3da72838fcc08809d7b7b9b74504e390e2c83a78042435d5cb4ea0467b37`  
		Last Modified: Tue, 07 Jul 2026 22:11:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:1cb452f186516fa89b24ac7beadf13fa5101c25dc5433b3666f39cfb2dc79c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 KB (203835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddf616c9e1db3cfb54fac1f3ca2f47d84db2a02d676f341937759991cdbc72f4`

```dockerfile
```

-	Layers:
	-	`sha256:f20787fd738b2eb039032cf8c3d1cc44c608f9c7a2f3d8d4d6dc0d5e60008b62`  
		Last Modified: Tue, 07 Jul 2026 22:11:55 GMT  
		Size: 177.6 KB (177626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:358641d445ff17503479b4258feb29d132c5df27ce7b6cbc522e3b93c4226df8`  
		Last Modified: Tue, 07 Jul 2026 22:11:55 GMT  
		Size: 26.2 KB (26209 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:739b5c7c89c2ba19b5744fab836efe973158e2c4b08808e99285f735af3e2926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69531654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726a49308bd080b3785695385e21ad779407a8289e03b2b084fa23f811d27b93`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:12:40 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:12:49 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:49 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:49 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:49 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:12:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:12:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f873ec0056122febe1dbf2562922afb81b29d101e8e9f5997e35ea68e3fa5d`  
		Last Modified: Tue, 07 Jul 2026 22:13:05 GMT  
		Size: 245.6 KB (245597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ab86c6ec2b9315502727ac923e95a71d0712fb3db2ab9d73161056848e1e17`  
		Last Modified: Tue, 07 Jul 2026 22:12:36 GMT  
		Size: 65.6 MB (65615757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359ce8e7b51a64dee8632a913235e94bda898b57a1112f76909a7f35247d436f`  
		Last Modified: Tue, 07 Jul 2026 22:13:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:237512f68b331b6e37bf35d9d75a4cad3c2c1c34c8d190fac7ead69779cbdc4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cbd0a04079cd9c814dffd97a4e8655c1d9747b1b654dfc89d98c08a943b66e`

```dockerfile
```

-	Layers:
	-	`sha256:ee126cdca27a8cbfc7b95e663db8078b8ad3e1a752b323e4fb056257b27a4bc6`  
		Last Modified: Tue, 07 Jul 2026 22:13:05 GMT  
		Size: 178.1 KB (178111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9ad686462251c8884ad557dfdf12e4b899a5dac33dc04811531b24486843f30`  
		Last Modified: Tue, 07 Jul 2026 22:13:05 GMT  
		Size: 26.0 KB (25971 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:06bcb198092785c1f6690fdd6f0a3b2c6e4af40f3b147c5a414dfdb08fb0c4b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68924609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4cd622aae2a216b30146562635c6909a99f9020f737cab3dbc023f100beb005`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:43:42 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:59 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:15:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:15:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b69e5cd9291f73cdfb8a0cc68e49e0664e71ce2e2dca0d970b3b935c603149a9`  
		Last Modified: Tue, 16 Jun 2026 00:44:13 GMT  
		Size: 247.9 KB (247921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837a88f92efe9877f23e6c12528d62e7ccdb9b8fa95a610a27ff13c8eae13062`  
		Last Modified: Tue, 07 Jul 2026 22:15:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:414d91327a655183c0c8d9d4fc7257f6263840a498a736484705c3b3c7bd3281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.5 KB (203521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05531e659845f3c2a67d2a3358c93b109270ffd6079436563874fe89899dbbd1`

```dockerfile
```

-	Layers:
	-	`sha256:e84768856454ddb0c08ae9dd913e92d5de28ccbefb8d65fe9c8e65f45eda8ed3`  
		Last Modified: Tue, 07 Jul 2026 22:15:29 GMT  
		Size: 177.6 KB (177595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b9b3453a948fa7c1bf03d421261259b82475e6eff4ca49e9e79eef81a67474b`  
		Last Modified: Tue, 07 Jul 2026 22:15:29 GMT  
		Size: 25.9 KB (25926 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:4a0c89ae9675f3858bfaa5316ca0fa40b2c6cf3a5905d1a13a27646f48728da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68968394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fd0949c1cb994d1cb5a3612aafdbae752f8b560c9956eb063301b0625b3435`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 18 Jun 2026 07:35:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 02 Jun 2026 23:12:42 GMT
ENV GOLANG_VERSION=1.26.4
# Tue, 02 Jun 2026 23:12:42 GMT
ENV GOTOOLCHAIN=local
# Tue, 02 Jun 2026 23:12:42 GMT
ENV GOPATH=/go
# Tue, 02 Jun 2026 23:12:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Jun 2026 23:12:42 GMT
COPY /target/ / # buildkit
# Thu, 18 Jun 2026 07:36:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 18 Jun 2026 07:36:55 GMT
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
	-	`sha256:10c8f135b9aec9b42cabcdbc9e60e1e2b738fe71cb50c44dd091c53fb8edc94a`  
		Last Modified: Tue, 02 Jun 2026 23:19:15 GMT  
		Size: 65.1 MB (65148394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35cabdd5e2dc5b68d752c0783134152e9a39a0716d2e217c762877fd03dabf0`  
		Last Modified: Thu, 18 Jun 2026 07:38:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:d3b3668397abbfaeadec0791c062d89ae4727ee04b4ae0501aea7c5af2b9f0b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82992e29adee12173ecb352cbec5262a8646b0ef5adbd4ccc32a2c7aa40cf1f`

```dockerfile
```

-	Layers:
	-	`sha256:3c12fc21fc0d2b1de543a049413f191baff10078ec1c46d3548eb3b98177af68`  
		Last Modified: Thu, 18 Jun 2026 07:38:04 GMT  
		Size: 177.6 KB (177591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68aea88225a5adf875d588bd2d7fe3a192c74423c9062e893e4fb1c50e4e560b`  
		Last Modified: Thu, 18 Jun 2026 07:38:04 GMT  
		Size: 26.1 KB (26098 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:547b9a3ff32b15216dfa9bfa5adc41372e05c2b77f9ee8cbff44c96d7c105e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70484471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e483bcbe49142f49fc59607e50c68e11bcf790ab9c17328201d0d902c8c0fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 00:04:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:26 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cee98e99408817c5ab9dd70b01b7c104a3fca1433455a6d7fc45f2442b72ad`  
		Last Modified: Tue, 30 Jun 2026 00:05:10 GMT  
		Size: 246.2 KB (246150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02a0b92c64bea7b8e82336e0a7f2afcc7dad25aedbcab036aeb985d0f3e2228`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 66.5 MB (66528843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d0e6a39272a6e8258b921992f6a9600bbea6bd650620f7ab098d55cd81feb2`  
		Last Modified: Tue, 07 Jul 2026 22:11:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:9ada129174266a03c528daa492dc8e5ed1278f8a8e5c2c90b4f83574a1faf798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.5 KB (203548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b7f8faceb7d28df94dcf8c7bd6ff0e11b4cd4e944a5785bcd135253a2cddee`

```dockerfile
```

-	Layers:
	-	`sha256:a0dad0ce4797cb33ff3f5b942551376e8f5dc548b4cc347dee8e5848eb04e994`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 177.5 KB (177521 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c11f31b52d7accb32b05775b59757b4266645835f93a7a85a86046220edefa49`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json
