## `rust:alpine3.24`

```console
$ docker pull rust@sha256:a10e64dd139b7387337c7fbe8aca31b959b57b2fd4c8ae20a02cf1d6ea424dce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:alpine3.24` - linux; amd64

```console
$ docker pull rust@sha256:3ffeca71d0e4fc30f5537f76b7243e87ac99726b6d3d66591dfc5e497078b9fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349115881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9aef5afb605f3f27c71a834973af743221df0c89b4ccbf94d342a46ce49bfd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:25:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 20 Aug 2026 18:25:46 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 20 Aug 2026 18:25:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Thu, 20 Aug 2026 18:26:05 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd774d63073d8bcda6e4cca9de9864ddec684b1b6f6fb9ae80094ae2746f78da`  
		Last Modified: Thu, 20 Aug 2026 18:26:44 GMT  
		Size: 75.1 MB (75079117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55df97cdb188687df287e6eb59e790ab8f53ee1b3490552605867e33af729536`  
		Last Modified: Thu, 20 Aug 2026 18:26:47 GMT  
		Size: 270.2 MB (270190373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:e91ca95ec2ddd72a14f7a9e251591b1ff0f96eff23a62de2b37db34d74419234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4316777fdea293d67d85ca8d85227697648206d3363f0a53b9b5cf84ab03bf2e`

```dockerfile
```

-	Layers:
	-	`sha256:ab5cde3af8bc26b122d86a961d139b66aeb6b2bb6b9289ab4ac2e52dd622d3ee`  
		Last Modified: Thu, 20 Aug 2026 18:26:41 GMT  
		Size: 989.2 KB (989196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6b9fc6d0e21755fad28f13ad7de83d080247bfb2c7940b2054b7ad536a172b3`  
		Last Modified: Thu, 20 Aug 2026 18:26:40 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e9c3e7a353207faa103704e704a8f5e11986f9514883cd9507b4dcc8170856be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347945471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d011328782a7bb9f0b611893956a72edfa908d4743e60a97b5ccbb7b7fdf3509`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:23:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 20 Aug 2026 18:23:57 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 20 Aug 2026 18:23:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Thu, 20 Aug 2026 18:24:11 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1817308ca528f4e99ba8fbaa86ab82d6704b509d666ead7c041a5eb2ea69cf9`  
		Last Modified: Thu, 20 Aug 2026 18:24:46 GMT  
		Size: 66.5 MB (66507118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20da398150b46e224760a93ac3d849ef6a112b6dfa293ba511ba1b056d060669`  
		Last Modified: Thu, 20 Aug 2026 18:24:51 GMT  
		Size: 277.3 MB (277255316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:ebba5963f41686cf6d0c0d254d64780299f1c9e967cadc0f9839d98c643156ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd2f007e70b672a4c9c910f782c10c14ae8ff31bf46c18980d95b6f1a42dda2`

```dockerfile
```

-	Layers:
	-	`sha256:5338170a0f63515c7851ab87a2b5fe46cf2c3ea1af26284e26f70330503873a5`  
		Last Modified: Thu, 20 Aug 2026 18:24:44 GMT  
		Size: 1.0 MB (1048147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4c35cf7d1542e7852dfd28aac1ab1df6bba2e6d66b076d00fffeeca9b120854`  
		Last Modified: Thu, 20 Aug 2026 18:24:44 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:a9eed560321d5a3f38f983f4cdf3e5d421d315c4a3f859459e3468d68f7e9d7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.0 MB (363951999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33992ec4fc72abef00ee9161b4e3cfe3576a6d76f6910277499a852e37ee09f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:30:30 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 20 Aug 2026 18:30:30 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 20 Aug 2026 18:30:30 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Thu, 20 Aug 2026 18:30:47 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfa29d3e358e23894342f55c03a3b6a6cf854618616b9bc55414ab99122fbd7`  
		Last Modified: Thu, 20 Aug 2026 18:31:53 GMT  
		Size: 66.4 MB (66394780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc1743cae6581c1f08add3be3165c3a969130e39c70310519dee9c66c4bc61f`  
		Last Modified: Thu, 20 Aug 2026 18:31:57 GMT  
		Size: 293.7 MB (293743819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:905a0e1f8dab815b79c1b149e4af6697738b082d4740b05665ec51fd5fafee72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746d0392854c27a1d53784254a557024f7feefe79d34cc03ce037de198bc3808`

```dockerfile
```

-	Layers:
	-	`sha256:2cab988652d60c4ce276a6cea1b0cece97510759c146f7b8408bcd607bffa0ac`  
		Last Modified: Thu, 20 Aug 2026 18:31:50 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b05bc1768482c303455397effbdf8c389f91f270d9f304789a955a237b4f4d00`  
		Last Modified: Thu, 20 Aug 2026 18:31:50 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json
