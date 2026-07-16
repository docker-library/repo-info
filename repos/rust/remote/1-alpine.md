## `rust:1-alpine`

```console
$ docker pull rust@sha256:3c38f3f82c2f3d73da3b38e18d279393a04cb43ddded0e35088a8c3324d40900
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1-alpine` - linux; amd64

```console
$ docker pull rust@sha256:c5d6b2e15a5d94ee3ec8494c1ab0cbb8a12440bbe4dc9e5e3b4b0624d2efd668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.0 MB (352042211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d5d7029233cee4415c175232404bab1db002dd188e1b8ef17a33354dea03718`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 18:39:25 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 16 Jul 2026 18:39:25 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 16 Jul 2026 18:39:25 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.97.1
# Thu, 16 Jul 2026 18:39:43 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c0d753067d4922afed017d16c15eba6e0e9fa4702cdef1c8b02cb477a11939`  
		Last Modified: Thu, 16 Jul 2026 18:40:22 GMT  
		Size: 75.1 MB (75079146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e5cc8b76f49525d8b11907968c00a18269a8b530f8be85baf96333b004a19e`  
		Last Modified: Thu, 16 Jul 2026 18:40:26 GMT  
		Size: 273.1 MB (273116674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:f60a2367e09bc263144e1a20b6bfd20a4a87ac1d03fbeae2ced1f4235f76f04c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7af9900a01d2345fef23ca35d46d1ed38e02a133022185c0cdb1923679092bd`

```dockerfile
```

-	Layers:
	-	`sha256:d059c11da40fb181ce2ed2f9ba2ec72903f6d0be5f76fe679bd590358607b235`  
		Last Modified: Thu, 16 Jul 2026 18:40:19 GMT  
		Size: 990.5 KB (990501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:043ba4f08c59ae8addc001a31e5b617d01855b871f29f1eaf07587cfb3144937`  
		Last Modified: Thu, 16 Jul 2026 18:40:19 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:58cc31b637500a7e9098d1592f698a79de86c4b8ffa523195e069399ed06cda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.2 MB (350184701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4155119ae49867b04ad46963a98c5a1cbdaf7efba38ec061de6310a4dcb2dd0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 18:39:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 16 Jul 2026 18:39:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 16 Jul 2026 18:39:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.97.1
# Thu, 16 Jul 2026 18:39:53 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183b6f598a30f0199416cbb70e19fd62927387b486991a6170546e409f5ce9a7`  
		Last Modified: Thu, 16 Jul 2026 18:40:32 GMT  
		Size: 66.5 MB (66507136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9c2b726b5180e4efad6d279289f964a1f98a67d0ccc83a245ea214877be791`  
		Last Modified: Thu, 16 Jul 2026 18:40:35 GMT  
		Size: 279.5 MB (279494528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:338e0c40cd5f76dfda511d86d43377dc834abef084c9e55f6522526082516b19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1063011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e575c581cd359ce51b4724eeac58c034411ebc2d3d917f6ed4183176f1f1949`

```dockerfile
```

-	Layers:
	-	`sha256:0d35c1eb05c984fb415d68804b0df4a8d90f70f263871c1c754116b69459a163`  
		Last Modified: Thu, 16 Jul 2026 18:40:29 GMT  
		Size: 1.0 MB (1049454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b511e2a9cb2623d795cc3a453b49809fe759aeb417dbc99c25a358a3c8273c43`  
		Last Modified: Thu, 16 Jul 2026 18:40:28 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:733b6d96f5d46ec4de0875dde0c8d05a59e1e0fa114d14fe517cb86480e78c73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.3 MB (366318973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e11c2bcbe8836f20e5a45367570bb920ee12f0a474b8ab5dba7dc68d0459de`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 18:44:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 16 Jul 2026 18:44:40 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 16 Jul 2026 18:44:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.97.1
# Thu, 16 Jul 2026 18:44:59 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:644d03f06550ca74f2c78f0ec5f559982839a13fd2c89ef1fdd8dad53e3fc5b5`  
		Last Modified: Thu, 16 Jul 2026 18:46:12 GMT  
		Size: 66.4 MB (66394566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4692f12c3f6a3b7d80e4b7ebe2849b06e9fdf38585224bd4b8a96b187232475`  
		Last Modified: Thu, 16 Jul 2026 18:46:17 GMT  
		Size: 296.1 MB (296111007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:8df4a87e53ab6b914fd6e1baad5c028f687fba0aada630ce6cd57f08b6c98ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa8b56f7068360d2dce188094c437060553b221129e22b1b92411e3b618f532`

```dockerfile
```

-	Layers:
	-	`sha256:336585bc5857dc0a3ea273c2836375195dcd62fb5926631022486c1c544ddf19`  
		Last Modified: Thu, 16 Jul 2026 18:46:08 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65306a2270c2e62c3370439d73ab792651d66a6f6854934d961c4eff9d8163e2`  
		Last Modified: Thu, 16 Jul 2026 18:46:08 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json
