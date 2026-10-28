## `rust:1-slim`

```console
$ docker pull rust@sha256:b8e062b1c3a80183df83d9ba187cadd2b5ab84bc78d453dbfeb2fccd5f982247
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
$ docker pull rust@sha256:11b01282eaac5ba4ab9fc503d3a4a4d5db601597ce85479ab8c29495be660670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327108923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df25b879d195da98872b636db24e692eb7ec14e0fd1d0851e8209e7d9e168a0a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:05:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 02:05:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 02:05:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fd98aadc930ce0971e18c4095e68e6bb127386286731106f52d6f5e5f3e1d06`  
		Last Modified: Wed, 28 Oct 2026 02:06:31 GMT  
		Size: 297.3 MB (297253687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:53765c2771852c311a89e45900322f268aa4ca0deb5bc07490ea82837e5e285c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4184978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea0e638391154b7641d331d63272723fd7ef95c5cad28fa1dfabaf3085847b05`

```dockerfile
```

-	Layers:
	-	`sha256:65c3a22a1f81571d4415e169fc675130f9a6944914d7bb5aa055d8a410c90e11`  
		Last Modified: Wed, 28 Oct 2026 02:06:25 GMT  
		Size: 4.2 MB (4169346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c7cfa4f2668ffb7d3547712363558434fdedc4ee1aafc8aab580777e900c93b`  
		Last Modified: Wed, 28 Oct 2026 02:06:25 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:cbf5059e51a21c6ac9c68e2a52927c3294d231078f1c1fc18eec656fac880de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337882373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda64ea08f91e47e0b0c1eed16780d9aa0c3e0ed5e24fe0f6c944bd3b1539435`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:57:18 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 02:57:18 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 02:57:18 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc3478c1d75639c9acc6495e4d1c44fa8eb124142b5966b7461fac45b15a582`  
		Last Modified: Wed, 28 Oct 2026 02:57:58 GMT  
		Size: 311.6 MB (311610205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:9190554383b4faf7ad8c53c910883f00afbc6b05be2ee661fa1d6a3091fec816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ff4ff046295fe000b8ce448c007a04de413c0b13399b1988f62894a4c51e01`

```dockerfile
```

-	Layers:
	-	`sha256:dc98f441ea9a7e3bcf5165ab54f0111651723c460643d8cc153ad31b4bed1813`  
		Last Modified: Wed, 28 Oct 2026 02:57:53 GMT  
		Size: 4.0 MB (3974215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:035e7b594552b10f54d7f06907eb9d15ae859e507162077e3db3fc671f6d8ed1`  
		Last Modified: Wed, 28 Oct 2026 02:57:52 GMT  
		Size: 15.7 KB (15744 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:752ae176b955dd798d28b8f91a9f8cc3aed3d050fa3eb36fa877d61608d6867f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286878651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad616a1662d1b7cc68c2700d8a85c36de76915cde81d039219bfd22f290845b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:11:21 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 02:11:21 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 02:11:21 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58f8c9c18849121ab40763b62497bf3350875a2da8b16fa3a18d04404fa2211`  
		Last Modified: Wed, 28 Oct 2026 02:11:59 GMT  
		Size: 256.7 MB (256665155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:5499d6ac3a2ba3f56da18bc15e102ffc0f911c699d3a36bffdbd71ae0d2d168e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b1aa6c4847ac659fe5e2121391264ea5d0ce8cb2b40ffd1104f687490d2691`

```dockerfile
```

-	Layers:
	-	`sha256:ff317aaed1931cf084218631957965ff2d0952387aaec027ba9cd63dbe6c6f06`  
		Last Modified: Wed, 28 Oct 2026 02:11:54 GMT  
		Size: 4.3 MB (4260553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51eecc6cc17a448612aa743515517750091168379cb5fc1e07eee289dd32d421`  
		Last Modified: Wed, 28 Oct 2026 02:11:53 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:bb4657caef43c1f629538783c34f1087bd30192f6d321de6c137f208bb019ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350384640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7faf921016b71049ab44ea11b6639067752d6d33b795ba0f283c0840929b20b1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:10:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 02:10:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 02:10:56 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139aff9896c13d2c21879e57bbfb6c4846b5f43999620238a5fed9b126569d0f`  
		Last Modified: Wed, 28 Oct 2026 02:11:42 GMT  
		Size: 319.0 MB (319016054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:b57bf39f6be09adc761fa5b7b352f300c11078264732565725b6979d25079a6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185527b67255f982355d3994e141a8a03897fc07f0209a95a99e1f8cdfd2f2d6`

```dockerfile
```

-	Layers:
	-	`sha256:f69f59523b81f3ea92215d951a6b04533442d3ab7f8fd70d64efedc34faf907a`  
		Last Modified: Wed, 28 Oct 2026 02:11:36 GMT  
		Size: 4.1 MB (4144160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b3d6dd67f55ba3db922c5713040c0342429f883fbd8729d3a621cbe72eb814d`  
		Last Modified: Wed, 28 Oct 2026 02:11:36 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:b9629284918a7f487c7f4a96a89f472ecec6e4c64579663ac17810610cb61417
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.1 MB (398128412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f967a2ea2d8d572686f421b0a3cb605d2f26b98dccae637ecb659b2e263c70`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:19:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 09:19:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 09:19:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b9586d99d3f2f4a2bcd0531fc9e8ee1e4a61208675e2d3c019d8249e62a2a5`  
		Last Modified: Wed, 28 Oct 2026 09:20:56 GMT  
		Size: 364.5 MB (364462149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:aa8c4376e84f3a7869aa3a0f83f6ab0702c57a8f5f66118b5c31412e6905a0a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4181503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75dedde1036defeee71d450eefb73e966acd9763b434ed931082bdbc297575dc`

```dockerfile
```

-	Layers:
	-	`sha256:d2de9e76b5c14bd87c927c414c4926ac68fed2ee78b88299abfb82fc681f6b95`  
		Last Modified: Wed, 28 Oct 2026 09:20:48 GMT  
		Size: 4.2 MB (4165802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a5680d10453bd4b83c40396f9c492b59b3de59f8cffb932703c22f9af86c38d`  
		Last Modified: Wed, 28 Oct 2026 09:20:48 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; riscv64

```console
$ docker pull rust@sha256:91fad81261876ba76d0bdb8c5affc1b18c3b0ded78183dfa1b344466a4bf38c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.1 MB (395070604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719914112b4b2df444e77cb21de29368a1489c40ba64ee11da1339d7c964f306`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Sat, 24 Oct 2026 10:53:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 24 Oct 2026 10:53:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Sat, 24 Oct 2026 10:53:01 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a662072a84d855e807be9bb0abf6a61a134cf63635c7fb4384a9c9396ada6ba`  
		Last Modified: Sat, 24 Oct 2026 11:04:55 GMT  
		Size: 366.7 MB (366736733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:753c8c56d56f5f230420ab89c4ae78af4866c4b68c1821a27f7f7e6b3df627b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6284fba3bdeca50d0144360d66bd9a35cbe3fe5296ab342a4fe81a97df287c`

```dockerfile
```

-	Layers:
	-	`sha256:e4c992b08e4bc91658d421aef8e9e8b1bf7b2aeed7c7cd17380b42b39965e37f`  
		Last Modified: Sat, 24 Oct 2026 11:04:02 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e246bf42d0beb2310e175378a3a9e02c32ac9789679045b38481c0f8ac95a150`  
		Last Modified: Sat, 24 Oct 2026 11:04:01 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; s390x

```console
$ docker pull rust@sha256:5bf2eb782bb44558d86824eee50c2d0bb02850e3d34ae9b0f1996dafb771ddbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.5 MB (381495284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d276284acb7d7d8ea889ae762ced30834d0f9311a3784a63f89bf37257a30f5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:52:31 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 03:52:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 03:52:31 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42406bd4c1d8146b8a248648ae22478cfad72b9028bcd14c84348f7f380e875`  
		Last Modified: Wed, 28 Oct 2026 03:53:30 GMT  
		Size: 351.6 MB (351572363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:02f2c571945bf29a9abee8e7d33002df7845e281ee0177ff403709e7e1a9574a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4002727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a680455a652ab842d26946a3ecde46c788a9cc42605cf5e8a5afa21ebd7c4b5`

```dockerfile
```

-	Layers:
	-	`sha256:2ac1dc560f18b67c5edef15fa74bc509493bbf7902a9f5ded970d835d384bb74`  
		Last Modified: Wed, 28 Oct 2026 03:53:24 GMT  
		Size: 4.0 MB (3987095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97c4ad32d19d9da83a086b750166114057c6a5a825c357e92514d378bf6509b3`  
		Last Modified: Wed, 28 Oct 2026 03:53:24 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json
