## `rust:slim-trixie`

```console
$ docker pull rust@sha256:aab42391a986424e22d6a3ec14f37bc6dd3dacff4d457ca7cccd781e02297cc6
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

### `rust:slim-trixie` - linux; amd64

```console
$ docker pull rust@sha256:d7d8fd94f01c80a355b86fe8691abc26be051daa44fa021a8b5ece5c8cbcb469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327095463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4445c7b798594c20cef7d61c45f5328f8a41e2c96f3a8bcc16bc3a0bb9d622bd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 21:51:41 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 21:51:41 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 21:51:41 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728519f6da337f04bb41ccb6870b3450a20b4921556f32fee31ea366ac77558`  
		Last Modified: Wed, 21 Oct 2026 21:52:28 GMT  
		Size: 297.3 MB (297251884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:da3eddbd13bec9645d5f24791e4ea136980d79bea31aa6d55f149e0382a295c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4184979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e55f895f2e22be18de3e880192c75ff6c5985637b120e48c7db998445afd681`

```dockerfile
```

-	Layers:
	-	`sha256:21955bfac3d5888fb5e51d48ae55f8cb45728f43f80d763f6ece9f481de6001d`  
		Last Modified: Wed, 21 Oct 2026 21:52:20 GMT  
		Size: 4.2 MB (4169346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e35b06b31d2f1aa726b484a9c6b6064b11b76804ea80dbfaa95a66c04a1cfae0`  
		Last Modified: Wed, 21 Oct 2026 21:52:20 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:2c475c6a79092af9329b8343666c578a3d75fe45ef484df6f4409c678e952240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337868126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da6ca6e497df3b2f6028d0fd7639d6d7cbb1562da4480912c2e3e93e7ee3d7d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:02:36 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 22:02:36 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 22:02:36 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c2270aaf407f203a861071b2cea1e051cdb3abe79b93fa2061a36d9cd807439`  
		Last Modified: Wed, 21 Oct 2026 22:03:18 GMT  
		Size: 311.6 MB (311609730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5b6bdaf58de784cb7ffe7545dcbe39028db04d09a3b491bf63fa341afda0aeea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fddf68208b85cb29b34bf4b4974f0f361171fdb9525657fa3afa81b8854296`

```dockerfile
```

-	Layers:
	-	`sha256:4a6c67e461b4983a37af294264b61de41b5331de45e70f567cb04042c5f66bbe`  
		Last Modified: Wed, 21 Oct 2026 22:03:12 GMT  
		Size: 4.0 MB (3974215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6434090312f2f18444c85cf6df290012d4c793a4995a8c9c0380d5319526fffe`  
		Last Modified: Wed, 21 Oct 2026 22:03:12 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:73b81f338853a11a828adeb6fc31ba5d53e3cbc435fb6ae71752473242f6f88b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286865438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b5b95d751c271689043ce148463a2930c358747ba5d5256558a418b50fa2f5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:43:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 22:43:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 22:43:20 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8273ef83c43d46969d3311d7d529e07d03bc0cb277edda3662b0759da1234e55`  
		Last Modified: Wed, 21 Oct 2026 22:43:57 GMT  
		Size: 256.7 MB (256664960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5bb72c671bac0e9ea4cf118397d21047d217862c264aabe5ee84020135a012c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550b0ece63d4ec864d768c2ee8ea7c148edf70e0e48301a5a3d414a3f830686b`

```dockerfile
```

-	Layers:
	-	`sha256:24aae607500c5789d82b3d2efcd3a984e490140bec262ed180a4f8bf5813e889`  
		Last Modified: Wed, 21 Oct 2026 22:43:52 GMT  
		Size: 4.3 MB (4260553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:220bfbb93e2fa26e19391cd4e77e0b24340ebacca1281986cb8fb9e894caa51b`  
		Last Modified: Wed, 21 Oct 2026 22:43:52 GMT  
		Size: 15.8 KB (15784 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:c9860dd7e03fc54abecedbfa032ebc08f59476e6fdf7252d0d3a324606ab6d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350369714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbdafdb72eff68802d6b9a9b6c9c2880b66a90a69a3f28d2e6b831e8ba06297b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 21:47:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 21:47:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 21:47:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf633805410fc591b3ad998ff12f513a39e3c44be5d985e275d459e020d2149`  
		Last Modified: Wed, 21 Oct 2026 21:47:59 GMT  
		Size: 319.0 MB (319016180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:162056f4c1e6af93bf5fadd155e44d5987eecdef8981e421b1bb02308c2cf81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e114f680ad6148547c7aa8ee6a81936f1783e522aad47f0ed4e54f13c561f2e9`

```dockerfile
```

-	Layers:
	-	`sha256:5f83f82d9e1f4bb083686cfb99c5514f0e9e35f146d196d1c89f3c28a7ef8249`  
		Last Modified: Wed, 21 Oct 2026 21:47:53 GMT  
		Size: 4.1 MB (4144160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43941211f39a7f971eacb4a35705012fe1d9776f48b24bd29cb2b2754c90221c`  
		Last Modified: Wed, 21 Oct 2026 21:47:53 GMT  
		Size: 15.6 KB (15580 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:5359ada54f71b2442bc2cf869f89869f52db47aa329e70a4ba11b73af7369751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.1 MB (398113485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129ec558e9e6bad1c278df27e86f6851a768577ad4ac6436a18ed4f6b32d5d4c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 09:48:36 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 22 Oct 2026 09:48:36 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 22 Oct 2026 09:48:36 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61b48536279d7186e5472d25f536238b2993e05499e131b8b5b42c3bbff2d11`  
		Last Modified: Thu, 22 Oct 2026 09:50:25 GMT  
		Size: 364.5 MB (364461550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:1f2cba3974060652871d48c154d12b1822067eccf2d0dd82bac207c9efedaa46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4181503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae17080c1b7faca7924f1807349f91749454b8b69029aac4d7be468dbf871ad0`

```dockerfile
```

-	Layers:
	-	`sha256:71d456a5941a488717779aae20ab3182f3c322c58010d342b5a98f7a7d09328f`  
		Last Modified: Thu, 22 Oct 2026 09:50:17 GMT  
		Size: 4.2 MB (4165802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8539ad195f91e9dfd78a214c80cba2f2325c91eeb4568357d3d1c3daacc8360`  
		Last Modified: Thu, 22 Oct 2026 09:50:17 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:57880621d37e4176820d8a7f2f4cb3320654525e36c073722d0870d8e39aae3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.1 MB (395133522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19aafe71aa5f8a7a5f01e7c9890c266103122c3dd7a5c8a4173adddca5ad6c2e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 11:20:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 16 Oct 2026 11:20:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 16 Oct 2026 11:20:40 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88b93f4d7939a225b69d167cee65661c4ff879ccd9c062d023dac32db88aa9a`  
		Last Modified: Fri, 16 Oct 2026 11:32:10 GMT  
		Size: 366.8 MB (366799759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:af930eab75021e5356503d426743c6835992f9c9886105633f489116e7101b1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4260736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d5b2c98baf3ef86e3e9f4e89348fd85806e9f267396a6348ce46c7197c2322e`

```dockerfile
```

-	Layers:
	-	`sha256:73b4c3d39105b9eb73621f28d527f9f1cc8b53f4a9a0ccdddfb291f8223238f2`  
		Last Modified: Fri, 16 Oct 2026 11:31:04 GMT  
		Size: 4.2 MB (4245035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec3d6562a456d238fd43a46e77ae2d71fd21176df1c64775c3383f2a3d8457d9`  
		Last Modified: Fri, 16 Oct 2026 11:30:59 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; s390x

```console
$ docker pull rust@sha256:b74215fc138980de0205b37a6fdfdaa5ee0557a90cb424477e96745226eb8a15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.5 MB (381483662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0afbfb537894ed24627d3f84dba3b412705afe41f3eaa04c957514c721510f29`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 23:10:31 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 23:10:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 23:10:31 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc36075ac812c8edf2b98a65b236a7d516239ed5dd6dc7d32004f759e3e2e4bb`  
		Last Modified: Wed, 21 Oct 2026 23:11:32 GMT  
		Size: 351.6 MB (351572224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:846ba28c61a123ef1698c89daa03ca7a9f3f651466f79908d402d749b3cb8b25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4002727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74fdd9fe5d4607a418d187a979c54f7cc337fc29feecd474662af6602688a8a5`

```dockerfile
```

-	Layers:
	-	`sha256:925d59c3f091bd96f49d1880dfe6d3ecc4a8d5c11ce0e58f18479876f75909ae`  
		Last Modified: Wed, 21 Oct 2026 23:11:26 GMT  
		Size: 4.0 MB (3987095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa05c1aa54d62e2ff07e5f3d49cf7826f31c35d4ba72493a8ad4bb9ba4e8eef5`  
		Last Modified: Wed, 21 Oct 2026 23:11:26 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json
