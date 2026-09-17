## `rust:1-alpine3.21`

```console
$ docker pull rust@sha256:6d10dd8120418971d96b2a59ccb959297070abf4158a6a2d0123db46e59cd908
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1-alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:2a7e9f2ab5a0b7fb28b088ce9e195450a79c52859dc0a583a9442b115c2fea07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338865708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e615b7f15a013b1102c85e70abf6ca03ff8b0316781e4bfa583d53b9e348f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:07 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:07 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:24 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a8ae5cfc82b74b2380be54de41697dcfca64715aa3d2b0d79d9787df3eb5`  
		Last Modified: Wed, 09 Sep 2026 00:11:00 GMT  
		Size: 65.0 MB (65028740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9734da7067fb8c170c70089fc298562b8d7c4ed96428043b2a86e23729c5e3bc`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:88a16e04c95191ff8ac1b7330e7fb066173511b845c90e28dcb6848885d02597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **971.7 KB (971730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0405b93b441b3a6f146b2403bb6a5388a72cd992acd0c4ff27836636c40939e`

```dockerfile
```

-	Layers:
	-	`sha256:28d8281e8da62dd282de1017edccb43a4dff9d6928ee8e4e56c2dffe684de9b3`  
		Last Modified: Wed, 09 Sep 2026 00:10:57 GMT  
		Size: 959.5 KB (959544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e87345956f2944f701ca7e2bedadfa4c0cc5d9f32ab881eb58972b3031b8add`  
		Last Modified: Wed, 09 Sep 2026 00:10:57 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:12adcb8b475038141d310f8232516fa560414bc4286d8ca1c134bd3ec6fba9ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.9 MB (342897304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e0ed0e17abe17c388ea5e00f8f2e099c6b822a967736f5bd87759c05e488cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:14:41 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 17 Sep 2026 22:14:41 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 17 Sep 2026 22:14:41 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Thu, 17 Sep 2026 22:14:55 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ea64bb7f717fd994a7ca07f5b36f8385bfd088d76a195e6b46f6dda76653a5`  
		Last Modified: Thu, 17 Sep 2026 22:15:30 GMT  
		Size: 61.7 MB (61665607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4edee437325151ef6f315571339352c4ead1ff5fd27479475e4d25d85f8c43fb`  
		Last Modified: Thu, 17 Sep 2026 22:15:33 GMT  
		Size: 277.3 MB (277257196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:dfaf55babc97853eee4c888421258f28d3a765c8bf8ee72b0ed8c2e33f5e904d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ac24e1d26dadf7d0c227ef72fbda69299f20f20dd7b4ef64e47fba51bfa66d`

```dockerfile
```

-	Layers:
	-	`sha256:57037e27c5c21980e2b5037c75f267853c64e9927c8c26e59d36d3c2c9ccc11e`  
		Last Modified: Thu, 17 Sep 2026 22:15:27 GMT  
		Size: 1.0 MB (1023269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3023d077ea49d4fd06e7065b4b0ff06c76a3821f9626398484b7131e79e09db4`  
		Last Modified: Thu, 17 Sep 2026 22:15:27 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:8380b55902785ce0e0958a5bede38b2ab12b045a08dba98f69bd4dcda3ef375a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358835584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:504f5cee3b816f1764d1c4eb42c8a3dafe98b1829f90e5cec33d75dfeb054c3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 17 Apr 2026 00:00:31 GMT
ADD alpine-minirootfs-3.21.7-ppc64le.tar.gz / # buildkit
# Fri, 17 Apr 2026 00:00:31 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:19:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:19:47 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:19:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:21:00 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fe51ead1f71865857c2c015e74518a0be9e72c6a70a845d843f7dd0cd2ee6e2e`  
		Last Modified: Fri, 17 Apr 2026 00:00:41 GMT  
		Size: 3.6 MB (3578920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca8361ff0e6bf57e766f29cf1c9c6112c17490c01f1b621b24101ab6291e06a`  
		Last Modified: Wed, 09 Sep 2026 00:22:57 GMT  
		Size: 61.5 MB (61512255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f584a6aedd3eae5abea7f66952d4ec38db5551f34e372c223b30758667987c`  
		Last Modified: Wed, 09 Sep 2026 00:23:02 GMT  
		Size: 293.7 MB (293744409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:a1700ca13de9de40245a09d19586069975b836354bef51cfa458bd6b292eb43c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.6 KB (985624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6acc9d6b8b4c5fec60219631dc99b48964dfd43f1813717f4e3b5d98a2937134`

```dockerfile
```

-	Layers:
	-	`sha256:85ffb3877ff0a88859c298cbc39461e806ca01f18b2787d84cc5769777239694`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 973.4 KB (973393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b558f39ce9c6576642030a6966f22acd3719fc80ad7e95eba42bf5ec79b76b8a`  
		Last Modified: Wed, 09 Sep 2026 00:22:54 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.in-toto+json
