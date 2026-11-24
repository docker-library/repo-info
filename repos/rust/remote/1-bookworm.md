## `rust:1-bookworm`

```console
$ docker pull rust@sha256:1b9dc70890ec494e466c87f5ad41ad544bfb30ea6acc99a3e068c47a4ae3f23e
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

### `rust:1-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:30a9c647e188457aac6e0bd3f9d73ae725dc3f36e57a2808ba3dde653c7c6db8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.8 MB (572781031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088dd1e971d84149aa63e827761d18af35257bcd7441a9f44378f6f4e8575f3c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:20:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:57:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 24 Nov 2026 07:57:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Tue, 24 Nov 2026 07:57:19 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d5603818e4025d8c8e4b5578914535e7e3466d860768e69f957f49fc5fac8`  
		Last Modified: Tue, 24 Nov 2026 05:21:02 GMT  
		Size: 64.4 MB (64432507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db1ede1885b185de542c8de726f000ae4285b7f766859ee4e398a0c5ae4f430`  
		Last Modified: Tue, 24 Nov 2026 06:15:50 GMT  
		Size: 211.9 MB (211884679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a86c1d9ab4d82ed9bf67b98583200372f35b139a62be2cfbdc8ed2696f7294e`  
		Last Modified: Tue, 24 Nov 2026 07:57:56 GMT  
		Size: 224.1 MB (224064213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:db815e3f2cf4a2429e08c7f18dd32fefd0c28155e244421301c0feca69b4ef42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15882793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:934c2ee94a3aa83e27b1c64855f245a6b0bd8e39b19fe2cfd5e72fa7c34d40da`

```dockerfile
```

-	Layers:
	-	`sha256:3b35d07fa2dcbb75e6b063141f8eba71691ca0c8f627449234603e2dc8cd1d53`  
		Last Modified: Tue, 24 Nov 2026 07:57:53 GMT  
		Size: 15.9 MB (15869688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f97811a3dc5104063e222b97f7586e61c33e90773211d81d49419099583d38c6`  
		Last Modified: Tue, 24 Nov 2026 07:57:52 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:b53938e96eb1f2531d6f24b769a11d05dc7daa4c53a3d27948b06368167bbdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **565.0 MB (564963765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc930f431a71ced6b88025acf6cf4db453643fb9b2cb619e96f15661565b83f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:15:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:41:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:13:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 09:19:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 24 Nov 2026 09:19:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Tue, 24 Nov 2026 09:19:10 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bf46e8a44ab51f3c808ab48aaf11399ad2da7d0966cd41620337234ab118fa7f`  
		Last Modified: Tue, 24 Nov 2026 03:39:44 GMT  
		Size: 44.2 MB (44223203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd6ac0d814892f590af7533060e7d411f4b069b41846d6b77643c1ec671212d`  
		Last Modified: Tue, 24 Nov 2026 05:16:06 GMT  
		Size: 21.8 MB (21769445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22aecb817db0f9e40c6e19edcff5610744501481756bfd0fbc3b3cfe54d407ef`  
		Last Modified: Tue, 24 Nov 2026 06:42:14 GMT  
		Size: 59.7 MB (59697363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d67a1a803bc1f2eaf672448119ba9b9c0c128620c7f37502beb5e54f1041bd2`  
		Last Modified: Tue, 24 Nov 2026 07:13:49 GMT  
		Size: 175.8 MB (175796989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa8e422c19bf3db11f2f07edc05ca4ee222569775481c93ae79357c3c115fc0`  
		Last Modified: Tue, 24 Nov 2026 09:19:54 GMT  
		Size: 263.5 MB (263476765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:9fd1f609784419acb590e71500a200b8d5ef38d31aecb8a9a21372afb673c9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15685349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa70235e76c5196e001dcc5d7b8e7d15dbfb7d5a41bd974258f8fd9c4abe516`

```dockerfile
```

-	Layers:
	-	`sha256:16935e681deb8a65c7e5a0cebc07536614a6b97d3b0e9a1ffa611186b3ae6738`  
		Last Modified: Tue, 24 Nov 2026 09:19:49 GMT  
		Size: 15.7 MB (15672164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfc65d0faef43bd1dd93984f9f7e78af9aa7cf124d0f8b1b2c7d5ead0f6c36d2`  
		Last Modified: Tue, 24 Nov 2026 09:19:49 GMT  
		Size: 13.2 KB (13185 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b820ae3ce24753f523e6f50391196a3ef2474b4bc067f1ff80080a4b000c6961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **529.3 MB (529270042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9476b5eee02d51d3bfe8109f7588968174bf071d18024bf3a691ef3108ef68`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:32:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:13:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 08:05:24 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 24 Nov 2026 08:05:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Tue, 24 Nov 2026 08:05:24 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4d528de4b5383d96c1d03b858675d089f6dffcb1103cda3766265f17482fda`  
		Last Modified: Tue, 24 Nov 2026 05:32:20 GMT  
		Size: 64.5 MB (64528539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e076418e2fef05c49d1ad9e7afd24c85e08d63b43153895554ddb17ffa54e0d`  
		Last Modified: Tue, 24 Nov 2026 06:14:27 GMT  
		Size: 203.4 MB (203425851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0891e35b877eb2a8b00a3e187638c63d5a1eee10825f8e2c6aa142cf94820df3`  
		Last Modified: Tue, 24 Nov 2026 08:06:02 GMT  
		Size: 189.5 MB (189463012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:fab7a99998b977d71701a6d50d6c3916f1da19598bb9db10dc7c43ff2e8949b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15911421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c84539b74a60d5244b973452fa943c4ee73f034ce9bfc5d8bfa142d1afe350b8`

```dockerfile
```

-	Layers:
	-	`sha256:a0d1c57e28ef25cb7764570840b8c5614a61df061999b8b8f4447d1877c5cb81`  
		Last Modified: Tue, 24 Nov 2026 08:05:58 GMT  
		Size: 15.9 MB (15898214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2f1a4eba4b4b3d71bd63a753be4bbd1dde318c24c49e852724c69e4727ee9d1`  
		Last Modified: Tue, 24 Nov 2026 08:05:57 GMT  
		Size: 13.2 KB (13207 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; 386

```console
$ docker pull rust@sha256:94a8df1335106f0eb3f14feec668a6ca46c93de73c8569e724dd362651a224b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.4 MB (600383184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477480d8f815dfb7e8ff6203f8c86e68c88f4af4acbd05ab55174ca952511e25`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:41:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:24:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:15:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 07:39:37 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 24 Nov 2026 07:39:37 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Tue, 24 Nov 2026 07:39:37 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:09060430fb43c1c139cc1889a4b8e7bb0d465c2c692e898e363029cce671f6ce`  
		Last Modified: Tue, 24 Nov 2026 03:39:50 GMT  
		Size: 49.5 MB (49515532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88783f32aad09b5608dad8e3ae3a279d819927fdfd70306f643bde0f0d4fee0c`  
		Last Modified: Tue, 24 Nov 2026 04:41:12 GMT  
		Size: 24.7 MB (24703788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76dab45eed6abc8d2bffa7ecbd77476aa63bebb9085d90a9465823b63c72419c`  
		Last Modified: Tue, 24 Nov 2026 05:24:37 GMT  
		Size: 66.3 MB (66278926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164dd950c3174cfd7ac3085a1ec55b674320092c296804b1c37f9bd20e938fa9`  
		Last Modified: Tue, 24 Nov 2026 06:15:57 GMT  
		Size: 210.8 MB (210809373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db74303d10a5483331104d9275796bd0a48584e28144f46666889e1050691ada`  
		Last Modified: Tue, 24 Nov 2026 07:40:23 GMT  
		Size: 249.1 MB (249075565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:73beff488ad186d45f312edc0c486af66b4aa081a2a46a68dd3865afa7e4250f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15860982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0013c4ac66467b7a7fb0c4a342102ed8d2079fdc4f305e870e6a448a0c9741e1`

```dockerfile
```

-	Layers:
	-	`sha256:e6933873a271bb52a246aa92600962f7af73c2e2776851e6920236020f0ac335`  
		Last Modified: Tue, 24 Nov 2026 07:40:18 GMT  
		Size: 15.8 MB (15847909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fb1fae2112fbac9626d0600aceb9638246d5008ce87a7a355317eec5a2e33ec`  
		Last Modified: Tue, 24 Nov 2026 07:40:18 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:7e855e92f416c4a90352ce08bb0dcf6865b5d71b4e83424e69eaccc210acf89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.8 MB (662759174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5badecf5c2a529e2a1be46460fdfbcf8d732ae4fef4bcf83b4aa5df7109b83cf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 10:07:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 17:24:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 20:46:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:23:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:23:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:23:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ffec0873fe14b6e584873c80e384c7a988558ed670b69a2083f4a9eff8ef04`  
		Last Modified: Thu, 05 Nov 2026 10:08:16 GMT  
		Size: 25.5 MB (25515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f86862ce2795897774b132f3a86834590ad3758900c8ec8c600b44058ae52`  
		Last Modified: Thu, 05 Nov 2026 17:25:45 GMT  
		Size: 69.9 MB (69899279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14d5fee07632732bb5754d3454367b1ee28cf1d75bc620bc2ef6967edde5432`  
		Last Modified: Thu, 05 Nov 2026 20:48:27 GMT  
		Size: 214.9 MB (214901016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e65d8e7dce1b465f05cd8ff9ba14f9c48c45d1b7af04eb236b3d93581da4f9`  
		Last Modified: Thu, 12 Nov 2026 20:26:04 GMT  
		Size: 300.1 MB (300075085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:31a7714ee916aa227a2973493cd2b041310e4865779fc3cadcc34a61fc291dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15858545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c54b4b54b973b2d34ba10bf0acb44f1bba15c0eea91f9a6d1582084e881bd7b5`

```dockerfile
```

-	Layers:
	-	`sha256:166a0e8d9911e497427389dbf8b09ce1b69204dec533fcfd1fc3ab22195bad47`  
		Last Modified: Thu, 12 Nov 2026 20:25:58 GMT  
		Size: 15.8 MB (15845396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33dd5d677ff5f5a5b55212c51e76fed4a13ea1ee2a234149ee4524521c52f12a`  
		Last Modified: Thu, 12 Nov 2026 20:25:57 GMT  
		Size: 13.1 KB (13149 bytes)  
		MIME: application/vnd.in-toto+json
