## `caddy:2-builder`

```console
$ docker pull caddy@sha256:369218c81ca6d6af249981221b3a5c764d886dd5b058f51d144066de13f2418d
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `caddy:2-builder` - linux; amd64

```console
$ docker pull caddy@sha256:7a05631b5e68fa24cfda0d4392b9c8577715c855b9b9da84b1b59be87e535405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79772768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f03f04e09371a93f681e66779ab95366a3031c7395fb591bfc8fba2999294a1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:42:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:42:28 GMT
ENV GOLANG_VERSION=1.26.8
# Thu, 17 Sep 2026 21:42:28 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:42:28 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:42:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:42:28 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:42:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:42:31 GMT
WORKDIR /go
# Thu, 17 Sep 2026 22:33:53 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 17 Sep 2026 22:33:53 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 17 Sep 2026 22:33:53 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 17 Sep 2026 22:33:53 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 17 Sep 2026 22:33:53 GMT
ENV XCADDY_SETCAP=1
# Thu, 17 Sep 2026 22:33:53 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 17 Sep 2026 22:33:53 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 17 Sep 2026 22:33:53 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb19f4829249d421ef52653379c1518954c6c0acfdddf8a0d93490b4e8151db`  
		Last Modified: Thu, 17 Sep 2026 21:42:44 GMT  
		Size: 247.5 KB (247507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb3e687d353c47479f7eb82d6cc1b230f1d252bfefaddbeec9d3de57edf5d49`  
		Last Modified: Tue, 01 Sep 2026 23:25:30 GMT  
		Size: 67.3 MB (67308359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02024e7455c7f6f8b72fb6aff544d311f777f83cfcf6626a75c4ce3bdbfb9983`  
		Last Modified: Thu, 17 Sep 2026 21:42:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74cc74f2418763967be0c8333c3b90afd89557abdbd31181a9439cefd667a4b6`  
		Last Modified: Thu, 17 Sep 2026 22:34:01 GMT  
		Size: 6.5 MB (6521296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01e3061b23193f4042b3f5ee4dfc997d183e170533d8c7996b7fd061578e893`  
		Last Modified: Thu, 17 Sep 2026 22:34:00 GMT  
		Size: 1.8 MB (1846507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fbede975232fef13c7cfe0452f58c8395875c3d442727f0e84349ae47b5811`  
		Last Modified: Thu, 17 Sep 2026 22:34:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:47a07b1887a5ebecee6f2034801fa1cb0ce98ee3b861e6e9a6577b3f74cd255a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 KB (285307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252b3d435489a083f72ecc352c719cffac52d60b922f602e7b9a376b480fa105`

```dockerfile
```

-	Layers:
	-	`sha256:006ee0438a43c3672bb19992a3b9009c5870b9c02d8ab2ec0fda3cba62142d5d`  
		Last Modified: Thu, 17 Sep 2026 22:34:00 GMT  
		Size: 265.2 KB (265178 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfa29e2fe1bbaae5efaf436918b10dcd24abd231eeeaef64f139010b529a3b76`  
		Last Modified: Thu, 17 Sep 2026 22:34:00 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm variant v6

```console
$ docker pull caddy@sha256:2deb68121b98dbbdc15a76d4d259d1c85648580325d9e9189c58f2275c42818e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77825504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7fcd43b5baffd710bcd44100ad7011ce6b4879a1759d043252ac3d7496ad56`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:24 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:16:33 GMT
ENV GOLANG_VERSION=1.26.8
# Thu, 17 Sep 2026 21:16:33 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:16:33 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:16:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:16:33 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:16:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:16:38 GMT
WORKDIR /go
# Thu, 17 Sep 2026 22:46:35 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 17 Sep 2026 22:46:35 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 17 Sep 2026 22:46:35 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 17 Sep 2026 22:46:35 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 17 Sep 2026 22:46:35 GMT
ENV XCADDY_SETCAP=1
# Thu, 17 Sep 2026 22:46:35 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 17 Sep 2026 22:46:35 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 17 Sep 2026 22:46:35 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0137c52c2c62536e297d3521134eed5dac4bd711d96616b75b6ad89db231187`  
		Last Modified: Thu, 17 Sep 2026 21:16:49 GMT  
		Size: 248.5 KB (248457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4156a13a33a79c57e061c7bc88ad619b8a6c67e38936c6e71dda83cde648d80a`  
		Last Modified: Tue, 01 Sep 2026 23:26:28 GMT  
		Size: 65.8 MB (65847085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e34ef99fb941bb5a1fe30df75ed250687667b635cf715d06670db9c0e3fe125`  
		Last Modified: Thu, 17 Sep 2026 21:16:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbd655ec35d108c7a834100314a1472178e59b1c81c6f3d59c43f922b0fe768`  
		Last Modified: Thu, 17 Sep 2026 22:46:40 GMT  
		Size: 6.4 MB (6429443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8e465a9fc8cc3a998fa571626544af907909ffd99b8a5d5559dbb585bb37f2`  
		Last Modified: Thu, 17 Sep 2026 22:46:40 GMT  
		Size: 1.7 MB (1745002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d5f681702057739d7b8eedfc88aaad485ac84e8e73b912884a4b3de8084840`  
		Last Modified: Thu, 17 Sep 2026 22:46:40 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:e6fb0b09f1ebc6945c5fc99c1ed8cc537cfeb456c964705435d57460d3e349db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7285e4c736b4e140b77b379856f10768e00b7167d38d06ea3cbb249cdd7cfd`

```dockerfile
```

-	Layers:
	-	`sha256:c02c29ffbb5aefd8c3fc3677e94a061f98e18180d74a08ed2fc3a0a88129deab`  
		Last Modified: Thu, 17 Sep 2026 22:46:40 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm variant v7

```console
$ docker pull caddy@sha256:66ed8b350895dbd3dac878291855415daa85cc7912ae465a81b24c6999786284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76980132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65fbb31319d048bc75958b1989082158d276e67fbfba71ea2d2618f652ffd2dc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:54:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:54:28 GMT
ENV GOLANG_VERSION=1.26.8
# Thu, 17 Sep 2026 21:54:28 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:54:28 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:54:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:54:28 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:55:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:55:00 GMT
WORKDIR /go
# Thu, 17 Sep 2026 22:49:09 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 17 Sep 2026 22:49:09 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 17 Sep 2026 22:49:09 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 17 Sep 2026 22:49:09 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 17 Sep 2026 22:49:09 GMT
ENV XCADDY_SETCAP=1
# Thu, 17 Sep 2026 22:49:09 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 17 Sep 2026 22:49:09 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 17 Sep 2026 22:49:09 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc115077264f9f3c9d424e63ef74ca29eee80e5b2e8498dca1a8e0e1b50fdbf0`  
		Last Modified: Thu, 17 Sep 2026 21:55:06 GMT  
		Size: 247.6 KB (247560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636b4b50639e7812023bedda52bb0714f692e2c655b0d178d2ef4e2405202b1f`  
		Last Modified: Tue, 01 Sep 2026 23:25:34 GMT  
		Size: 65.8 MB (65847672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef264392a17cc5fe047c720f8ce60ebc5c2fe458c42325c606094b8700768d55`  
		Last Modified: Thu, 17 Sep 2026 21:55:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c2cb22414cf3f1ca315f34d227a4c72689da4a70786b3bc3e9a78047756d60`  
		Last Modified: Thu, 17 Sep 2026 22:49:17 GMT  
		Size: 5.9 MB (5882636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b3db60e4d611a112cd50e2772412f862c7499e3e86376718a156140c442248`  
		Last Modified: Thu, 17 Sep 2026 22:49:17 GMT  
		Size: 1.7 MB (1738759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329e6299eb6d8728ff14343396a1a5f209d9539ffabf331a63b52265311ee2d7`  
		Last Modified: Thu, 17 Sep 2026 22:49:17 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:2bae102facbd55b04f88507e2a44d5b342bbd815d75195beefaed42ab92197b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 KB (287824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8610423f93884f571d03d4f70d783b8537fa365731956b14aad453e8a3673a`

```dockerfile
```

-	Layers:
	-	`sha256:cff94963d4169ff1cf60e1b9a299a4f92c85afa068191457107854e3026dc1c2`  
		Last Modified: Thu, 17 Sep 2026 22:49:17 GMT  
		Size: 267.6 KB (267570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd8e6359937c302f708cfa074007914cef4300f72b05aa68fdba15e29221367e`  
		Last Modified: Thu, 17 Sep 2026 22:49:17 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:8f5474c80d606dd95d5a943fb9f3cab7b3d063862e62e30ce26d35bc7b64e1ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76981660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89ec54fff04f6540de2ae8ebe2dfc837ade9b2d794114c4dd571c00f3c3f4e8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:43:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 21:43:14 GMT
ENV GOLANG_VERSION=1.26.8
# Thu, 17 Sep 2026 21:43:14 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 21:43:14 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 21:43:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:43:14 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 21:43:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 21:43:17 GMT
WORKDIR /go
# Thu, 17 Sep 2026 22:57:46 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 17 Sep 2026 22:57:46 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 17 Sep 2026 22:57:46 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 17 Sep 2026 22:57:46 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 17 Sep 2026 22:57:46 GMT
ENV XCADDY_SETCAP=1
# Thu, 17 Sep 2026 22:57:46 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 17 Sep 2026 22:57:46 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 17 Sep 2026 22:57:46 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e5ef353f55548df2167e5edb4a9ae3b3c367d3470a6b6363ca5487b87004ee9`  
		Last Modified: Thu, 17 Sep 2026 21:43:31 GMT  
		Size: 249.8 KB (249831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fb0b9b10a77a100f12ca35704e0bf2e54f625945c6087b132491dec45b4ed6`  
		Last Modified: Tue, 01 Sep 2026 23:25:47 GMT  
		Size: 64.2 MB (64224554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75e7089829fee9f269419d4cc4071db3df71c37c9d5dfda9082927f021029eb`  
		Last Modified: Thu, 17 Sep 2026 21:43:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31e3753471ad0a80ba6e4ff18a2e5863489803aefc90c6eb35d19fc81d00f95`  
		Last Modified: Thu, 17 Sep 2026 22:57:54 GMT  
		Size: 6.6 MB (6604246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65055a55d673377781912c0c022518096476c5437a0cd34e655849eefb9efc07`  
		Last Modified: Thu, 17 Sep 2026 22:57:54 GMT  
		Size: 1.7 MB (1716381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05df7c02508f06d6373d4360c7f47f6ce2041b7478ac7fcca1bf732af724d808`  
		Last Modified: Thu, 17 Sep 2026 22:57:54 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:7b2a8ece007bcc76e7f5328bb680855642113ebf9a3cb1c05d5525076225db92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 KB (284928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d50f29632b4efc97060f537928a065b6092fc7206334e2cc9c99f664b45f04`

```dockerfile
```

-	Layers:
	-	`sha256:14791da1d17123b50f65bd7b4ca9c42a3a9d7cb8e175f791259bf45f87abee88`  
		Last Modified: Thu, 17 Sep 2026 22:57:54 GMT  
		Size: 264.6 KB (264632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c60d15d5b6cc0a5861d558c5b9f8e6112cf453d7becea36f25eaf1716ce3f08`  
		Last Modified: Thu, 17 Sep 2026 22:57:54 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; ppc64le

```console
$ docker pull caddy@sha256:52a6f17a12135cb3427d85373db905461f5c04fc9f1b92e4ce9110400ca46ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77610635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34394be4b9582e29aa4f5152b51636b9bfe5d0ba0e94ae864639c3d794d948a4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:46:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 02 Sep 2026 00:36:52 GMT
ENV GOLANG_VERSION=1.26.8
# Wed, 02 Sep 2026 00:36:52 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 00:36:52 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 00:36:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 00:36:52 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 23:53:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 23:53:55 GMT
WORKDIR /go
# Fri, 18 Sep 2026 02:17:16 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Fri, 18 Sep 2026 02:17:17 GMT
ENV XCADDY_VERSION=v0.4.5
# Fri, 18 Sep 2026 02:17:17 GMT
ENV CADDY_VERSION=v2.11.4
# Fri, 18 Sep 2026 02:17:17 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 18 Sep 2026 02:17:17 GMT
ENV XCADDY_SETCAP=1
# Fri, 18 Sep 2026 02:17:17 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Fri, 18 Sep 2026 02:17:17 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Fri, 18 Sep 2026 02:17:17 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e7d755fbc89975a56671fb9c66c0475cd0c3d985931f98beed5cc993d42210`  
		Last Modified: Thu, 17 Sep 2026 23:46:58 GMT  
		Size: 250.2 KB (250238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d3d6a0c14ab5befbcdd4fd3432af93ba4b51f067cd970f8ccedda273f818fb`  
		Last Modified: Wed, 02 Sep 2026 00:37:48 GMT  
		Size: 64.9 MB (64901026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13b55a2d9cf91a2ee9198ce4cb4c9cf87645be5d70a0075de25ca0f7627e90b`  
		Last Modified: Thu, 17 Sep 2026 23:54:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5279f523bd5a8abacd450a6c6c82d3b2944dc89af329344b955fb5dadb76bdb8`  
		Last Modified: Fri, 18 Sep 2026 02:17:41 GMT  
		Size: 6.9 MB (6938018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eded2c3ef61b9fff737560cbb081470040dbb50162aabab63628b00008108d`  
		Last Modified: Fri, 18 Sep 2026 02:17:41 GMT  
		Size: 1.7 MB (1705993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e55ebfe719434bdc3dbb27ecaeefcc21201a221146840ca5976668dc227795`  
		Last Modified: Fri, 18 Sep 2026 02:17:41 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:f3b9c48fcf6f13653446e0fe4e04a132f3c239ef31bf33c53041ee2ac5c41cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 KB (284800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fcd37e351012aeafea3e032140f59f95806a142b3465a681fb7d1efaf5c689a`

```dockerfile
```

-	Layers:
	-	`sha256:58dca42e5a6d5f9be04d5aeac92b0d4076961d5a1c47fb64ce4a1275809e424a`  
		Last Modified: Fri, 18 Sep 2026 02:17:41 GMT  
		Size: 264.6 KB (264601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca83de69564c36625fc1e522f81751bc38d43fe11c5fdad14c24ec074791341`  
		Last Modified: Fri, 18 Sep 2026 02:17:41 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; riscv64

```console
$ docker pull caddy@sha256:da2b0733fe08cf1f788a3ae47e2d03abae4b783625e4196f59c2db6bc6f112de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77446120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30d99a8b1ce732ffedc06a7b492e207ed3aba853f4743a2caf069c24fd16313`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 02 Sep 2026 15:18:33 GMT
ENV GOLANG_VERSION=1.26.8
# Wed, 02 Sep 2026 15:18:33 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 15:18:33 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 15:18:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 15:18:33 GMT
COPY /target/ / # buildkit
# Mon, 21 Sep 2026 10:18:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 21 Sep 2026 10:18:19 GMT
WORKDIR /go
# Sat, 26 Sep 2026 04:42:27 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Sat, 26 Sep 2026 04:42:29 GMT
ENV XCADDY_VERSION=v0.4.5
# Sat, 26 Sep 2026 04:42:29 GMT
ENV CADDY_VERSION=v2.11.4
# Sat, 26 Sep 2026 04:42:29 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Sat, 26 Sep 2026 04:42:29 GMT
ENV XCADDY_SETCAP=1
# Sat, 26 Sep 2026 04:42:29 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Sat, 26 Sep 2026 04:42:29 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Sat, 26 Sep 2026 04:42:29 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a26110e639e5c2f5ae2a279e28220c86acc4835d7de4818e4ea9064ba9bcf1f`  
		Last Modified: Mon, 21 Sep 2026 09:47:07 GMT  
		Size: 248.0 KB (247955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfbfb3e21a50cab84000c30aabe7f0eeed3433b23c1bdaa9366ede849bdafdcf`  
		Last Modified: Wed, 02 Sep 2026 15:25:11 GMT  
		Size: 65.2 MB (65200816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dcf00de6f761c13dc3f308eff83fb45c7e02612f7847e14c66ee9fae05a0675`  
		Last Modified: Mon, 21 Sep 2026 10:19:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a07176e12d03284a456a51029ef69f88cdd63fe282e5ba413b6f3e6d5c58c4`  
		Last Modified: Sat, 26 Sep 2026 04:43:53 GMT  
		Size: 6.7 MB (6696230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d151853a8376f8cef7f232cb5cf23559ef5a39d7bf4dcda56302a062d22cc90e`  
		Last Modified: Sat, 26 Sep 2026 04:43:53 GMT  
		Size: 1.7 MB (1724208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13566f4354fa49cd44cedb99e6f180430fe85a60b84c3b6def39c2d0bc4b661`  
		Last Modified: Sat, 26 Sep 2026 04:43:52 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:fea93fed153c0cb741b313c040da20bbe336d7e33fe72e0a603c7017d5502404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 KB (284795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905eb2fe4d76d972d5de7f8c5ff1c0894df5b107e900978e4dbbe18e12410450`

```dockerfile
```

-	Layers:
	-	`sha256:a8c257e5764a3891dafdae45b6d6108da4b7d53bcbd75494a9abca94fee55900`  
		Last Modified: Sat, 26 Sep 2026 04:43:52 GMT  
		Size: 264.6 KB (264597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3199886c3715df841876a8333ddfe9d1af3cf5db44a6becf452ba244b03638d`  
		Last Modified: Sat, 26 Sep 2026 04:43:52 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; s390x

```console
$ docker pull caddy@sha256:86ead1f085f5c4e48c356fda1678a4b382cd5826a3f7f5b757c2c64d723450ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79129987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e908ce53fc5e9958ff263dfb08318f446fff23102d2818bbcb0d8c43fe9092`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:21:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 17 Sep 2026 23:40:47 GMT
ENV GOLANG_VERSION=1.26.8
# Thu, 17 Sep 2026 23:40:47 GMT
ENV GOTOOLCHAIN=local
# Thu, 17 Sep 2026 23:40:47 GMT
ENV GOPATH=/go
# Thu, 17 Sep 2026 23:40:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 23:40:47 GMT
COPY /target/ / # buildkit
# Thu, 17 Sep 2026 23:40:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 17 Sep 2026 23:40:49 GMT
WORKDIR /go
# Fri, 18 Sep 2026 02:28:28 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Fri, 18 Sep 2026 02:28:28 GMT
ENV XCADDY_VERSION=v0.4.5
# Fri, 18 Sep 2026 02:28:28 GMT
ENV CADDY_VERSION=v2.11.4
# Fri, 18 Sep 2026 02:28:28 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Fri, 18 Sep 2026 02:28:28 GMT
ENV XCADDY_SETCAP=1
# Fri, 18 Sep 2026 02:28:28 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Fri, 18 Sep 2026 02:28:28 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Fri, 18 Sep 2026 02:28:28 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ddfaec3be95f27dd8946c7aeea6d7456f6d56bd3d2fabdbe4078df7699d3eb`  
		Last Modified: Thu, 17 Sep 2026 23:21:37 GMT  
		Size: 248.6 KB (248571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d84eb15669e2ea1c047f6d98c6248b418f5c30db96066e6227dff414c69789f`  
		Last Modified: Tue, 01 Sep 2026 23:26:08 GMT  
		Size: 66.6 MB (66579150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a73d9145efcb5b31ad904bda4942d22907f6067dc5f5c089e98067756fd9431`  
		Last Modified: Thu, 17 Sep 2026 23:41:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f035302b7f7cceaf8772b36593943d29e92fd375f68f23044b38bff733533b`  
		Last Modified: Fri, 18 Sep 2026 02:28:43 GMT  
		Size: 6.8 MB (6805589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9bd1042c60da9c179e87feadc30dd98d49aad2991bffa9170fdfe84cca2b66`  
		Last Modified: Fri, 18 Sep 2026 02:28:43 GMT  
		Size: 1.8 MB (1782835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c36342687ec5c5cad1b3fb6bec453273c4645d9373d5bce77068818effaa59`  
		Last Modified: Fri, 18 Sep 2026 02:28:43 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:6eb95eecfbe6b3f9ba8d605962eb4074e8ebf6caa92b4f81e4e097e2db554ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 KB (284655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d8f7380e22e65f17911ab18b69f1257fc635c263fdfba1d2640764d994e024`

```dockerfile
```

-	Layers:
	-	`sha256:a5428899c494ea2063d08688e194b6a3a60ee4a0a7c02ee49662db508280abc8`  
		Last Modified: Fri, 18 Sep 2026 02:28:43 GMT  
		Size: 264.5 KB (264527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f5759e349fd1ed028bbf19a3275becda87862e02e6c0d7a545347b8c5cbf4ad`  
		Last Modified: Fri, 18 Sep 2026 02:28:43 GMT  
		Size: 20.1 KB (20128 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - windows version 10.0.26100.33438; amd64

```console
$ docker pull caddy@sha256:299e25c20f72ee227b3d1937088636123e4c131c17104f6b6ed53cdeb197bbb9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2581456181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69407499c097682db8a375cee930118da06b97c3b809f000ce44a3adb70197be`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:45:26 GMT
ENV GIT_VERSION=2.48.1
# Wed, 09 Sep 2026 22:45:27 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 09 Sep 2026 22:45:27 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 09 Sep 2026 22:45:28 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 09 Sep 2026 22:45:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:45:42 GMT
ENV GOPATH=C:\go
# Wed, 09 Sep 2026 22:45:47 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:45:47 GMT
ENV GOLANG_VERSION=1.26.8
# Wed, 09 Sep 2026 22:47:05 GMT
RUN $url = 'https://dl.google.com/go/go1.26.8.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'b92c3b2adae85a11ba71fe7216daf0d84e82af4c8ab6c5625807f28622043a59'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:47:05 GMT
WORKDIR C:\go
# Wed, 09 Sep 2026 23:26:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 23:26:23 GMT
ENV XCADDY_VERSION=v0.4.5
# Wed, 09 Sep 2026 23:26:23 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 09 Sep 2026 23:26:24 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 09 Sep 2026 23:26:43 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('652857d019f3e1772b154b33f2479d8f17f4b10818802363737d35601c4cd51dc9a9ba0b3c64cdada9fe6bdcebb4395d0561b2ca302ae1219b288758c01911c1')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 09 Sep 2026 23:26:44 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94ca15f4f6f359841e19a7dae222af6b7a86ceefe8714b68e57b6302f2cdd3d`  
		Last Modified: Wed, 09 Sep 2026 22:34:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1102e87919b013dc456930b3f3153c6335e5de23cf9065b232306157792dd2`  
		Last Modified: Wed, 09 Sep 2026 22:47:17 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841856abc0c563040bca86c1dad0573620f852b111d38bc654809f6cc48757c9`  
		Last Modified: Wed, 09 Sep 2026 22:47:15 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea57005f75d59a7657bac9512760dd3d814dc7e67085b97bf7361596eb6f8c0`  
		Last Modified: Wed, 09 Sep 2026 22:47:15 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb4fcf1dc0cdce74df4dd47801c357a229e4ed5b40cff51b41d8d41b53d694a`  
		Last Modified: Wed, 09 Sep 2026 22:47:15 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd8f8eb6876cf4b89a5330a8081a1a34326faa7e308b2101a26f657448a989f`  
		Last Modified: Wed, 09 Sep 2026 22:47:20 GMT  
		Size: 51.2 MB (51221459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473219093e7421eafabbbc1eaf28691d67c5268d16dc96daabbeb13c0b64b96c`  
		Last Modified: Wed, 09 Sep 2026 22:47:13 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5fc0ed4c5e4cbc1624ca983bd0cf150178d7b7528a75eca6835f62859542eb8`  
		Last Modified: Wed, 09 Sep 2026 22:47:14 GMT  
		Size: 351.4 KB (351429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85710d2295e853f6b5c095d609e17af9458f2223f893d835a79bcc694e5ae2d1`  
		Last Modified: Wed, 09 Sep 2026 22:47:13 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8ccd4a16ea98b8b947ffc0b90edaa9210bf89a6d241f70e8e98d618f2ec23`  
		Last Modified: Wed, 09 Sep 2026 22:47:23 GMT  
		Size: 69.9 MB (69941737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bc2bd43df992aa64411351dcaef7586473e57d1fdb9e3e9f35bec9ca3c04f9`  
		Last Modified: Wed, 09 Sep 2026 22:47:13 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac2971a7a23d640d5a2af13b202bf8a40b265e2ebde61b1d66eac6d81df22fe`  
		Last Modified: Wed, 09 Sep 2026 23:26:51 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b96577f912f796f6ae9e13318aba2b1ec7e7644896e200a2f3c7f68019ef5f`  
		Last Modified: Wed, 09 Sep 2026 23:26:50 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d27482c16ee0f0ad9da665f17f1029eb341af1419f4217042eb81a6851162a3`  
		Last Modified: Wed, 09 Sep 2026 23:26:50 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67c3daf9b1f991a2abfab3916fecb2887faced21dc8a7096690074bd1053c53`  
		Last Modified: Wed, 09 Sep 2026 23:26:50 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee2a9bb641f704b684b61785682183dfcc75edb32dfba8dfea6f941adba0f5c`  
		Last Modified: Wed, 09 Sep 2026 23:26:50 GMT  
		Size: 2.3 MB (2295026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7daff161281afa2789a421ae2fb1e8e614fb1b147de95fa2165b149ec4c8657`  
		Last Modified: Wed, 09 Sep 2026 23:26:50 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-builder` - windows version 10.0.20348.5622; amd64

```console
$ docker pull caddy@sha256:cbfabf99c7196d7fd23dc85a9377ac74ae0a631644c4518189e47f0e662e8481
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2343258922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8c2dcbd3c17397945783b8ea610659b42e76632cdc4f0a6172b83a8f2e2c8e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:46:51 GMT
ENV GIT_VERSION=2.48.1
# Wed, 09 Sep 2026 22:46:51 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 09 Sep 2026 22:46:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 09 Sep 2026 22:46:53 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 09 Sep 2026 22:47:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:47:05 GMT
ENV GOPATH=C:\go
# Wed, 09 Sep 2026 22:47:10 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 09 Sep 2026 22:47:11 GMT
ENV GOLANG_VERSION=1.26.8
# Wed, 09 Sep 2026 22:48:27 GMT
RUN $url = 'https://dl.google.com/go/go1.26.8.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'b92c3b2adae85a11ba71fe7216daf0d84e82af4c8ab6c5625807f28622043a59'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 09 Sep 2026 22:48:29 GMT
WORKDIR C:\go
# Wed, 09 Sep 2026 23:27:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 23:27:29 GMT
ENV XCADDY_VERSION=v0.4.5
# Wed, 09 Sep 2026 23:27:30 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 09 Sep 2026 23:27:30 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 09 Sep 2026 23:27:56 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('652857d019f3e1772b154b33f2479d8f17f4b10818802363737d35601c4cd51dc9a9ba0b3c64cdada9fe6bdcebb4395d0561b2ca302ae1219b288758c01911c1')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 09 Sep 2026 23:27:56 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73b6f818c5f1cf68d65bc49c54a9df1afaa6472ab9c7b3391ca3156893d5a2c`  
		Last Modified: Wed, 09 Sep 2026 22:35:54 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e18f64297087c3c5702c120f3af08a9fc6bd15c29546619fe67e26e3f5dec7`  
		Last Modified: Wed, 09 Sep 2026 22:48:36 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d6a83201fa3e878f029b07a871e542c7bfd9ff9bd428942db0f2ab84114b21`  
		Last Modified: Wed, 09 Sep 2026 22:48:35 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4728f82ce86f34dcd86e7d0463e0ade9d9482b649122898d5596322043d6a223`  
		Last Modified: Wed, 09 Sep 2026 22:48:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81348c410233d94c3eaaf45adf6de46918ef5627f3962818953cd8bd9146fde`  
		Last Modified: Wed, 09 Sep 2026 22:48:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a9809a9e10d2b4f3828a4c19985d6efc15e92a80f553991b425eeb9d1c24b2`  
		Last Modified: Wed, 09 Sep 2026 22:48:40 GMT  
		Size: 51.2 MB (51202961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f85f901f2aa9f2403f5d852284a5324868a5bd7f933dc4c38cf5b8d03be70d`  
		Last Modified: Wed, 09 Sep 2026 22:48:33 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daca6b7d044324db974e3f96e902cc09cad7046fe0659c285faeb131bd7000ab`  
		Last Modified: Wed, 09 Sep 2026 22:48:34 GMT  
		Size: 328.3 KB (328281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe3ad2d59593174ad4b071e4dd29f4f6249572c76a2ccd43556ad8e1ccdcc1`  
		Last Modified: Wed, 09 Sep 2026 22:48:33 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b1e5bbb00a2d68aa1832a68de7e51391b8affe986f54cb3f553dceb721846`  
		Last Modified: Wed, 09 Sep 2026 22:48:43 GMT  
		Size: 69.9 MB (69907324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71ee93d195702cf0d0596b3d7ea92c55e94d1a7613cf792bb4560ea3e7ce589`  
		Last Modified: Wed, 09 Sep 2026 22:48:33 GMT  
		Size: 1.5 KB (1484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25cb03ca9eb2e36cb2ee78b661e84c3d62001e05d8fdde93b0c6545a50e4b7`  
		Last Modified: Wed, 09 Sep 2026 23:28:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5323e6177f114e31c22e8640a55859cb04738e51e37a6e7746dc75c37913bb1`  
		Last Modified: Wed, 09 Sep 2026 23:28:01 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342f0045b04dad116f958d60e161c6ac818bedc190a127bab555b82f07e71de`  
		Last Modified: Wed, 09 Sep 2026 23:28:01 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7729876d41c7eef332e2bc6581dc3af0343b8ab22b43667b570a0497d711044b`  
		Last Modified: Wed, 09 Sep 2026 23:28:01 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c4fdfe0e5e36a0f10ed32932a079909a0b385aae77a6f62a518ec6cef25f5`  
		Last Modified: Wed, 09 Sep 2026 23:28:02 GMT  
		Size: 2.3 MB (2314532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9833da9beee53d7a07966c2b9b4810ac5cd709be657a052a4d73d6d7c7ae1080`  
		Last Modified: Wed, 09 Sep 2026 23:28:01 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
