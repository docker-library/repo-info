## `haskell:9-slim`

```console
$ docker pull haskell@sha256:88a1ffbc7407b3eeebdb0ba8e77c20b843960e476ebd680f79fe3bc20c04e492
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `haskell:9-slim` - linux; amd64

```console
$ docker pull haskell@sha256:b3422420ad86dc94b542c5703dfce91b63e77fe0e6bb0ecc7495c73cef78f21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **777.1 MB (777066054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ec9d34b9b09fca1492d1c85ace52ede27b6ff7481859c905eb59b9077dfcc4`
-	Default Command: `["ghci"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:14:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:14:17 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dpkg-dev         git         gcc         gnupg         g++         libc6-dev         libffi-dev         libgmp-dev         libnuma-dev         libtinfo-dev         make         netbase         xz-utils         zlib1g-dev &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:14:17 GMT
ARG STACK=3.11.1
# Thu, 05 Nov 2026 07:14:17 GMT
ARG STACK_RELEASE_KEY=C5705533DA4F78D8664B5DC0575159689BEFB442
# Thu, 05 Nov 2026 07:14:20 GMT
# ARGS: STACK=3.11.1 STACK_RELEASE_KEY=C5705533DA4F78D8664B5DC0575159689BEFB442
RUN set -eux;     cd /tmp;     ARCH="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)";     STACK_URL="https://github.com/commercialhaskell/stack/releases/download/v${STACK}/stack-${STACK}-linux-$ARCH.tar.gz";     case "$ARCH" in         'aarch64')             STACK_SHA256='1617ae9976a5cd38ad4daec583b026b589eb45d5482afb045cd4ca8c8d0de6d0';             ;;         'x86_64')             STACK_SHA256='1fda71e657cd8d355625cc66b61b352699279dfee2664c014a392163bd19a952';             ;;         *) echo >&2 "error: unsupported architecture '$ARCH'"; exit 1 ;;     esac;     curl -sSL "$STACK_URL" -o stack.tar.gz;     echo "$STACK_SHA256 stack.tar.gz" | sha256sum --strict --check;         curl -sSL "$STACK_URL.asc" -o stack.tar.gz.asc;     GNUPGHOME="$(mktemp -d)";     export GNUPGHOME;     gpg --batch --keyserver keyserver.ubuntu.com --receive-keys "$STACK_RELEASE_KEY";     gpg --batch --verify stack.tar.gz.asc stack.tar.gz;     gpgconf --kill all;         tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 "stack-$STACK-linux-$ARCH/stack";     stack config set system-ghc --global true;     stack config set install-ghc --global false;         rm -rf /tmp/*;         stack --version; # buildkit
# Thu, 05 Nov 2026 07:14:20 GMT
ARG CABAL_INSTALL=3.16.1.0
# Thu, 05 Nov 2026 07:14:20 GMT
ARG CABAL_INSTALL_RELEASE_KEY=1E07C9A1A3088BAD47F74A3E227EE1942B0BDB95
# Thu, 05 Nov 2026 07:14:21 GMT
# ARGS: STACK=3.11.1 STACK_RELEASE_KEY=C5705533DA4F78D8664B5DC0575159689BEFB442 CABAL_INSTALL=3.16.1.0 CABAL_INSTALL_RELEASE_KEY=1E07C9A1A3088BAD47F74A3E227EE1942B0BDB95
RUN set -eux;     cd /tmp;     ARCH="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)";     CABAL_INSTALL_TAR="cabal-install-$CABAL_INSTALL-$ARCH-linux-deb12.tar.xz";     CABAL_INSTALL_URL="https://downloads.haskell.org/~cabal/cabal-install-$CABAL_INSTALL/$CABAL_INSTALL_TAR";     CABAL_INSTALL_SHA256SUMS_URL="https://downloads.haskell.org/~cabal/cabal-install-$CABAL_INSTALL/SHA256SUMS";     case "$ARCH" in         'aarch64')             CABAL_INSTALL_SHA256='41d8fc43de1c652c00d85799d0273f8b6600bc71603126bc651ca4e3917a1b84';             ;;         'x86_64')             CABAL_INSTALL_SHA256='209987f6abdd1119f6b2674a0d1012857a783464774708cb4f3fd9e156ea7bea';             ;;         *) echo >&2 "error: unsupported architecture '$ARCH'"; exit 1 ;;     esac;     curl -fSL "$CABAL_INSTALL_URL" -o cabal-install.tar.gz;     echo "$CABAL_INSTALL_SHA256 cabal-install.tar.gz" | sha256sum --strict --check;         curl -sSLO "$CABAL_INSTALL_SHA256SUMS_URL";     curl -sSLO "$CABAL_INSTALL_SHA256SUMS_URL.sig";     GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;     gpg --batch --keyserver keyserver.ubuntu.com --receive-keys "$CABAL_INSTALL_RELEASE_KEY";     gpg --batch --verify SHA256SUMS.sig SHA256SUMS;     grep "$CABAL_INSTALL_SHA256  $CABAL_INSTALL_TAR" SHA256SUMS;     gpgconf --kill all;         tar -xf cabal-install.tar.gz -C /usr/local/bin;         rm -rf /tmp/*;         cabal --version # buildkit
# Thu, 05 Nov 2026 07:14:21 GMT
ARG GHC=9.14.1
# Thu, 05 Nov 2026 07:14:21 GMT
ARG GHC_RELEASE_KEY=88B57FCF7DB53B4DB3BFA4B1588764FBE22D19C4
# Thu, 05 Nov 2026 07:16:29 GMT
# ARGS: STACK=3.11.1 STACK_RELEASE_KEY=C5705533DA4F78D8664B5DC0575159689BEFB442 CABAL_INSTALL=3.16.1.0 CABAL_INSTALL_RELEASE_KEY=1E07C9A1A3088BAD47F74A3E227EE1942B0BDB95 GHC=9.14.1 GHC_RELEASE_KEY=88B57FCF7DB53B4DB3BFA4B1588764FBE22D19C4
RUN set -eux;     cd /tmp;     ARCH="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)";     GHC_URL="https://downloads.haskell.org/~ghc/$GHC/ghc-$GHC-$ARCH-deb12-linux.tar.xz";     case "$ARCH" in         'aarch64')             GHC_SHA256='6aa27a377451851c851eefdd869e8f5a9217b02ce66c6ca9b418b72efee28427';             ;;         'x86_64')             GHC_SHA256='60f7ab75f28df892729fbaff3a54f58ee3ad7e731929f1b2f3eb0208f73de841';             ;;         *) echo >&2 "error: unsupported architecture '$ARCH'" ; exit 1 ;;     esac;     curl -sSL "$GHC_URL" -o ghc.tar.xz;     echo "$GHC_SHA256 ghc.tar.xz" | sha256sum --strict --check;         GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;     curl -sSL "$GHC_URL.sig" -o ghc.tar.xz.sig;     gpg --batch --keyserver keyserver.ubuntu.com --receive-keys "$GHC_RELEASE_KEY";     gpg --batch --verify ghc.tar.xz.sig ghc.tar.xz;     gpgconf --kill all;         tar xf ghc.tar.xz;     cd "ghc-$GHC-$ARCH-unknown-linux";     ./configure --prefix "/opt/ghc/$GHC";     make install;         rm -rf /tmp/*;         "/opt/ghc/$GHC/bin/ghc" --version # buildkit
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/ghc/9.14.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:16:29 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3a3a1c44d4d6364c5bb68e28997140a569754f9ae3e302bfc15abe31524609`  
		Last Modified: Thu, 05 Nov 2026 07:18:13 GMT  
		Size: 124.2 MB (124243052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00a9b6a767c8d2551ef11c1f8cf6f9fc8203af6f035a0e9281cd90e64f48576`  
		Last Modified: Thu, 05 Nov 2026 07:18:09 GMT  
		Size: 22.5 MB (22497126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0191ede8379c6cebbdad98fc81d699518eeded2b682244b861a4cf0cbb9aa45`  
		Last Modified: Thu, 05 Nov 2026 07:18:08 GMT  
		Size: 8.4 MB (8403505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e204f4c63e2d11e473b2e48f5394e1915ace9e076855d8fc3b37c2e444cbacb`  
		Last Modified: Thu, 05 Nov 2026 07:18:21 GMT  
		Size: 593.7 MB (593674389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haskell:9-slim` - unknown; unknown

```console
$ docker pull haskell@sha256:0fef9fdf204b45c1b8de25614f905a26373b4d35eebb6eec15c84cd4a096281f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b3a3ffe792d97fd101e1cb53388c7aa3f90e69abb415b461773317e306c272`

```dockerfile
```

-	Layers:
	-	`sha256:f86f221f6007f61d47696fd92f51ea5bd9746751224ea6a69eb4748ed0d24cd4`  
		Last Modified: Thu, 05 Nov 2026 07:18:07 GMT  
		Size: 6.6 MB (6609886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82fe30c0e3832932eee1762685d181e25f499dd8c458edf7d403d8f71356b7c4`  
		Last Modified: Thu, 05 Nov 2026 07:18:07 GMT  
		Size: 26.3 KB (26342 bytes)  
		MIME: application/vnd.in-toto+json

### `haskell:9-slim` - linux; arm64 variant v8

```console
$ docker pull haskell@sha256:b6b09442c77514e5e524f6f4377416de1534b1e3ce6c80a841f08beb428e7e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **779.6 MB (779602837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06d0cc3fe0c11915f25f5a87f96c71d39fd7b9723fcb774beb0b53296079a589`
-	Default Command: `["ghci"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:13:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:13:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         dpkg-dev         git         gcc         gnupg         g++         libc6-dev         libffi-dev         libgmp-dev         libnuma-dev         libtinfo-dev         make         netbase         xz-utils         zlib1g-dev &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:13:47 GMT
ARG STACK=3.11.1
# Thu, 05 Nov 2026 07:13:47 GMT
ARG STACK_RELEASE_KEY=C5705533DA4F78D8664B5DC0575159689BEFB442
# Thu, 05 Nov 2026 07:13:50 GMT
# ARGS: STACK=3.11.1 STACK_RELEASE_KEY=C5705533DA4F78D8664B5DC0575159689BEFB442
RUN set -eux;     cd /tmp;     ARCH="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)";     STACK_URL="https://github.com/commercialhaskell/stack/releases/download/v${STACK}/stack-${STACK}-linux-$ARCH.tar.gz";     case "$ARCH" in         'aarch64')             STACK_SHA256='1617ae9976a5cd38ad4daec583b026b589eb45d5482afb045cd4ca8c8d0de6d0';             ;;         'x86_64')             STACK_SHA256='1fda71e657cd8d355625cc66b61b352699279dfee2664c014a392163bd19a952';             ;;         *) echo >&2 "error: unsupported architecture '$ARCH'"; exit 1 ;;     esac;     curl -sSL "$STACK_URL" -o stack.tar.gz;     echo "$STACK_SHA256 stack.tar.gz" | sha256sum --strict --check;         curl -sSL "$STACK_URL.asc" -o stack.tar.gz.asc;     GNUPGHOME="$(mktemp -d)";     export GNUPGHOME;     gpg --batch --keyserver keyserver.ubuntu.com --receive-keys "$STACK_RELEASE_KEY";     gpg --batch --verify stack.tar.gz.asc stack.tar.gz;     gpgconf --kill all;         tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 "stack-$STACK-linux-$ARCH/stack";     stack config set system-ghc --global true;     stack config set install-ghc --global false;         rm -rf /tmp/*;         stack --version; # buildkit
# Thu, 05 Nov 2026 07:13:50 GMT
ARG CABAL_INSTALL=3.16.1.0
# Thu, 05 Nov 2026 07:13:50 GMT
ARG CABAL_INSTALL_RELEASE_KEY=1E07C9A1A3088BAD47F74A3E227EE1942B0BDB95
# Thu, 05 Nov 2026 07:13:55 GMT
# ARGS: STACK=3.11.1 STACK_RELEASE_KEY=C5705533DA4F78D8664B5DC0575159689BEFB442 CABAL_INSTALL=3.16.1.0 CABAL_INSTALL_RELEASE_KEY=1E07C9A1A3088BAD47F74A3E227EE1942B0BDB95
RUN set -eux;     cd /tmp;     ARCH="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)";     CABAL_INSTALL_TAR="cabal-install-$CABAL_INSTALL-$ARCH-linux-deb12.tar.xz";     CABAL_INSTALL_URL="https://downloads.haskell.org/~cabal/cabal-install-$CABAL_INSTALL/$CABAL_INSTALL_TAR";     CABAL_INSTALL_SHA256SUMS_URL="https://downloads.haskell.org/~cabal/cabal-install-$CABAL_INSTALL/SHA256SUMS";     case "$ARCH" in         'aarch64')             CABAL_INSTALL_SHA256='41d8fc43de1c652c00d85799d0273f8b6600bc71603126bc651ca4e3917a1b84';             ;;         'x86_64')             CABAL_INSTALL_SHA256='209987f6abdd1119f6b2674a0d1012857a783464774708cb4f3fd9e156ea7bea';             ;;         *) echo >&2 "error: unsupported architecture '$ARCH'"; exit 1 ;;     esac;     curl -fSL "$CABAL_INSTALL_URL" -o cabal-install.tar.gz;     echo "$CABAL_INSTALL_SHA256 cabal-install.tar.gz" | sha256sum --strict --check;         curl -sSLO "$CABAL_INSTALL_SHA256SUMS_URL";     curl -sSLO "$CABAL_INSTALL_SHA256SUMS_URL.sig";     GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;     gpg --batch --keyserver keyserver.ubuntu.com --receive-keys "$CABAL_INSTALL_RELEASE_KEY";     gpg --batch --verify SHA256SUMS.sig SHA256SUMS;     grep "$CABAL_INSTALL_SHA256  $CABAL_INSTALL_TAR" SHA256SUMS;     gpgconf --kill all;         tar -xf cabal-install.tar.gz -C /usr/local/bin;         rm -rf /tmp/*;         cabal --version # buildkit
# Thu, 05 Nov 2026 07:13:55 GMT
ARG GHC=9.14.1
# Thu, 05 Nov 2026 07:13:55 GMT
ARG GHC_RELEASE_KEY=88B57FCF7DB53B4DB3BFA4B1588764FBE22D19C4
# Thu, 05 Nov 2026 07:15:54 GMT
# ARGS: STACK=3.11.1 STACK_RELEASE_KEY=C5705533DA4F78D8664B5DC0575159689BEFB442 CABAL_INSTALL=3.16.1.0 CABAL_INSTALL_RELEASE_KEY=1E07C9A1A3088BAD47F74A3E227EE1942B0BDB95 GHC=9.14.1 GHC_RELEASE_KEY=88B57FCF7DB53B4DB3BFA4B1588764FBE22D19C4
RUN set -eux;     cd /tmp;     ARCH="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)";     GHC_URL="https://downloads.haskell.org/~ghc/$GHC/ghc-$GHC-$ARCH-deb12-linux.tar.xz";     case "$ARCH" in         'aarch64')             GHC_SHA256='6aa27a377451851c851eefdd869e8f5a9217b02ce66c6ca9b418b72efee28427';             ;;         'x86_64')             GHC_SHA256='60f7ab75f28df892729fbaff3a54f58ee3ad7e731929f1b2f3eb0208f73de841';             ;;         *) echo >&2 "error: unsupported architecture '$ARCH'" ; exit 1 ;;     esac;     curl -sSL "$GHC_URL" -o ghc.tar.xz;     echo "$GHC_SHA256 ghc.tar.xz" | sha256sum --strict --check;         GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;     curl -sSL "$GHC_URL.sig" -o ghc.tar.xz.sig;     gpg --batch --keyserver keyserver.ubuntu.com --receive-keys "$GHC_RELEASE_KEY";     gpg --batch --verify ghc.tar.xz.sig ghc.tar.xz;     gpgconf --kill all;         tar xf ghc.tar.xz;     cd "ghc-$GHC-$ARCH-unknown-linux";     ./configure --prefix "/opt/ghc/$GHC";     make install;         rm -rf /tmp/*;         "/opt/ghc/$GHC/bin/ghc" --version # buildkit
# Thu, 05 Nov 2026 07:15:54 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/ghc/9.14.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:15:54 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6359cb6718a07548fa58cc1cbdeac5c42dc508ad248eeb0fcfa08a938b1d163a`  
		Last Modified: Thu, 05 Nov 2026 07:17:37 GMT  
		Size: 118.4 MB (118413667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c3a6b44e6119b36a8788ce511d37aceb86b61730e43d681e634c524eb2846d`  
		Last Modified: Thu, 05 Nov 2026 07:17:33 GMT  
		Size: 24.5 MB (24548161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af30a34e2efe31394f303be0f14a3e295772d0a55b008189f5cece1368ef226`  
		Last Modified: Thu, 05 Nov 2026 07:17:33 GMT  
		Size: 15.9 MB (15944591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9a702e067cf45fec30515acfb53739eea2552aab2c04279e9d2c08b4ead59e`  
		Last Modified: Thu, 05 Nov 2026 07:17:45 GMT  
		Size: 592.6 MB (592552060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `haskell:9-slim` - unknown; unknown

```console
$ docker pull haskell@sha256:ed316522a5919243ef48086c1ed5570bd29458f62187f27e0d1c90ba6e4515c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa375d2ff3b40fbfc4ae5236e6b1959230d82d4f77140fd9de73a9ae2cd9abaa`

```dockerfile
```

-	Layers:
	-	`sha256:215d5ea4fa47803411a32e0097754126060a2c947f88d8e3d27946ce8ed4bd7a`  
		Last Modified: Thu, 05 Nov 2026 07:17:32 GMT  
		Size: 6.6 MB (6638345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:545514fac3452756471a02e600f93ccc208454f42f38f34a4c6785e74b12d660`  
		Last Modified: Thu, 05 Nov 2026 07:17:31 GMT  
		Size: 26.5 KB (26518 bytes)  
		MIME: application/vnd.in-toto+json
