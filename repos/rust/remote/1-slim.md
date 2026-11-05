## `rust:1-slim`

```console
$ docker pull rust@sha256:7eab7ce19273ce785e0ca7578bdf7bc1fcbae621775a8197379a04c9f6e03cd5
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
$ docker pull rust@sha256:e97df055c54a05160e7c67ba3b2963de6ddb95903911baf8922dbcd1b394f698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.2 MB (327194905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc1f85e641d7765f7cc3b867ebc0fd665ebb7fed1b156b1e9878aa36337d943`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:03:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:03:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:03:01 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e435aed9d6456d8431f67069e22a2c664717640ea2ca0361cbe56602b9514a2`  
		Last Modified: Thu, 05 Nov 2026 08:03:43 GMT  
		Size: 297.3 MB (297338773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:6ffba9ebe4580e7410900fd7303465b7ce192b73c7fb2266c969b1a0783fa90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4184979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2cec7f1e2e4674387d2fe33b36055c3abe654675b1c51c6d3b97bbd83244bf`

```dockerfile
```

-	Layers:
	-	`sha256:0708dc9ad0daeb6c492cffd3f6b8aadf163c5ed22453e8914d8fd4f9bdbf60ba`  
		Last Modified: Thu, 05 Nov 2026 08:03:37 GMT  
		Size: 4.2 MB (4169346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27e0bb10cb91b98c21ca5fd5a8e89b2799000a7bb90843832be598ef9a12a480`  
		Last Modified: Thu, 05 Nov 2026 08:03:37 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:0400183e4df544ad976cd984d7b6e2e8b484441e0bf9e316d07cd456dd4bd35a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337943104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384574104a4725000e99998e82cf71afda768573ffa11d9dea805a993023cfc9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:54:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:54:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:54:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd3da5a31372541ab1bf5e318f39bf0f3fe9854a9d8730eede62ca4b5ae48d`  
		Last Modified: Thu, 05 Nov 2026 08:55:27 GMT  
		Size: 311.7 MB (311670189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:54ef50e512425b252cc8fda07911689cb15d41125b36a177c455b3c8e08c6025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f99017c654280409894158fe45590a383f86938246085ab50aac9b650a324240`

```dockerfile
```

-	Layers:
	-	`sha256:35d036863a32367260d7365d6ad97bc9e9b87d0666b1daa2d264c66deac56737`  
		Last Modified: Thu, 05 Nov 2026 08:55:22 GMT  
		Size: 4.0 MB (3974215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d67aa30173d0814cf89e02fd5cf0200b0830dd455edc821d1f6aefe6ac07aa`  
		Last Modified: Thu, 05 Nov 2026 08:55:21 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:10d470c049d88eb5dbfc85612f51571edd1ebbbdade35c5d3d89d9ab8fd6bda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286943249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab624ff5404f660cfc64c0b5249c2766ba32809e21f7aa2403e72fab042ec01c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:11:55 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:11:55 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:11:55 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58041dfb98d1b82f6a1122a264f755c1e93993a2a6c433cca026244a6a42ed4`  
		Last Modified: Thu, 05 Nov 2026 08:12:30 GMT  
		Size: 256.7 MB (256729212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:9742c13a6d23a02c8911b20f6531d14a2676a9cfaa18ca8465c4f7e015cb67bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b506c43eb423f5c2f2262c3f6b19b157aa95438bee60ae844fef0a465dc39c`

```dockerfile
```

-	Layers:
	-	`sha256:0fe11148e8ac84ba7f3410e9fb3ab9f442159ab3158cdb91793b3761ab7c5d50`  
		Last Modified: Thu, 05 Nov 2026 08:12:26 GMT  
		Size: 4.3 MB (4260553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9221fe01cc5fab2e01ec5f41e1160a6c84adf39a27f9c048265c5eac79d4e78`  
		Last Modified: Thu, 05 Nov 2026 08:12:25 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:aab7352d42d5c3cba38397a313cb4280cc7486aa5489c076c0e2036b455b61ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350446656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31e123e25bf4d93f6b32bc67b517c7601d619a92caf40592bddeea927c1bbd9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:08:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:08:11 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcd82564079cf2fa0d361b2faede7a5b8bd93507bd614e18d2d7aa5e3d3f840`  
		Last Modified: Thu, 05 Nov 2026 08:08:55 GMT  
		Size: 319.1 MB (319075897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:80a49d0853e691f7eabc2b41e69b66c2319a8f3068508bd26201e6007191a12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410f1c54607c2251fc51feb5726a883a2ad1184440697a3e6dd6e2f725289527`

```dockerfile
```

-	Layers:
	-	`sha256:171826e2e34b87f80cc792361be5dd777912ef28ed29b5224d85091753708402`  
		Last Modified: Thu, 05 Nov 2026 08:08:49 GMT  
		Size: 4.1 MB (4144160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:168bda9ca004d5e07f5f459c87817579179c9d817d89ef324194f21be1776a2c`  
		Last Modified: Thu, 05 Nov 2026 08:08:49 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:df244d86d8224840640cebad5f2d47145e9cad529421171ac0c545ca71e137fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.2 MB (398198829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b574cdc3e33be86ee6beb7d624f5d4202177c1bac5304ba3cdb0c4a33f6e399b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:11:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 15:11:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 15:11:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8151d71991b777eaf4716cd8eec772870d3e106dd9d6697e1657ef044c894c`  
		Last Modified: Thu, 05 Nov 2026 15:13:26 GMT  
		Size: 364.5 MB (364531181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:faf8cfb2bd22a616279c81a88f9cc894443f4f6cc2ad69e3d13824401dda99e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4181502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8f228a37a5bf8438f28446d2199ac8e2115113f353a876b5c6d32d629ee3cf`

```dockerfile
```

-	Layers:
	-	`sha256:edb366ff3e7a07cc56401a8adf9a554ffc397a5c52e0275097cc4a9b123c4e3f`  
		Last Modified: Thu, 05 Nov 2026 15:13:18 GMT  
		Size: 4.2 MB (4165802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c4e5c680e39af392230dcbb01e04f6f60752884e1c80139178c26f4115df575`  
		Last Modified: Thu, 05 Nov 2026 15:13:18 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; riscv64

```console
$ docker pull rust@sha256:c3e3bf0de06bf31430cff2b1e79ef960d551616ebd153aa0df094e705136c136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.1 MB (395146377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b4b5a01d07f95b5ac3be2e1747c57fbd9b0f23ab5adf5e19746278a885f420`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Wed, 04 Nov 2026 23:52:09 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 04 Nov 2026 23:52:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 04 Nov 2026 23:52:09 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f1bbe560a678dd02dbcd9a7f749b06560211ea2eb44193da94ba57c2900f43`  
		Last Modified: Thu, 05 Nov 2026 00:03:25 GMT  
		Size: 366.8 MB (366800708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:e70ef4d7f0669b5da3da230259f7fcdacfb2f8bd63623e07cf0cb87d2a94458b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e38af818ca6e4df79cb6200f8250f3a2d1c28c6f7bc80f7c4f1ef2129a9c6a8f`

```dockerfile
```

-	Layers:
	-	`sha256:2006c21e627bdad9e1f49d066187f828591a62e3d76173a61949bf5591f9cf98`  
		Last Modified: Thu, 05 Nov 2026 00:02:32 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f36d65d76b6bd329008c7aa7a50b6b30ad31beb188c75e8bbe8f4df5e49488a0`  
		Last Modified: Thu, 05 Nov 2026 00:02:31 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; s390x

```console
$ docker pull rust@sha256:34881591699d053faab9db0998c662f35b76d2d29867a30f04f94a86bb6cfaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.6 MB (381569623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506f7768f24b590a7e68a15bed9bb2088bc9157232f4147cbc9b07c38bb42fda`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:38:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:38:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:38:26 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1b7de5622955f8ca359f2ce90b481834ca2839252c58997e134d51866fe27c`  
		Last Modified: Thu, 05 Nov 2026 08:39:26 GMT  
		Size: 351.6 MB (351645506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:b2ed35d7d8a1de746586df79746648d800e76ceeecd34f091f987c8031406ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4002727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8642c563316b0b1653df807f1ab6719c889888df6c1da694ca49843f0b365f63`

```dockerfile
```

-	Layers:
	-	`sha256:54d2589804e2b13887ce35725264efbfaf8529614f604f429b812e2b5d25f67f`  
		Last Modified: Thu, 05 Nov 2026 08:39:21 GMT  
		Size: 4.0 MB (3987095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fecd283ec9b230e444d2298ca7850eb0388ce6de5bdb250e19f8a0b556ef06c`  
		Last Modified: Thu, 05 Nov 2026 08:39:21 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json
