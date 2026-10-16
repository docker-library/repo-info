## `rust:alpine`

```console
$ docker pull rust@sha256:557a94c82b485a14b569120e00867267108c734efe33f10cc31ca0cd5dd1eca9
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

### `rust:alpine` - linux; amd64

```console
$ docker pull rust@sha256:4c61c5bd71ebe5e889d7e667d87292c3f021a6dd9852803e296ee232c2c41787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.1 MB (352075110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606d2304ad27843b494536a2fe53d0ad9d7101c094db957df50e401f3637eff2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:11:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 15 Oct 2026 19:11:44 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 15 Oct 2026 19:11:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 15 Oct 2026 19:12:02 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8597c4fa48e403b5ea7c7f0182d6414e5497f28de24e9281cbc4030cab4e558c`  
		Last Modified: Thu, 15 Oct 2026 19:12:41 GMT  
		Size: 75.1 MB (75083167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d721f98bc147528c7241b41fefe2f5f629c8734cd5fcaac99d1913ed083c815`  
		Last Modified: Thu, 15 Oct 2026 19:12:44 GMT  
		Size: 273.1 MB (273142205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:004dc758ac83f6cce3894704e59b23e9f6b49ab4c55b683f2bebaf496a7d2ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1004471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afb4075a8a753a58452850661030cca9b436f011e5e2d357eb631d95ed7e7a11`

```dockerfile
```

-	Layers:
	-	`sha256:541f815a883077066e77e3e8bf5e6ba600313f09dee73e3e8eb30772acb800e5`  
		Last Modified: Thu, 15 Oct 2026 19:12:38 GMT  
		Size: 990.5 KB (990489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11fe996444742847b8c07cc602d8510b3a11a7893440bd373de422d292bd43b2`  
		Last Modified: Thu, 15 Oct 2026 19:12:38 GMT  
		Size: 14.0 KB (13982 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:ce24d5c28267be4663832386756ff220596deb0457358522bf545fc263ae4e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.1 MB (351059327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a945ebfa94c33e8c86cdba5dd7f54399d7fbbb0476907e2fcacdd30dfbfb48`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:08:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 15 Oct 2026 19:08:57 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 15 Oct 2026 19:08:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 15 Oct 2026 19:09:11 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a96e54a941d3b99412695f1578fbec3251d9a1933e6ab3f607a4e974461db0e`  
		Last Modified: Thu, 15 Oct 2026 19:09:48 GMT  
		Size: 66.5 MB (66506527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32a64d7b1df5bf31e120c7d05ba0b97d7c35b85b887107470d0188df3ae02b5d`  
		Last Modified: Thu, 15 Oct 2026 19:09:53 GMT  
		Size: 280.4 MB (280365141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:b8a181fd47efe4b7e2814da6f975d935dc207f9e8f1e41c64f26c7e658df4191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1063589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe84dc185ff0b853a80696f27debc247f697f84cb3fdd51fd37da45e2e04659`

```dockerfile
```

-	Layers:
	-	`sha256:40c998774051a47ab4b9b6a278b68de18687de1c57b9e48821cbdb1799e67060`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 1.0 MB (1049440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff87bb542225aa81f2ccb067a7c1d2b4e952f348a03f51af2b296181a7d7a212`  
		Last Modified: Thu, 15 Oct 2026 19:09:44 GMT  
		Size: 14.1 KB (14149 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:74ae93112270addeda242648dd53428f38ec3b7d6831548a2dc97fbb01fb8ba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.0 MB (367041218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806f646ef88e3de742da7adfa8d2923093cada959114d614e2f2d48110b827ec`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 20:26:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 15 Oct 2026 20:26:13 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 15 Oct 2026 20:26:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 15 Oct 2026 20:26:32 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2c0ad525c9d18f3ae8da664090287a00af2e53f1a57bc788be01507f9dc0bb`  
		Last Modified: Thu, 15 Oct 2026 20:27:50 GMT  
		Size: 66.4 MB (66397203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e912e400b18ef48076f4abddc540a6a7921e632e1058eeb375c9878778bb4556`  
		Last Modified: Thu, 15 Oct 2026 20:27:54 GMT  
		Size: 296.8 MB (296826538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:6f96dcf2b89b6d81fa975b96308a514e31e945f3fbb2a2fb716be4d0cd874f81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **998.1 KB (998086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ced3d56f46d7255f2f932ccae0f6f6da5fab46c5c84db86ae9ce0d3d3f46c1`

```dockerfile
```

-	Layers:
	-	`sha256:0d4d46edb0e73fdac1b135a0bb50c3539a83873095a56f928560d0d281b1d723`  
		Last Modified: Thu, 15 Oct 2026 20:27:47 GMT  
		Size: 984.0 KB (984034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d869d4363b03b5dd73ca34ba80f37b5cee6d5a65724ada6761009537946fc37d`  
		Last Modified: Thu, 15 Oct 2026 20:27:47 GMT  
		Size: 14.1 KB (14052 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; riscv64

```console
$ docker pull rust@sha256:792069e91714e3faaad67756d0f261ef375217392e80e4a92730276d2e6ac660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359191304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03964dfadb965d67e82fdd2753a4b0b8395b340560d8808a7abb15c278e4e21b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 12:06:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 16 Oct 2026 12:06:45 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 16 Oct 2026 12:06:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 16 Oct 2026 12:07:48 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a894c882742a14ca5eed5112ba6e5b864cdf14a5a8158786ff771db281185adc`  
		Last Modified: Fri, 16 Oct 2026 12:16:07 GMT  
		Size: 82.7 MB (82748908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59087739f2ca8443cbf7c3c724c8b924665948e55024ec1904dbca44dae60034`  
		Last Modified: Fri, 16 Oct 2026 12:16:35 GMT  
		Size: 272.9 MB (272867025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:c0d85ee62b71f9583c84a13eda10d1d64044e1ab7b5e78b179ddd4deae96073c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1052307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be265a7a441a95e264e5f345e314f4243b2ab0557b514e58cf4fbfeb48bbaf1`

```dockerfile
```

-	Layers:
	-	`sha256:51dc555475a86a159dd99a4d33ba4d10810b5aa7a1daa4b411e59126b5146981`  
		Last Modified: Fri, 16 Oct 2026 12:15:44 GMT  
		Size: 1.0 MB (1038255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b7901aa827ed4358e190481f104f673d389385d84d25c4b3238bed668017c17`  
		Last Modified: Fri, 16 Oct 2026 12:15:43 GMT  
		Size: 14.1 KB (14052 bytes)  
		MIME: application/vnd.in-toto+json
