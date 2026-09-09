## `rust:alpine`

```console
$ docker pull rust@sha256:1716b3aa042d735f4566d14dc54e8037de9d69556e2d5dd58131d93a613d173d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:alpine` - linux; amd64

```console
$ docker pull rust@sha256:a5163321b170835916201861dbe70a7f92e8cc822531ee3830dbc0a113b1ad54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349115712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bce90b2b026a81c88842e7489e666e61a6d9d3c920682b739e8b288a91bc7d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:06 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:06 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:06 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b5f8c39bc3fc3b330ee4b8bc81af9aec120015b29697c6f4c7c8763948a3b7`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 75.1 MB (75079231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7f7a766d250bfbfe055f3e06e3742de2ff3ee2d87dbd9f5ed1b9a1012ba415`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:ab98888f06c799b997bb85fd0e4123f4bdb83780963ca5b887b23af962f5eea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000bf0a35c5ec930f476987ddf72108e492bd82d3ffe73a394746316d8132da4`

```dockerfile
```

-	Layers:
	-	`sha256:f2ec09d4a4f8ac2e0703c6b6452072ca9947d886f28d477778fe3e80a65932d8`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 989.2 KB (989196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32233bc5cd33644069f08b4653c36931de5aa75b360b6fa3cb2ad43a081fc8ed`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e2a251f8482ab6d9d9a3c1cdacfa0824440b5fdb826cd1a069c490ad1288f197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347947447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b0fb119103a600403b4092381bf7cb9e1dba8b14aaf545bfacc1668e6a077f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:31 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad29c5e24c1cd2e87bdf9a09949344c1f99250eedc257aab9bc9cb0815e8bbb`  
		Last Modified: Wed, 09 Sep 2026 00:11:07 GMT  
		Size: 66.5 MB (66507193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21479c418769728737769e6321fcabb78a757ab833503bdc08603d41e19f172f`  
		Last Modified: Wed, 09 Sep 2026 00:11:10 GMT  
		Size: 277.3 MB (277257217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:fb41d2a27fc6491c0a354adc7bc2d6a0473f89a350dc376da3b0aa440485fbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751038f9e3a99a36f5592a4ae6b657a4a6f9bba00aaf14bbe04da9024b2f88c0`

```dockerfile
```

-	Layers:
	-	`sha256:b44ec357b249f00e8fdfa8017215fe10b613bef4c24aa8c222cd45170e797826`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 1.0 MB (1048147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3f3724f450b9ccba57d2ae54003f7cb9c01f351721403f5e9fdf9f1a81212f4`  
		Last Modified: Wed, 09 Sep 2026 00:11:04 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:4c0c07141723c71dfcffb3e345f316587909de491480a62edbcf78fe2d122614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.0 MB (363952670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb3b7105c8a1f13d37476d857408a3a626983dd1c63d128eea2caf077e55181`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3f066117a8b32a37a9f5dc473f4676de31a2b7df6facba11d6b30fb703bdb`  
		Last Modified: Wed, 09 Sep 2026 00:28:08 GMT  
		Size: 66.4 MB (66394641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75cf07c6ded8c5a945f54e9c2caec11f54d216d682c0008bb2adcf12c28831`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:9bbf2ca21c902d5ec0dbb480653c55a2380fdd35eff9a460e38a1e2c7669ed77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54f0686fd5d7536ddda69c0cd99299ca9bbae9546fa758bf5f144fe26f42924`

```dockerfile
```

-	Layers:
	-	`sha256:2507d3dcc7fd1f23080a8544cfb184d04ae1611c265cec4c635aff9c26567ca1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a04a61bfc407bad99a5d70aee96cdc994a792381a65b685a8365f3c032d057`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json
