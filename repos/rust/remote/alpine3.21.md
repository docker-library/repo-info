## `rust:alpine3.21`

```console
$ docker pull rust@sha256:8a34d94926e597c8755508a468ece234b6dbbe21d80c28ed77630f21e4b8e987
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
$ docker pull rust@sha256:33d1144ddb9f024a44f6ed1d50dffef13bee010bcce9ab1a7237c57a6c334a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.8 MB (341792038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db423e74f3cf6e4dfdee0448fec177c90f47dae918cd2cca8e4fa083ea71b655`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 09 Jul 2026 17:34:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 09 Jul 2026 17:34:58 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 09 Jul 2026 17:34:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.97.0
# Thu, 09 Jul 2026 17:35:17 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc91f060cc2024aaa1c29d8cbb15013afd16593b41f1dd0c0c06974152394ac5`  
		Last Modified: Thu, 09 Jul 2026 17:35:58 GMT  
		Size: 65.0 MB (65028692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0a704a2deef1a1271442e1e0f1b8293887eeb42d855c486a6d850dfa5f4531`  
		Last Modified: Thu, 09 Jul 2026 17:36:02 GMT  
		Size: 273.1 MB (273116471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:37b738def7965e97e6c8070f72e7dc5f0a728a50d854831c21174a047539165a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **973.0 KB (973035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f21b08af49e910c8751f2b0d2b682e936b73a59f628ca0b265e72b719f43f4`

```dockerfile
```

-	Layers:
	-	`sha256:f47204dad140bf099a79990ef89524e633f02025df5f64eae0a06e30ec7a1748`  
		Last Modified: Thu, 09 Jul 2026 17:35:55 GMT  
		Size: 960.8 KB (960849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad289315624ed940ddcec2c7300a5cbdbf6252f0529c67e8839711a662101b72`  
		Last Modified: Thu, 09 Jul 2026 17:35:55 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a7d0d7d6f5d4f73f21e9af6cc02b8b21912ed65c8edf521550cc4f4825ae3984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.2 MB (345164263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c978e44d000ead7b00253c81f7d01401cec924e69f394a6022d9f8a0171f543a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 09 Jul 2026 17:34:39 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 09 Jul 2026 17:34:39 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 09 Jul 2026 17:34:39 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.97.0
# Thu, 09 Jul 2026 17:34:55 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b7383a1b863dcc5658274cf9b5fa43c477bdfce3923a492be6e406f65953f9`  
		Last Modified: Thu, 09 Jul 2026 17:35:34 GMT  
		Size: 61.7 MB (61700270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecde241cd3f6029318a5c0f7aadf74a2435512a58b9f762a89a6fdb0d751c28`  
		Last Modified: Thu, 09 Jul 2026 17:35:37 GMT  
		Size: 279.5 MB (279469528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:a9f0995418b3131ab96c4ec3ed711dcce71ec925b0f1a89af36b240101d4c0d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1052480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86bca2ff1cb33abbb65020628adcca04b677a58dc8b29f068cb4785654ad1740`

```dockerfile
```

-	Layers:
	-	`sha256:2022aabce05f036b4d7e186a1d79bf976668728fe65d855ac8b059bb4548e3b2`  
		Last Modified: Thu, 09 Jul 2026 17:35:31 GMT  
		Size: 1.0 MB (1040175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f2080de3bdfcb11a57cfc18ab901fd7a3105193508206aafa44101d361a013b`  
		Last Modified: Thu, 09 Jul 2026 17:35:30 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:2674fcef0ef0f25c9bb4dd927c2a22ce80d008d2c323be5f966944fbc707f0df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.2 MB (361168844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0760582bd39dde002a25e305ba210cefeed939f73c9ad15a5e993673cc3832`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 17 Apr 2026 00:00:31 GMT
ADD alpine-minirootfs-3.21.7-ppc64le.tar.gz / # buildkit
# Fri, 17 Apr 2026 00:00:31 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:46:39 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:46:39 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:46:39 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.97.0
# Thu, 09 Jul 2026 17:37:31 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fe51ead1f71865857c2c015e74518a0be9e72c6a70a845d843f7dd0cd2ee6e2e`  
		Last Modified: Fri, 17 Apr 2026 00:00:41 GMT  
		Size: 3.6 MB (3578920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421da62b2f652ea46b355c8ac0e33872ceaa7128513aa1ced01021f6356e1db7`  
		Last Modified: Tue, 30 Jun 2026 23:48:11 GMT  
		Size: 61.5 MB (61512260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2f0dc571d903e09b9ba3224e8c7546768ddbd7c9d4a190477f0551a6c30946`  
		Last Modified: Thu, 09 Jul 2026 17:38:49 GMT  
		Size: 296.1 MB (296077664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:db35dc22be305f1390002e80dd903d3c85a0ff6c5dbaff0778f5180dccfbbd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.6 KB (985625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08e39c3e13a3dd0c26f7ac7635b058c003cec243b9c2dff3cbc6f4e2c94bc7c`

```dockerfile
```

-	Layers:
	-	`sha256:17d9f61bc470f67566781b504b2be60a63b1057848032d73c844a265e2c802cc`  
		Last Modified: Thu, 09 Jul 2026 17:38:43 GMT  
		Size: 973.4 KB (973393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4c4098a42dc30faec4be6eeda5790f1922736ce70ae5c294196b7b334732efb`  
		Last Modified: Thu, 09 Jul 2026 17:38:42 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json
