## `rust:1-slim-bookworm`

```console
$ docker pull rust@sha256:ed2c95ca377d6571b124b05e75e01207973ded639dce7d5542eb7bcd797e32aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `rust:1-slim-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:220ee93216b2acf3c04f312e24bf5d155c8eed61d707fc1ff8553ae24609da4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320757727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c79600d5a566abca94dc5ec9c5c1f3af8074f8771c63d190f6c6f22b049c15`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 21:54:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:54:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:54:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d49664d7b527ebb374b425bf04dc8b6cbf14105a8d87a03d1e1fc2952e2590`  
		Last Modified: Tue, 03 Nov 2026 21:54:43 GMT  
		Size: 292.5 MB (292510290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:25cadce490c23d8a02fcfad2e1596c377e87eabb266a4824b15066eaa5ba202a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4111509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bac494f15c83634046997fdb35dcfa2c1369ecd009c03c1e00fe1a8d6595ffc`

```dockerfile
```

-	Layers:
	-	`sha256:e59773a35e8d4abaff5a6e174d8936b259bbf621fc20dce447a6baf3fa5f60e9`  
		Last Modified: Tue, 03 Nov 2026 21:54:37 GMT  
		Size: 4.1 MB (4098202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:557898240c8ebe52a53e994229039dd6e14e110d0db0e49fc62ae67f80af11ba`  
		Last Modified: Tue, 03 Nov 2026 21:54:37 GMT  
		Size: 13.3 KB (13307 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:4983c154082cbb8b6c2327240ae2208bce7b1e127b0573d6badfc2c4a56ce872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.0 MB (333023919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30eb5f841832d5cf7c80afa650d3424fdde04bb5f1a4947963aec703d91f7265`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 21:55:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:55:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:55:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937e8daa9d4c85b63deded302c5597f8a6676b050c35e829cf7ef8dfe90d9a9f`  
		Last Modified: Tue, 03 Nov 2026 21:55:42 GMT  
		Size: 309.1 MB (309062953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:520116c3da19a07d6fc435bd14c5bba58bb96c1b90bcb2f87343500f8ce9c50e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3925976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bf77abae2deb4a04097eda5035dfd431d98cb807d4b98cc0f1fbcc4053c859`

```dockerfile
```

-	Layers:
	-	`sha256:4f04a6d61770b154d5be05ee206799a8d238a9e49b5d4ee9e35a0ef83b5b72c9`  
		Last Modified: Tue, 03 Nov 2026 21:55:36 GMT  
		Size: 3.9 MB (3912589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e5a34e74d1ecde70a744fd020f5adb4c8ef00bd47dc4e6282fb4633ca2518fc`  
		Last Modified: Tue, 03 Nov 2026 21:55:36 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:55263805f447e2e674e0c40dda922dd6f14c117051b81f46cb63953157e08d74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280896691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e7bf902bc153e30b4414747a4f47aad1f4ecc35baf04ad13e64f1852df8036`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 21:54:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:54:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:54:19 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31470dc63811fdfd7365e5682a646ef99588cbd63f9f4b5b3a05b0e507fec028`  
		Last Modified: Tue, 03 Nov 2026 21:54:56 GMT  
		Size: 252.8 MB (252758740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:3293bcf05e99a1281483b20babfd248fc04753ed13c399626625b63787efa620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4133907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd772456b13c403d84a0a8d94e646d3f43f06b54ae3bb7747cf701c193747178`

```dockerfile
```

-	Layers:
	-	`sha256:2f5860b0d1fd39d2ada754a0eefe6f80f50da4db481aebfa81ee9461c3074f31`  
		Last Modified: Tue, 03 Nov 2026 21:54:51 GMT  
		Size: 4.1 MB (4120496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea53686bef87bc814fc00b73041a0fcde569bed8632b8b1047e9b89609d533c3`  
		Last Modified: Tue, 03 Nov 2026 21:54:50 GMT  
		Size: 13.4 KB (13411 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:aa4b7cfce08881b80ea67fb8f091641153d990406af85c0b05f326eb12a45894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343249615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc82bcd3051ed2e70db72c4f969da88824beb712e97b92818d4a4feb96fc23d5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 21:54:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:54:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:54:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b5255d2fe792ed1a7fba8529fc1b0026eaac933f0ec17ac0d81573ea7e5f2d`  
		Last Modified: Tue, 03 Nov 2026 21:55:24 GMT  
		Size: 314.0 MB (314010836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:56250c4c10fd25d9aa0da8d8f799dd9c8d8621046a9bf282180638f931afebbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221c6ce92a3978d47f993d448198b778d1efc6bc557131ccf8c5379cd1cfac1b`

```dockerfile
```

-	Layers:
	-	`sha256:202c9d5e2e4a27a9ab915a0942cdb826c1578876db37bfc5d8d75d854433e4db`  
		Last Modified: Tue, 03 Nov 2026 21:55:18 GMT  
		Size: 4.1 MB (4078888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd8961a182c37eb6e071bb5f3ac7d386778037bb6ab2f4dd067790fd42e163de`  
		Last Modified: Tue, 03 Nov 2026 21:55:17 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:7ac730068f450a2e21635d7b9c99394a3895c112b07e0fd064cb2bdd6b41f048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398334793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e2445a008c98ef5a005ae8f3f6f73b19d403870cc865389b6b71d7440d7eea`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 21:53:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:53:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:53:10 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577602673d14e60a3c2b4fb887cb9e6301192b8058cad23bb0dc9b715c0e669e`  
		Last Modified: Tue, 03 Nov 2026 21:54:47 GMT  
		Size: 366.2 MB (366241952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:e4085a8551d4eb92c7142bf675bad32a1cb32858e9b8f1f52075d4c6611fe597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4085144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78e6b05ea47baaa112ee1875752797439440f347a8216d7686cc08ab11296eb`

```dockerfile
```

-	Layers:
	-	`sha256:d9afc09dae190c11ce0447cb60165f658d85cd6f31aace58403b4a36cebaa20c`  
		Last Modified: Tue, 03 Nov 2026 21:54:40 GMT  
		Size: 4.1 MB (4071794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ee73b0a5ff1d09b3032ea0716f61303d421991eeed6cf46057b230f30d5e2fa`  
		Last Modified: Tue, 03 Nov 2026 21:54:39 GMT  
		Size: 13.3 KB (13350 bytes)  
		MIME: application/vnd.in-toto+json
