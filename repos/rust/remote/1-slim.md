## `rust:1-slim`

```console
$ docker pull rust@sha256:f47a8de237dcbb0b0ce1099901e60a89728e3d51f24e664b40e947171538ade7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `rust:1-slim` - linux; amd64

```console
$ docker pull rust@sha256:fce83543909cd5409924a61ce296bdf5bab0fca37f004c0f6c8ef6f4a37bbc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319098044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3807bfc7862f0e7e5f64fb10278b09a0c150fb05329afdf1b4878820eef226b8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:09:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf267fd7f2be00938ed639cacfa604452304723eed29b413d7e381a2895c9cc`  
		Last Modified: Sat, 19 Sep 2026 01:10:00 GMT  
		Size: 289.3 MB (289267626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:7a2977fb029e55a14a7568c7bd601f827439c95abba16b0815e2006b820833b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4186255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96619f6a663daaa810019087f41bf541d914efacdf6fef8f07557d0036729dbe`

```dockerfile
```

-	Layers:
	-	`sha256:efff59c1d5f565f0dd8e813856b5c262f9121bbe0207bb29d158f50d7d804602`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 4.2 MB (4170623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39df1e11e1e3d64e4f0f6c03893b6310da2f2cf090d6e4a218122bd1d05b9580`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:d08db77881d87295bb3c7982daf760c5e69c69db1a7b0b2f714e89519e019de1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334502202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2de7d3e3fd71a321528a6b47d50354fc4c4a6ffe707a130938c1ad4d81e107d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 02:02:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 02:02:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 02:02:01 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776c1d5fbaa8992812ee47fd13c74f7b3137cf2b053f7b2641c962c344ad3937`  
		Last Modified: Sat, 19 Sep 2026 02:02:41 GMT  
		Size: 308.3 MB (308253274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:ec23b199a6a6a1eea6ee25316b764a5439ab605433adddf1feab4bf07903cf8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3991237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55aed74695b477c12a8abff77aec43113e6a898f101aac043f21d671bf05165c`

```dockerfile
```

-	Layers:
	-	`sha256:fd76341c5ab921fa6fee84f33548f054dfe919d70f45ad502e50030591d56acb`  
		Last Modified: Sat, 19 Sep 2026 02:02:36 GMT  
		Size: 4.0 MB (3975492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16ef675e785e11cf0577c4e1361b43932ef9a01b896c37fd3e2c6b9806c2d352`  
		Last Modified: Sat, 19 Sep 2026 02:02:35 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:441452f8033b93f69dce3a3ff5c821c411f0a580723e6343932fc34a1b03ba5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281962968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa8fafc925472ff98d14b89a5f4b97adf803fe20a68b2a0a1a22cb68bc6d324`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:16:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:16:45 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094311c80135e2cb20767b8587e25e7e6d5e1acb5922e85f1a70e92d33be249f`  
		Last Modified: Sat, 19 Sep 2026 01:17:23 GMT  
		Size: 251.8 MB (251773277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:1fa3eee56c8177c919ab46bf54ee1079c3ee3bf3eac47d828458fb17d1f2bdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843da6bb565e99508f3ed3f2c764a1066adcba2a5e0a8fc3f00ee22499b72d42`

```dockerfile
```

-	Layers:
	-	`sha256:1eb4a7f67d2a858b56a7bc0dae7760ec5c87dc4a28117dc2264693ec0b4c4fe8`  
		Last Modified: Sat, 19 Sep 2026 01:17:18 GMT  
		Size: 4.3 MB (4261830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97546b85e1a7e5d9d5c8b444b0cb1e2d25cf86c3af7aec5f45e2e77311c18168`  
		Last Modified: Sat, 19 Sep 2026 01:17:17 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:6987201413bf70fbc33ed0901f81366682890901f51a125dd8b085fc1bdeb62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344732860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0719d3bcff3e5a6e2d6dd58ca3cffc20f7543c4e2a3f3359b0bf66de8becf4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:57 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667d843237f80fc454c4d56382e63f2ce672f571c99a73d7828ecc85f702d7f1`  
		Last Modified: Sat, 19 Sep 2026 01:16:41 GMT  
		Size: 313.4 MB (313392462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:5c6fc265910f1607803b7f4d918b5184a8441eb3ba059500a4f57b9ce1a4e47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20406034ec6dcb2f0a13bf5fce5638579e5c4331a01f1d6022aac569112fa2db`

```dockerfile
```

-	Layers:
	-	`sha256:38867a647dd75f22d76b2092d355b67521e28738a6d0b510513c944dfdefdd58`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 4.1 MB (4145437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a0baa173f575375e2fe546ec62e32b57be618f1998ecd2c2f6bd76b101abde`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:e5162c69bd8a177b6fa30dce25e493d221b385e49cd05c90f1b9904874a6e8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395232015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e41581354ccaeb8849d968849ac2621938eb6a8036c05164646a2ae265467d6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:28:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 07:28:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 07:28:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb5af9140265093fda6d4c28c9bb3719e1dd2d2f2dae90ca95be7701ba76c3b`  
		Last Modified: Sat, 19 Sep 2026 07:30:15 GMT  
		Size: 361.6 MB (361590780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:1ad0fa341c909b288bc420f720a75647d15723d00348db2a47fedc49380315a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4182780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ee4b9ab9a16b237631407d0072aecbf2eb2a5cefb4832c5c57e268bf04be3f`

```dockerfile
```

-	Layers:
	-	`sha256:cbbc69895559ae04a6b85252a0b4a2ae53bd402826628b5af8fd7cb33e677290`  
		Last Modified: Sat, 19 Sep 2026 07:30:08 GMT  
		Size: 4.2 MB (4167079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2f27ae5fc15c218966d769ba03a8623422c57c931ebe82b63cc91283b21dc99`  
		Last Modified: Sat, 19 Sep 2026 07:30:07 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; riscv64

```console
$ docker pull rust@sha256:1bb8b84c79aa36b3589f520b8a57c06b45609acb52417ac08716a1a43ee4421b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393753342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae515dcfcf00ea08898754eab464c4b43a27ddf5167f36fa815e000064b97d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:26:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:26:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefd9eb4b5acfeeb87a88a4cbf775776ea5ed8560af3ed2659820a5f693c9006`  
		Last Modified: Wed, 09 Sep 2026 00:37:47 GMT  
		Size: 365.5 MB (365456879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:b648b2ea7e91193cad5f6ecc361e0c10371ac97c827fcafce8f7df537430ac78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd20e5d72f19aadb9670f8b94f3901d4c39adef85b7aaaf53b7a83cbd421af0`

```dockerfile
```

-	Layers:
	-	`sha256:f7939284950fd6561a917e2c37630ca164637886c9d721a7d0b5f30e172cff31`  
		Last Modified: Wed, 09 Sep 2026 00:36:56 GMT  
		Size: 4.2 MB (4238527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f36bbba906961694220e39062c48271e415e4c3a4165035c8793757b076ab3`  
		Last Modified: Wed, 09 Sep 2026 00:36:55 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; s390x

```console
$ docker pull rust@sha256:98735dae2c7e2df8d8a004300390026bfaaa3ad9f070135b82a33cd00d4424ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377854455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed4305d498208dfcd3b21430df4cc8c809696da6d93b26d85eb1edff8059858`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:30:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094644ab865140fc220e37dc88e492d9af44a8b1212a00812df0e2df5baaa568`  
		Last Modified: Sat, 19 Sep 2026 01:31:14 GMT  
		Size: 348.0 MB (347955306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:528e5018f4aaa1b696568d5a96543469ca1c25775fc58519c1df7c139a205157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4004005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538eb312cac28e88675bca94dbc9b2a70bd5771e914664cb551bb178a21b0dd4`

```dockerfile
```

-	Layers:
	-	`sha256:535891fd838d1dcba219f344b45d22eec831b6214bc232176c82471757277aba`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 4.0 MB (3988372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2effb0ce0e6cfc3d67961548f297352b29e517442fa6199bce0edad2416647f6`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json
