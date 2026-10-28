## `rust:1-slim-bookworm`

```console
$ docker pull rust@sha256:61e86bac21b4c1aeea7100008e1902d0048f9842fc94c7fb9c5f01baecbcb475
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
$ docker pull rust@sha256:bec632fe9144b069d4a21396ca4f84f6d6c6d471ec1391cb70eb4bb1b06c547d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.7 MB (320676791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc5fb01cbc763b461841f099676fa811bc0633c7039f43a5b78c61c1e8264b8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:05:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 02:05:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 02:05:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b02f8b5703ae1559ae8f9c0f5d7426035c9deff786791a83b9f4b4354cb089`  
		Last Modified: Wed, 28 Oct 2026 02:06:32 GMT  
		Size: 292.4 MB (292429354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:894e8f87799882cbb6e27f9c174eefbd84821ab305c8cd00f7038ad22985c346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4111509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec4ab2b07e6393143932b78718dbeec9b767c653ff4d3f83fb521878059fcba`

```dockerfile
```

-	Layers:
	-	`sha256:1ece4ecea2507d4a76d265a1507687c716349af1eb69d729c5020972d045601d`  
		Last Modified: Wed, 28 Oct 2026 02:06:26 GMT  
		Size: 4.1 MB (4098202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52e2eccc25ab2d4ad6c89faeb56f594aa50abdb25507f6b43bac2b0425ba7973`  
		Last Modified: Wed, 28 Oct 2026 02:06:26 GMT  
		Size: 13.3 KB (13307 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:8f354413fc462a1399dc2b3b4f4908a0a55374b872b7f00355b2edc750f7b7a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.0 MB (332975372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc3fa821e408ef71e3eb94e096b2bae8cee98ba3b25aa7f04a68cb7fe7d2a715`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:56:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 02:56:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 02:56:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afda62c82acee4f201fecf9a1b52d848bafae694095e43c933524bfd4c9a8a47`  
		Last Modified: Wed, 28 Oct 2026 02:57:27 GMT  
		Size: 309.0 MB (309014406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5c0ce1004a5ae07bd1e9f20b28b36bb0e1d67b3ef9861d10a650cacb5d4c0c1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3925976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b374bfa39892835aa1900c85042cdb457762ee9e39c16dfe31c147a8790fb7`

```dockerfile
```

-	Layers:
	-	`sha256:4bee01c1372b5afa2611f656612506522fabb24d783120dbcf2f4430067f86fe`  
		Last Modified: Wed, 28 Oct 2026 02:57:21 GMT  
		Size: 3.9 MB (3912589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9536523959dc3441457df451c1f999309676dd54a50f7e2e8b34cb68443140f7`  
		Last Modified: Wed, 28 Oct 2026 02:57:21 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:efecb7694d37171c478bd45d0cc88d9acc6e7fd31d7a1a39891ed4a294d0ce6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280814127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a09e6bb4a4b4990f66590e9bcf4e99a2541ff81e6dc6fc707571407f13e7e42`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:11:07 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 02:11:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 02:11:07 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7693faea2678633e9af75238296d2ceffbb03762e10c3c527acdde8a239b0f`  
		Last Modified: Wed, 28 Oct 2026 02:11:45 GMT  
		Size: 252.7 MB (252676176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:caa255cd3e6a0edad76eea1123f8f3097b0d2714b5429ee3193ca9c457d59ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4133907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a16943b9639dea94d76565825a1e6fe956d90d2913c2ffd9c9b0fd77dc1fbc66`

```dockerfile
```

-	Layers:
	-	`sha256:9f5538cd6435cbf2f9f71a8bc06322a05f3a759f314c4c75f7988d57371c2087`  
		Last Modified: Wed, 28 Oct 2026 02:11:40 GMT  
		Size: 4.1 MB (4120496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4185f85cbeabcedf9bc8d84bd27b5102b4fed45a6ab135e2146b2a0c637bbdc`  
		Last Modified: Wed, 28 Oct 2026 02:11:40 GMT  
		Size: 13.4 KB (13411 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:d66e0bcccda9e8b12b09cf187db078dfdae3c3573f43b3fbe96f95c46e19447e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343172497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e02e8f5c6a827a135f180b490993244cd15614f82d13cb1b1fef8d0126d14ea`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:10:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 02:10:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 02:10:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ec8ae9a8b3bfe5a90bc1c9e6ab5c364e6cf68cd5e1de60c852964a780b011c`  
		Last Modified: Wed, 28 Oct 2026 02:11:33 GMT  
		Size: 313.9 MB (313933718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:1eb1492c655ae7f5cbd59fad1e229b08ad607b3a7936e852902057bb68584c5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6043c3963a13046564241c08ebe1abd534bced080c8893ca12a6afb341e5a37`

```dockerfile
```

-	Layers:
	-	`sha256:82a4aa74dbad9314ab5889a9225d5de416d07a0178009f383e29118cb819009c`  
		Last Modified: Wed, 28 Oct 2026 02:11:26 GMT  
		Size: 4.1 MB (4078888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f4cf5df4dbf74682f35bca6127dd647f385fd6e2d37ff8fd96ccc2043e09181`  
		Last Modified: Wed, 28 Oct 2026 02:11:26 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:f1ae65b29469380f19df2e262116fde14c2a89169b9dc2fb23e7a5da8b0532ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398282446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189b2272c16e053377b97747725a94f610e45d5f6850d2f2020dae230f001aeb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Thu, 22 Oct 2026 09:45:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 22 Oct 2026 09:45:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 22 Oct 2026 09:45:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264de531f9bdacbc7678700c33611b4f292ebf0447d8f27837314a49a54d86dc`  
		Last Modified: Thu, 22 Oct 2026 09:47:10 GMT  
		Size: 366.2 MB (366189237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:de477660dacfa9a49da651b5091030061240eb53895fe56e2418ff148734769b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4085144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39407df30572819bc36c7b99fa2c8855562e764f9c16458e15258a5a6e7a1a4`

```dockerfile
```

-	Layers:
	-	`sha256:a8b76ebafe1379d1872bc0ef01006685aabe7193760f8bf4a8c2691f04dc1e2c`  
		Last Modified: Thu, 22 Oct 2026 09:46:47 GMT  
		Size: 4.1 MB (4071794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c569dd9732e6fc67f6deb84e79ac6efa68e7669a9038aafb662b5f88732a043`  
		Last Modified: Thu, 22 Oct 2026 09:46:46 GMT  
		Size: 13.3 KB (13350 bytes)  
		MIME: application/vnd.in-toto+json
