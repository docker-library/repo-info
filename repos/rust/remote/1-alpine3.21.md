## `rust:1-alpine3.21`

```console
$ docker pull rust@sha256:3b2af76b7d1c2bdcc6fa4d9376dd07229956971ee7bac11c2efd0951076bd976
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

### `rust:1-alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:e131493797b21d68c59c74c7273034576df5df2a4ef3947660692c6a21e8ce81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.8 MB (341801992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058f8a83b489adbb67658df2af9ede9d8d4be4d0abc45488dc8e4ddaf5009818`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:54:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:54:45 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 03 Nov 2026 21:54:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:55:03 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20dad34f9b2f2365f3b02a34b5d88ad66e133dc27f22680d966160b0e825ca91`  
		Last Modified: Tue, 03 Nov 2026 21:55:41 GMT  
		Size: 65.0 MB (64986189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7420a9e65d6686cec99a6af29e67505a853fc42a4d6381cfa7d773fd9c828956`  
		Last Modified: Tue, 03 Nov 2026 21:55:44 GMT  
		Size: 273.2 MB (273190408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:1cfdce085c31da5eda76dfa5bbd9ff3eedcd50fc36622842cf4b31a274e7b551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **954.8 KB (954786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567ec6a237cb1379f7dbb8e73b855c406bf0542fc383f011280ad18452688497`

```dockerfile
```

-	Layers:
	-	`sha256:003b5e589f792524416e159d631531aa206745eb6977ed55793a5f091c41ef29`  
		Last Modified: Tue, 03 Nov 2026 21:55:38 GMT  
		Size: 942.0 KB (942008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:380f07b39321ba5aaf99bd37996d47a5144fc958c30c939b8773aad153a5bad7`  
		Last Modified: Tue, 03 Nov 2026 21:55:38 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:aaa9ef8061f1483f1a303c3181b16f211b9c2c0ca1d298e5b82b3cd1fbb1f19e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.0 MB (346048524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b38be75bdca9940d8b9f9cdd01f9fced9c5acddccf361df67089ca37ce50f08`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:54:59 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:54:59 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 03 Nov 2026 21:54:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:55:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b38fa17c87166628bb5b248c427aaeddbd11a7d001384feff08099051dc7b2a`  
		Last Modified: Tue, 03 Nov 2026 21:55:49 GMT  
		Size: 61.7 MB (61663000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf283c8cc10cce2e4d9a4353286eb7cadb6aef9e349f025e87cac9f05602dd0b`  
		Last Modified: Tue, 03 Nov 2026 21:55:53 GMT  
		Size: 280.4 MB (280411153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:f0129cdc3100276c2e4d0afd70155cfae6b1cd9ab131bbc456bce3dac0a3f76d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1034228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f96a9577ea6d32838785de30bc303122332d2b19aaec023ea7560bb46e3370`

```dockerfile
```

-	Layers:
	-	`sha256:2805a63d055a4015b3e330574787ec3bb72171fe351088069fffe4f28d08a26d`  
		Last Modified: Tue, 03 Nov 2026 21:55:47 GMT  
		Size: 1.0 MB (1021332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14c08045c049c0e30f44aafd006050b58fd4c8409b46aca421b74961665ce0f7`  
		Last Modified: Tue, 03 Nov 2026 21:55:46 GMT  
		Size: 12.9 KB (12896 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; ppc64le

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

### `rust:1-alpine3.21` - unknown; unknown

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

### `rust:1-alpine3.21` - linux; riscv64

```console
$ docker pull rust@sha256:59a29644423be0c36162bdc13c29f3e73d58f21553a1259df3e08e89688c2334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.5 MB (350494320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83552fca5d2ed278e3c52d5438e2523f7b2954a4b84ec51a12d41f6f22984ecc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 05:00:23 GMT
ADD alpine-minirootfs-3.21.9-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 05:00:23 GMT
CMD ["/bin/sh"]
# Fri, 30 Oct 2026 08:04:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 30 Oct 2026 08:04:34 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 30 Oct 2026 08:04:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 30 Oct 2026 08:05:39 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='2ba97d668c06dc4b1884f2a3fa6f4cf14b9bd0c1db379af7e4f87a705ff19edd';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='7fdbb23acf6495efee2e371580c52b365917551b4835090a225c44ac30915235';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='d0f97151d3ed165ca11c68b460cabf1b828dc605525ce68bb0ef8f62f78ac8b6';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='4890a2396b60d0479a77917b05a78bdd7aa0ef5d29d44b8892314b5ffe2c1d5b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:643eca146d1a96f3341a61349fb18d6672657279623f35a5072344018f8aa0f0`  
		Last Modified: Fri, 23 Oct 2026 05:00:57 GMT  
		Size: 3.3 MB (3336841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6328dfb8ab39d78d6971fc0eced64444ddb214628122ca75c62b700432eb9f`  
		Last Modified: Fri, 30 Oct 2026 08:13:58 GMT  
		Size: 74.4 MB (74352210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e544c7b599039c0a858decc7c39687f4f4c548d26f3bab24e663ec74b52ec7`  
		Last Modified: Fri, 30 Oct 2026 08:14:26 GMT  
		Size: 272.8 MB (272805269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:e9050e97955e40245c5bdab2991494259c0ddd9083e415d9cd15bf3496cf0e48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1021710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e059019343879f1302ef71057cc4b497e7f21b724ab4e1b885ff95c9e06259e4`

```dockerfile
```

-	Layers:
	-	`sha256:aa94d429375f01a5893bf61a8f487553ad214688ca74df7c6ac4512a52211f14`  
		Last Modified: Fri, 30 Oct 2026 08:13:35 GMT  
		Size: 1.0 MB (1008886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14d09148e70f323a65cf40750665aaf71c9ed5e48e81c2ff19bcffcb6003002c`  
		Last Modified: Fri, 30 Oct 2026 08:13:35 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json
