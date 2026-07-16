## `rust:1-alpine3.21`

```console
$ docker pull rust@sha256:7bae7c67364dad5ebbd4060923b34d734fbed66d7c1cf3af72aa2f062af93eb6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1-alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:e5c73e7a712b368eb90b1190c6e1c4a01a3ebb0fe0abfff68c3bcd2df26ecc41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.8 MB (341792333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35410a1537a450d7b621d0eb4fbea98bd9bf9c5a4ecbbd655dfd17fa4b5f057e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 18:39:36 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 16 Jul 2026 18:39:36 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 16 Jul 2026 18:39:36 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.97.1
# Thu, 16 Jul 2026 18:39:55 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62735f5d8ac978475180a4c22e0b10fd5fca793d03d065a8e1c963349c69f591`  
		Last Modified: Thu, 16 Jul 2026 18:40:36 GMT  
		Size: 65.0 MB (65028748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0825749b8d988f61fce6b189ed6e0aa6a3162689bd427e6be5a206c9dae8cc`  
		Last Modified: Thu, 16 Jul 2026 18:40:40 GMT  
		Size: 273.1 MB (273116710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:7897d8ae1a6718efa4a4d2d7cda3e23f8e2d3f30da5c67eb184774612e3773d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **973.0 KB (973034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756e9d89559256c5804f2acee1bfe87d93bd75d40c10090ca952e196763baf8e`

```dockerfile
```

-	Layers:
	-	`sha256:c4118c323da5341e3ed5909fd24843e97270792199883597b1fe428f093426d3`  
		Last Modified: Thu, 16 Jul 2026 18:40:33 GMT  
		Size: 960.8 KB (960849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd8ec38f89461c74d398eb3ed4d09da20fdf83d209e908342e2536162386a6e4`  
		Last Modified: Thu, 16 Jul 2026 18:40:33 GMT  
		Size: 12.2 KB (12185 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:33ecfb3c72d1ad8370b1a2fd797f6f02a1a71e2393053ac02d2bbc31503bf38d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.2 MB (345189222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e43737917d35bad53ec4b4ee42d74d258fcc99b5c6769222c8485eb969eb1f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 18:39:03 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 16 Jul 2026 18:39:03 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 16 Jul 2026 18:39:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.97.1
# Thu, 16 Jul 2026 18:39:18 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4916ef8eba9c085441798bb23d178a284cf84524917c63302e8b166e053fac6`  
		Last Modified: Thu, 16 Jul 2026 18:39:56 GMT  
		Size: 61.7 MB (61700220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:352e516857cf837db5cdd9c97f3dc9826b0700ca06140b189c0bffe63e20bead`  
		Last Modified: Thu, 16 Jul 2026 18:40:00 GMT  
		Size: 279.5 MB (279494537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:7cbfdc934bff38c4c7b2909a54fb26bcb9a03c6771827adc1eb8f50c6190022a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1052480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85982b25e8e565ed292c40ba6c4660b66b47a65c9a54173ef7952aa9fb8d6119`

```dockerfile
```

-	Layers:
	-	`sha256:7faa9e90c9117a64e467ec8549fa4b8141309f602b9f6de4eef3e63c9e36a957`  
		Last Modified: Thu, 16 Jul 2026 18:39:53 GMT  
		Size: 1.0 MB (1040175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:667dc8d3449059a1b440eed150b5aeb325d379be27d077f6cfaf382e63d75ebe`  
		Last Modified: Thu, 16 Jul 2026 18:39:53 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:0e6a45356f6de4cce3f7b2ca47df8d9e830f2d5b7b8de18d02917142aebb1964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.2 MB (361202136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407097d100262ac9a4230397464117c80f88a1ad3accc98e40f08e663e41f39f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 17 Apr 2026 00:00:31 GMT
ADD alpine-minirootfs-3.21.7-ppc64le.tar.gz / # buildkit
# Fri, 17 Apr 2026 00:00:31 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 18:42:25 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 16 Jul 2026 18:42:25 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 16 Jul 2026 18:42:25 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.97.1
# Thu, 16 Jul 2026 18:42:41 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fe51ead1f71865857c2c015e74518a0be9e72c6a70a845d843f7dd0cd2ee6e2e`  
		Last Modified: Fri, 17 Apr 2026 00:00:41 GMT  
		Size: 3.6 MB (3578920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91bc00482c9e539b551dea5a84c350d018683edc605450ab2d32db59bca2ef68`  
		Last Modified: Thu, 16 Jul 2026 18:43:54 GMT  
		Size: 61.5 MB (61512213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a31ebf25dd46f97623cab83e68974fbe9a3dedebc110bef4d7d2ee61bba88d`  
		Last Modified: Thu, 16 Jul 2026 18:43:59 GMT  
		Size: 296.1 MB (296111003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:a8f4666f7b47b1da652a6b953405715310534849719d9822ad14cede51545c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.6 KB (985625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e198c5a9f858d12e791949510c4417cd55d3d06c27cdb19788e581c8ca1cbc`

```dockerfile
```

-	Layers:
	-	`sha256:db24fb6bd4f721c61e2eb93d0a82ae8184ebb4b54d05a5a68db5c3dd0c034c8e`  
		Last Modified: Thu, 16 Jul 2026 18:43:51 GMT  
		Size: 973.4 KB (973393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5560554bb2cc4f2e8dcc7e5c75181667eb7f847f0e693bd410e8e371ac34372`  
		Last Modified: Thu, 16 Jul 2026 18:43:51 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json
