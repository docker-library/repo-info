## `rust:alpine3.22`

```console
$ docker pull rust@sha256:1271b9ac3019d0d5e082a151bdd8c9969141f1d0c020060fd62b487f65a4e0ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:alpine3.22` - linux; amd64

```console
$ docker pull rust@sha256:e4693cd4f8e853454d5a576f6ef38166d0fa55161576d5883468a58267d1507c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.9 MB (341946810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63e9bd884aef8d4447bc84d7d02de62c692b218ffdde06d2db2a40ae840d9ac`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 23:55:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 01 Oct 2026 23:55:32 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 01 Oct 2026 23:55:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.0
# Thu, 01 Oct 2026 23:55:50 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07be896c52ed94f0ff8d0a3578aef2427eddfb8d97e0ae695e76f847f89126e7`  
		Last Modified: Thu, 01 Oct 2026 23:56:28 GMT  
		Size: 65.0 MB (65037035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4772b484d0f31081611b83ad36c3558afd93fa009c7f427cb56bd60cec908039`  
		Last Modified: Thu, 01 Oct 2026 23:56:32 GMT  
		Size: 273.1 MB (273117700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:bb9036bc0f2441cffa45ea08a50b838a077f28011afa58f4dd648a5158aa62a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **957.5 KB (957503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2c748f8738b83cc70580458de235648a4336e3f31be5c37d5731b3a960d300`

```dockerfile
```

-	Layers:
	-	`sha256:958b0b512e350b3973e9b8ec3ae9843547bcb858f45f80c9e9e38ba01b26330b`  
		Last Modified: Thu, 01 Oct 2026 23:56:25 GMT  
		Size: 944.7 KB (944725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7d7a66b6adeb4cb3544de4fbd52900457bd4bd8996d3a5b20ecf01578916375`  
		Last Modified: Thu, 01 Oct 2026 23:56:25 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:ba511babd167c72f478edbfa2461f5499a7e9639e9793705e8b8090382731198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.2 MB (346222921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2784adab8335ded9fbec403bd92ebb1d93e8070fd3eb4e85b9e0832435d2968d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 23:53:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 01 Oct 2026 23:53:10 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 01 Oct 2026 23:53:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.0
# Thu, 01 Oct 2026 23:53:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c79383cb47f5c3ff4009b5884d92275d3ed1ac757fb6452178bf3cc136b45d5`  
		Last Modified: Thu, 01 Oct 2026 23:54:00 GMT  
		Size: 61.7 MB (61714535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d70ad3d0d1ca4c23906a646a9856781c5f106a8292d252b5d2a32a22fa70a094`  
		Last Modified: Thu, 01 Oct 2026 23:54:03 GMT  
		Size: 280.4 MB (280385302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:a458a22b9bcaba34e97842d1b3ae58922ff4eae2a3a2d66f3d646394ab5609b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1036945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:383bf3f1bca949f7fcdcdd91586c5dfb105defc26b99d1655c58d72be41b5d4e`

```dockerfile
```

-	Layers:
	-	`sha256:586451dcff616e8bbf783a1c819d15f9721318fbd85d4bd38db7289f8e8c9c46`  
		Last Modified: Thu, 01 Oct 2026 23:53:57 GMT  
		Size: 1.0 MB (1024049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6211101653b9d06f63a1cb8f7fd041c57d034e646a78cb25d5cf110e8bcacb12`  
		Last Modified: Thu, 01 Oct 2026 23:53:57 GMT  
		Size: 12.9 KB (12896 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:37b3c5bc39e378f7bebb3769b7ffc48d8a37b87e1b920f4f8ef378c525fd0981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359173473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a382980589c82fad760880d9683673d716f5f841423f797bffc13eb409b7d55`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:06:14 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:06:14 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:06:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:23:40 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f10bbb12b435427a15ff1f63cb2d469f1032b9e85c39f246332f01efb06b71e`  
		Last Modified: Fri, 18 Sep 2026 01:07:42 GMT  
		Size: 61.5 MB (61515530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec90664c4efcfe3240c6e7226b4dc07b817f1db0f6595436957cc9708c3fbae3`  
		Last Modified: Fri, 18 Sep 2026 17:25:04 GMT  
		Size: 293.9 MB (293935187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:3e96593092591bc4a7766e2afc75d4980a8e83c58f34743a3547a51803336478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.8 KB (970806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cb6ecb75776c11c32caea975aa1b85ea056fdee56fd0c9389ea14f49b60d16`

```dockerfile
```

-	Layers:
	-	`sha256:b92e9073ce52eead02b27315d73aa25e172fd8448aaaf45bedb52b7b42681865`  
		Last Modified: Fri, 18 Sep 2026 17:24:58 GMT  
		Size: 958.6 KB (958574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bad214f2b5e1a3463bc1d56f7d0dd2879b139de0deeda2b0ae9c94df9331ee9`  
		Last Modified: Fri, 18 Sep 2026 17:24:57 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json
