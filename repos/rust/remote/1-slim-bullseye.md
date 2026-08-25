## `rust:1-slim-bullseye`

```console
$ docker pull rust@sha256:1e4acf0228e68cd94b5ab7a5e0b1ab48963ed55117d0f3b785fc117ee32adef8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `rust:1-slim-bullseye` - linux; amd64

```console
$ docker pull rust@sha256:edaba24b1c1f5e231b76d65619b76610bf531f1aced9b31a7552b8f855f193dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304262314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35a0813ba4169d334e14e3c5a431c9d77ab00a9c22815a7ae3b5f8801a971b6d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:21:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 01:21:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 01:21:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2379fcac82e89b951d7a4877c9474a4b7109fbe78c3fc148bb37e0466f497ae4`  
		Last Modified: Tue, 25 Aug 2026 01:22:34 GMT  
		Size: 274.0 MB (274002587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:54363ee3cdc284856f506d2b8a2eb08bef2d73d9f8fd7fcc594c861eaa20cc45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4328640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a6749f5dbeb15cd9bce25c7b8af9feaefd72509ca466ae4f23efe32c3b11df`

```dockerfile
```

-	Layers:
	-	`sha256:cdc836918a7dc302b2df712eb65c569c5b9cf723a082710671f16b6fae950a51`  
		Last Modified: Tue, 25 Aug 2026 01:22:27 GMT  
		Size: 4.3 MB (4315926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6e8ca9af0e3278b2ef81b17e076545c0d7ce94cfce6d4f61a06c80b836e1f5`  
		Last Modified: Tue, 25 Aug 2026 01:22:27 GMT  
		Size: 12.7 KB (12714 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bullseye` - linux; arm variant v7

```console
$ docker pull rust@sha256:b46dfe11d8446b745f4e1a738c90c5be0122b26cdfb82738b6c865b51ed5d049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325791098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7412341860ca90301b5f29dc2f3eed6473e57bbe59d0bf2b5f360a9f332e8efd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 02:14:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 02:14:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 02:14:15 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5ea592ba871a5245db3c645624a50a3dbc8e59a8ce6f42c9c0425e533dbfdf8f`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 25.6 MB (25552939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1b68e116aaced92a298786f34a6639174b6cd2032f81df7aa5322b207058de`  
		Last Modified: Tue, 25 Aug 2026 02:14:54 GMT  
		Size: 300.2 MB (300238159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:dc3f53d523df1999e0e2d2d340b7e07fdf16570e4465d2d96cdbee36642da210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4136703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c8df94abd5775f08f662fffeced2daf327e23cea159a4269d6c365170c75f9`

```dockerfile
```

-	Layers:
	-	`sha256:15c65fbf28dd571fa852854ee3601e664849b1d6d082cadc6e184fc13510bad2`  
		Last Modified: Tue, 25 Aug 2026 02:14:49 GMT  
		Size: 4.1 MB (4123909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d0214b20c5a089464829631b5a0300f4acbc64655cd54753af67fee5d94f68b`  
		Last Modified: Tue, 25 Aug 2026 02:14:48 GMT  
		Size: 12.8 KB (12794 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bullseye` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:86f17792cce5d7b10858d1e2ae8a67f97164f71bdf0566a1a175858ab9354016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266561397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0718c608e1ddb0f93583ef8f5c5e218ffa669d0c66c6ab2101f20d9cb434a20b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:26:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 01:26:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 01:26:15 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c5632774e28268a4e35f6c58773c85177fed3203892cdac3fac08160195db4`  
		Last Modified: Tue, 25 Aug 2026 01:26:51 GMT  
		Size: 237.8 MB (237812366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:6f5831744d5469884ef2b87810feaf845bf41531e229508ad7c0f97625f23f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00483903094c503b04865755e10c5d66cdb52f742a11f07e0504ce44ad3b5614`

```dockerfile
```

-	Layers:
	-	`sha256:9126ed8f543ea9ba292c1b12edf6b23cf876ce48aeb6ad5782b8836c55416e28`  
		Last Modified: Tue, 25 Aug 2026 01:26:47 GMT  
		Size: 4.3 MB (4312313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a10c4b3607f51b14d052cd21f1ebbae20cf423839220035937a26b43a0611b36`  
		Last Modified: Tue, 25 Aug 2026 01:26:46 GMT  
		Size: 12.8 KB (12818 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bullseye` - linux; 386

```console
$ docker pull rust@sha256:1036611e5d0608c91a28cb2c5a9e4fee24c1f5119302e99da3d2e367fd509303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332877607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82afd525239e74cf3b83d039f88ca428f17539ed108173bb30969ec1306a126e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:21:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 01:21:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 01:21:20 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:dce0e3a501a3f40f1cdb36f6731465f11821e4cfc4c91cc182aa08ed91493cc2`  
		Last Modified: Mon, 24 Aug 2026 23:20:45 GMT  
		Size: 31.2 MB (31196383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94da2a02d3457d71d55b8d0313b24d19d457ec2026076533e261ee5344435e64`  
		Last Modified: Tue, 25 Aug 2026 01:22:06 GMT  
		Size: 301.7 MB (301681224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:3fe65fff3c3978748e95a2714cdc07522d4184a13473faa0f2fb1de574d29585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4319653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b51149a486918c23269a24e4d7764bacb62fcf7736009f9aefab201f9b83a34`

```dockerfile
```

-	Layers:
	-	`sha256:1c91f275567dbf1ff807eb16d94710d735dc51af5dfda2da786215b66e021337`  
		Last Modified: Tue, 25 Aug 2026 01:22:00 GMT  
		Size: 4.3 MB (4306971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baf122193da8b381411f28e0cb70021d54ef6c3b9604cd82c0a9bd302ec23186`  
		Last Modified: Tue, 25 Aug 2026 01:22:00 GMT  
		Size: 12.7 KB (12682 bytes)  
		MIME: application/vnd.in-toto+json
