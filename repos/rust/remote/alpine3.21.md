## `rust:alpine3.21`

```console
$ docker pull rust@sha256:d3d1c734947fff5bc2c5fe9e8b177be485033a7e1720f52edb31024256ce2381
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:639dcdf0c5b7097947281c593751360bbeab34bbf21be5c05f351b817912b453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338805684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1dd8bee2c70f3217ea282b0322634cdde0ce3773d50cd1a6239f99a0613b147`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:54:54 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 17 Sep 2026 21:54:54 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 17 Sep 2026 21:54:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Thu, 17 Sep 2026 21:55:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e18e8de16310c4fefe6d6b14538a7ebc0c4363ca31cf11a0294ce369f267297`  
		Last Modified: Thu, 17 Sep 2026 21:55:51 GMT  
		Size: 65.0 MB (64989564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396d369bcb462d482ec3f806069115308bb180132ee96cee8b6ed2369c53c067`  
		Last Modified: Thu, 17 Sep 2026 21:55:55 GMT  
		Size: 270.2 MB (270190100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:52e2103c6959ab223d1a874d52a36e3b8a5d3b95e1c90a5ce738c1fb5836d775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.1 KB (956131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4675a62173f27c54852c9c1b0669c7485e6c87d10e95aea0743e652116bec50c`

```dockerfile
```

-	Layers:
	-	`sha256:4b42316eb35888e1e598e32fb33917c05c53c662b5dc9e13548aa00e5f085c57`  
		Last Modified: Thu, 17 Sep 2026 21:55:49 GMT  
		Size: 943.9 KB (943945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd72347d3e7582ec0b88f961d3786f7442efb802dcd16572ff9a7339596895f1`  
		Last Modified: Thu, 17 Sep 2026 21:55:49 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; arm64 variant v8

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

### `rust:alpine3.21` - unknown; unknown

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

### `rust:alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:09cf9e41b50cd678e93bcbc2aeb06fa818b67c8484f347d4347a77b88ef66bb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358779961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8dd6523a3b2dd1122839808c1e34f6c7c6db56428de78de703df683931fedb5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:07 GMT
ADD alpine-minirootfs-3.21.8-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:07 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:05:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:05:56 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:05:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 01:06:29 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b28a33aa72108f40f441b063d4388f0fcb4e9b61a44072cfd1a066a7f99d9455`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.6 MB (3558846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d8e137c722547c6eb150557a8ccb3f60c96b9d67810d495953825ce8a0fe42`  
		Last Modified: Fri, 18 Sep 2026 01:07:42 GMT  
		Size: 61.5 MB (61476624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700e844fa74971067dee381c978d7146903217851b28ee38ecc55ff7976dc28f`  
		Last Modified: Fri, 18 Sep 2026 01:07:46 GMT  
		Size: 293.7 MB (293744491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:4f5dee67b63cf7640cd79acc93edd28caceae8dcef106ae71b6adee3bc354e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.0 KB (970026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6803c356b096b91a3e073fc590d822e59adfe0c4570b865d61d1b84b73e94c7b`

```dockerfile
```

-	Layers:
	-	`sha256:d38971abdea91f83983101e448d4283e0258f6eb390f6a16209395c3e2623235`  
		Last Modified: Fri, 18 Sep 2026 01:07:39 GMT  
		Size: 957.8 KB (957794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12be5a4db83ebdb78fbc7ac95bae893b6ad1d03cc0d784c1ca54ca1757cda465`  
		Last Modified: Fri, 18 Sep 2026 01:07:38 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json
