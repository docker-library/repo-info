## `traefik:latest`

```console
$ docker pull traefik@sha256:4299bbed850421258fc5448c2e0e6ad350981d4d335a68de11b92448aedbefe5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:54c598430bee8479c93179940c37f793cbe1e9e0405036b67ed11ba2f1fa252d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54496552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a652b1846f788b214920ef659ab8c548e56d843decb7a18da737ace32f454de`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 15 Jul 2026 17:38:11 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 15 Jul 2026 17:38:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.8/traefik_v3.7.8_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 15 Jul 2026 17:38:14 GMT
COPY entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 17:38:14 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 17:38:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Jul 2026 17:38:14 GMT
CMD ["traefik"]
# Wed, 15 Jul 2026 17:38:14 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.8 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b6370e91b1789a6c797c81729576c8ec8fe284f0662b4bdc3e64a0a33b04edd`  
		Last Modified: Wed, 15 Jul 2026 17:38:36 GMT  
		Size: 408.1 KB (408089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e0d75dafa1655a98059f3b08f51bdc1bf061f0a5eff5d22276febac28b355d`  
		Last Modified: Wed, 15 Jul 2026 17:38:37 GMT  
		Size: 50.2 MB (50241702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90e8abbd2e011fc9d5a1679a16bae7723c37a81b38271b79005f59c90430024`  
		Last Modified: Wed, 15 Jul 2026 17:38:36 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:b30cf88327cf51d0da639214d9bc40b439462d12899fb710391df9bbcb12ad5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.4 KB (837359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21718d75bfb741b5dd71de1c54bcf2f21cbf533705b2bbab7cb8ffeaf0cb8d94`

```dockerfile
```

-	Layers:
	-	`sha256:ec9d5a9b64b3529846f6fab5e9bbb526f2b553325db20ecc51aa19f95fa6a8c8`  
		Last Modified: Wed, 15 Jul 2026 17:38:36 GMT  
		Size: 824.5 KB (824480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:108341046fb319363bd7f51f626625abe6aaffc909328d2fc0da8a5d34f73d21`  
		Last Modified: Wed, 15 Jul 2026 17:38:36 GMT  
		Size: 12.9 KB (12879 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1560de1a3739ccd604ddfe9ee99d095cc56946125ff2408aea6797015c134efc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49737980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42601a54ce61f2ba6c2c2ccd56aefc7f2349eb46194b2ff90ec24789caf7bd01`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 15 Jul 2026 17:38:04 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 15 Jul 2026 17:38:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.8/traefik_v3.7.8_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 15 Jul 2026 17:38:07 GMT
COPY entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 17:38:07 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 17:38:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Jul 2026 17:38:07 GMT
CMD ["traefik"]
# Wed, 15 Jul 2026 17:38:07 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.8 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84465dab4bbe2d903eb2f478b934481700eca54c5d11a2b70a18a3d634061586`  
		Last Modified: Wed, 15 Jul 2026 17:38:17 GMT  
		Size: 409.9 KB (409911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdee5f121551d72bfd5d8f9954665549bec7193cc96205e8963446324ebc8c2`  
		Last Modified: Wed, 15 Jul 2026 17:38:18 GMT  
		Size: 45.8 MB (45774249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70573a98d2aa6a9a97834c6dcab70c1c4be61b302a17d0332f8df64908570223`  
		Last Modified: Wed, 15 Jul 2026 17:38:17 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:560444e8ab9382537add150375d4af977052026eb77d85a46ad7d2a93e9008c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e58789617432d2626d6b87ff6a166948121b4e7d6cc0af649082d1d50d8d948`

```dockerfile
```

-	Layers:
	-	`sha256:defa6c60d945a0484987677f0fe5e797a14bef38789923a2d9893e4ae492b7d8`  
		Last Modified: Wed, 15 Jul 2026 17:38:17 GMT  
		Size: 12.8 KB (12789 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:170ed55c5130624c3b4641cb06ee75153402012d41496feb756d4a847dc01a49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49352195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb085ca3ba80498cf1a2858ec007927bb21c81a6c6dc722a3cffe68bd78dc07`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 15 Jul 2026 17:38:00 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 15 Jul 2026 17:38:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.8/traefik_v3.7.8_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 15 Jul 2026 17:38:02 GMT
COPY entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 17:38:02 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 17:38:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Jul 2026 17:38:02 GMT
CMD ["traefik"]
# Wed, 15 Jul 2026 17:38:02 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.8 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20cf0c8b31206839f80ecc485647b5030d20b4f07eed4e83b71ec95b690eb16`  
		Last Modified: Wed, 15 Jul 2026 17:38:26 GMT  
		Size: 411.7 KB (411743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96e2dc22f05dc0b8878b7e83524e00aa475b3cfc0dac58a18260c0b9d669376`  
		Last Modified: Wed, 15 Jul 2026 17:38:28 GMT  
		Size: 44.8 MB (44757045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11788cad067bd74ad19374a0dd83b012c347a18320250f7cbe2379b21d4d5d1`  
		Last Modified: Wed, 15 Jul 2026 17:38:26 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:4ce85bf3fc7eb82141b48ed29c9107e543c7169e3869ebb4598983701532fa32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.0 KB (836980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58aff7023636c3fd6b8ff1cf0d428cfb94a6e2bdc90efbcad1fa20a9a7720f08`

```dockerfile
```

-	Layers:
	-	`sha256:c336ea3ef9da5b3f1dab61a8453bb85a8a4d0b65f7b8a154b67bbdb5e74db911`  
		Last Modified: Wed, 15 Jul 2026 17:38:26 GMT  
		Size: 823.9 KB (823934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8e5883b81fdc6d51e43771dcae1299fb6cc611efbde807947432bcf13303fc4`  
		Last Modified: Wed, 15 Jul 2026 17:38:26 GMT  
		Size: 13.0 KB (13046 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; ppc64le

```console
$ docker pull traefik@sha256:ea272b81772c50d0885fe6ff23496cd34cc5f6fd59de597267af4f444c94bd8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47586172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf985e7cd45e430de6b62d48938fa8959546e8421ab90a34efa8ddbb1ecd7b9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 15 Jul 2026 17:36:38 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 15 Jul 2026 17:36:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.8/traefik_v3.7.8_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 15 Jul 2026 17:36:42 GMT
COPY entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 17:36:42 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 17:36:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Jul 2026 17:36:42 GMT
CMD ["traefik"]
# Wed, 15 Jul 2026 17:36:42 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.8 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11148cc4ff67dfecea58ac7c59716e40ac5bef8a383f3e5ed33b461f781a00a`  
		Last Modified: Wed, 15 Jul 2026 17:37:24 GMT  
		Size: 412.3 KB (412292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba3b73b531117957cd4d208b46b297f8dc9abb51e8569070a24b99b14692157`  
		Last Modified: Wed, 15 Jul 2026 17:37:26 GMT  
		Size: 43.4 MB (43360111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6117dd393a43ad428302dc93c7299f2167e948842646b4d26fa2cfa0094d5418`  
		Last Modified: Wed, 15 Jul 2026 17:37:24 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:f1d5323fe9ac063944294a28b8d7c4fd1551db9a78c25a89dcb2a37131ef811b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **836.8 KB (836835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8617ffd5aa63cc98117eeb83dafcdae16e0e8024ca38bbc74ac111a8288f8ba`

```dockerfile
```

-	Layers:
	-	`sha256:4fcb88042a9d84cfa657b35a98ce11fc7a3c17468f909df48cda13d7d78aebfb`  
		Last Modified: Wed, 15 Jul 2026 17:37:24 GMT  
		Size: 823.9 KB (823887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19d15b3185fcbb92665fd84413cee48768afae03d3fda28c3bc730e1b5c3c3e7`  
		Last Modified: Wed, 15 Jul 2026 17:37:24 GMT  
		Size: 12.9 KB (12948 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; riscv64

```console
$ docker pull traefik@sha256:bf6f2efe427c224f798d563cfc6c80e97c91933bb902bbb16ec0c816d444a9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52125989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2bcd638f6dd190e4693f3ce03844d37b1e2c6e8da05f90a8ea2a3d228d4f04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 09 Jul 2026 05:47:45 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 16 Jul 2026 19:05:15 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.8/traefik_v3.7.8_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 16 Jul 2026 19:05:15 GMT
COPY entrypoint.sh / # buildkit
# Thu, 16 Jul 2026 19:05:15 GMT
EXPOSE map[80/tcp:{}]
# Thu, 16 Jul 2026 19:05:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Jul 2026 19:05:15 GMT
CMD ["traefik"]
# Thu, 16 Jul 2026 19:05:15 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.8 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4836dea56d9397d8e2103a9bb86703cb83233ff8c06f9a1ba09aab976d0ff782`  
		Last Modified: Thu, 09 Jul 2026 05:53:17 GMT  
		Size: 409.4 KB (409440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ea38a096ed2894c687e0b28b9a060d22906703e4cce4d1eeb3895d93a9bf86`  
		Last Modified: Thu, 16 Jul 2026 19:10:36 GMT  
		Size: 48.1 MB (48141821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ef9d828b2d6358caef7957d1eb7cbedbd7b6c0102945e4db4d738861beadbb`  
		Last Modified: Thu, 16 Jul 2026 19:10:28 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:0b8a5f33b06979bc5168551bf04bfeef65efc3b848419dce77d33deb52ec65c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **836.8 KB (836832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af98b26deacbfbb9cf25d6811283426df9903cb18c4ef595c800243d2b1fb654`

```dockerfile
```

-	Layers:
	-	`sha256:1290cc1658c4a26c2c558aa248a30e2a4ff15b1f7f94a3caa122434d5a7b2665`  
		Last Modified: Thu, 16 Jul 2026 19:10:28 GMT  
		Size: 823.9 KB (823883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2056a6297627af70ad2a399d2fd0035e6539e94ea8fd617b0d3b858c31cc15f3`  
		Last Modified: Thu, 16 Jul 2026 19:10:28 GMT  
		Size: 12.9 KB (12949 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; s390x

```console
$ docker pull traefik@sha256:ca89af7f4ce60fa8b5e6c2e60d9707295b14c31fe4e428c5da862e88accc5e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52249013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e266dca70d7cc087a366fd12a0605acc8a0a44702827a27e4a7fd62a03ef23f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 20:35:57 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 15 Jul 2026 17:37:17 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.8/traefik_v3.7.8_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 15 Jul 2026 17:37:17 GMT
COPY entrypoint.sh / # buildkit
# Wed, 15 Jul 2026 17:37:17 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 17:37:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Jul 2026 17:37:17 GMT
CMD ["traefik"]
# Wed, 15 Jul 2026 17:37:17 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.8 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69747e4145e2e6f7be11767bf8f1bbd031265055a048e79ab496a493235ce7a`  
		Last Modified: Tue, 30 Jun 2026 20:37:07 GMT  
		Size: 410.3 KB (410276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f07a5cfb2c94d64e664b64f4fceb188853b7b9dc0296fc24a2cf673efc283324`  
		Last Modified: Wed, 15 Jul 2026 17:38:06 GMT  
		Size: 48.1 MB (48129048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac1178202573fa44510895b7fedc06fa6030fba15d96f867a02fe94e84fe660`  
		Last Modified: Wed, 15 Jul 2026 17:38:05 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:ccb60fd737fb94d9f0a26900d7abb966d1cd4653374891a1fb27a6839bbe7704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **836.7 KB (836708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e46bc2bbeb055de4f2cda8eadeeaedbc9ae32794ae97bf8b14fbf33bfaf1c4`

```dockerfile
```

-	Layers:
	-	`sha256:ee677e2dbd5c08bd49bf1c0e72545af7008a69854e4f0b997b35b73e4b07cf8a`  
		Last Modified: Wed, 15 Jul 2026 17:38:05 GMT  
		Size: 823.8 KB (823829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e021ac56cb8d78a1ececc72f7cc3c97f4f5e5a0bfae40fa1870d67cde60c6cb1`  
		Last Modified: Wed, 15 Jul 2026 17:38:05 GMT  
		Size: 12.9 KB (12879 bytes)  
		MIME: application/vnd.in-toto+json
