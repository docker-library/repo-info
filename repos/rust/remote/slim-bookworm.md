## `rust:slim-bookworm`

```console
$ docker pull rust@sha256:86234e857a413004348b471d11a4ebe1aa92d2eae2b6b143cac68fd1ac3c48be
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

### `rust:slim-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:04f6411f947b7caf4b10bbf28ce2716cae46013e690403c371076db598b2951e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.7 MB (320677595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f88ab0c7ae8fd646cb8de372eaea069ed724db5fcad893035c18c0a14f02ed5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 21:51:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 21:51:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 21:51:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7c6ad1bd3c404243643907bbd1fc5a220befa934f3936b5dff3047453a4cf6`  
		Last Modified: Wed, 21 Oct 2026 21:52:13 GMT  
		Size: 292.4 MB (292429660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:8d30f1b375bcb0f732ceec9e6c14224cf82b3b06452fbddd60d62b0653fd3266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4111509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64efe9beafa67e1ebc87b6a5173e35a43f5e52ef59e6e6a56843215717e3ea41`

```dockerfile
```

-	Layers:
	-	`sha256:8c2bae177173fde467817ea22443921722496d2809735b346d84c6b121cd5286`  
		Last Modified: Wed, 21 Oct 2026 21:52:08 GMT  
		Size: 4.1 MB (4098202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a80c3cd6dcbd5f6fcbc68d62955130fca81b847a9b4258a826188ea5c457ed6`  
		Last Modified: Wed, 21 Oct 2026 21:52:08 GMT  
		Size: 13.3 KB (13307 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:66005de36cd6bd7a92f53d4cd469c9c45913ae26dd199d910440e1bf426ab39e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.0 MB (332966377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1a8c66fe275a1cf21d6980f386b128705c2a857f621d75e392e2da167be4bd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 22:08:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 22:08:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 22:08:12 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace4a94fb71d60a98d54f07421d83fa58fa0e63fe3e7ea362176973c8adea0c9`  
		Last Modified: Wed, 21 Oct 2026 22:08:53 GMT  
		Size: 309.0 MB (309004888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:a2452d90a14b0024ea76ad15af7d16b83011c6d6fa1408ab4b54c135789b4dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3925976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba720c9348032da8c0d2388e5429329bb0f8f65704add9b317d6991a790be7c`

```dockerfile
```

-	Layers:
	-	`sha256:24e7a6844a14f8914bd917b47f8a57c9fc07612e99ee4d933ce8c9761b692a8b`  
		Last Modified: Wed, 21 Oct 2026 22:08:47 GMT  
		Size: 3.9 MB (3912589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a9ec8f7a3cbdf5f0ef93bd8258b4a12beb8d17e0f046386cd8091a529d49142`  
		Last Modified: Wed, 21 Oct 2026 22:08:46 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:c8d027179c89beabf7a11f650fa5ab54acd8bb51e486b5abc354db6d041cf5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280820438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776c9631227772c8ec0677cc4a47842fa9fb7a41cb9fa587a3284ee2be9ea0db`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 22:43:06 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 22:43:06 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 22:43:06 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab797b10a227139316a8eda0b196a12cf907d9eabfe68dfcac5aa99c0b351ceb`  
		Last Modified: Wed, 21 Oct 2026 22:43:41 GMT  
		Size: 252.7 MB (252682013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:d9c1b3cb26cc172d1e09faf52f728095166dd2ab7c6db0d2efcf8ea46ddfaf6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4133907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ca3f73ec0fe63bacf7cff98734ea1407729766382d6141c193186701315b13`

```dockerfile
```

-	Layers:
	-	`sha256:0f274070d77ceee464136e3c01a9f74d0c0f3b64c03d6ab43d1917e7627bc305`  
		Last Modified: Wed, 21 Oct 2026 22:43:37 GMT  
		Size: 4.1 MB (4120496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b2cb8e848024d5bf58e85dba3bd4209e1b5738194dd3fd56a89dee3e53af3a6`  
		Last Modified: Wed, 21 Oct 2026 22:43:36 GMT  
		Size: 13.4 KB (13411 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:a5dfd14cfdd019c3d28157ab17f88447223fffb2fe2ce9a2f4ef17eda199cbc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343173634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21aea8c1fb969f67491d3017c5f53408e8fde4896303535294c0265ae78fd50e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 21:47:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 21:47:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 21:47:11 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f18bb404f18e1a55e73386e40eac6da347163fe58e54559004ef9b0d1c24e4f2`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 29.2 MB (29239245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5174b663684bef09f79aae80c1904769aee5b5ec7e30920430d3eca10184b632`  
		Last Modified: Wed, 21 Oct 2026 21:47:58 GMT  
		Size: 313.9 MB (313934389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:9dd1d5f29b2571b579d74d6575aca86477fd7efeb33fc2ded1c19993271447b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6dfbf18f36c648514d119c2b02bc6b5dbbc55ca7da7607d1701a682e42cc38`

```dockerfile
```

-	Layers:
	-	`sha256:a8b839f1a0afcaff277b4a9f20ffe9bb03b576f0be3e7164948e47445ee0ede5`  
		Last Modified: Wed, 21 Oct 2026 21:47:52 GMT  
		Size: 4.1 MB (4078888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc43d356f7f5b490d1e8ec9046ceba6727362c8c0c99054625e7b459b745dd16`  
		Last Modified: Wed, 21 Oct 2026 21:47:52 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; ppc64le

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

### `rust:slim-bookworm` - unknown; unknown

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
