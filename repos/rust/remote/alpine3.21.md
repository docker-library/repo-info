## `rust:alpine3.21`

```console
$ docker pull rust@sha256:0c83dd4543439c26686a8b36cfec676f7b3f17d13698dc620abcb61220e88ee1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:0cd832ea4ffca2da1ef0ab7f9e099c96d016501f25233da746981b3af0ba5e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.8 MB (341801781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c5c5e55404e78f301b56580df3e7f102e7782094e634a0b5094e07082bb3df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:34:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:34:15 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:34:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:34:32 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036f8f9673c94393e25cb8dfb3edab2bcd6d5fa2c441e346f48383ce9a2ae3bf`  
		Last Modified: Thu, 05 Nov 2026 19:35:07 GMT  
		Size: 65.0 MB (64986028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ca5120b59b9ba94335f9cbcd246d14a96fe0a00f533a761462d5a6f57b7006`  
		Last Modified: Thu, 05 Nov 2026 19:35:10 GMT  
		Size: 273.2 MB (273190351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:ce5a0b6a23d76f2851edd671011963b8eea9d6918321ac610f1640f9550f265e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **954.8 KB (954792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309f01fcb61fd2de747a967464bb33030ed285218f3186f65284cda74996b3df`

```dockerfile
```

-	Layers:
	-	`sha256:6f6c6774817ec5d795e9c9fc4bf4b9011951cc72eed74dd2ef6f573ecac31c02`  
		Last Modified: Thu, 05 Nov 2026 19:35:04 GMT  
		Size: 942.0 KB (942014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22bc7424726262943610b6e07f55a50f1733a14c69f3a6505b0c90dd0336fa32`  
		Last Modified: Thu, 05 Nov 2026 19:35:04 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a2a5cda7db01c37a88507ca9929cbc4b540c9c22ee04d48059bae3138696fbab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.0 MB (346048622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61be65439394aa9476270fe8f1c0eb4ddc65235fb3679348c5fd5357caeea013`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:38:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:38:32 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:38:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:38:46 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de512db3795ef6a3e23d474b10084abdbd387b56d079c70cf3656152e38c2a3`  
		Last Modified: Thu, 05 Nov 2026 19:39:20 GMT  
		Size: 61.7 MB (61662951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e096a35b7ddf5cf800f0f8df22c691c60a87252893b4a221bc154483a831a8a7`  
		Last Modified: Thu, 05 Nov 2026 19:39:24 GMT  
		Size: 280.4 MB (280411248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:9df800f712f1e28192cbd072ac9a77b7278c2f55fb97c651ff94435f5d3579ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1034235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a965b43f23b226183d6d6a2fd269e27a57198966b36625cc4201ed0ba30636`

```dockerfile
```

-	Layers:
	-	`sha256:001e36eb16bab80308dfdf7cc71c3912baad2c4048ca4d1c24fb9e0c09a67da8`  
		Last Modified: Thu, 05 Nov 2026 19:39:18 GMT  
		Size: 1.0 MB (1021338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52bf77d3ec120d601cdccac8a71a0617f373a9cbf8a2946dbec923fd7fb4d185`  
		Last Modified: Thu, 05 Nov 2026 19:39:17 GMT  
		Size: 12.9 KB (12897 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:6fdd8f27b053fec4c490dd0124b7fde787fc1cdf2a723765b723820a4337d13a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.9 MB (361899987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523729bfd5cdad2a613e4ca061accc99fb0b984c724ddd0bc7941f41f8c45447`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.21.9-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:58:25 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:58:25 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 03 Nov 2026 21:58:25 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:58:48 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a081209b48125696a682b02c1c2db84af440ca6edc6d723ef5aff6945b2727a6`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.6 MB (3557985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de906d5a5035e977979de4649d6121648174b47e91d69e7b451c110bc431aaa`  
		Last Modified: Tue, 03 Nov 2026 22:00:13 GMT  
		Size: 61.5 MB (61475570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f328c9f8578eb7d1f511b765862494eed0f1713607a6114f80a4047696e081`  
		Last Modified: Tue, 03 Nov 2026 22:00:19 GMT  
		Size: 296.9 MB (296866432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:cadb3a4847df98270b02466e9a8624d568de94ddf8774b793a87ae89911152a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **968.7 KB (968680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1055f3690ff05c1884b6de300a0a4fd00f132ec410076f16dc9ab11531efbde`

```dockerfile
```

-	Layers:
	-	`sha256:818fa3c2015252c90123f82d631a5f411014d8cfb713887c2363cbedc520f58d`  
		Last Modified: Tue, 03 Nov 2026 22:00:11 GMT  
		Size: 955.9 KB (955857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:203b484b95a79c8e071c2550c43d05e42a2daa12c809b737a658c054ac12966d`  
		Last Modified: Tue, 03 Nov 2026 22:00:10 GMT  
		Size: 12.8 KB (12823 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; riscv64

```console
$ docker pull rust@sha256:fbb5b8ea40f93c17cea8a28016568483903fd9e44a952c4aa5aa8cd4e9c111f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350563950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babf588dda88af6e441c19e8cdd29720102da393b4023e42f20f06c9b0f05659`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 05:00:23 GMT
ADD alpine-minirootfs-3.21.9-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 05:00:23 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:05:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:05:45 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:05:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:06:50 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:643eca146d1a96f3341a61349fb18d6672657279623f35a5072344018f8aa0f0`  
		Last Modified: Fri, 23 Oct 2026 05:00:57 GMT  
		Size: 3.3 MB (3336841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d1b8b395a77d5ac36590b6276efe6aca87fdb2243fbcbe41ba3631383cef1`  
		Last Modified: Thu, 05 Nov 2026 00:15:07 GMT  
		Size: 74.4 MB (74352319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ce07182754594671f85e85e6656251983e2ee564609ecaba356f51c0d1eded`  
		Last Modified: Thu, 05 Nov 2026 00:15:36 GMT  
		Size: 272.9 MB (272874790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:8e91019b1d805b06de7854bfb12dd5a5f6fc0f0a2bb8f0dc8a777cba2c7e77d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1021710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fd193161265eb2dfc12ae8abbba3bf426f395fa751cc1fbc0a2bec56dc7490`

```dockerfile
```

-	Layers:
	-	`sha256:2c23a1c6efd85b23b6f70234edd95986287762cfdb86f1bee64dfcd98366617f`  
		Last Modified: Thu, 05 Nov 2026 00:14:46 GMT  
		Size: 1.0 MB (1008886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6beceaea862104811d3c4b306642d3365fec51cb853b422229f6582ec93386b2`  
		Last Modified: Thu, 05 Nov 2026 00:14:46 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json
