## `rust:1-slim`

```console
$ docker pull rust@sha256:cc0448b41c3b7b7fea44f5dc50eacba729a56db365b65b7bd5e8a82d5b3db078
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
$ docker pull rust@sha256:d181fe341bb235467da0554bed2f71ef14ad110c7bb3469578e93ce2bc838d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319073530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25f045216582329835c3e279688fb76dd0cee1e12ba8e158bb7904f08d67760`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 18:24:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 20 Aug 2026 18:24:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Thu, 20 Aug 2026 18:24:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938a58e3e7a1d8e0efe86be21375f4944531442c26bae523a34af95799c59cf5`  
		Last Modified: Thu, 20 Aug 2026 18:25:25 GMT  
		Size: 289.3 MB (289292765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:df4b79c8a964ab52801fa9f3aa6ed85af1717bb4b9bab3527d210ba41f7a23ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4179551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f53d7db2267cfcb63c2a33e974c1d992cbbc90aec21ae8f961c8a05ca1f6d7d`

```dockerfile
```

-	Layers:
	-	`sha256:1c1aa6be51c5abbcff286ac04b1d576da20e0301ded2a9167faa4a23df416a00`  
		Last Modified: Thu, 20 Aug 2026 18:25:19 GMT  
		Size: 4.2 MB (4163918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30c8969922059b110ef58ae2cb51d814ee2ca4f94e33e0b551c4a1fa0e800610`  
		Last Modified: Thu, 20 Aug 2026 18:25:19 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:f33efbf758cd42e68d436c8d6edc89a007e30ecc2a6f4fde42abe4ff86e488a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.4 MB (334414587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:580a72dc961adc4e88c3ce9628560c3393c4a816c0a013cb42a1da3348b37ba1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 18:20:36 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 20 Aug 2026 18:20:36 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Thu, 20 Aug 2026 18:20:36 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b19da8074b228aa9588824d89febe6a16cfb548d41038b45f51527d97f84bf`  
		Last Modified: Thu, 20 Aug 2026 18:21:17 GMT  
		Size: 308.2 MB (308208215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:dbe6325a29cde49fbef1b55374ad97aef308b0626304e06f8a826598473f6e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3984529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01cd0a1e0a6dbdc40158d1fe90d968c419e82d1f2cf70e018006dcce53ee18b`

```dockerfile
```

-	Layers:
	-	`sha256:632edaf11427f4bc797b799ab64ac8f6ff09ec88f5f0c5a651533e0ad23ff1a4`  
		Last Modified: Thu, 20 Aug 2026 18:21:12 GMT  
		Size: 4.0 MB (3968784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bddd35babefd3f2e513e01240733e03697115db54a254d8def9e795ba93e027`  
		Last Modified: Thu, 20 Aug 2026 18:21:11 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:60a76da8068ca540bffadb59cb10db8d8b738f18242eca0e336bfeaff489b11b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281886047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f2271e877e162e2556b61f64997e33efc80bd6ec6a614dd14e3a6166c9b1e4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 18:24:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 20 Aug 2026 18:24:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Thu, 20 Aug 2026 18:24:15 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360afe0cb7da7c3799eaf07675147e8c8100c254a9373426b3e5d34fded7d994`  
		Last Modified: Thu, 20 Aug 2026 18:24:51 GMT  
		Size: 251.7 MB (251742438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:3c8147eb2d1911c6ba8c4c177c603373a8ec8f63720541861b7d3453add3b9ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac4280d8a20fd604b94ff78117965e6983e2bd4f50a7358d2c62f8c9ed04ee6`

```dockerfile
```

-	Layers:
	-	`sha256:04b532bb5f0efcf31d852bc08aefdd49bb770a846218bbef47b26e59c289c1a6`  
		Last Modified: Thu, 20 Aug 2026 18:24:46 GMT  
		Size: 4.3 MB (4255124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6f08cc19c7ce87c706d30381887b06f9ee060596d97a24b83ce1474cf8e2e6`  
		Last Modified: Thu, 20 Aug 2026 18:24:46 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:134f1c224182367593e93cbaf364a48493b1ea6ed60f76125ad652b883b3df9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344671491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7416ff860d014176572a8abb7945e2f94e3ef4d040aafcbf744942639ef28e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 18:21:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 20 Aug 2026 18:21:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Thu, 20 Aug 2026 18:21:17 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0442633d749377b3a344f1388d72b0da60c65be24f9f2d60a5b35572216dbf46`  
		Last Modified: Thu, 20 Aug 2026 18:22:02 GMT  
		Size: 313.4 MB (313375222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:ed84074754f47ab0d7ea3bd39546fc76fe68cda1987224beaeb73f93326b18d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e508b29ac27c10c6e2856422caf92363725b32d332c443ad15fe753992dec2bf`

```dockerfile
```

-	Layers:
	-	`sha256:5640d2f87980d4ae2c9d6b609181876065046e755c8c1724618b1394b2e5ef46`  
		Last Modified: Thu, 20 Aug 2026 18:21:56 GMT  
		Size: 4.1 MB (4138734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3864cdbed49170c63ee148f88d6b324f9894c7eb105c47a610afc920fbf4a6a5`  
		Last Modified: Thu, 20 Aug 2026 18:21:55 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:479d472c2db5e356b34691c7b435e8c1c925a723c465a72be352d04048e3b24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.0 MB (395029147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b16ddd35e3c8872ff62c345c807b6a976a1fd8760ff93b8a41ebfd73c12b130`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 18:26:54 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 20 Aug 2026 18:26:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Thu, 20 Aug 2026 18:26:54 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ee99ebb91f04492f8edb6127f3a45763d4685da265ae67c1236b28ebd553ff`  
		Last Modified: Thu, 20 Aug 2026 18:28:22 GMT  
		Size: 361.4 MB (361427804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:130955c142f124274082a10b56bdb891d68c5cb9dd838f19673e926c1e16a1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9670b11568010fc28e7aa15bb1f3dfcefad374891112a45e1232430a9d50858`

```dockerfile
```

-	Layers:
	-	`sha256:25f4118bcb743722904db32e9577d0970124e1e329e85aa634f0752cc0e25d35`  
		Last Modified: Thu, 20 Aug 2026 18:28:14 GMT  
		Size: 4.2 MB (4160369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:503055023912fd60c132aea7c01e59bcb2fe9169044ce5f6b5fd65a2890ee06d`  
		Last Modified: Thu, 20 Aug 2026 18:28:13 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; riscv64

```console
$ docker pull rust@sha256:ae9474188f49b2bc4ab7c13eed5bb4dc8bfdf8f3435cdc7caf5c28c35a5fa561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.1 MB (391080377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f299e379019bc984acb45925cbe02eecebf9bc7ff013bbbb130b7546cb2e219e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 20:34:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 20 Aug 2026 20:34:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Thu, 20 Aug 2026 20:34:48 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99071564018c688ff0f963cf2ff6f8b859e6401f26d56a4715e835f7903b450d`  
		Last Modified: Thu, 20 Aug 2026 20:46:10 GMT  
		Size: 362.8 MB (362802259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:76b33a0e5625a3f1980bd27cb5c3d44d97bf5f495350abef25ed2081348d3327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7fadf2a4d9de6e82281bc05d92edada4b19fe34b4c0b6ba9d1f02852107773`

```dockerfile
```

-	Layers:
	-	`sha256:92792909c99dd12d845121a3292a336a48087bfce814f4c53e5ead875ff9344f`  
		Last Modified: Thu, 20 Aug 2026 20:45:19 GMT  
		Size: 4.2 MB (4238329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da6b35a1fb385891ec7eb6df02b3a160fe5aaef159049d40a9a7b449ad2a4d56`  
		Last Modified: Thu, 20 Aug 2026 20:45:17 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; s390x

```console
$ docker pull rust@sha256:aef6de8a4d2e880912dd0745abeac5495bd0f2d43c39506fb763659ef1d2fdde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377750274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c84ccd5bbfa30702cdbb4fa81c93c6a8c7f5c3f32756372a9eb3809bcdb54d53`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 18:18:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 20 Aug 2026 18:18:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Thu, 20 Aug 2026 18:18:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f11a9937c4fdf2f7188277e9c00eabfeddf2c77ff16100a17309ad5a9c1cae1`  
		Last Modified: Thu, 20 Aug 2026 18:20:04 GMT  
		Size: 347.9 MB (347903701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:6c4a0176a48b83a59a104641f7c53f7bf375a5115b727b31fe41a3be5f56fa97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3997300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc93e915f6832b2b9f40fb4522cb6cc442ff8e4ea4ce6a85ae90e18c3b54fc83`

```dockerfile
```

-	Layers:
	-	`sha256:3e94f18484e33895705d192db7550a51c71d196c981c30404631ffc25c24f1ff`  
		Last Modified: Thu, 20 Aug 2026 18:19:58 GMT  
		Size: 4.0 MB (3981668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40ae36948490959e4fdf619690fcde2e6d3b46d995c9fa40c623ae514a62506e`  
		Last Modified: Thu, 20 Aug 2026 18:19:58 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json
